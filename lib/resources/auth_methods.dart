import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class AuthMethods {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final FirebaseFirestore _firebaseFirestore = FirebaseFirestore.instance;
  Future<String> signUpUser({
    required String email,
    required String password,
    required String userName,
    required String bio,
  }) async {
    String res = "Some error occured";
    try {
      if (email.isNotEmpty ||
              password.isNotEmpty ||
              userName.isNotEmpty ||
              bio.isNotEmpty
          // ignore: unnecessary_null_comparison
          ) {
        ///register the user
        // ignore: unused_local_variable
        UserCredential cred = await _auth.createUserWithEmailAndPassword(
            email: email, password: password);

        ///add user to dtabase
        await _firebaseFirestore.collection('users').doc(cred.user!.uid).set({
          'username': userName,
          'uid': cred.user!.uid,
          'email': email,
          'bio': "bio",
          'followers': [],
          'following': []
        });
        // await _firebaseFirestore.collection('users').add(cred.user!.uid).set({
        //   'username': userName,
        //   'uid': cred.user!.uid,
        //   'email': email,
        //   'bio': bio,
        //   'followers': [],
        //   'following': []
        // });
        res = "success";
      }
    } catch (err) {
      res = err.toString();
    }

    return res;
  }
}
