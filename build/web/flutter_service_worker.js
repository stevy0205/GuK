'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';

const RESOURCES = {"assets/AssetManifest.bin": "527316bce79fdd5bfe7d95ea7119cdfc",
"assets/AssetManifest.json": "9cff30c5eda7f6dce0271dd8f98716af",
"assets/assets/audios/favicon.png": "5dcef449791fa27946b3d35ad8803796",
"assets/assets/fonts/favicon.png": "5dcef449791fa27946b3d35ad8803796",
"assets/assets/fonts/Poppins-Medium.ttf": "bf59c687bc6d3a70204d3944082c5cc0",
"assets/assets/fonts/Poppins-Regular.ttf": "093ee89be9ede30383f39a899c485a82",
"assets/assets/images/340992558_3454264874798222_587987482356108699_n.jpg": "1f5a99ad301c2667c8f248fd9fb83e3e",
"assets/assets/images/510cnx2AgiL._AC_SL1001_-removebg-preview.png": "360e03e004bbba385e37af7cce1a6880",
"assets/assets/images/71Y6kCQJOAL._SL1500_-removebg-preview.png": "e2aec99f14a66e3c2a8829caa94ad00b",
"assets/assets/images/7de1fbe5f2166d6dd9fe71c21b2f127275d4e86c.jpg": "cd42777de08f72164f9fc655d86710f8",
"assets/assets/images/Abfall-Pyramide.web_.jpg": "ef3ddfa11b0a3819d195d0a77dd5228f",
"assets/assets/images/Auflaufhohe-Tsunamis.png": "9af029d65029c52d9657241531930d74",
"assets/assets/images/bb096_.gif": "60c315d9c16094a34154964719cf336f",
"assets/assets/images/bg.jpg": "99567e980f632218a68ba3fbe91dbc10",
"assets/assets/images/Bildschirmfoto_2023-06-14_um_11.47.41.png": "cf270aa1f992829d7983f79b7c0bc33d",
"assets/assets/images/Bildschirmfoto_2023-06-22_um_19.28.10.png": "32e7b067ff0669e86ba6cb0c2078e9f3",
"assets/assets/images/Bildschirmfoto_2023-06-22_um_19.28.56.png": "876ff6d7786946a581961f62946331c2",
"assets/assets/images/Bildschirmfoto_2023-06-26_um_00.14.38-removebg-preview.png": "3382f2c02617d5e532f37ebcaf05f7d8",
"assets/assets/images/Bildschirmfoto_2023-06-26_um_00.14.57-removebg-preview.png": "f1e2e7d659542bac3b5882d78ab8978a",
"assets/assets/images/Bildschirmfoto_2023-06-26_um_00.34.26-removebg-preview.png": "68b89fa8c1b83e67c290b3620ea9ce2a",
"assets/assets/images/Bild_14.06.23_um_12.08.jpg": "0e4d3da7f9a97354ac3f33507d761751",
"assets/assets/images/Chemikalien_SS.jfif": "95132645bf0bd01f0798ec63acd841eb",
"assets/assets/images/ezgif.com-gif-maker_(4).gif": "5371d48471549c64c2627a05e8979733",
"assets/assets/images/ezgif.com-gif-maker_(5).gif": "176a2f9d0a62aa0e3b336826458d12a2",
"assets/assets/images/favicon.png": "5dcef449791fa27946b3d35ad8803796",
"assets/assets/images/fussabdruckKH2016.png": "3dfe8d9b2226180dabc7a3a1bec536eb",
"assets/assets/images/fussabdruckTreibhaus.png": "218e23ee962d402fe6601512b01466ec",
"assets/assets/images/geburtenrate.jfif": "5469a99010094d8b0ead6b36b4742d8a",
"assets/assets/images/GENERATIVE-RESEARCH-scaled-1.jpg": "e5098fe8be5d0abab6ff445053e051f8",
"assets/assets/images/greatbarrier_reef.png": "4b645705dbc0acadc2898a371569746f",
"assets/assets/images/Herkunft.jpg": "44b7b4e810d34a0c11239f4b4972260d",
"assets/assets/images/Hitzebedingte_Sterbefalle-DE.png": "db0949bcd4f5e83aa64d0e6bb63a6733",
"assets/assets/images/istockphoto-1227604162-612x612-removebg-preview.png": "177be2c58e4535f5c520f89dae57a42a",
"assets/assets/images/kinder.jpg": "07f72276631fa478e0acd56a083e2d68",
"assets/assets/images/kisspng-australia-blank-map-world-map-clip-art-5b1d20c87fded4.1208872415286355925238.png": "e70538c3068156b86bdbed450543da8b",
"assets/assets/images/kisspng-rain-cloud-clip-art-rain-cloud-5adc6f720cdce7.4385181615243958900527.png": "66872da0f878ad3a39506299c18c9504",
"assets/assets/images/kisspng-team-building-organization-communication-business-team-5ac7b865102820.3160054515230383090662-removebg-preview.png": "39c5fe4182580b4ddd0536c7d0091b9f",
"assets/assets/images/klimakHDreieck.png": "94039d52f1e21ae65425116fbbfcb769",
"assets/assets/images/Kohlenstoffdioxidsattigung.png": "7995461dabb10abb8b55c8e5c9f4954c",
"assets/assets/images/Lsungsmittel_SS.jfif": "7ab8407bc0abbe97f202f088297962b0",
"assets/assets/images/Maske_NR.jfif": "0dc6cea74525b71257bc12562d4d6309",
"assets/assets/images/Mortalitat-Luftverschmutzung.png": "a797e967963a6d11d260f24ef3dbef75",
"assets/assets/images/Naturkatastrophen-Anzahl.png": "0cf06e398bdcdfdb980da460b65a9ee5",
"assets/assets/images/Naturkatastrophen-Mortalitat.png": "d024155eef8c5fd9b806d19b592d95da",
"assets/assets/images/nicht_recyclebar.jfif": "4beb510ae61991d032c6c1ffa73d683d",
"assets/assets/images/OP_Kittel_NR.jfif": "b8cd7bd8dea6876e2b4c8a47daf4dadc",
"assets/assets/images/Ozeane-Temperatur.png": "ed8f6690ef8b15b0469be3d645fb6813",
"assets/assets/images/PH-Wert_der_Ozeane.png": "99f94a7951930af9dfe621b2c461f6ab",
"assets/assets/images/png-transparent-magnifying-glass-green-glass-word-glass-grass-circle-removebg-preview.png": "1b6bc512e2dff0f9240c6ac48330d6ec",
"assets/assets/images/pngegg.png": "4c644732969c06b642d3c4d92919e5e5",
"assets/assets/images/pngwing.com-2.png": "92c17452c48b9f5a59531437954e53e3",
"assets/assets/images/Reagenzglser_R.jfif": "854dbf064e8d23b650d7ae5f7ac56097",
"assets/assets/images/recyclebar.png": "36dcd1fea60516be517833af7e6a9793",
"assets/assets/images/schadstoffe.jfif": "25357f02a1bb61b066b00cfcf8614f7d",
"assets/assets/images/Schnarke.jpg": "8736cea6141a23ceaa845c18fcf3ee04",
"assets/assets/images/Tigermcke.jpg": "77e6e66c389fdb060b30f151f9f67953",
"assets/assets/images/ungdw_D.jpg": "8b6ea3739f48abb12641c7bce6b29b94",
"assets/assets/images/Verbreitung.jpg": "65a5886339837aaea7238f8bfdb667fa",
"assets/assets/images/Verpackun_R.jfif": "f33f4c9d53f28c8658c7f455e63e34b7",
"assets/assets/images/wrong.jpg": "ad0fb7292a9d8c9c2e49e1543eadd42e",
"assets/assets/lottie_animations/favicon.png": "5dcef449791fa27946b3d35ad8803796",
"assets/assets/pdfs/favicon.png": "5dcef449791fa27946b3d35ad8803796",
"assets/assets/rive_animations/favicon.png": "5dcef449791fa27946b3d35ad8803796",
"assets/assets/videos/5Rs_1.mp4": "8f11d94a8fa70a58614f9e99978a9f1f",
"assets/assets/videos/AbfallKH.mp4": "363097106868ff8cc795fb5e023a77af",
"assets/assets/videos/CO2TiereVideo.mp4": "6300ac8a9d6ec93096acf2ced121398f",
"assets/assets/videos/favicon.png": "5dcef449791fa27946b3d35ad8803796",
"assets/assets/videos/Hitze&Infektionen.mp4": "154d0220816f73b9637c6342bb32894a",
"assets/assets/videos/Hitze&Lebensmittel.mp4": "0ba09be95cc04a13f8ea97e97f1b9d26",
"assets/assets/videos/HitzeGeburtenrateVideo.mp4": "0881c62d47192fe017e1bb8874f1de80",
"assets/assets/videos/HitzeTiereVideo.mp4": "9b53a13119311cc714f58df16787137c",
"assets/assets/videos/InhalaGase.mp4": "67d226a0347456a1b6172369504e62ba",
"assets/assets/videos/KlimaneutralesKH.mp4": "731693de4a9905a4ca39497b60e1f2e8",
"assets/assets/videos/Naturkatastrophen&Infektionen.mp4": "910ff38082a5434ffaf1cbb3c22812c3",
"assets/assets/videos/Naturkatastrophen-generell.mp4": "deb00fcd64db39fb8a6d6f09a9d4421d",
"assets/assets/videos/NaturkatastrophenGeburtenrate.mp4": "e138429bd954bbab878271019ec1ac54",
"assets/assets/videos/NaturkatastrophenTiere.mp4": "493c4868293af86d2eb259cfdbe7bf55",
"assets/assets/videos/oekoAbdruck.mp4": "b364465c20de8f44c98ba7399e798d71",
"assets/assets/videos/WhatsApp_Video_2023-07-17_at_10.26.03.mp4": "3af96d69eebbb3fdaede4f3fcfec9961",
"assets/FontManifest.json": "5a32d4310a6f5d9a6b651e75ba0d7372",
"assets/fonts/MaterialIcons-Regular.otf": "e7069dfd19b331be16bed984668fe080",
"assets/NOTICES": "5ed94ba331876fa0ca3d35c2cda5e628",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "6d342eb68f170c97609e9da345464e5e",
"assets/packages/font_awesome_flutter/lib/fonts/fa-brands-400.ttf": "d1722d5cf2c7855862f68edb85e31f88",
"assets/packages/font_awesome_flutter/lib/fonts/fa-regular-400.ttf": "613e4cc1af0eb5148b8ce409ad35446d",
"assets/packages/font_awesome_flutter/lib/fonts/fa-solid-900.ttf": "dd3c4233029270506ecc994d67785a37",
"assets/packages/wakelock_web/assets/no_sleep.js": "7748a45cd593f33280669b29c2c8919a",
"assets/shaders/ink_sparkle.frag": "f8b80e740d33eb157090be4e995febdf",
"canvaskit/canvaskit.js": "5caccb235fad20e9b72ea6da5a0094e6",
"canvaskit/canvaskit.wasm": "0b1ac8e9b3da26bf3a22cbce7d5d82bf",
"canvaskit/chromium/canvaskit.js": "ffb2bb6484d5689d91f393b60664d530",
"canvaskit/chromium/canvaskit.wasm": "8bf5e45028a5fe9985a75713c9859570",
"canvaskit/skwasm.js": "95f16c6690f955a45b2317496983dbe9",
"canvaskit/skwasm.wasm": "93eb09966d97a3088af2316e1af13a96",
"canvaskit/skwasm.worker.js": "51253d3321b11ddb8d73fa8aa87d3b15",
"favicon.png": "2704101cb06ce66e2000356a312be25c",
"flutter.js": "a96e4cac3d2da39d86bf871613180e7b",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"index.html": "0e89f593ce4081bcedc05e38400fe303",
"/": "0e89f593ce4081bcedc05e38400fe303",
"main.dart.js": "73c772a422da07df91ee9bef61e3daa7",
"version.json": "a6fb1b624409a20b384050bb136c2d56"};
// The application shell files that are downloaded before a service worker can
// start.
const CORE = ["main.dart.js",
"index.html",
"assets/AssetManifest.json",
"assets/FontManifest.json"];

