self.addEventListener("install", (e) => {
    e.waitUntil(caches.open("iOS-v-1").then((cache) => cache.addAll([
        "/",
        "/domainvoider",
        "/ivoid",
        "/urlhaus",
        "/privacy",
        "/domainvoider/DomainVoider.txt",
        "/domainvoider/raw/DomainVoider.txt",
        "/ivoid/iVOID.hosts",
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
    ])),)
});
self.addEventListener("fetch", (e) => {
    console.log(e.request.url);
    e.respondWith(caches.match(e.request).then((response) => response || fetch(e.request)),)
});
