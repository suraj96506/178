// @dart=2.9
import 'package:easy_gradient_text/easy_gradient_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';



void main() => runApp(MaterialApp(
  home: MyApp(),
  debugShowCheckedModeBanner: false,
));

class MyApp extends StatefulWidget {


  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading:IconButton(
            onPressed: (){
          print('pressed');
         },
            icon: Image.asset(
                'assets/Arrow   Down.png',
            )
        ),
        actions: [


          IconButton(onPressed: (){
            print('pressed');
          },
              icon: Image.asset('assets/5363.png')
          ),


          Padding(
            padding: const EdgeInsets.only(right:15),
            child: IconButton(onPressed: (){
              print('pressed');
             },
                icon: Image.asset('assets/Group 5364.png')
            ),
          )
        ],
      ),
      body: Container(
          height: double.infinity,width: double.infinity,
          decoration: BoxDecoration(
              image: DecorationImage(alignment: Alignment.topCenter,
                image: AssetImage('assets/image 10.png'),
                fit: BoxFit.fitWidth
              ),
              color: Color(0xff1E1E1E)
          ),

          child:Column(crossAxisAlignment: CrossAxisAlignment.start,

            children: [

              Padding(
                padding: const EdgeInsets.only(top:78),
                child: Container(height: 132,width:375,
                  child: GradientText(type: GradientType.linear,
                      textAlign: TextAlign.center,
                      text: "178",
                      style: TextStyle(
                        fontWeight:FontWeight.w400,
                        fontSize: 114,
                      ), colors: [
                        Color(0xffFFE2CD),
                        Color(0xffFEC2E7),
                        Color(0xffC9E7FF),
                        Color(0xff86FEF4),
                      ]),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top:8),
                child: SizedBox(height:30,width:double.infinity,
                  child: Text("Your Score",style: TextStyle(
                      fontSize: 15,
                      color:Color(0xffFFFFFF),
                      fontWeight: FontWeight.w400
                  ),
                    textAlign: TextAlign.center,),
                ),
              ),
              SizedBox(width: double.infinity,
                child: Text("This is more than 70% of the users",
                  textAlign:TextAlign.center,
                  style: TextStyle(
                    fontSize: 14,
                    color:Color(0xff4F4F4F),
                    fontWeight: FontWeight.w400,

                  ),
                ),
              )
            ],
          )
      ),
    );
  }
}
