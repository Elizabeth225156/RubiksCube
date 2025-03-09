String[][] greenFace = new String[3][3];//front
String[][] orangeFace = new String[3][3];//right
String[][] blueFace = new String[3][3];//back
String[][] redFace = new String[3][3];//left
String[][] yellowFace = new String[3][3];//top
String[][] whiteFace = new String[3][3];//bottom
String[][] extraFace = new String[3][3];

void turn(String[][] face) {
  //1 to 7
  //corners
  extraFace[0][0] = face[2][0];
  face[2][0] = face[2][2];
  face[2][2] = face[0][2];
  face[0][2] = face[0][0];
  face[0][0] = extraFace[0][0];

  //edges
  extraFace[0][0] = face[1][0];
  face[1][0] = face[2][1];
  face[2][1] = face[1][2];
  face[1][2] = face[0][1];
  face[0][1] = extraFace[0][0];
}

void turnShift(String[][] face) {
  //1 to 3
  //corners
  extraFace[0][0] = face[2][0];
  face[2][0] = face[0][0];
  face[0][0] = face[0][2];
  face[0][2] = face[2][2];
  face[2][2] = extraFace[0][0];
  //edges
  extraFace[0][0] = face[1][0];
  face[1][0] = face[0][1];
  face[0][1] = face[1][2];
  face[1][2] = face[2][1];
  face[2][1] = extraFace[0][0];
}

class Solve {

  public void frontTurn() {
    //Rotate front face
    turn(greenFace);

    extraFace[0][0] = yellowFace[2][0];
    extraFace[0][1] = yellowFace[2][1];
    extraFace[0][2] = yellowFace[2][2];

    yellowFace[2][0] = redFace[2][2];
    yellowFace[2][1] = redFace[1][2];
    yellowFace[2][2] = redFace[0][2];

    redFace[2][2] = whiteFace[0][2];
    redFace[1][2] = whiteFace[0][1];
    redFace[0][2] = whiteFace[0][0];

    whiteFace[0][0] = orangeFace[2][0];
    whiteFace[0][1] = orangeFace[1][0];
    whiteFace[0][2] = orangeFace[0][0];

    orangeFace[2][0] = extraFace[0][2];
    orangeFace[1][0] = extraFace[0][1];
    orangeFace[0][0] = extraFace[0][0];
  }

  public void leftTurn() {
    turnShift(redFace);

    for (int i = 0; i < 3; i ++) {
      extraFace[i][0] = greenFace[i][0];
      greenFace[i][0] = whiteFace[i][0];
      whiteFace[i][0] = blueFace[i][0];
      blueFace[i][0] = yellowFace[i][0];
      yellowFace[i][0] = extraFace[i][0];
    }
  }

  public void rightTurn() {
    turn(orangeFace);

    for (int i = 0; i < 3; i ++) {
      extraFace[i][2] = greenFace[i][2];
      greenFace[i][2] = whiteFace[i][2];
      whiteFace[i][2] = blueFace[i][2];
      blueFace[i][2] = yellowFace[i][2];
      yellowFace[i][2] = extraFace[i][2];
    }
  }

  public void backTurn() {
    turnShift(blueFace);

    extraFace[0][0] = yellowFace[0][0];
    extraFace[0][1] = yellowFace[0][1];
    extraFace[0][2] = yellowFace[0][2];

    yellowFace[0][0] = redFace[2][0];
    yellowFace[0][1] = redFace[1][0];
    yellowFace[0][2] = redFace[0][0];

    redFace[2][0] = whiteFace[2][2];
    redFace[1][0] = whiteFace[2][1];
    redFace[0][0] = whiteFace[2][0];

    whiteFace[2][0] = orangeFace[2][2];
    whiteFace[2][1] = orangeFace[1][2];
    whiteFace[2][2] = orangeFace[0][2];

    orangeFace[2][2] = extraFace[0][2];
    orangeFace[1][2] = extraFace[0][1];
    orangeFace[0][2] = extraFace[0][0];
  }

  public void upTurn() {
    turn(yellowFace);

    for (int i = 0; i < 3; i ++) {
      extraFace[0][i] = greenFace[0][i];
      greenFace[0][i] = orangeFace[0][i];
    }
    //right face
    orangeFace[0][0] = blueFace[2][2];
    orangeFace[0][1] = blueFace[2][1];
    orangeFace[0][2] = blueFace[2][0];
    
    blueFace[2][0] = redFace[0][2];
    blueFace[2][1] = redFace[0][1];
    blueFace[2][2] = redFace[0][0];
    
    for ( int i = 0; i < 3; i ++) {
      redFace[0][i] = extraFace[0][i];
    }
  }