// During install, the TEMP cache is populated with the application shell files.
self.addEventListener("install", (event) => {
  self.skipWaiting();
  return event.waitUntil(
    caches.open(TEMP).then((cache) => {
      return cache.addAll(
        CORE.map((value) => new Request(value, {'cache': 'reload'})));
    })
  );
});
// During activate, the cache is populated with the temp files downloaded in
// install. If this service worker is upgrading from one with a saved
// MANIFEST, then use this to retain unchanged resource files.
self.addEventListener("activate", function(event) {
  return event.waitUntil(async function() {
    try {
      var contentCache = await caches.open(CACHE_NAME);
      var tempCache = await caches.open(TEMP);
      var manifestCache = await caches.open(MANIFEST);
      var manifest = await manifestCache.match('manifest');
      // When there is no prior manifest, clear the entire cache.
      if (!manifest) {
        await caches.delete(CACHE_NAME);
        contentCache = await caches.open(CACHE_NAME);
        for (var request of await tempCache.keys()) {
          var response = await tempCache.match(request);
          await contentCache.put(request, response);
        }
        await caches.delete(TEMP);
        // Save the manifest to make future upgrades efficient.
        await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
        // Claim client to enable caching on first launch
        self.clients.claim();
        return;
      }
      var oldManifest = await manifest.json();
      var origin = self.location.origin;
      for (var request of await contentCache.keys()) {
        var key = request.url.substring(origin.length + 1);
        if (key == "") {
          key = "/";
        }
        // If a resource from the old manifest is not in the new cache, or if
        // the MD5 sum has changed, delete it. Otherwise the resource is left
        // in the cache and can be reused by the new service worker.
        if (!RESOURCES[key] || RESOURCES[key] != oldManifest[key]) {
          await contentCache.delete(request);
        }
      }
      // Populate the cache with the app shell TEMP files, potentially overwriting
      // cache files preserved above.
      for (var request of await tempCache.keys()) {
        var response = await tempCache.match(request);
        await contentCache.put(request, response);
      }
      await caches.delete(TEMP);
      // Save the manifest to make future upgrades efficient.
      await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
      // Claim client to enable caching on first launch
      self.clients.claim();
      return;
    } catch (err) {
      // On an unhandled exception the state of the cache cannot be guaranteed.
      console.error('Failed to upgrade service worker: ' + err);
      await caches.delete(CACHE_NAME);
      await caches.delete(TEMP);
      await caches.delete(MANIFEST);
    }
  }());
});
// The fetch handler redirects requests for RESOURCE files to the service
// worker cache.
self.addEventListener("fetch", (event) => {
  if (event.request.method !== 'GET') {
    return;
  }
  var origin = self.location.origin;
  var key = event.request.url.substring(origin.length + 1);
  // Redirect URLs to the index.html
  if (key.indexOf('?v=') != -1) {
    key = key.split('?v=')[0];
  }
  if (event.request.url == origin || event.request.url.startsWith(origin + '/#') || key == '') {
    key = '/';
  }
  // If the URL is not the RESOURCE list then return to signal that the
  // browser should take over.
  if (!RESOURCES[key]) {
    return;
  }
  // If the URL is the index.html, perform an online-first request.
  if (key == '/') {
    return onlineFirst(event);
  }
  event.respondWith(caches.open(CACHE_NAME)
    .then((cache) =>  {
      return cache.match(event.request).then((response) => {
        // Either respond with the cached resource, or perform a fetch and
        // lazily populate the cache only if the resource was successfully fetched.
        return response || fetch(event.request).then((response) => {
          if (response && Boolean(response.ok)) {
            cache.put(event.request, response.clone());
          }
          return response;
        });
      })
    })
  );
});
self.addEventListener('message', (event) => {
  // SkipWaiting can be used to immediately activate a waiting service worker.
  // This will also require a page refresh triggered by the main worker.
  if (event.data === 'skipWaiting') {
    self.skipWaiting();
    return;
  }
  if (event.data === 'downloadOffline') {
    downloadOffline();
    return;
  }
});
// Download offline will check the RESOURCES for all files not in the cache
// and populate them.
async function downloadOffline() {
  var resources = [];
  var contentCache = await caches.open(CACHE_NAME);
  var currentContent = {};
  for (var request of await contentCache.keys()) {
    var key = request.url.substring(origin.length + 1);
    if (key == "") {
      key = "/";
    }
    currentContent[key] = true;
  }
  for (var resourceKey of Object.keys(RESOURCES)) {
    if (!currentContent[resourceKey]) {
      resources.push(resourceKey);
    }
  }
  return contentCache.addAll(resources);
}
// Attempt to download the resource online before falling back to
// the offline cache.
function onlineFirst(event) {
  return event.respondWith(
    fetch(event.request).then((response) => {
      return caches.open(CACHE_NAME).then((cache) => {
        cache.put(event.request, response.clone());
        return response;
      });
    }).catch((error) => {
      return caches.open(CACHE_NAME).then((cache) => {
        return cache.match(event.request).then((response) => {
          if (response != null) {
            return response;
          }
          throw error;
        });
      });
    })
  );
}
