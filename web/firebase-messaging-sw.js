importScripts("https://www.gstatic.com/firebasejs/8.10.1/firebase-app.js");
importScripts("https://www.gstatic.com/firebasejs/8.10.1/firebase-messaging.js");

firebase.initializeApp({
    apiKey: 'AIzaSyCxXem2CqAL-HucEey7v9DcxH2l3cVofic',
    appId: '1:591532309022:web:d9d606c5eb367491ce8c0f',
    messagingSenderId: '591532309022',
    projectId: 'nexus-graph',
    authDomain: 'nexus-graph.firebaseapp.com',
    databaseURL: 'https://nexus-graph-default-rtdb.firebaseio.com',
    storageBucket: 'nexus-graph.appspot.com',
    measurementId: 'G-546ZK50GVY',
});

const messaging = firebase.messaging();

messaging.setBackgroundMessageHandler(function (payload) {
    const promiseChain = clients
        .matchAll({
            type: "window",
            includeUncontrolled: true
        })
        .then(windowClients => {
            for (let i = 0; i < windowClients.length; i++) {
                const windowClient = windowClients[i];
                windowClient.postMessage(payload);
            }
        })
        .then(() => {
            const title = payload.notification.title;
            const options = {
                body: payload.notification.score
              };
            return registration.showNotification(title, options);
        });
    return promiseChain;
});
self.addEventListener('notificationclick', function (event) {
    console.log('notification received: ', event)
});