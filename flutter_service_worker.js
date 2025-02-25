'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';

const RESOURCES = {"flutter_bootstrap.js": "31b05e50a140fee7823581694c7157ac",
"version.json": "009c9e65172e010890f7f65fde438006",
"index.html": "ceadfda9640e2af2287d56bd7cc88810",
"/": "ceadfda9640e2af2287d56bd7cc88810",
"CNAME": "8644540ae786fcad1400b133df51568a",
"main.dart.js": "f70dc4bd2841f280daa937edd3792920",
"flutter.js": "4b2350e14c6650ba82871f60906437ea",
"favicon.png": "fd04eeeb494f3ca21c721c1ffc3467a2",
"icons/favicon-16x16.png": "823ecea71749e4f4cb79ce2ff8566d16",
"icons/apple-icon.png": "4bee4120913c2ed1f0f454018c410b75",
"icons/apple-icon-144x144.png": "bda30825727bdd525487bb563aa81712",
"icons/android-icon-192x192.png": "9cb01e7e8b62db7083b172f011f72855",
"icons/apple-icon-precomposed.png": "4bee4120913c2ed1f0f454018c410b75",
"icons/apple-icon-114x114.png": "fefd02fe227838d5be7c175623041cac",
"icons/ms-icon-310x310.png": "a4d790c14a5bc9305ff1a01bda653ce3",
"icons/ms-icon-144x144.png": "bda30825727bdd525487bb563aa81712",
"icons/apple-icon-57x57.png": "d7204b9874876d2e41461a9b5a043823",
"icons/apple-icon-152x152.png": "5bed2a634ec2083dbfdaa250448b6fd8",
"icons/ms-icon-150x150.png": "40d0d4b912026c11d62d1cf18bbf492c",
"icons/android-icon-72x72.png": "4474d96d73deb848982f83e0daea5e44",
"icons/android-icon-96x96.png": "87280b468cf38c9adb6715ee8b35edb0",
"icons/android-icon-36x36.png": "0ad445940bc16c24118f5b37dd090f91",
"icons/apple-icon-180x180.png": "fa67d3b83dd89a580674bd829ec5908f",
"icons/favicon-96x96.png": "56f02d8c53563237021e07416f55f66f",
"icons/android-icon-48x48.png": "72b20663f55b4627c089bdf805ae7885",
"icons/apple-icon-76x76.png": "95d4a88e256545bf30ed957f2535bc6e",
"icons/apple-icon-60x60.png": "d047f72f746fa5a1d1e416b67ccf4751",
"icons/android-icon-144x144.png": "bda30825727bdd525487bb563aa81712",
"icons/apple-icon-72x72.png": "4474d96d73deb848982f83e0daea5e44",
"icons/apple-icon-120x120.png": "d4f704ef6b094fbb7970a6bbc3c7ecf4",
"icons/favicon-32x32.png": "fd04eeeb494f3ca21c721c1ffc3467a2",
"icons/ms-icon-70x70.png": "1489417a44b266e469bc96f3c9728c20",
"manifest.json": "75b45a57a42370570e46df518dbb00b5",
"assets/AssetManifest.json": "a541a520ba0035f6c58fe12425917b21",
"assets/NOTICES": "444685ad5125739bf584dae0036ad4f2",
"assets/FontManifest.json": "355ed0ad63ab873c8b97a42abc967366",
"assets/AssetManifest.bin.json": "698bc13a31305f93b9cf92f5e060ce94",
"assets/packages/fluttericon/lib/fonts/Octicons.ttf": "7242d2fe9e36eb4193d2bc7e521779bf",
"assets/packages/fluttericon/lib/fonts/Maki.ttf": "9ecdcd7d24a2461a55d532b86b2740bd",
"assets/packages/fluttericon/lib/fonts/Brandico.ttf": "791921e9b25210e2551b6eda3f86c733",
"assets/packages/fluttericon/lib/fonts/Entypo.ttf": "58edfaf27b1032ea4778b69297c02b5a",
"assets/packages/fluttericon/lib/fonts/Fontelico.ttf": "3a1e1cecf0a3eae6be5cba3677379ba2",
"assets/packages/fluttericon/lib/fonts/Iconic.ttf": "34e12214307f5f7cf7bc62086fbf55a3",
"assets/packages/fluttericon/lib/fonts/LineariconsFree.ttf": "276b1d61e45eb9b2dde9482545d9e3ac",
"assets/packages/fluttericon/lib/fonts/RpgAwesome.ttf": "99232001effca5cf2b5aa92cc3f3e892",
"assets/packages/fluttericon/lib/fonts/Typicons.ttf": "3386cae1128e52caf268508d477fb660",
"assets/packages/fluttericon/lib/fonts/FontAwesome.ttf": "799bb4e5c577847874f20bd0e9b38a9d",
"assets/packages/fluttericon/lib/fonts/Zocial.ttf": "c29d6e34d8f703a745c6f18d94ce316d",
"assets/packages/fluttericon/lib/fonts/WebSymbols.ttf": "4fd66aa74cdc6e5eaff0ec916ac269c6",
"assets/packages/fluttericon/lib/fonts/Linecons.ttf": "548e23fc7bad04faf2d97d3c89831286",
"assets/packages/fluttericon/lib/fonts/FontAwesome5.ttf": "221b27a41202ddd33990e299939e4504",
"assets/packages/fluttericon/lib/fonts/Elusive.ttf": "23f24df0388819e94db2b3c19841841c",
"assets/packages/fluttericon/lib/fonts/MfgLabs.ttf": "09daa533ea11600a98e3148b7531afe3",
"assets/packages/fluttericon/lib/fonts/Meteocons.ttf": "8b9c7982496155bb39c67eaf2a243731",
"assets/packages/fluttericon/lib/fonts/ModernPictograms.ttf": "5046c536516be5b91c15eb7795e0352d",
"assets/shaders/ink_sparkle.frag": "ecc85a2e95f5e9f53123dcaf8cb9b6ce",
"assets/AssetManifest.bin": "f1d450d00d0ef325a9ef52d57c5a94c6",
"assets/fonts/MaterialIcons-Regular.otf": "0db35ae7a415370b89e807027510caf0",
"assets/assets/icon/experience/snapp.png": "1e5f4c2335a5a7c840cbc2c90ef5da34",
"assets/assets/icon/experience/persian_flutter.jpg": "0b9eb1ca02cd6e62874eef56536c1c47",
"assets/assets/icon/experience/ra.png": "a611d08e2435d00f76ff1174a4abf81e",
"assets/assets/icon/experience/rekab.png": "27ba5f0f6690d03eaf2ce6376f159d45",
"assets/assets/icon/experience/dropp.png": "400e12eb158e75a90608e528021841ef",
"assets/assets/icon/social/telegram.png": "586043e27864cdcd14b3817205ec5b78",
"assets/assets/icon/social/instagram.png": "be1ca6c9677e18e6750baa7a641d6b61",
"assets/assets/icon/social/github.png": "e5d7b714db55e4877ebbd41c65f00937",
"assets/assets/icon/social/github_2.png": "f738afb22ca8d1d162fd421ef1e7d67b",
"assets/assets/icon/social/medium.png": "8a3d2290f969da079b45c996c87b57a7",
"assets/assets/icon/social/slack.png": "aef39e1bd6e6ee12516b4866bbac4a06",
"assets/assets/icon/social/twitter.png": "1343d1d0e5c8f627e3a382c0eb3e45b5",
"assets/assets/icon/social/linkedin.png": "20ce96b1d323f627ce93ce7ec6a852db",
"assets/assets/icon/social/twitch.png": "f5f902f1c698012d6911b1efc2c43d65",
"assets/assets/icon/social/youtube.png": "43070f1f59c4ffe33850fd90dc95991b",
"assets/assets/icon/social/stackoverflow.png": "280fafabe388b4b6d6b88d142d2be76f",
"canvaskit/skwasm.js": "ac0f73826b925320a1e9b0d3fd7da61c",
"canvaskit/skwasm.js.symbols": "96263e00e3c9bd9cd878ead867c04f3c",
"canvaskit/canvaskit.js.symbols": "efc2cd87d1ff6c586b7d4c7083063a40",
"canvaskit/skwasm.wasm": "828c26a0b1cc8eb1adacbdd0c5e8bcfa",
"canvaskit/chromium/canvaskit.js.symbols": "e115ddcfad5f5b98a90e389433606502",
"canvaskit/chromium/canvaskit.js": "b7ba6d908089f706772b2007c37e6da4",
"canvaskit/chromium/canvaskit.wasm": "ea5ab288728f7200f398f60089048b48",
"canvaskit/canvaskit.js": "26eef3024dbc64886b7f48e1b6fb05cf",
"canvaskit/canvaskit.wasm": "e7602c687313cfac5f495c5eac2fb324",
"canvaskit/skwasm.worker.js": "89990e8c92bcb123999aa81f7e203b1c"};
// The application shell files that are downloaded before a service worker can
// start.
const CORE = ["main.dart.js",
"index.html",
"flutter_bootstrap.js",
"assets/AssetManifest.bin.json",
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
