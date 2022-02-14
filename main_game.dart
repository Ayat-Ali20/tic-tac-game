
import 'package:flutter/material.dart';

import '../game_logic.dart';

// ignore: must_be_immutable
class MainGame extends StatefulWidget {
  bool isAutof;

  MainGame(this.isAutof, {Key? key}) : super(key: key);

  @override
  // ignore: no_logic_in_create_state
  _MainGameState createState() => _MainGameState(isAutof);
}

class _MainGameState extends State<MainGame> {
  String activePlayer = 'X';
  bool gameOver = false;
  int turn = 0;
  String result = '';
  String whowin = '';
  Game game = Game();
  bool isAuto = false;

  _MainGameState(auto) {
    isAuto = auto;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 15),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [

                  //first player board
                  Column(
                    children: [
                      Icon(
                        (activePlayer == 'O') ? Icons.arrow_drop_down : null,
                        size: 40,
                        color: const Color(0xffffffff),
                      ),
                      Container(
                        padding: const EdgeInsets.all(5),
                        height: 140,
                        width: 95,
                        decoration: BoxDecoration(
                            color: const Color(0xff241a59),
                            border: (activePlayer == 'O')
                                ? Border.all(
                                    width: 1.0,
                                    style: BorderStyle.solid,
                                    color: Colors.white)
                                : null,
                            borderRadius: BorderRadius.circular(10)),
                        child: Column(
                          children: [
                            Container(
                              padding: const EdgeInsets.all(2),
                              decoration: BoxDecoration(
                                  color: const Color(0xffd4d034),
                                  borderRadius: BorderRadius.circular(35)),
                              child: Image.asset(
                                isAuto?"assets/images/p2.png" : "assets/images/robot.png",
                                fit: BoxFit.cover,
                                width: 50,
                              ),
                            ),
                             Text(
                             isAuto? 'Player 1':'Bot' ,
                              style: Theme.of(context).textTheme.headline6,
                            ),
                            const Text(
                              'O',
                              style: TextStyle(
                                  fontSize: 30,
                                  color: Color(0xFFFCCE36),
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                      Text(
                        (activePlayer == 'O') ?isAuto? "Player 1's Turn!": "Bot's Turn!" : '',
                        style: Theme.of(context).textTheme.headline6,
                      ),
                    ],
                  ),


                  const SizedBox(
                    width: 20,
                  ),

                  //Second player board
                  Column(
                    children: [
                      Icon(
                        (activePlayer == 'X') ? Icons.arrow_drop_down : null,
                        size: 40,
                        color:const Color(0xffffffff),
                      ),
                      Container(
                        padding: const EdgeInsets.all(5),
                        height: 140,
                        width: 95,
                        decoration: BoxDecoration(
                            color: const Color(0xff241a59),
                            border: (activePlayer == 'X')
                                ? Border.all(
                                    width: 1.0,
                                    style: BorderStyle.solid,
                                    color: Colors.white)
                                : null,
                            borderRadius: BorderRadius.circular(10)),
                        child: Column(
                          children: [
                            Container(
                              padding: const EdgeInsets.all(2),
                              decoration: BoxDecoration(
                                  color: const Color(0xffd46c34),
                                  borderRadius: BorderRadius.circular(35)),
                              child: Image.asset(
                                "assets/images/mann.png",
                                fit: BoxFit.cover,
                                width: 50,
                              ),
                            ),
                             Text(
                              isAuto? 'Player 2':'Player',
                              style: Theme.of(context).textTheme.headline6,
                            ),
                            const Text(
                              'X',
                              style: TextStyle(
                                  fontSize: 30,
                                  color: Color(0xFFEC1653),
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                      Text(
                        (activePlayer == 'X') ? isAuto? "Player 2's Turn!": "your's Turn!" : '',
                        style: Theme.of(context).textTheme.headline6,
                      ),
                    ],
                  ),
                ],
              ),

              const SizedBox(
                height: 30,
              ),


              SizedBox(
                height: MediaQuery.of(context).size.height * 0.55,
                child: Container(
                  decoration: BoxDecoration(
                      color:const Color(0xff6847c0),
                      borderRadius: BorderRadius.circular(16)),

                  //here we check if the game is complated or no
                  child: gameOver
                      ? Container(
                          padding:const EdgeInsets.all(20),
                          width: double.infinity,
                          child: Column(
                            children: [
                              Container(
                                padding: const EdgeInsets.all(2),
                                decoration: BoxDecoration(
                                    color: const Color(0xff3d2a9c),

                                    borderRadius: BorderRadius.circular(100)),


                                child: Image.asset(
                               (game.checkWinner()=='X')? "assets/images/win.png":(game.checkWinner()=='O')?"assets/images/lose.png":"assets/images/draw2.png",
                                  fit: BoxFit.cover,
                                  width: 180,
                                ),
                              ),
                              Text(
                                ( game.checkWinner()=='X')?isAuto?'Player 1 WIN !' : 'YOU WIN !':(game.checkWinner()=='O')?isAuto?'Player 2 WIN !' : 'YOU LOST !':"it's Draw" ,
                                style:  Theme.of(context).textTheme.headline1,
                              ),
                              InkWell(
                                onTap: (){
                                  setState(() {
                                    Player.playerX.clear();
                                    Player.playerY.clear();
                                     activePlayer = 'X';
                                     gameOver = false;
                                     turn = 0;
                                     result = '';
                                     whowin = '';
                                  });
                                },
                                child: Container(
                                  decoration: BoxDecoration(
                                      color: const Color(0xff6847c0),
                                      borderRadius: BorderRadius.circular(36),
                                      border: Border.all(style:BorderStyle.solid , width: 8 , color: const Color(0xff3d2a9c)),
                                      gradient:   const LinearGradient(
                                      begin: Alignment.topLeft,
                                      end: Alignment.bottomRight,
                                      colors: [Color(0xffefe6e3),Color( 0xfff9a64a), Color(0xfffa3595)]),
                                  ),
                                  width: 70,
                                  height: 70,
                                  child:const Icon(Icons.replay , color: Color(0xffefe6e3),size: 40,),
                                ),
                              )
                            ],
                          ),
                        )
                      : GridView.count(
                          padding: const EdgeInsets.all(16),
                          crossAxisCount: 3,
                          mainAxisSpacing: 10.0,
                          crossAxisSpacing: 10.0,
                          childAspectRatio: 1.0,
                          children: List.generate(
                              9,
                              (index) => InkWell(
                                    onTap:
                                        gameOver ? null : () => _onTap(index),
                                    child: Container(
                                      decoration: BoxDecoration(
                                          color: const Color(0xff332268),
                                          borderRadius:
                                              BorderRadius.circular(16)),
                                      child: Center(
                                        child: Text(
                                          Player.playerX.contains(index)
                                              ? 'X'
                                              : Player.playerY.contains(index)
                                                  ? 'O'
                                                  : '',
                                          style: TextStyle(
                                            color:
                                                Player.playerX.contains(index)
                                                    ? const Color(0xFFEC1653)
                                                    : const Color(0xFCFFC42F),
                                            fontWeight: FontWeight.w900,
                                            fontSize: 72,

                                          ),
                                        ),
                                      ),
                                    ),
                                  )),
                        ),

                ),
              ),
              const SizedBox(
                height: 50,
              ),

            ],
          ),
        ),
      ),
    );
  }



  //the function that revoked when tap in the squares
  _onTap(int index) async {
    if ((Player.playerX.isEmpty || !Player.playerX.contains(index)) &&
        (Player.playerY.isEmpty || !Player.playerY.contains(index))) {
      game.playGame(index, activePlayer);
      updateState();
      if (!isAuto && !gameOver && turn !=9) {
        await game.autoPlay(activePlayer);
        updateState();
      }
    }
  }


  //the function that refresh and determine the turn
  void updateState() {
    setState(() {
      activePlayer = (activePlayer == 'X') ? 'O' : 'X';
      turn++;

      String winnerPlayer = game.checkWinner();
      if (winnerPlayer != '') {
        gameOver = true;
        result = '$winnerPlayer is the winner';
      } else if (!gameOver && turn == 9) {

        result = 'Its\' Draw';
        gameOver = true;
      }
    });
  }
}
