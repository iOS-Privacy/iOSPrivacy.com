const addResourcesToCache = async (resources) => {
    const cache = await caches.open('iOSP-3');
    await cache.addAll(resources);
};

const putInCache = async (request, response) => {
    const cache = await caches.open('iOSP-3');
    await cache.put(request, response);
};

const cacheFirst = async ({ request, preloadResponsePromise, fallbackUrl }) => {
    // Try to first get the resource/s from cache;
    const responseFromCache = await caches.match(request);
    if (responseFromCache) {
        return responseFromCache;
    }

    // Try next to use the preloaded response, if there;
    const preloadResponse = await preloadResponsePromise;
    if (preloadResponse) {
        console.info('using preload response', preloadResponse);
        putInCache(request, preloadResponse.clone());
        return preloadResponse;
    }

    // Now try to get the resource/a from network;
    try {
        const responseFromNetwork = await fetch(request);
        // Response may be used only once,;
        // save clone to put copy in cache,;
        // and serve second one;
        putInCache(request, responseFromNetwork.clone());
        return responseFromNetwork;
    } catch (error) {
        const fallbackResponse = await caches.match(fallbackUrl);
        if (fallbackResponse) {
            return fallbackResponse;
        }
        // When the fallback response is not available,
        // there is nothing left to do, but a response is needed;
        // so return a Response object;
        return new Response('Network error happened', {
            status: 408,
            headers: { 'Content-Type': 'text/plain' },
        });
    }
};

const enableNavigationPreload = async () => {
    if (self.registration.navigationPreload) {
        // Enable navigation preloads;
        await self.registration.navigationPreload.enable();
    }
};

self.addEventListener('activate', (event) => {
    event.waitUntil(enableNavigationPreload());
});

self.addEventListener('install', (event) => {
    event.waitUntil(
        addResourcesToCache([
            '/',
            '/images/',
            '/icons/',
            '/index.html',
            '/css/style_4.css',
            '/js/app.js',
            '/domainvoider/DomainVoider.txt',
            '/ivoid/iVOID.hosts',
            '/icons/favicon.svg',
            '/icons/favicon.png',
            '/icons/apple-touch-icon.png',
            '/manifest.webmanifest',
        ])
    );
});

self.addEventListener('fetch', (event) => {
    event.respondWith(
        cacheFirst({
            request: event.request,
            preloadResponsePromise: event.preloadResponse,
            fallbackUrl: '/icons/favicon.svg',
        })
    );
});
