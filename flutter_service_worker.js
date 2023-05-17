'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';

const RESOURCES = {"flutter.js": "6fef97aeca90b426343ba6c5c9dc5d4a",
"canvaskit/canvaskit.js": "76f7d822f42397160c5dfc69cbc9b2de",
"canvaskit/canvaskit.wasm": "f48eaf57cada79163ec6dec7929486ea",
"canvaskit/skwasm.worker.js": "19659053a277272607529ef87acf9d8a",
"canvaskit/skwasm.wasm": "6711032e17bf49924b2b001cef0d3ea3",
"canvaskit/chromium/canvaskit.js": "8c8392ce4a4364cbb240aa09b5652e05",
"canvaskit/chromium/canvaskit.wasm": "fc18c3010856029414b70cae1afc5cd9",
"canvaskit/skwasm.js": "1df4d741f441fa1a4d10530ced463ef8",
"assets/assets/images/buzymart.png": "74762cbcb7d475fefb4866bf5e049cb4",
"assets/assets/images/real-estate-website.png": "b8387517f6faef85f768bdee7ac56e2f",
"assets/assets/images/icon_github_64x.png": "2d1e54d81bd7cb7daa09cea82dcb29e2",
"assets/assets/images/todo-app.png": "aaf107eeeea2ff6cdb6c33f7d9e60ed4",
"assets/assets/images/git-repo.png": "2a3d016d8383d6739a692e34c2207b09",
"assets/assets/images/col-1-Q53.png": "d42dc0d7cb5746e310ee06dfd44df996",
"assets/assets/images/code.png": "da9a6847cf62c631d3f72c4f859f1788",
"assets/assets/images/javascript.png": "af35f2ebd0fa21eddff47bfb8842a69f",
"assets/assets/images/mockuper%2520(2).png": "68b7826020b17d361d60fce0500a6162",
"assets/assets/images/buzymart-seller.png": "ce97a3c65e31125d3bb2c908f79dcc8e",
"assets/assets/images/col-1-9vd.png": "43233a3fce912b02584cf77cf3bcfde9",
"assets/assets/images/coollogo_com.png": "95d486a14af124975bf73415d3516411",
"assets/assets/images/android.png": "950af5fd961b1e92c51468eb4bdecb7f",
"assets/assets/images/ruler&pen.png": "0a5788f795d43122a581de933f50221e",
"assets/assets/images/linkedin-aMb.png": "22a12c438a540023624032b30089d52c",
"assets/assets/images/col-1-QFw.png": "e25f63bfb446f06be00736a8e043c69e",
"assets/assets/images/col-1-JUm.png": "43233a3fce912b02584cf77cf3bcfde9",
"assets/assets/images/about-me.jpg": "777ca6708b747cdc43a9675578184038",
"assets/assets/images/icon_twitter_64x.png": "514d54a802579a10b988c12dc892e9cb",
"assets/assets/images/bloc.png": "148e35b24ac15f461798739f22e010cc",
"assets/assets/images/api.png": "49621e71be6329699d72dec15f144c95",
"assets/assets/images/linkedin.png": "3c4f9b20cbe5a1a73cdf988a119fa816",
"assets/assets/images/flutter.png": "4d5b3ea2234a2e959450efb3b933f515",
"assets/assets/images/cicd.png": "18a4f39b4c62ac4371fd4ba3196cc360",
"assets/assets/images/header-image.png": "4b3a5670c25528d1866d7c028a0613f8",
"assets/assets/images/git.png": "b8065e48b4c3d1850239b9ee15aaa802",
"assets/assets/images/col-1-yRf.png": "e25f63bfb446f06be00736a8e043c69e",
"assets/assets/images/mail.png": "6fd80abed8aa8562674376c8fac55ef9",
"assets/assets/images/firebase.png": "35436ebe6206a05522423551913de65b",
"assets/assets/images/col-1-6zZ.png": "d42dc0d7cb5746e310ee06dfd44df996",
"assets/assets/images/slider.png": "1fd95f93668cc36947879f5712288484",
"assets/assets/images/ui.png": "8a569745a3a7111116c77785eb7130c6",
"assets/shaders/ink_sparkle.frag": "f8b80e740d33eb157090be4e995febdf",
"assets/fonts/MaterialIcons-Regular.otf": "525c34036f09665313405224b225e340",
"assets/NOTICES": "0a125d5ff107a5cd99ceb07ce1d069bf",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "57d849d738900cfd590e9adc7e208250",
"assets/FontManifest.json": "dc3d03800ccca4601324923c0b1d6d57",
"assets/AssetManifest.bin": "7e3fce52fd71dacc927cd13575f29af4",
"assets/AssetManifest.json": "c462d600dde842e5a511be5e240799be",
"index.html": "d50bdb3384d1d372f7bc5c154b02bb7a",
"/": "d50bdb3384d1d372f7bc5c154b02bb7a",
"favicon.png": "5dcef449791fa27946b3d35ad8803796",
"version.json": "009c9e65172e010890f7f65fde438006",
"icons/Icon-maskable-192.png": "c457ef57daa1d16f64b27b786ec2ea3c",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"icons/Icon-maskable-512.png": "301a7604d45b3e739efc881eb04896ea",
"main.dart.js": "3108f95a6e3692595a347a2d4195cc2d",
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
