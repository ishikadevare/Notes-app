import 'package:firebase_core/firebase_core.dart';

class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    return FirebaseOptions(
      appId: '1:523009132971:android:6d252d247d3b4b2ac8eaee',
      apiKey: 'AIzaSyA1lO0ZjtAHhsNmVXEeWseZ5wpFLtN8kqQ',
      messagingSenderId: 'your_messaging_sender_id',
      projectId: 'notes-app-4552b',
      databaseURL: 'your_database_url',
      storageBucket: 'notes-app-4552b.appspot.com',
    );
  }
}
