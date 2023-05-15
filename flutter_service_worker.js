'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';

const RESOURCES = {"flutter.js": "6fef97aeca90b426343ba6c5c9dc5d4a",
"canvaskit/canvaskit.js": "45bec3a754fba62b2d8f23c38895f029",
"canvaskit/canvaskit.wasm": "2b4f8bcd7354dd97ce1674bd362d1f79",
"canvaskit/skwasm.worker.js": "7ec8c65402d6cd2a341a5d66aa3d021f",
"canvaskit/skwasm.wasm": "23ebfb314c102f1ef4413e58d65ff340",
"canvaskit/chromium/canvaskit.js": "6bdd0526762a124b0745c05281c8a53e",
"canvaskit/chromium/canvaskit.wasm": "342ba7a5bdb2614e0745f7b22c80ef48",
"canvaskit/skwasm.js": "7313e68a7969003a7d46549330a6bdba",
"assets/assets/images/mail-HUh.png": "3883ca885a9772cda06f95971e9ba358",
"assets/assets/images/vector-PQh.png": "8462592a3a40ac964251093cde904dca",
"assets/assets/images/behance-5Gy.png": "eca42523f71ca88760b8f02e6de71202",
"assets/assets/images/real-estate-website.png": "b8387517f6faef85f768bdee7ac56e2f",
"assets/assets/images/icon_github_64x.png": "2d1e54d81bd7cb7daa09cea82dcb29e2",
"assets/assets/images/icon-chevron-down.png": "5e6c30c036f4849f46910a0eedfb8bd9",
"assets/assets/images/git-repo.png": "2a3d016d8383d6739a692e34c2207b09",
"assets/assets/images/col-1-Q53.png": "d42dc0d7cb5746e310ee06dfd44df996",
"assets/assets/images/cover-moB.png": "3959e98dfd1780e7ef5e1176876b3ca6",
"assets/assets/images/code.png": "da9a6847cf62c631d3f72c4f859f1788",
"assets/assets/images/vector-7os.png": "3d84211ca63c5e5c8ffa3ae2f5774d41",
"assets/assets/images/javascript.png": "af35f2ebd0fa21eddff47bfb8842a69f",
"assets/assets/images/vector-gh3.png": "c70258ed28cfe45eb38c39aeaf5781a3",
"assets/assets/images/icon-R7T.png": "2958e661369599650be08a2a3dee1b44",
"assets/assets/images/icon-e3f.png": "2958e661369599650be08a2a3dee1b44",
"assets/assets/images/logo.png": "00f0c5e06f532ac8596c9278b7637093",
"assets/assets/images/cover-zzy.png": "66afbd9959a3680c72c6234ec08d842e",
"assets/assets/images/icon-Epu.png": "8fe04a4fff5a562db865488c47e52a3c",
"assets/assets/images/col-1-9vd.png": "43233a3fce912b02584cf77cf3bcfde9",
"assets/assets/images/android.png": "950af5fd961b1e92c51468eb4bdecb7f",
"assets/assets/images/vector-5aV.png": "8462592a3a40ac964251093cde904dca",
"assets/assets/images/ruler&pen.png": "0a5788f795d43122a581de933f50221e",
"assets/assets/images/dribble-C3f.png": "44b2f40ab3f16aef449cd0611bf4a7cb",
"assets/assets/images/icon-DbB.png": "2958e661369599650be08a2a3dee1b44",
"assets/assets/images/rectangle.png": "2ca32851b7c057fad7a2262469cda4c6",
"assets/assets/images/linkedin-aMb.png": "22a12c438a540023624032b30089d52c",
"assets/assets/images/col-1-QFw.png": "e25f63bfb446f06be00736a8e043c69e",
"assets/assets/images/fedex-logo-7rd.png": "a7c3bac21b1612f15393d7a369583088",
"assets/assets/images/vector.png": "4ad9559a65a45e44bd79dae322a3ae62",
"assets/assets/images/vector-aYD.png": "4ad9559a65a45e44bd79dae322a3ae62",
"assets/assets/images/icon-o7b.png": "2958e661369599650be08a2a3dee1b44",
"assets/assets/images/airbnb-logo-NVK.png": "7377d1343e23aecb9d448fb3106c63f9",
"assets/assets/images/cover-3jj.png": "3959e98dfd1780e7ef5e1176876b3ca6",
"assets/assets/images/fedex-logo.png": "d68f0ab8a4471d924aa37a239422939a",
"assets/assets/images/vector-EPw.png": "3d84211ca63c5e5c8ffa3ae2f5774d41",
"assets/assets/images/col-1-vey.png": "fccb8ab78d6bce30cd84f5d66fdaffac",
"assets/assets/images/col-1-JUm.png": "43233a3fce912b02584cf77cf3bcfde9",
"assets/assets/images/vector-XB3.png": "8462592a3a40ac964251093cde904dca",
"assets/assets/images/icon-hGR.png": "2958e661369599650be08a2a3dee1b44",
"assets/assets/images/vector-eyK.png": "1f56c8c6be3381d17d989925511fa7ba",
"assets/assets/images/icon_twitter_64x.png": "514d54a802579a10b988c12dc892e9cb",
"assets/assets/images/ellipse-5.png": "df384c0cf1a0a362100283223c8d3cbb",
"assets/assets/images/logo-Xjj.png": "b1b04d87d53875c0f609887f296b7023",
"assets/assets/images/linkedin.png": "3c4f9b20cbe5a1a73cdf988a119fa816",
"assets/assets/images/vector-BCZ.png": "8462592a3a40ac964251093cde904dca",
"assets/assets/images/cover-gJZ.png": "7a0fa3b337fe323e2c0f63d9e60f636d",
"assets/assets/images/icon.png": "8fe04a4fff5a562db865488c47e52a3c",
"assets/assets/images/col-1-yRf.png": "e25f63bfb446f06be00736a8e043c69e",
"assets/assets/images/vector-42h.png": "c70258ed28cfe45eb38c39aeaf5781a3",
"assets/assets/images/dribble.png": "e263c618f44ec0ea724efcdf9cb71068",
"assets/assets/images/mail.png": "6fd80abed8aa8562674376c8fac55ef9",
"assets/assets/images/cover-4SR.png": "7a0fa3b337fe323e2c0f63d9e60f636d",
"assets/assets/images/cover-dSm.png": "66afbd9959a3680c72c6234ec08d842e",
"assets/assets/images/icon-Nh3.png": "2958e661369599650be08a2a3dee1b44",
"assets/assets/images/col-1-Afo.png": "fccb8ab78d6bce30cd84f5d66fdaffac",
"assets/assets/images/col-1-6zZ.png": "d42dc0d7cb5746e310ee06dfd44df996",
"assets/assets/images/behance.png": "5d1bd789ff0c1fa02398c1f360387443",
"assets/assets/images/icon-chevron-down-xny.png": "5e6c30c036f4849f46910a0eedfb8bd9",
"assets/assets/images/slider.png": "1fd95f93668cc36947879f5712288484",
"assets/assets/images/airbnb-logo.png": "7377d1343e23aecb9d448fb3106c63f9",
"assets/assets/images/vector-3EM.png": "1f56c8c6be3381d17d989925511fa7ba",
"assets/shaders/ink_sparkle.frag": "f8b80e740d33eb157090be4e995febdf",
"assets/fonts/MaterialIcons-Regular.otf": "52fc34a70b225832e47b13c384bc9b3e",
"assets/NOTICES": "2d0b8170ea13a782613f3551a3416ea3",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "57d849d738900cfd590e9adc7e208250",
"assets/FontManifest.json": "dc3d03800ccca4601324923c0b1d6d57",
"assets/AssetManifest.bin": "0a9cccf45e70442d4f586c2941d97023",
"assets/AssetManifest.json": "2d0a80d5e61132420a088cb7b1914443",
"index.html": "404dae89e4c585ae98c69c39e610c906",
"/": "404dae89e4c585ae98c69c39e610c906",
"favicon.png": "5dcef449791fa27946b3d35ad8803796",
"version.json": "009c9e65172e010890f7f65fde438006",
"icons/Icon-maskable-192.png": "c457ef57daa1d16f64b27b786ec2ea3c",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"icons/Icon-maskable-512.png": "301a7604d45b3e739efc881eb04896ea",
"main.dart.js": "56cab00b885455efb18d40bcab6e043f",
"manifest.json": "d40c47d1c161f94dbcb13094d37f1f55"};
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
