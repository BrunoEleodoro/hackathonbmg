'use strict';
const CACHE_NAME = 'flutter-app-cache';
const RESOURCES = {
  "index.html": "6956699a4735f405fa06aa42d9d657ab",
"/": "6956699a4735f405fa06aa42d9d657ab",
"main.dart.js": "d7de87c102dec37c6ba4c433e620e4bf",
"favicon.png": "5dcef449791fa27946b3d35ad8803796",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"manifest.json": "18c1f57874ea4a19773e147062025fdf",
"assets/LICENSE": "f346ba87ccdde4b8096825b047f20454",
"assets/AssetManifest.json": "3263a081a752b02ad6595ca35f7b78bd",
"assets/FontManifest.json": "1c7e903064df27fa90879bc82dec0556",
"assets/packages/flutter_neumorphic/fonts/NeumorphicIcons.ttf": "32be0c4c86773ba5c9f7791e69964585",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "115e937bb829a890521f72d2e664b632",
"assets/fonts/MaterialIcons-Regular.ttf": "56d3ffdef7a25659eab6a68a3fbfaf16",
"assets/assets/biometria.png": "21b7be248713fffe859fb8c1cb9289dd",
"assets/assets/duda1.png": "deb18676b321a8afa1737c35f9c88ee7",
"assets/assets/duda2.png": "14b38c192050eebf7859c1daf559298d",
"assets/assets/duda3.png": "9d24f09847ca94367908e0b3fc078ce2",
"assets/assets/menu_4.png": "0af25ea267b906b58c64aea542fb7cd2",
"assets/assets/login.png": "032adb18b2c09fad9f7ece44b5a05863",
"assets/assets/menu_1.png": "055d3d8121fd516654b57878308687c7",
"assets/assets/aceita-laranja.png": "4f8d4580922167f7fe6044331b3f0b7f",
"assets/assets/menu_3.png": "9f1b4f8ad95f97cdb050e48fe630dc10",
"assets/assets/menu_2.png": "d1097e769e82e170e6766f02b890c730",
"assets/assets/images/check.png": "d909497ad925458ab30d32322fa20fd1",
"assets/assets/images/castle.png": "f65003cc3ad09de657ed4c6ecf4b80b3",
"assets/assets/images/duda_hack.jpg": "2c2fd5f02e3c345866a13ed897aba4fc",
"assets/assets/images/lock.png": "14f4d3990ccfa4ae01e3933b288481cd",
"assets/assets/images/academy.png": "ea7c301f5451de231bd1e0297636603c",
"assets/assets/images/home.png": "ca2a2a2cb2a48f52dc72c1fb3cc57dbc",
"assets/assets/images/security2.png": "b421e756e3cdd9e070d361ccb840cb0a",
"assets/assets/images/lock_.png": "14f4d3990ccfa4ae01e3933b288481cd",
"assets/assets/images/money.png": "e109cbbc82758d7be0ef0a0eba271e32",
"assets/assets/images/growth.png": "3f83f5953ada2491dde19cd5ed874bec",
"assets/assets/images/profile.png": "e37d81150b4d15b64f30ccdbfff99128",
"assets/assets/images/security.png": "d8fc27a45852bbdd02f847a24168be06",
"assets/assets/images/pig.png": "347e4b105ec10c9a4562446f6b0fe7ba",
"assets/assets/imagem_perfil.png": "7446ffa2cac8a6e24ef6e903ffba0c3b",
"assets/assets/presente.png": "51da85bfa24091597f25dfbf1dac3494",
"assets/assets/trofeu.png": "47d1ffd70efa02b9fcf8834631c44c5d",
"assets/assets/sucesso.png": "086f63af570ac8b1060ba556b8c423b9",
"assets/assets/banco_bmg_logo.png": "a579cac9351bdf9914be8c73e60da374",
"assets/assets/logo.png": "d50793b00aaba54b57636380b901c727",
"assets/assets/Vector%25202.png": "59e8edab883e88fd1a39949efcc20450",
"assets/assets/menu_logo.png": "4100e6e998ae92a4f8b0f77d0f3e6ad4",
"assets/assets/balao.png": "b404841c5a579cb92fff05ab1b991961",
"assets/assets/buscar.svg": "9b80066f2c1440f94d0ea9cfdeee5342",
"assets/assets/perfil.png": "aa80c595d381487680e103faf4d6d6b2",
"assets/assets/logo_bmg.png": "1ab105e73d19e98b8ce9ca0203d8019e",
"assets/assets/buscarAtivo.png": "c8b97c602603ee50e889b11cb1f9235e",
"assets/assets/estrela.png": "9bd9b161faf5b832a4836f2ea8cf598b"
};

self.addEventListener('activate', function (event) {
  event.waitUntil(
    caches.keys().then(function (cacheName) {
      return caches.delete(cacheName);
    }).then(function (_) {
      return caches.open(CACHE_NAME);
    }).then(function (cache) {
      return cache.addAll(Object.keys(RESOURCES));
    })
  );
});

self.addEventListener('fetch', function (event) {
  event.respondWith(
    caches.match(event.request)
      .then(function (response) {
        if (response) {
          return response;
        }
        return fetch(event.request);
      })
  );
});
