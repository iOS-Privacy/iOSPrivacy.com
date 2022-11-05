var __awaiter = (this && this.__awaiter) || function (thisArg, _arguments, P, generator) {
    function adopt(value) { return value instanceof P ? value : new P(function (resolve) { resolve(value); }); }
    return new (P || (P = Promise))(function (resolve, reject) {
        function fulfilled(value) { try { step(generator.next(value)); } catch (e) { reject(e); } }
        function rejected(value) { try { step(generator["throw"](value)); } catch (e) { reject(e); } }
        function step(result) { result.done ? resolve(result.value) : adopt(result.value).then(fulfilled, rejected); }
        step((generator = generator.apply(thisArg, _arguments || [])).next());
    });
};
var __generator = (this && this.__generator) || function (thisArg, body) {
    var _ = { label: 0, sent: function() { if (t[0] & 1) throw t[1]; return t[1]; }, trys: [], ops: [] }, f, y, t, g;
    return g = { next: verb(0), "throw": verb(1), "return": verb(2) }, typeof Symbol === "function" && (g[Symbol.iterator] = function() { return this; }), g;
    function verb(n) { return function (v) { return step([n, v]); }; }
    function step(op) {
        if (f) throw new TypeError("Generator is already executing.");
        while (_) try {
            if (f = 1, y && (t = op[0] & 2 ? y["return"] : op[0] ? y["throw"] || ((t = y["return"]) && t.call(y), 0) : y.next) && !(t = t.call(y, op[1])).done) return t;
            if (y = 0, t) op = [op[0] & 2, t.value];
            switch (op[0]) {
                case 0: case 1: t = op; break;
                case 4: _.label++; return { value: op[1], done: false };
                case 5: _.label++; y = op[1]; op = [0]; continue;
                case 7: op = _.ops.pop(); _.trys.pop(); continue;
                default:
                    if (!(t = _.trys, t = t.length > 0 && t[t.length - 1]) && (op[0] === 6 || op[0] === 2)) { _ = 0; continue; }
                    if (op[0] === 3 && (!t || (op[1] > t[0] && op[1] < t[3]))) { _.label = op[1]; break; }
                    if (op[0] === 6 && _.label < t[1]) { _.label = t[1]; t = op; break; }
                    if (t && _.label < t[2]) { _.label = t[2]; _.ops.push(op); break; }
                    if (t[2]) _.ops.pop();
                    _.trys.pop(); continue;
            }
            op = body.call(thisArg, _);
        } catch (e) { op = [6, e]; y = 0; } finally { f = t = 0; }
        if (op[0] & 5) throw op[1]; return { value: op[0] ? op[1] : void 0, done: true };
    }
};
var fileListURL = 'file-list.json';
self.skipWaiting();
function fetchAndBust(request) {
    if (typeof request == 'string') {
        request = new Request(request);
    }
    var url = new URL(request.url);
    url.search += Math.random();
    return fetch(url, {
        headers: request.headers,
        mode: request.mode,
        credentials: request.credentials,
        redirect: request.redirect
    });
}
function updateCheck() {
    return __awaiter(this, void 0, void 0, function () {
        var r, fileList, staticCacheName, cacheExists, responses, cache_1, err_1;
        return __generator(this, function (_a) {
            switch (_a.label) {
                case 0: return [4 /*yield*/, fetch(fileListURL)];
                case 1:
                    r = _a.sent();
                    return [4 /*yield*/, r.json()];
                case 2:
                    fileList = _a.sent();
                    staticCacheName = "file-list-v".concat(fileList.version);
                    return [4 /*yield*/, caches.has(staticCacheName)];
                case 3:
                    cacheExists = _a.sent();
                    if (cacheExists) {
                        return [2 /*return*/];
                    }
                    _a.label = 4;
                case 4:
                    _a.trys.push([4, 8, , 9]);
                    return [4 /*yield*/, Promise.all(fileList.files.map(fetchAndBust))];
                case 5:
                    responses = _a.sent();
                    return [4 /*yield*/, caches.open(staticCacheName)];
                case 6:
                    cache_1 = _a.sent();
                    return [4 /*yield*/, Promise.all(responses.map(function (response, i) {
                            if (!response.ok) {
                                throw Error('Not ok');
                            }
                            return cache_1.put(fileList.files[i], response);
                        }))];
                case 7: return [2 /*return*/, _a.sent()];
                case 8:
                    err_1 = _a.sent();
                    caches.delete(staticCacheName);
                    throw err_1;
                case 9: return [2 /*return*/];
            }
        });
    });
}
self.addEventListener('install', function (event) {
    event.waitUntil(updateCheck().catch(function () { return null; }));
});
self.addEventListener('fetch', function (event) {
    var responsePromise = caches
        .keys()
        .then(function (cacheNames) {
        var staticCacheNames = cacheNames.filter(function (n) { return n.startsWith('static-separate-list-v'); });
        if (!staticCacheNames[0]) {
            return fetch(event.request);
        }
        var staticCacheName = staticCacheNames[0];
        return Promise
            .resolve()
            .then(function () {
            if (staticCacheNames.length == 1 || event.request.mode != 'navigate') {
                return;
            }
            return clients
                .matchAll()
                .then(function (clients) {
                if (clients.length > 1) {
                    return;
                }
                staticCacheName = staticCacheNames[staticCacheNames.length - 1];
                return Promise.all(staticCacheNames.slice(0, -1).map(function (c) { return caches.delete(c); }));
            });
        })
            .then(function () {
            return caches
                .open(staticCacheName)
                .then(function (c) { return c.match(event.request); })
                .then(function (response) { return response || fetch(event.request); });
        });
    });
    if (event.request.mode == 'navigate') {
        event.waitUntil(responsePromise.then(updateCheck));
    }
    event.respondWith(responsePromise);
});
