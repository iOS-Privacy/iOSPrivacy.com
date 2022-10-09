const cacheName = 'ios-cache-v1'
const assetsToCache = [
    "/",
    "/domainvoider",
    "/ivoid",
    "/urlhaus",
    "/privacy",
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
    "/files-list.json",
    "/manifest.json",
    "/mask-icon.svg",
    "/safari-pinned-tab.svg"
]self.addEventListener('install', (event) => {
    self.skipWaiting(); // skip waiting
    event.waitUntil(caches.open(cacheName).then((cache) => {
        return cache.addAll(assetsToCache);
    }));
});