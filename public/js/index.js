if ("serviceWorker" in navigator) {
    window
        .addEventListener("load", function () {
            navigator
                .serviceWorker
                .register("sw.js", {scope: "/"})
                .then(reg) => {
                console.log("Registration Complete")
            })
        };
