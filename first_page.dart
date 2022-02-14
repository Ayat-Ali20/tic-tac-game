
import 'package:flutter/material.dart';
import 'package:tic_tac/component/gradient_button.dart';
import 'package:tic_tac/screens/main_game.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  _FirstPageState createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  @override
  Widget build(BuildContext context) {

    var mq = MediaQuery.of(context);
    return Scaffold(

      //backgroundColor: ,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const SafeArea(child: SizedBox(height: 60)),



          Container(
              padding:const EdgeInsets.only(bottom: 40),
              width: double.infinity,
              //this Column for TIC TAC TOE word in the first page
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text(
                        "T",
                        style: TextStyle(

                            color: Color(0xFCFFC42F),
                            fontWeight: FontWeight.bold,
                            fontSize: 110,
                            shadows: [
                              Shadow(
                                  offset: Offset(-15.0, 15.0),
                                  color: Color(0xff1a113e),
                                  blurRadius: 5),
                            ],
                            fontFamily: 'SHOWG1'),
                      ),
                      Text(
                        " I",
                        style: TextStyle(

                            color: Color(0xFFEC1653),
                            fontWeight: FontWeight.bold,
                            fontSize: 110,
                            shadows: [
                              Shadow(
                                  offset: Offset(-15.0, 15.0),
                                  color: Color(0xff1a113e),
                                  blurRadius: 5),
                            ],
                            fontFamily: 'SHOWG1'),
                      ),
                      Text(
                        " C",
                        style: TextStyle(

                            color: Color(0xFCFFC42F),
                            fontWeight: FontWeight.bold,
                            fontSize: 110,
                            shadows: [
                              Shadow(
                                  offset: Offset(-10.0, 15.0),
                                  color: Color(0xff1a113e),
                                  blurRadius: 5),
                            ],
                            fontFamily: 'SHOWG1'),
                      ),
                    ],
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text(
                        "T",
                        style: TextStyle(

                            color:Color(0xFFEC1653) ,
                            fontWeight: FontWeight.bold,
                            fontSize: 110,
                            shadows: [
                              Shadow(
                                  offset: Offset(-15.0, 15.0),
                                  color: Color(0xff1a113e),
                                  blurRadius: 5),
                            ],
                            fontFamily: 'SHOWG1'),
                      ),
                      Text(
                        " A",
                        style: TextStyle(

                            color:Color(0xFCFFC42F) ,
                            fontWeight: FontWeight.bold,
                            fontSize: 110,
                            shadows: [
                              Shadow(
                                  offset: Offset(-15.0, 15.0),
                                  color: Color(0xff1a113e),
                                  blurRadius: 5),
                            ],
                            fontFamily: 'SHOWG1'),
                      ),
                      Text(
                        " C",
                        style: TextStyle(

                            color: Color(0xFFEC1653),
                            fontWeight: FontWeight.bold,
                            fontSize: 110,
                            shadows: [
                              Shadow(
                                  offset: Offset(-10.0, 15.0),
                                  color: Color(0xff1a113e),
                                  blurRadius: 5),
                            ],
                            fontFamily: 'SHOWG1'),
                      ),
                    ],
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text(
                        "T",
                        style: TextStyle(

                            color: Color(0xFCFFC42F),
                            fontWeight: FontWeight.bold,
                            fontSize: 110,
                            shadows: [
                              Shadow(
                                  offset: Offset(-15.0, 15.0),
                                  color: Color(0xff1a113e),
                                  blurRadius: 5),
                            ],
                            fontFamily: 'SHOWG1'),
                      ),
                      Text(
                        " O",
                        style: TextStyle(

                            color: Color(0xFFEC1653),
                            fontWeight: FontWeight.bold,
                            fontSize: 110,
                            shadows: [
                              Shadow(
                                  offset: Offset(-15.0, 15.0),
                                  color: Color(0xff1a113e),
                                  blurRadius: 5),
                            ],
                            fontFamily: 'SHOWG1'),
                      ),
                      Text(
                        " E",
                        style: TextStyle(

                            color: Color(0xFCFFC42F),
                            fontWeight: FontWeight.bold,
                            fontSize: 110,
                            shadows: [
                              Shadow(
                                  offset: Offset(-10.0, 15.0),
                                  color: Color(0xff1a113e),
                                  blurRadius: 5),
                            ],
                            fontFamily: 'SHOWG1'),
                      ),
                    ],
                  ),

                ],
              )),

          //the first button 'play with Bot '
          Container(
            padding: const EdgeInsets.only(bottom: 15),
            alignment: Alignment.center,
            child: Builder(
              builder: (ctx) {
                return GradientButton(
                  onPressed: () {
                    Navigator.of(ctx).push(
                      MaterialPageRoute(builder: (_){
                        return MainGame( false);
                      })
                    );
                    },
                  gradient: const LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [Color(0xffff33a6), Color(0xffa831e8)]),
                  child:  Text(
                    "Play with Bot",
                    style: Theme.of(context).textTheme.headline5,
                  ),
                  height: 55,
                  width: mq.size.width * 0.7,
                );
              }
            ),
          ),

         const SizedBox(height: 8,),

          //the first button 'play with Friend '
          Container(
            padding: const EdgeInsets.only(bottom: 15),
            alignment: Alignment.center,
            child: Builder(
              builder: (ctx) {
                return GradientButton(
                  onPressed: () {

                    Navigator.of(ctx).push(
                        MaterialPageRoute(builder: (_){
                          return MainGame( true);
                        })
                    );
                  },
                  gradient: const LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [Color(0xffff2b62), Color(0xfff7983f)]),
                  child:  Text(
                    "Play with friend",
                    style: Theme.of(context).textTheme.headline5,
                  ),
                  height: 55,
                  width: mq.size.width * 0.7,
                );
              }
            ),
          ),


        ],
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );

  }
}
