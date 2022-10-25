var CACHE_NAME = "iOSPv3";
var urlsToCache = [
    "/",
    "/domainvoider",
    "/ivoid",
    "/urlhaus",
    "/privacy",
    "/js",
    "/css",
    "/img",
    "/res",
    "/font",
    "/bimi",
    "./well-known"
];
self.addEventListener("install", (event) => {
    caches
        .open(CACHE_NAME)
        .then(function (cache) {
            Promise.all(urlsToCache.map(function (url) {
                cache.add(url)
            }))
        })
});
self.addEventListener("fetch", (event) => {
    event.respondWith(caches.match(event.request).then(function (response) {
        if (response) {
            return response
        }
        return fetch(event.request).then(function (response) {
            if (!response || response.status !== 200 || response.type !== "basic") {
                return response
            }
            var responseForCache = response.clone();
            caches
                .open(CACHE_NAME)
                .then(function (cache) {
                    cache.put(event.request, responseForCache)
                });
            return response
        })
    }))
});
self.addEventListener("activate", (event) => {
    var cacheWhitelist = ["iOSPv3"];
    event.waitUntil(caches.keys().then((cacheNames) => {
        return Promise.all(cacheNames.map((cacheName) => {
            if (cacheWhitelist.indexOf(cacheName) === -1) {
                return caches.delete(cacheName)
            }
        }))
    }))
});
