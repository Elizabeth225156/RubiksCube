String[][] greenFace = new String[3][3];//front
String[][] orangeFace = new String[3][3];//right
String[][] blueFace = new String[3][3];//back
String[][] redFace = new String[3][3];//left
String[][] yellowFace = new String[3][3];//top
String[][] whiteFace = new String[3][3];//bottom
String[][] extraFace = new String[3][3];
//BLUE FACE IS OPPOSITE
//BACK LEFT RIGHT UP FRONT
//ALL FACES ARE GOOD

class Solve {

  public void frontTurn() {
    //Rotate front face
    //corners
    extraFace[0][0] = greenFace[2][0];
    greenFace[2][0] = greenFace[2][2];
    greenFace[2][2] = greenFace[0][2];
    greenFace[0][2] = greenFace[0][0];
    greenFace[0][0] = extraFace[0][0];

    //edges
    extraFace[0][0] = greenFace[1][0];
    greenFace[1][0] = greenFace[2][1];
    greenFace[2][1] = greenFace[1][2];
    greenFace[1][2] = greenFace[0][1];
    greenFace[0][1] = extraFace[0][0];

    //Top layer switch
    for (int i = 0; i < 3; i ++) {
      extraFace[0][i] = yellowFace[2][i];
      yellowFace[2][i] = redFace[i][2];
      redFace[i][2] = whiteFace[0][i];
      whiteFace[0][i] = orangeFace[i][0];
      orangeFace[i][0] = extraFace[0][i];
    }
  }

  public void leftTurn() {
    //corners
    extraFace[0][0] = redFace[2][0];
    redFace[2][0] = redFace[0][0];
    redFace[0][0] = redFace[0][2];
    redFace[0][2] = redFace[2][2];
    redFace[2][2] = extraFace[0][0];
    //edges
    extraFace[0][0] = redFace[1][0];
    redFace[1][0] = redFace[0][1];
    redFace[0][1] = redFace[1][2];
    redFace[1][2] = redFace[2][1];
    redFace[2][1] = extraFace[0][0];

    for (int i = 0; i < 3; i ++) {
      extraFace[i][0] = greenFace[i][0];
      greenFace[i][0] = whiteFace[i][0];
      whiteFace[i][0] = blueFace[i][0];
      blueFace[i][0] = yellowFace[i][0];
      yellowFace[i][0] = extraFace[i][0];
    }
  }

  public void rightTurn() {
    //corners
    extraFace[0][0] = orangeFace[2][0];
    orangeFace[2][0] = orangeFace[2][2];
    orangeFace[2][2] = orangeFace[0][2];
    orangeFace[0][2] = orangeFace[0][0];
    orangeFace[0][0] = extraFace[0][0];

    //edges
    extraFace[0][0] = orangeFace[1][0];
    orangeFace[1][0] = orangeFace[2][1];
    orangeFace[2][1] = orangeFace[1][2];
    orangeFace[1][2] = orangeFace[0][1];
    orangeFace[0][1] = extraFace[0][0];

    for (int i = 0; i < 3; i ++) {
      extraFace[i][2] = greenFace[i][2];
      greenFace[i][2] = whiteFace[i][2];
      whiteFace[i][2] = blueFace[i][2];
      blueFace[i][2] = yellowFace[i][2];
      yellowFace[i][2] = extraFace[i][2];
    }
  }

  public void backTurn() {
    //corners
    extraFace[0][0] = blueFace[2][0];
    blueFace[2][0] = blueFace[0][0];
    blueFace[0][0] = blueFace[0][2];
    blueFace[0][2] = blueFace[2][2];
    blueFace[2][2] = extraFace[0][0];
    //edges
    extraFace[0][0] = blueFace[1][0];
    blueFace[1][0] = blueFace[0][1];
    blueFace[0][1] = blueFace[1][2];
    blueFace[1][2] = blueFace[2][1];
    blueFace[2][1] = extraFace[0][0];

    for (int i = 0; i < 3; i ++) {
      extraFace[0][i] = yellowFace[0][i];
      yellowFace[0][i] = redFace[i][0];
      redFace[i][0] = whiteFace[2][i];
      whiteFace[2][i] = orangeFace[i][2];
      orangeFace[i][2] = extraFace[0][i];
    }
  }

