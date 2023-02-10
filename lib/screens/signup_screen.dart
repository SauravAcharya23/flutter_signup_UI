

import 'package:flutter/material.dart';
import 'package:signup_ui/widgets/text_button.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    bool textHide = true;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(height: 30,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset('assets/logo/leaf.jpg', height: 60,),
                    const Text('Leafgradle', style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold,letterSpacing: 2.0),),
                  ],
                ),
                const Center(child: Text('Work without limits', style: TextStyle(fontSize: 20,wordSpacing: 2.0),)),
                const SizedBox(height: 50,),
                const Text('Your email address',  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),),
                const SizedBox(height: 10,),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15.0),
                  child: TextField(
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10.0)),
                        borderSide: BorderSide(color: Colors.black26)
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10.0)),
                        borderSide: BorderSide(color: Colors.black26)
                      ),
                      hintText: 'david@gmail.com'
                    ),
                  ),
                ),
                const SizedBox(height: 40,),
                const Text('Choose a password',  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),),
                const SizedBox(height: 10,),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15.0),
                  child: TextField(
                    obscureText: textHide,
                    decoration: InputDecoration(
                      
                      enabledBorder: const OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10.0)),
                        borderSide: BorderSide(color: Colors.black26)
                      ),
                      focusedBorder: const OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10.0)),
                        borderSide: BorderSide(color: Colors.black26)
                      ),
                      
                      hintText: 'david@gmail.com',
                      suffixIcon: InkWell(onTap: (){}, child: const Icon(Icons.visibility_off_rounded)),
                      //suffixIcon: textHide == true ? const Icon(Icons.visibility_off_rounded) : const Icon(Icons.remove_red_eye_outlined)
                      //suffixIcon: Icon(Icons.remove_red_eye_outlined),
                    ),
                    
                  ),
                ),
                const SizedBox(height: 50,),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 75),
                  child: InkWell(
                    onTap: (){},
                    child: textButton(textValue: 'Continue'),
                  ),
                ),
                const SizedBox(height: 20,),
                Row(
                  children:const [
                    Expanded(child: Divider(thickness: 2,endIndent: 15.0,)),
                    Text('Or'),
                    Expanded(child: Divider(thickness: 2,indent: 15.0,)),
                  ],
                ),
                const SizedBox(height: 50,),
                InkWell(
                  onTap: (){},
                  child: Container(
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.0),
                      border: Border.all(width: 1,)
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset('assets/logo/google.png', height: 30,),
                        const SizedBox(width: 15,),
                        const Text('Sign up with Google', style: TextStyle(fontSize: 16),),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 20,),
                InkWell(
                  onTap: (){},
                  child: Container(
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.0),
                      border: Border.all(width: 1,)
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset('assets/logo/apple.png', height: 30,),
                        const SizedBox(width: 15,),
                        const Text('Sign up with Apple', style: TextStyle(fontSize: 16),),
                      ],
                    ),
                  ),
                )
        
                
                
              ],
            ),
          ),
        ),
      ),
    );
  }
}