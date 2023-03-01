import 'package:flutter/material.dart';

class AboutTalkTales extends StatelessWidget {
  const AboutTalkTales({Key? key}) : super(key: key);

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
              Text('About Talk Tales', style: TextStyle(color: Color(0xff77EEBE), fontWeight: FontWeight.bold, fontSize: 24),),
            SizedBox(height: 10,),
            Text('Talk Tales Story Apps are designed by Vanessa Zimmer-Powell, Speech Language Pathologist and Co-Owner of The Learning Sphere Speech Therapy in Houston, Texas. Vanessa  has been a Speech-Language Pathologist for over 20 years, and has helped many children who have great difficulty saying words and sounds.'
                'The apps were inspired by children with Childhood Apraxia of Speech and children with Autism, but are also designed to appeal to all children learning to say words and say them clearly.'
                ' Vanessa created the apps because she wanted them for herself! While there were other apps for kids with apraxia, she could not find any apps on the market that combined the following features:'
                , style: TextStyle(color: Color(0xff000000), fontWeight: FontWeight.normal, fontSize: 16),),
            SizedBox(height: 10,),
            Text('Talk Tales App Key Features: ', style: TextStyle(color: Color(0xff77EEBE), fontWeight: FontWeight.bold, fontSize: 20),),
            SizedBox(height: 5,),
            Text('1. Based on motor learning theory and motor planning'
              , style: TextStyle(color: Color(0xff000000), fontWeight: FontWeight.normal, fontSize: 16),),
            SizedBox(height: 5,),
            Text('2. Interactive to enhance engagement and repetition'
              , style: TextStyle(color: Color(0xff000000), fontWeight: FontWeight.normal, fontSize: 16),),
            SizedBox(height: 5,),
            Text('3. Story Based'
              , style: TextStyle(color: Color(0xff000000), fontWeight: FontWeight.normal, fontSize: 16),),
            SizedBox(height: 5,),
            Text('4. Videos of the mouth show how to say sounds/words'
              , style: TextStyle(color: Color(0xff000000), fontWeight: FontWeight.normal, fontSize: 16),),
            SizedBox(height: 5,),
            Text('5. Videos or animated stories model word meaning'
              , style: TextStyle(color: Color(0xff000000), fontWeight: FontWeight.normal, fontSize: 16),),
            SizedBox(height: 5,),
            Text('6. Free Downloadable practice sheets for each app available at talktalesbooks.com'
              , style: TextStyle(color: Color(0xff000000), fontWeight: FontWeight.normal, fontSize: 16),),
            SizedBox(height: 5,),
          ],
        ),
      ),
    );
  }
}
