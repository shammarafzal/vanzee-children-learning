import 'package:flutter/material.dart';

class AboutApp extends StatelessWidget {
  const AboutApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor:  Color(0xffF0FAFE),
        elevation: 0,
        leading: InkWell(
          onTap: (){
            Navigator.pop(context);
          },
          child: Icon(Icons.arrow_back_ios_new, color: Colors.green,),
        ),
      ),
      backgroundColor: Color(0xffF0FAFE),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 50),
        color: Color(0xffF0FAFE),
        child: ListView(
          children: [
            Text('About App', style: TextStyle(color: Colors.green, fontWeight: FontWeight.bold, fontSize: 24),),
            SizedBox(height: 10,),
            Text('The app has 3 stories and is designed to be engaging and fun. It is important to allow the child to go at his/her pace with each target sound.'
              , style: TextStyle(color: Color(0xff000000), fontWeight: FontWeight.normal, fontSize: 16),),
            SizedBox(height: 10,),
            Text('Adults should participate with the child by: ', style: TextStyle(color: Colors.green, fontWeight: FontWeight.bold, fontSize: 20),),
            SizedBox(height: 5,),
            Text('1. Repeating target sounds in a fun animated way, so that the child has a model. Make sure the child sees your face.'
              , style: TextStyle(color: Color(0xff000000), fontWeight: FontWeight.normal, fontSize: 16),),
            SizedBox(height: 5,),
            Text('2. Clicking the videos and imitating the sounds in the videos.'
              , style: TextStyle(color: Color(0xff000000), fontWeight: FontWeight.normal, fontSize: 16),),
            SizedBox(height: 5,),
            Text('3. Pausing to give the child the opportunity to say a word, but do not try to make the child say the word.'
              , style: TextStyle(color: Color(0xff000000), fontWeight: FontWeight.normal, fontSize: 16),),
            SizedBox(height: 5,),
            Text('4. Let the child press a target word often. Repetition is the key to learning.'
              , style: TextStyle(color: Color(0xff000000), fontWeight: FontWeight.normal, fontSize: 16),),
            SizedBox(height: 5,),
            Text('5. Go to talktalesbooks.com to learn more and to download a free practice words worksheet.'
              , style: TextStyle(color: Color(0xff000000), fontWeight: FontWeight.normal, fontSize: 16),),
            SizedBox(height: 5,),
            Text('DO NOT make interaction with this app “work,” or the child will shut down. Let the child lead and have fun with the app. The child may need to hear the words multiple times before he/she makes a word attempt.'
              , style: TextStyle(color: Color(0xff000000), fontWeight: FontWeight.normal, fontSize: 16),),
            SizedBox(height: 5,),
            Text('Story Level 1. Oh, MMM, Ah, Ew!', style: TextStyle(color: Colors.green, fontWeight: FontWeight.bold, fontSize: 24),),
            SizedBox(height: 10,),
            Text('This speech story app is the easiest of all of the story apps, and it is comprised of fun communicative vowel sounds, and one grunt.'
              , style: TextStyle(color: Color(0xff000000), fontWeight: FontWeight.normal, fontSize: 16),),
            SizedBox(height: 5,),
            Text('Story Level 2. Uh Oh! Oh No! Oh Yeah!', style: TextStyle(color: Colors.green, fontWeight: FontWeight.bold, fontSize: 24),),
            SizedBox(height: 10,),
            Text('This speech story app is slightly more difficult than level 1, and is comprised of exciting exclamations.'
              , style: TextStyle(color: Color(0xff000000), fontWeight: FontWeight.normal, fontSize: 16),),
            SizedBox(height: 5,),
            Text('Story Level 3. Moo Moo! Oink Oink!', style: TextStyle(color: Colors.green, fontWeight: FontWeight.bold, fontSize: 24),),
            SizedBox(height: 10,),
            Text('This speech story app is slightly harder than level one, and is a delightful app of simple animal sounds. '
              , style: TextStyle(color: Color(0xff000000), fontWeight: FontWeight.normal, fontSize: 16),),
            SizedBox(height: 5,),

          ],
        ),
      ),
    );
  }
}