  public void downTurn() {
    turnShift(whiteFace);

    for (int i = 0; i < 3; i ++) {
      extraFace[0][i] = greenFace[2][i];
      greenFace[2][i] = orangeFace[2][i];
    }
    //right face
    orangeFace[2][0] = blueFace[0][2];
    orangeFace[2][1] = blueFace[0][1];
    orangeFace[2][2] = blueFace[0][0];
    
    blueFace[0][0] = redFace[2][2];
    blueFace[0][1] = redFace[2][1];
    blueFace[0][2] = redFace[2][0];
    
    for (int i = 0; i < 3; i ++) {
      redFace[2][i] = extraFace[0][i];
    }
  }




  public void frontTurnShift() {
    turnShift(greenFace);

    extraFace[0][0] = yellowFace[2][0];
    extraFace[0][1] = yellowFace[2][1];
    extraFace[0][2] = yellowFace[2][2];

    yellowFace[2][0] = orangeFace[0][0];
    yellowFace[2][1] = orangeFace[1][0];
    yellowFace[2][2] = orangeFace[2][0];

    orangeFace[0][0] = whiteFace[0][2];
    orangeFace[1][0] = whiteFace[0][1];
    orangeFace[2][0] = whiteFace[0][0];

    whiteFace[0][0] = redFace[0][2];
    whiteFace[0][1] = redFace[1][2];
    whiteFace[0][2] = redFace[2][2];

    redFace[0][2] = extraFace[0][2];
    redFace[1][2] = extraFace[0][1];
    redFace[2][2] = extraFace[0][0];
  }

  public void leftTurnShift() {
    turn(redFace);

    for (int i = 0; i < 3; i ++) {
      extraFace[i][0] = greenFace[i][0];
      greenFace[i][0] = yellowFace[i][0];
      yellowFace[i][0] = blueFace[i][0];
      blueFace[i][0] = whiteFace[i][0];
      whiteFace[i][0] = extraFace[i][0];
    }
  }

  public void rightTurnShift() {
    turnShift(orangeFace);

    for (int i = 0; i < 3; i ++) {
      extraFace[i][2] = greenFace[i][2];
      greenFace[i][2] = yellowFace[i][2];
      yellowFace[i][2] = blueFace[i][2];
      blueFace[i][2] = whiteFace[i][2];
      whiteFace[i][2] = extraFace[i][2];
    }
  }

  public void backTurnShift() {
    turn(blueFace);

    extraFace[0][0] = yellowFace[0][0];
    extraFace[0][1] = yellowFace[0][1];
    extraFace[0][2] = yellowFace[0][2];

    yellowFace[0][0] = orangeFace[0][2];
    yellowFace[0][1] = orangeFace[1][2];
    yellowFace[0][2] = orangeFace[2][2];

    orangeFace[0][2] = whiteFace[2][2];
    orangeFace[1][2] = whiteFace[2][1];
    orangeFace[2][2] = whiteFace[2][0];

    whiteFace[2][0] = redFace[0][0];
    whiteFace[2][1] = redFace[1][0];
    whiteFace[2][2] = redFace[2][0];

    redFace[0][0] = extraFace[0][2];
    redFace[1][0] = extraFace[0][1];
    redFace[2][0] = extraFace[0][0];
  }

  public void upTurnShift() {
    turnShift(yellowFace);

    for (int i = 0; i < 3; i ++) {
      extraFace[0][i] = greenFace[0][i];
      greenFace[0][i] = redFace[0][i];
    }
    redFace[0][0] = blueFace[2][2];
    redFace[0][1] = blueFace[2][1];
    redFace[0][2] = blueFace[2][0];
    
    blueFace[2][0] = orangeFace[0][2];
    blueFace[2][1] = orangeFace[0][1];
    blueFace[2][2] = orangeFace[0][0];
    for(int i = 0; i < 3; i ++) {
      orangeFace[0][i] = extraFace[0][i];
    }
  }

  public void downTurnShift() {
    turn(whiteFace);

    for (int i = 0; i < 3; i ++) {
      extraFace[0][i] = greenFace[2][i];
      greenFace[2][i] = redFace[2][i];
    }
    redFace[2][0] = blueFace[0][2];
    redFace[2][1] = blueFace[0][1];
    redFace[2][2] = blueFace[0][0];
    
    blueFace[0][0] = orangeFace[2][2];
    blueFace[0][1] = orangeFace[2][1];
    blueFace[0][2] = orangeFace[2][0];
    
    for(int i = 0; i < 3; i ++){
      orangeFace[2][i] = extraFace[0][i];
    }
  }
}
