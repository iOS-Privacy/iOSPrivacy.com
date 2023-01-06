const fileListURL = 'file-list.json';
self.skipWaiting();
function fetchAndBust(request) {
if (typeof request == 'string') {
request = new Request(request)
}
const url = new URL(request.url);
url.search += Math.random();
return fetch(url, {
headers: request.headers,
mode: request.mode,
credentials: request.credentials,
redirect: request.redirect
})
}
async function updateCheck() {
const r = await fetch(fileListURL);
const fileList = await r.json();
const staticCacheName = `file-list-v${fileList.version}`;
const cacheExists = await caches.has(staticCacheName);
if (cacheExists) {
return
}
try {
const responses = await Promise.all(fileList.files.map(fetchAndBust));
const cache = await caches.open(staticCacheName);
return await Promise.all(responses.map((response, i) => {
if (!response.ok) {
throw Error('Not ok')
}
return cache.put(fileList.files[i], response)
}))
} catch (err) {
caches.delete(staticCacheName);
throw err
}
}
self.addEventListener('install', event => {
event.waitUntil(updateCheck().catch(() => null))
});
self.addEventListener('fetch', event => {
const responsePromise = caches
.keys()
.then(cacheNames => {
const staticCacheNames = cacheNames.filter(n => n.startsWith('static-separate-list-v'));
if (!staticCacheNames[0]) {
return fetch(event.request)
}
let staticCacheName = staticCacheNames[0];
return Promise
.resolve()
.then(() => {
if (staticCacheNames.length == 1 || event.request.mode != 'navigate') {
return
}
return clients
.matchAll()
.then(clients => {
if (clients.length > 1) {
return
}
staticCacheName = staticCacheNames[staticCacheNames.length - 1];
return Promise.all(staticCacheNames.slice(0, -1).map(c => caches.delete(c)))
})
})
.then(() => {
return caches
.open(staticCacheName)
.then(c => c.match(event.request))
.then(response => response || fetch(event.request))
})
});
if (event.request.mode == 'navigate') {
event.waitUntil(responsePromise.then(updateCheck))
}
event.respondWith(responsePromise)
});
