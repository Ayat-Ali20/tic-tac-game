import 'dart:math';

class Player{
  static const x = 'x';
  static const o = 'o';
  static const empty = '';


  static List<int> playerX = [];
  static List<int> playerY = [];




}


//here we add function to 'List' class that allow us to check if the listed number is in list or no
extension ContainsAll on List{
  bool containsAll(int x , int y ,  [z]){
    if(z==null){
      return (contains(x)&&contains(y));
    }else{
      return (contains(x)&&contains(y)&&contains(z));
    }


  }
  
}




class Game{
  // the method that allow to play
  void playGame(int index, String activePlyer) {
    if(activePlyer=='X')
    {
      Player.playerX.add(index);
    }
      else
        {
      Player.playerY.add(index);
    }


  }

  // the method that check who win to
 String checkWinner(){
    String winner = '';

    if(Player.playerX.containsAll(0, 1, 2) ||
       Player.playerX.containsAll(3, 4, 5) ||
       Player.playerX.containsAll(6, 7, 8) ||
       Player.playerX.containsAll(0, 3, 6) ||
       Player.playerX.containsAll(1, 4, 7) ||
       Player.playerX.containsAll(2, 5, 8) ||
       Player.playerX.containsAll(0, 4, 8) ||
       Player.playerX.containsAll(2, 4, 6)) {
      winner = 'X';
    }

    else if(Player.playerY.containsAll(0, 1, 2) ||
       Player.playerY.containsAll(3, 4, 5) ||
       Player.playerY.containsAll(6, 7, 8) ||
       Player.playerY.containsAll(0, 3, 6) ||
       Player.playerY.containsAll(1, 4, 7) ||
       Player.playerY.containsAll(2, 5, 8) ||
       Player.playerY.containsAll(0, 4, 8) ||
       Player.playerY.containsAll(2, 4, 6)) {
      winner = 'O';
    } else {
      winner = '';
         }
    return winner;

  }

  // the method that allow bot to play
 Future<void> autoPlay(activePlyer)async {
    int index = 0;
    List<int> emptyCells = [];
   for(var i =0 ; i<9 ; i++){
     if(!(Player.playerX.contains(i)||Player.playerY.contains(i)))
     {
        emptyCells.add(i);
      }
 }
   if(((Player.playerX.containsAll(0, 1))||
       (Player.playerX.containsAll(5, 8))||
       (Player.playerX.containsAll(6, 4))) &&
           emptyCells.contains(2)) {
      index = 2;
    }

   else
     if(((Player.playerX.containsAll(1, 2))||
       (Player.playerX.containsAll(4, 8))||
       (Player.playerX.containsAll(3, 6))) &&
           emptyCells.contains(0)) {
      index = 0;
    }

   else
     if(((Player.playerX.containsAll(0, 3))||
       (Player.playerX.containsAll(4, 2))||
       (Player.playerX.containsAll(7, 8))) &&
           emptyCells.contains(6)) {
      index = 6;
    }

   else
if(((Player.playerX.containsAll(2, 5))||
       (Player.playerX.containsAll(0, 4))||
       (Player.playerX.containsAll(6, 7))) &&
           emptyCells.contains(8)) {
      index = 8;
    }

   else
if(((Player.playerX.containsAll(0, 2))||
       (Player.playerX.containsAll(4, 7))) &&
           emptyCells.contains(1)) {
      index = 1;
    }

   else
if(((Player.playerX.containsAll(2, 8))||
       (Player.playerX.containsAll(3, 4))) &&
           emptyCells.contains(5)) {
      index = 5;
    }

   else
if(((Player.playerX.containsAll(6, 8))||
       (Player.playerX.containsAll(1, 4))) &&
           emptyCells.contains(7)) {
      index = 7;
    }

   else
if(((Player.playerX.containsAll(0, 6))||
       (Player.playerX.containsAll(5, 4))) &&
           emptyCells.contains(3)) {
      index = 3;
    }

   else
if(((Player.playerX.containsAll(0, 8))||
       (Player.playerX.containsAll(2, 6))||
       (Player.playerX.containsAll(1, 7))||
         (Player.playerX.containsAll(3, 5)) ) &&
           emptyCells.contains(4)) {
      index = 4;
    }

   else



      {
     Random random = Random();
     int ranIndex = random.nextInt(emptyCells.length);
     index= emptyCells[ranIndex];

   }


   playGame(index, activePlyer);
 }
}