  public void upTurn() {
    //corners
    extraFace[0][0] = yellowFace[2][0];
    yellowFace[2][0] = yellowFace[2][2];
    yellowFace[2][2] = yellowFace[0][2];
    yellowFace[0][2] = yellowFace[0][0];
    yellowFace[0][0] = extraFace[0][0];

    //edges
    extraFace[0][0] = yellowFace[1][0];
    yellowFace[1][0] = yellowFace[2][1];
    yellowFace[2][1] = yellowFace[1][2];
    yellowFace[1][2] = yellowFace[0][1];
    yellowFace[0][1] = extraFace[0][0];

    for (int i = 0; i < 3; i ++) {
      extraFace[0][i] = greenFace[0][i];
      greenFace[0][i] = orangeFace[0][i];
      orangeFace[0][i] = blueFace[2][i];
      blueFace[2][i] = redFace[0][i];
      redFace[0][i] = extraFace[0][i];
    }
  }

  public void downTurn() {
    //corners
    extraFace[0][0] = whiteFace[2][0];
    whiteFace[2][0] = whiteFace[0][0];
    whiteFace[0][0] = whiteFace[0][2];
    whiteFace[0][2] = whiteFace[2][2];
    whiteFace[2][2] = extraFace[0][0];
    //edges
    extraFace[0][0] = whiteFace[1][0];
    whiteFace[1][0] = whiteFace[0][1];
    whiteFace[0][1] = whiteFace[1][2];
    whiteFace[1][2] = whiteFace[2][1];
    whiteFace[2][1] = extraFace[0][0];

    for (int i = 0; i < 3; i ++) {
      extraFace[0][i] = greenFace[2][i];
      greenFace[2][i] = orangeFace[2][i];
      orangeFace[2][i] = blueFace[0][i];
      blueFace[0][i] = redFace[2][i];
      redFace[2][i] = extraFace[0][i];
    }
  }




  public void frontTurnShift() {
    //Rotate front face
    //corners
    extraFace[0][0] = greenFace[2][0];
    greenFace[2][0] = greenFace[0][0];
    greenFace[0][0] = greenFace[0][2];
    greenFace[0][2] = greenFace[2][2];
    greenFace[2][2] = extraFace[0][0];
    //edges
    extraFace[0][0] = greenFace[1][0];
    greenFace[1][0] = greenFace[0][1];
    greenFace[0][1] = greenFace[1][2];
    greenFace[1][2] = greenFace[2][1];
    greenFace[2][1] = extraFace[0][0];

    //Top layer switch
    for (int i = 0; i < 3; i ++) {
      extraFace[0][i] = yellowFace[2][i];
      yellowFace[2][i] = redFace[i][2];
      redFace[i][2] = whiteFace[0][i];
      whiteFace[0][i] = orangeFace[i][0];
      orangeFace[i][0] = extraFace[2][i];
    }
  }

  public void leftTurnShift() {
    //corners
    extraFace[0][0] = redFace[2][0];
    redFace[2][0] = redFace[2][2];
    redFace[2][2] = redFace[0][2];
    redFace[0][2] = redFace[0][0];
    redFace[0][0] = extraFace[0][0];

    //edges
    extraFace[0][0] = redFace[1][0];
    redFace[1][0] = redFace[2][1];
    redFace[2][1] = redFace[1][2];
    redFace[1][2] = redFace[0][1];
    redFace[0][1] = extraFace[0][0];

    for (int i = 0; i < 3; i ++) {
      extraFace[i][0] = greenFace[i][0];
      greenFace[i][0] = whiteFace[i][0];
      whiteFace[i][0] = blueFace[i][0];
      blueFace[i][0] = yellowFace[i][0];
      yellowFace[i][0] = extraFace[i][0];
    }
  }

