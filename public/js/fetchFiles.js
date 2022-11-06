if ("serviceWorker" in navigator) {
    window
        .addEventListener("load", function () {
            navigator
                .serviceWorker
                .register("appCache.min.js");
        });
}
