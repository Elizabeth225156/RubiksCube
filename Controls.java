void keyPressed() {
  applyMove(key);
}

Solve cubeModel = new Solve();

void applyMove(char move){
    switch(move) {
  case 'f':
    currentMove = allMoves[8];
    currentMove.start();
    cubeModel.frontTurn();
    break;
  case 'F':
    currentMove = allMoves[9];
    currentMove.start();
    break;
  case 'b':
    currentMove = allMoves[10];
    currentMove.start();
    cubeModel.backTurn();
    break;
  case 'B':
    currentMove = allMoves[11];
    currentMove.start();
    break;
  case 'd':
    currentMove = allMoves[0];
    currentMove.start();
    cubeModel.downTurn();
    break;
  case 'D':
    currentMove = allMoves[1];
    currentMove.start();
    break;
  case 'u':
    currentMove = allMoves[2];
    currentMove.start();
    cubeModel.upTurn();
    break;
  case 'U':
    currentMove = allMoves[3];
    currentMove.start();
    break;
  case 'l':
    currentMove = allMoves[6];
    currentMove.start();
    cubeModel.leftTurn();
    break;
  case 'L':
    currentMove = allMoves[7];
    currentMove.start();
    break;
  case 'r':
    currentMove = allMoves[4];
    currentMove.start();
    cubeModel.rightTurn();
    break;
  case 'R':
    currentMove = allMoves[5];
    currentMove.start();
    break;
  case 's':
    solving = true;
    break;
  }
}
