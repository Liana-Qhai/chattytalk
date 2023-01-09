// importScripts('https://www.gstatic.com/firebasejs/8.4.1/firebase-app.js');
// importScripts('https://www.gstatic.com/firebasejs/8.4.1/firebase-messaging.js');

//    /*Update with yours config*/
//   // Your web app's Firebase configuration
//   const firebaseConfig = {
//     apiKey: "AIzaSyCGWhwnIdOmBbp8cIg_1A8bDleiE6aSOt0",
//     authDomain: "chattytalk-2bfa9.firebaseapp.com",
//     projectId: "chattytalk-2bfa9",
//     storageBucket: "chattytalk-2bfa9.appspot.com",
//     messagingSenderId: "45413334600",
//     appId: "1:45413334600:web:b74e35bf276a891f39a27d",
//     measurementId: "G-N69ZFDVKFQ"
//   };

//   // Initialize Firebase
//   const app = initializeApp(firebaseConfig);
//   const analytics = getAnalytics(app);

//   const messaging = firebase.messaging();

//   /*messaging.onMessage((payload) => {
//   console.log('Message received. ', payload);*/
//   messaging.onBackgroundMessage(function(payload) {
//     console.log('Received background message ', payload);

//     const notificationTitle = payload.notification.title;
//     const notificationOptions = {
//       body: payload.notification.body,
//     };

//     self.registration.showNotification(notificationTitle,
//       notificationOptions);
//   });