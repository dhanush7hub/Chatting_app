// import 'package:firebase_core/firebase_core.dart';
// import 'package:flutter/material.dart';
// import 'package:firebase_auth/firebase_auth.dart';

// import '/screens/splash_screen.dart';
// import '/screens/auth_screen.dart';
// import './screens/chat_screen.dart';

// void main() async {
//   WidgetsFlutterBinding.ensureInitialized();
//   await Firebase.initializeApp();
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       title: 'ChesseChat',
//       theme: ThemeData(
//         primarySwatch: Colors.orange,
//       ),
//       home: StreamBuilder(
//         stream: FirebaseAuth.instance.authStateChanges(),
//         builder: (ctx, userSnapShot) {
//           if (userSnapShot.connectionState == ConnectionState.waiting) {
//             return SplashaScreen();
//           }
//           if (userSnapShot.hasData) {
//             return ChatScreen();
//           }
//           return AuthScreen();
//         },
//       ),
//     );
//   }
// }

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "stufee",
        home: Scaffold(
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            // crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 100),
                child: Container(
                  child: Image.asset(
                    'assets/images/suiii.jpeg',
                    fit: BoxFit.fill,
                  ),
                  height: 150,
                  width: 150,
                ),
              ),
              SizedBox(
                // padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Text(
                  'Login to your account',
                  style: TextStyle(
                    fontSize: 30,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.left,
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 30, horizontal: 25),
                child: Form(
                  child: Column(
                    children: [
                      TextFormField(
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                          labelText: 'Username or email or mobile',
                        ),
                        onChanged: (String value) {},
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      TextFormField(
                        keyboardType: TextInputType.visiblePassword,
                        decoration: InputDecoration(
                          labelText: 'Password',
                        ),
                        onChanged: (String value) {},
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text.rich(
                        TextSpan(
                          text: 'Forgot password?',
                          children: [
                            TextSpan(
                              text: 'Reset',
                              style: TextStyle(color: Colors.orange),
                              recognizer: TapGestureRecognizer()..onTap = () {},
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      MaterialButton(
                        minWidth: double.infinity,
                        onPressed: () {},
                        child: Text('Login'),
                        color: Colors.orange,
                        textColor: Colors.white,
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text.rich(
                        TextSpan(
                          text: 'Dont have an account?',
                          children: [
                            TextSpan(
                              text: 'create',
                              style: TextStyle(color: Colors.orange),
                              recognizer: TapGestureRecognizer()..onTap = () {},
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ));
  }
}
