import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class EditProfileScreen extends StatefulWidget {
  static const String id = 'editprofile_screen';

  @override
  _EditProfileScreenState createState() => _EditProfileScreenState();
}

class _EditProfileScreenState extends State<EditProfileScreen> {
  String namaInput;
  String nimInput;
  String kelasInput;
  final firestoreInstance = FirebaseFirestore.instance;

  @override
  Widget build(BuildContext context) {
    // getData();
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
            Text('Atur Profile', style: TextStyle(fontSize: 32.0,fontWeight: FontWeight.w700),),
            SizedBox(height: 20.0,),
            TextField(onChanged: (value) {namaInput = value;}, decoration: InputDecoration(labelText: 'Nama'),),
            SizedBox(height: 20.0,),
            TextField(onChanged: (value) {nimInput = value;}, decoration: InputDecoration(labelText: 'Nim'),),
            SizedBox(height: 20.0,),
            TextField(onChanged: (value) {kelasInput = value;}, decoration: InputDecoration(labelText: 'Kelas'),),
            SizedBox(height: 20.0,),
            ],
          ),
        ),
        bottomSheet: Card(
          child: ListTile(
            trailing: IconButton(
              icon: Icon(Icons.send),
              onPressed: () async {
                var loggedInUser = FirebaseAuth.instance.currentUser;
                await firestoreInstance.collection('profil').doc(loggedInUser.email).set({
                  'nama': '$namaInput',
                  'nim': '$nimInput',
                  'kelas': '$kelasInput'
                }).then((value) => print(
                  '${loggedInUser.displayName} berhasil menambahkan moods'))
              .catchError(
                (error) => print('Gagal menambahkan moods ke database'));
              Navigator.pop(context);
              },
            ),
          ),
        ),
      ),
    );
  }
}