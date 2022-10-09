self.addEventListener("install", (e) => {
    e.waitUntil(caches.open("dog-store-v15").then((cache) => cache.addAll([
        "/images/",
        "/icons/",
        "/index.html",
        "/index.js",
        "/style.css",
        "/images/1.webp",
        "/images/2.webp",
        "/images/3.webp",
        "/images/4.webp",
        "/images/5.webp",
        "/images/6.webp",
        "/images/7.webp",
        "/images/8.webp",
        "/images/9.webp",
        "/images/10.webp",
        "/images/11.webp",
        "/images/12.webp",
        "/images/13.webp",
        "/images/14.webp",
        "/images/15.webp",
        "/images/16.webp",
        "/images/17.webp",
        "/images/18.webp",
        "/images/19.webp",
        "/images/20.webp",
        "/images/21.webp",
        "/images/22.webp",
        "/images/23.webp",
        "/images/24.webp",
        "/images/25.webp",
        "/images/26.webp",
        "/images/27.webp",
        "/images/28.webp",
        "/images/29.webp",
        "/images/30.webp",
        "/icons/maskable_icon.png",
        "/icons/favicon.png",
        "/icons/favicon.svg",
        "/icons/apple-touch-icon.png"
    ])),);
});

self.addEventListener("fetch", (e) => {
    console.log(e.request.url);
    e.respondWith(caches.match(e.request).then((response) => response || fetch(e.request)),);
});
