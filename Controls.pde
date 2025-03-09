void keyPressed() {
  applyMove(key);
  keyVal = str(key);
  if(keyVal.equalsIgnoreCase("f") || keyVal.equalsIgnoreCase("b") || keyVal.equalsIgnoreCase("l") || keyVal.equalsIgnoreCase("r") || keyVal.equalsIgnoreCase("u") || keyVal.equalsIgnoreCase("d")){
    moveList += key;
  }
  
  //if(key == 's'){
  //  for(int i = 0; i < moveList.length(); i ++){
  //    curMoveKey = str(moveList.charAt(i));
  //    if(curMoveKey.equals("f") || curMoveKey.equals("b") || curMoveKey.equals("l") || curMoveKey.equals("r") || curMoveKey.equals("u") || curMoveKey.equals("d")){
  //      curMoveKey = curMoveKey.toUpperCase();
  //    } else {
  //      curMoveKey = curMoveKey.toLowerCase();
  //    }
  //    applyMove(curMoveKey.charAt(0));
  //  }
  //  moveList = "";
  //}
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
    cubeModel.frontTurnShift();
    break;
  case 'b':
    currentMove = allMoves[10];
    currentMove.start();
    cubeModel.backTurn();
    break;
  case 'B':
    currentMove = allMoves[11];
    currentMove.start();
    cubeModel.backTurnShift();
    break;
  case 'd':
    currentMove = allMoves[0];
    currentMove.start();
    cubeModel.downTurn();
    break;
  case 'D':
    currentMove = allMoves[1];
    currentMove.start();
    cubeModel.downTurnShift();
    break;
  case 'u':
    currentMove = allMoves[2];
    currentMove.start();
    cubeModel.upTurn();
    break;
  case 'U':
    currentMove = allMoves[3];
    currentMove.start();
    cubeModel.upTurnShift();
    break;
  case 'l':
    currentMove = allMoves[6];
    currentMove.start();
    cubeModel.leftTurn();
    break;
  case 'L':
    currentMove = allMoves[7];
    currentMove.start();
    cubeModel.leftTurnShift();
    break;
  case 'r':
    currentMove = allMoves[4];
    currentMove.start();
    cubeModel.rightTurn();
    break;
  case 'R':
    currentMove = allMoves[5];
    currentMove.start();
    cubeModel.rightTurnShift();
    break;
  case 'p':
    //FRONT
    System.out.println("FRONT");
    for(int i = 0; i < 3; i ++){
      for(int j = 0; j < 3; j ++){
        System.out.print(greenFace[i][j]);
      }
      System.out.println();
    }
    System.out.println("-------");
    //BACK
    System.out.println("BACK");
    for(int i = 0; i < 3; i ++){
      for(int j = 0; j < 3; j ++){
        System.out.print(blueFace[i][j]);
      }
      System.out.println();
    }
    System.out.println("-------");
    //TOP
    System.out.println("TOP");
    for(int i = 0; i < 3; i ++){
      for(int j = 0; j < 3; j ++){
        System.out.print(yellowFace[i][j]);
      }
      System.out.println();
    }
    System.out.println("-------");
    //BOTTOM
    System.out.println("BOTTOM");
    for(int i = 0; i < 3; i ++){
      for(int j = 0; j < 3; j ++){
        System.out.print(whiteFace[i][j]);
      }
      System.out.println();
    }
    System.out.println("-------");
    //LEFT
    System.out.println("LEFT");
    for(int i = 0; i < 3; i ++){
      for(int j = 0; j < 3; j ++){
        System.out.print(redFace[i][j]);
      }
      System.out.println();
    }
    System.out.println("-------");
    //RIGHT
    System.out.println("RIGHT");
    for(int i = 0; i < 3; i ++){
      for(int j = 0; j < 3; j ++){
        System.out.print(orangeFace[i][j]);
      }
      System.out.println();
    }
    System.out.println("-------");
    System.out.println("MOVES TAKEN");
    System.out.println(moveList);
    break;
  }
}
