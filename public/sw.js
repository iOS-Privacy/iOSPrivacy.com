const cacheName = 'iOSPR-v1'
const assetsToCache = [
    '/icons/',
    '/images/',
    '/css/styles.css',
    '/js/app.js',
    '/manifest.webmanifest',
]

self.addEventListener('install', (event) => {
    event.waitUntil(
        caches.open(cacheName).then((cache) => {
            return cache.addAll(assetsToCache);
        })
    );
});
