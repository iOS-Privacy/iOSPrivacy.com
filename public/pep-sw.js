!function (e) {
    var t = {};
    function n(r) {
        if (t[r]) 
            return t[r].exports;
        var o = t[r] = {
            i: r,
            l: !1,
            exports: {}
        };
        return e[r].call(o.exports, o, o.exports, n),
        o.l = !0,
        o.exports
    }
    n.m = e,
    n.c = t,
    n.d = function (e, t, r) {
        n.o(e, t) || Object.defineProperty(e, t, {
            enumerable: !0,
            get: r
        })
    },
    n.r = function (e) {
        "undefined" != typeof Symbol && Symbol.toStringTag && Object.defineProperty(e, Symbol.toStringTag, {value: "Module"}),
        Object.defineProperty(e, "__esModule", {
            value: !0
        })
    },
    n.t = function (e, t) {
        if (1 & t && (e = n(e)), 8 & t) 
            return e;
        if (4 & t && "object" == typeof e && e && e.__esModule) 
            return e;
        var r = Object.create(null);
        if (n.r(r), Object.defineProperty(r, "default", {
            enumerable: !0,
            value: e
        }), 2 & t && "string" != typeof e) 
            for (var o in e) 
                n.d(r, o, function (t) {
                    return e[t]
                }.bind(null, o));
    return r
    },
    n.n = function (e) {
        var t = e && e.__esModule
            ? function () {
                return e.default
            }
            : function () {
                return e
            };
        return n.d(t, "a", t),
        t
    },
    n.o = function (e, t) {
        return Object
            .prototype
            .hasOwnProperty
            .call(e, t)
    },
    n.p = "",
    n(n.s = 99)
}({
    3: function (e, t, n) {
        "use strict";
        n.d(t, "g", (function () {
            return o
        })),
        n.d(t, "h", (function () {
            return c
        })),
        n.d(t, "a", (function () {
            return i
        })),
        n.d(t, "i", (function () {
            return u
        })),
        n.d(t, "k", (function () {
            return f
        })),
        n.d(t, "j", (function () {
            return d
        })),
        n.d(t, "f", (function () {
            return a
        })),
        n.d(t, "d", (function () {
            return s
        })),
        n.d(t, "e", (function () {
            return l
        })),
        n.d(t, "b", (function () {
            return v
        })),
        n.d(t, "c", (function () {
            return b
        }));
        var r = "pep:",
            o = {
                PEP_CONFIG: "".concat(r, "config"),
                WIDGET_CONFIG: "".concat(r, "widgetConfig"),
                PWA_INSTALLED: "".concat(r, "pwaInstalled")
            },
            c = "/".concat("shared-worker", ".js"),
            i = "/".concat("dedicated-worker", ".js"),
            u = "/".concat("pep-sw-core", ".js"),
            p = "".concat("pep-sw", ".js"),
            f = ("/".concat(p), "/".concat("pep-sw"), "https://pep.dev/pep.js"),
            d = "pausedByPep",
            a = "pep-sync",
            s = "pep-navigation",
            l = /\/_pep_offline/,
            v = "pep-db",
            b = "key-val-store"
    },
    99: function (e, t, n) {
        "use strict";
        n.r(t);
        var r = n(3);
        self.isPepRootWorker = !0;
        if ("undefined" != typeof ServiceWorkerGlobalScope) {
            var o = "https://pep.dev" + r.i;
            importScripts(o)
        } else if ("undefined" != typeof SharedWorkerGlobalScope) {
            var c = "https://pep.dev" + r.h;
            importScripts(c)
        } else if ("undefined" != typeof DedicatedWorkerGlobalScope) {
            var i = "https://pep.dev" + r.a;
            importScripts(i)
        }
    }
});
