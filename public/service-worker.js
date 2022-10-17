var CACHE_NAME = 'dependencies-cache';
self.addEventListener('install', function (event) {
    console.log('[install] Kicking off service worker registration!');
    event.waitUntil(caches.open(CACHE_NAME).then(async function (cache) {
        const response = await fetch('files-to-cache.json');
        const files = await response.json();
        console.log('[install] Adding files from JSON file: ', files);
        return await cache.addAll(files)
    }).then(function () {
        console.log('[install] All required resources have been cached;', 'the Service Worker was successfully installed!');
        return self.skipWaiting()
    }))
});
self.addEventListener('fetch', function (event) {
    event.respondWith(caches.match(event.request).then(function (response) {
        if (response) {
            console.log('[fetch] Returning from Service Worker cache: ', event.request.url);
            return response
        }
        console.log('[fetch] Returning from server: ', event.request.url);
        return fetch(event.request)
    }))
});
self.addEventListener('activate', function (event) {
    console.log('[activate] Activating service worker!');
    console.log('[activate] Claiming this service worker!');
    event.waitUntil(self.clients.claim())
});
