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
	"/files-to-cache.json",
	"/manifest.json",
	"/mask-icon.svg",
        "/safari-pinned-tab.svg",
    ]))
});
self.addEventListener('fetch', (event) => {
    event.respondWith(cacheFirst({request: event.request, preloadResponsePromise: event.preloadResponse, fallbackUrl: '/icons/favicon.svg'}))
});