  public void rightTurnShift() {
    //corners
    extraFace[0][0] = orangeFace[2][0];
    orangeFace[2][0] = orangeFace[0][0];
    orangeFace[0][0] = orangeFace[0][2];
    orangeFace[0][2] = orangeFace[2][2];
    orangeFace[2][2] = extraFace[0][0];
    //edges
    extraFace[0][0] = orangeFace[1][0];
    orangeFace[1][0] = orangeFace[0][1];
    orangeFace[0][1] = orangeFace[1][2];
    orangeFace[1][2] = orangeFace[2][1];
    orangeFace[2][1] = extraFace[0][0];

    for (int i = 0; i < 3; i ++) {
      extraFace[i][2] = greenFace[i][2];
      greenFace[i][2] = whiteFace[i][2];
      whiteFace[i][2] = blueFace[i][2];
      blueFace[i][2] = yellowFace[i][2];
      yellowFace[i][2] = extraFace[i][2];
    }
  }

  public void backTurnShift() {
    //corners
    extraFace[0][0] = blueFace[2][0];
    blueFace[2][0] = blueFace[2][2];
    blueFace[2][2] = blueFace[0][2];
    blueFace[0][2] = blueFace[0][0];
    blueFace[0][0] = extraFace[0][0];

    //edges
    extraFace[0][0] = blueFace[1][0];
    blueFace[1][0] = blueFace[2][1];
    blueFace[2][1] = blueFace[1][2];
    blueFace[1][2] = blueFace[0][1];
    blueFace[0][1] = extraFace[0][0];

    for (int i = 0; i < 3; i ++) {
      extraFace[0][i] = yellowFace[0][i];
      yellowFace[0][i] = redFace[i][0];
      redFace[i][0] = whiteFace[2][i];
      whiteFace[2][i] = orangeFace[2][i];
      orangeFace[2][i] = extraFace[0][i];
    }
  }

  public void upTurnShift() {
    //corners
    extraFace[0][0] = yellowFace[2][0];
    yellowFace[2][0] = yellowFace[0][0];
    yellowFace[0][0] = yellowFace[0][2];
    yellowFace[0][2] = yellowFace[2][2];
    yellowFace[2][2] = extraFace[0][0];
    //edges
    extraFace[0][0] = yellowFace[1][0];
    yellowFace[1][0] = yellowFace[0][1];
    yellowFace[0][1] = yellowFace[1][2];
    yellowFace[1][2] = yellowFace[2][1];
    yellowFace[2][1] = extraFace[0][0];

    for (int i = 0; i < 3; i ++) {
      extraFace[0][i] = greenFace[0][i];
      greenFace[0][i] = orangeFace[0][i];
      orangeFace[0][i] = blueFace[2][i];
      blueFace[2][i] = redFace[0][i];
      redFace[0][i] = extraFace[0][i];
    }
  }

  public void downTurnShift() {
    //corners
    extraFace[0][0] = whiteFace[2][0];
    whiteFace[2][0] = whiteFace[2][2];
    whiteFace[2][2] = whiteFace[0][2];
    whiteFace[0][2] = whiteFace[0][0];
    whiteFace[0][0] = extraFace[0][0];

    //edges
    extraFace[0][0] = whiteFace[1][0];
    whiteFace[1][0] = whiteFace[2][1];
    whiteFace[2][1] = whiteFace[1][2];
    whiteFace[1][2] = whiteFace[0][1];
    whiteFace[0][1] = extraFace[0][0];

    for (int i = 0; i < 3; i ++) {
      extraFace[0][i] = greenFace[2][i];
      greenFace[2][i] = orangeFace[2][i];
      orangeFace[2][i] = blueFace[0][i];
      blueFace[0][i] = redFace[2][i];
      redFace[2][i] = extraFace[0][i];
    }
  }
}
