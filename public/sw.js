const CACHE_NAME = 'iosp-cache-v2';

const PRECACHE_ASSETS = [
    "/",
    "/domainvoider/raw/DomainVoider.txt",
    "/ivoid/raw/iVOID.hosts",
    "/apple-touch-icon.png",
    "/bimi/iOSPrivacy.com.svg",
    "/logo.svg",
    "/css/style.min.css",
    "/js/app.js",
    "/favicon.png",
    "/favicon.svg",
    "/favicon.ico",
    "/icon_128x128.png",
    "/icon_192x192.png",
    "/icon_384x384.png",
    "/icon_512x512.png",
    "/icon_72x72.png",
    "/icon_96x96.png",
    "/icon_48x48.png",
    "/maskable_icon_x128.png",
    "/maskable_icon_x192.png",
    "/maskable_icon_x384.png",
    "/maskable_icon_x512.png",
    "/maskable_icon_x72.png",
    "/maskable_icon_x96.png",
    "/maskable_icon_x48.png",
    "/maskable_icon.png",
    "/file-list.json",
    "/manifest.json",
    "/mask-icon.svg",
    "/safari-pinned-tab.svg"
]

self.addEventListener('install', event => {
    event.waitUntil((async() => {
        const cache = await caches.open(CACHE_NAME);
        cache.put(PRECACHE_ASSETS);
    })());
});

self.addEventListener('activate', event => {
    event.waitUntil(clients.claim());
});

self.addEventListener('fetch', event => {
    event.respondWith(async() => {
        const cache = await caches.open(CACHE_NAME);

        const cachedResponse = await cache.match(event.request);

        if (cachedResponse !== undefined) {

            return cachedResponse;
        } else {

            return fetch(event.request)
        };
    });
});
