import 'package:flutter/material.dart';
import './tic_tac_toe_item.dart';

class GameConsole extends StatefulWidget {
  @override
  _GameConsoleState createState() => _GameConsoleState();
}

class _GameConsoleState extends State<GameConsole> {
  String winner="";
  int index;
  List<TicTacToeItem> items = [
    new TicTacToeItem("1"),
    new TicTacToeItem("2"),
    new TicTacToeItem("3"),
    new TicTacToeItem("4"),
    new TicTacToeItem("5"),
    new TicTacToeItem("6"),
    new TicTacToeItem("7"),
    new TicTacToeItem("8"),
    new TicTacToeItem("9"),
  ];
  void chooseX(index) {
    setState(() {
      items[index].element = "X";
      checkWinner();
    });
    
  }

  void chooseO(index) {
    setState(() {
      items[index].element = "O";
      checkWinner();
    });
  }
  String showWinner(){
    setState(() {
      checkWinner();
    });
    return winner;
  }
 
  void checkWinner() {
    if(items[0].element==items[1].element && items[1].element==items[2].element) {
      winner = "player "+items[0].element + " wins!";
    }
    else if(items[0].element==items[4].element && items[4].element==items[8].element) {
      winner = "player "+ items[0].element + " wins!";
    }//diagonal checking
    else if(items[2].element==items[4].element && items[4].element==items[6].element) {
      winner = "player "+ items[2].element + " wins!";
    }//diagonal checking
    else if(items[3].element==items[4].element && items[4].element==items[5].element) {
      winner = "player "+ items[3].element + " wins!";
    }
    else if(items[6].element==items[7].element && items[7].element==items[8].element) {
      winner = "player "+ items[6].element + " wins!";
    }
    else if(items[0].element==items[3].element && items[3].element==items[6].element) {
      winner = "player "+ items[0].element + " wins!";
    }
    else if(items[2].element==items[5].element && items[5].element==items[8].element) {
      winner = "player "+ items[2].element + " wins!";
    }
    else {
      winner="Draw";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blueGrey,
        body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Container(
                  child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Expanded(
                    child: InkWell(
                      onTap: () => chooseX(0),
                      onDoubleTap: () => chooseO(0),
                      child: Container(
                          height: 100,
                          width: 100,
                          child: Card(
                              color: Colors.green,
                              child: Center(
                                child: Text(items[0].element),
                              ))),
                    ),
                  ),
                  Expanded(
                      child: InkWell(
                    onTap: () => chooseX(1),
                    onDoubleTap: () => chooseO(1),
                    child: Container(
                      height: 100,
                      width: 100,
                      child: Card(
                          color: Colors.red,
                          child: Center(
                              child: Text(
                            items[1].element,
                          ))),
                    ),
                  )),
                  Expanded(
                      child: InkWell(
                    onTap: () => chooseX(2),
                    onDoubleTap: () => chooseO(2),
                    child: Container(
                      height: 100,
                      width: 100,
                      child: Card(
                          color: Colors.orange,
                          child: Center(
                              child: Text(
                            items[2].element,
                          ))),
                    ),
                  ))
                ],
              )),
              Container(
                  child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Expanded(
                      child: InkWell(
                    onTap: () => chooseX(3),
                    onDoubleTap: () => chooseO(3),
                    child: Container(
                      height: 100,
                      width: 100,
                      child: Card(
                          color: Colors.blue,
                          child: Center(
                              child: Text(
                            items[3].element,
                          ))),
                    ),
                  )),
                  Expanded(
                    child: InkWell(
                      onTap: () => chooseX(4),
                      onDoubleTap: () => chooseO(4),
                      child: Container(
                          height: 100,
                          width: 100,
                          child: Card(
                              color: Colors.yellow,
                              child: Center(
                                child: Text(items[4].element),
                              ))),
                    ),
                  ),
                  Expanded(
                    child: InkWell(
                      onTap: () => chooseX(5),
                      onDoubleTap: () => chooseO(5),
                      child: Container(
                          height: 100,
                          width: 100,
                          child: Card(
                              color: Colors.pink,
                              child: Center(
                                child: Text(items[5].element),
                              ))),
                    ),
                  )
                ],
              )),
              Container(
                  child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Expanded(
                    child: InkWell(
                      onTap: () => chooseX(6),
                      onDoubleTap: () => chooseO(6),
                      child: Container(
                          height: 100,
                          width: 100,
                          child: Card(
                              color: Colors.lightGreen,
                              child: Center(
                                child: Text(items[6].element),
                              ))),
                    ),
                  ),
                  Expanded(
                    child: InkWell(
                      onTap: () => chooseX(7),
                      onDoubleTap: () => chooseO(7),
                      child: Container(
                          height: 100,
                          width: 100,
                          child: Card(
                              color: Colors.orange,
                              child: Center(
                                child: Text(items[7].element),
                              ))),
                    ),
                  ),
                  Expanded(
                    child: InkWell(
                      onTap: () => chooseX(8),
                      onDoubleTap: () => chooseO(8),
                      child: Container(
                          height: 100,
                          width: 100,
                          child: Card(
                              color: Colors.purple,
                              child: Center(
                                child: Text(items[8].element),
                              ))),
                    ),
                  )
                ],
              ))
              ,Container(
                child:Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Expanded(
                      child: 
                   Container(
                      height: 100,
                      child: Card(
                          color: Colors.pink,
                          child: Center(
                              child: Text(
                            showWinner(),style: TextStyle(fontSize: 30),
                          ))),
                    ),
                  )])
              )
            ]),
        floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
        floatingActionButton: FloatingActionButton(
            child:Text("Rules",style: TextStyle(fontSize: 10)),
            backgroundColor: Colors.red,
            onPressed: () {
              return showModalBottomSheet(
                  context: context,
                  builder: (_) {
                    return Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: <Widget>[
                          Text(
                            ">> Tap once for X",
                            style: TextStyle(fontSize: 20),
                          ),
                          Text(
                            ">> Tap twice for O",
                            style: TextStyle(fontSize: 20),
                          )
                        ]);
                  });
            }));
  }
}
