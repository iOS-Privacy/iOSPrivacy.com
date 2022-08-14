const addResourcesToCache = async(resources) => {
    const cache = await caches.open('iOSP-4');
    await cache.addAll(resources)
};
const putInCache = async(request, response) => {
    const cache = await caches.open('iOSP-4');
    await cache.put(request, response)
};
const cacheFirst = async({request, preloadResponsePromise, fallbackUrl}) => {
    const responseFromCache = await caches.match(request);
    if (responseFromCache) {
        return responseFromCache
    }
    const preloadResponse = await preloadResponsePromise;
    if (preloadResponse) {
        console.info('using preload response', preloadResponse);
        putInCache(request, preloadResponse.clone());
        return preloadResponse
    }
    try {
        const responseFromNetwork = await fetch(request);
        putInCache(request, responseFromNetwork.clone());
        return responseFromNetwork
    } catch (error) {
        const fallbackResponse = await caches.match(fallbackUrl);
        if (fallbackResponse) {
            return fallbackResponse
        }
        return new Response('Network error happened', {
            status: 408,
            headers: {
                'Content-Type': 'text/plain'
            }
        })
    }
};
const enableNavigationPreload = async() => {
    if (self.registration.navigationPreload) {
        await self
            .registration
            .navigationPreload
            .enable()
    }
};
self.addEventListener('activate', (event) => {
    event.waitUntil(enableNavigationPreload())
});
self.addEventListener('install', (event) => {
    event.waitUntil(addResourcesToCache([
        ".",
        "https://iosprivacy",
        "https://iosprivacy.com/domainvoider",
        "https://iosprivacy.com/ivoid",
        "https://iosprivacy.com/urlhaus",
        "https://iosprivacy.com/privacy",
        "apple-touch-icon.png",
        "css/style_4.css",
        "favicon.png",
        "favicon.svg",
        "icon_x128.png",
        "icon_x192.png",
        "icon_x384.png",
        "icon_x512.png",
        "icon_x72.png",
        "icon_x96.png",
        "js/files-to-cache.json",
        "js/index.js",
        "manifest.webmanifest",
        "mask-icon.svg"
    ]))
});
self.addEventListener('fetch', (event) => {
    event.respondWith(cacheFirst({request: event.request, preloadResponsePromise: event.preloadResponse, fallbackUrl: '/icons/favicon.svg'}))
});
