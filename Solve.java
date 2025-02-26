String[][] greenFace = new String[3][3];//front
String[][] orangeFace = new String[3][3];//right
String[][] blueFace = new String[3][3];//back
String[][] redFace = new String[3][3];//left
String[][] yellowFace = new String[3][3];//top
String[][] whiteFace = new String[3][3];//bottom
String[][] extraFace = new String[3][3];
String extraCube;

class Solve {

  public void frontTurn() {
    //Rotate front face
    //corners
    extraCube = greenFace[0][2];
    greenFace[0][2] = greenFace[2][2];
    greenFace[2][2] = greenFace[2][0];
    greenFace[0][0] = extraCube;

    //edges
    extraCube = greenFace[0][1];
    greenFace[0][1] = greenFace[1][2];
    greenFace[1][2] = greenFace[2][1];
    greenFace[2][1] = extraCube;

    //Top layer switch
    for (int i = 0; i < 3; i ++) {
      extraFace[i][0] = yellowFace[i][2];
      yellowFace[i][2] = redFace[2][i];
      redFace[2][i] = whiteFace[i][0];
      whiteFace[i][0] = orangeFace[0][i];
      orangeFace[0][i] = extraFace[i][2];
    }
  }

  public void leftTurn() {
    //corners
    extraCube = redFace[0][2];
    redFace[0][2] = redFace[2][2];
    redFace[2][2] = redFace[2][0];
    redFace[0][0] = extraCube;

    //edges
    extraCube = redFace[0][1];
    redFace[0][1] = redFace[1][2];
    redFace[1][2] = redFace[2][1];
    redFace[2][1] = extraCube;

    for (int i = 0; i < 3; i ++) {
      extraFace[0][i] = greenFace[0][i];
      greenFace[0][i] = whiteFace[0][i];
      whiteFace[0][i] = blueFace[0][i];
      blueFace[0][i] = yellowFace[0][i];
      yellowFace[0][i] = extraFace[0][i];
    }
  }

  public void rightTurn() {
    //corners
    extraCube = orangeFace[0][2];
    orangeFace[0][2] = orangeFace[2][2];
    orangeFace[2][2] = orangeFace[2][0];
    orangeFace[0][0] = extraCube;

    //edges
    extraCube = orangeFace[0][1];
    orangeFace[0][1] = orangeFace[1][2];
    orangeFace[1][2] = orangeFace[2][1];
    orangeFace[2][1] = extraCube;

    for (int i = 0; i < 3; i ++) {
      extraFace[2][i] = greenFace[2][i];
      greenFace[2][i] = whiteFace[2][i];
      whiteFace[2][i] = blueFace[2][i];
      blueFace[2][i] = yellowFace[2][i];
      yellowFace[2][i] = extraFace[2][i];
    }
  }

  public void backTurn() {
    //corners
    extraCube = blueFace[0][2];
    blueFace[0][2] = blueFace[2][2];
    blueFace[2][2] = blueFace[2][0];
    blueFace[0][0] = extraCube;

    //edges
    extraCube = blueFace[0][1];
    blueFace[0][1] = blueFace[1][2];
    blueFace[1][2] = blueFace[2][1];
    blueFace[2][1] = extraCube;

    for (int i = 0; i < 3; i ++) {
      extraFace[i][0] = yellowFace[i][0];
      yellowFace[i][0] = redFace[0][i];
      redFace[0][i] = whiteFace[i][2];
      whiteFace[i][2] = orangeFace[2][i];
      orangeFace[2][i] = extraFace[i][0];
    }
  }

  public void upTurn() {
    //corners
    extraCube = yellowFace[0][2];
    yellowFace[0][2] = yellowFace[2][2];
    yellowFace[2][2] = yellowFace[2][0];
    yellowFace[0][0] = extraCube;

    //edges
    extraCube = yellowFace[0][1];
    yellowFace[0][1] = yellowFace[1][2];
    yellowFace[1][2] = yellowFace[2][1];
    yellowFace[2][1] = extraCube;

    for (int i = 0; i < 3; i ++) {
      extraFace[i][0] = greenFace[i][0];
      greenFace[i][0] = orangeFace[i][0];
      orangeFace[i][0] = blueFace[i][2];
      blueFace[i][2] = redFace[i][0];
      redFace[i][0] = extraFace[i][0];
    }
  }

  public void downTurn() {
    //corners
    extraCube = whiteFace[0][2];
    whiteFace[0][2] = whiteFace[2][2];
    whiteFace[2][2] = whiteFace[2][0];
    whiteFace[0][0] = extraCube;

    //edges
    extraCube = whiteFace[0][1];
    whiteFace[0][1] = whiteFace[1][2];
    whiteFace[1][2] = whiteFace[2][1];
    whiteFace[2][1] = extraCube;

    for (int i = 0; i < 3; i ++) {
      extraFace[i][0] = greenFace[i][2];
      greenFace[i][2] = orangeFace[i][2];
      orangeFace[i][2] = blueFace[i][0];
      blueFace[i][0] = redFace[i][2];
      redFace[i][2] = extraFace[i][0];
    }
  }
  
  
  
  
  public void frontTurnShift() {
    //Rotate front face
    //corners
    extraCube = greenFace[0][2];
    greenFace[0][2] = greenFace[0][0];
    greenFace[0][0] = greenFace[2][0];
    greenFace[2][0] = greenFace[2][2];
    greenFace[2][2] = extraCube;
    //edges
    extraCube = greenFace[0][1];
    greenFace[0][1] = greenFace[1][0];
    greenFace[1][0] = greenFace[2][1];
    greenFace[2][1] = greenFace[1][2];
    greenFace[1][2] = extraCube;

    //Top layer switch
    for (int i = 0; i < 3; i ++) {
      extraFace[i][0] = yellowFace[i][2];
      yellowFace[i][2] = redFace[2][i];
      redFace[2][i] = whiteFace[i][0];
      whiteFace[i][0] = orangeFace[0][i];
      orangeFace[0][i] = extraFace[i][2];
    }
  }

  public void leftTurnShift() {
    //corners
    extraCube = redFace[0][2];
    redFace[0][2] = redFace[0][0];
    redFace[0][0] = redFace[2][0];
    redFace[2][0] = redFace[2][2];
    redFace[2][2] = extraCube;
    //edges
    extraCube = redFace[0][1];
    redFace[0][1] = redFace[1][0];
    redFace[1][0] = redFace[2][1];
    redFace[2][1] = redFace[1][2];
    redFace[1][2] = extraCube;

    for (int i = 0; i < 3; i ++) {
      extraFace[0][i] = greenFace[0][i];
      greenFace[0][i] = whiteFace[0][i];
      whiteFace[0][i] = blueFace[0][i];
      blueFace[0][i] = yellowFace[0][i];
      yellowFace[0][i] = extraFace[0][i];
    }
  }

  public void rightTurnShift() {
    //corners
    extraCube = orangeFace[0][2];
    orangeFace[0][2] = orangeFace[0][0];
    orangeFace[0][0] = orangeFace[2][0];
    orangeFace[2][0] = orangeFace[2][2];
    orangeFace[2][2] = extraCube;
    //edges
    extraCube = orangeFace[0][1];
    orangeFace[0][1] = orangeFace[1][0];
    orangeFace[1][0] = orangeFace[2][1];
    orangeFace[2][1] = orangeFace[1][2];
    orangeFace[1][2] = extraCube;

    for (int i = 0; i < 3; i ++) {
      extraFace[2][i] = greenFace[2][i];
      greenFace[2][i] = whiteFace[2][i];
      whiteFace[2][i] = blueFace[2][i];
      blueFace[2][i] = yellowFace[2][i];
      yellowFace[2][i] = extraFace[2][i];
    }
  }

  public void backTurnShift() {
    //corners
    extraCube = blueFace[0][2];
    blueFace[0][2] = blueFace[0][0];
    blueFace[0][0] = blueFace[2][0];
    blueFace[2][0] = blueFace[2][2];
    blueFace[2][2] = extraCube;
    //edges
    extraCube = blueFace[0][1];
    blueFace[0][1] = blueFace[1][0];
    blueFace[1][0] = blueFace[2][1];
    blueFace[2][1] = blueFace[1][2];
    blueFace[1][2] = extraCube;

    for (int i = 0; i < 3; i ++) {
      extraFace[i][0] = yellowFace[i][0];
      yellowFace[i][0] = redFace[0][i];
      redFace[0][i] = whiteFace[i][2];
      whiteFace[i][2] = orangeFace[2][i];
      orangeFace[2][i] = extraFace[i][0];
    }
  }

  public void upTurnShift() {
    //corners
    extraCube = yellowFace[0][2];
    yellowFace[0][2] = yellowFace[0][0];
    yellowFace[0][0] = yellowFace[2][0];
    yellowFace[2][0] = yellowFace[2][2];
    yellowFace[2][2] = extraCube;
    //edges
    extraCube = yellowFace[0][1];
    yellowFace[0][1] = yellowFace[1][0];
    yellowFace[1][0] = yellowFace[2][1];
    yellowFace[2][1] = yellowFace[1][2];
    yellowFace[1][2] = extraCube;

    for (int i = 0; i < 3; i ++) {
      extraFace[i][0] = greenFace[i][0];
      greenFace[i][0] = orangeFace[i][0];
      orangeFace[i][0] = blueFace[i][2];
      blueFace[i][2] = redFace[i][0];
      redFace[i][0] = extraFace[i][0];
    }
  }

  public void downTurnShift() {
    //corners
    extraCube = whiteFace[0][2];
    whiteFace[0][2] = whiteFace[0][0];
    whiteFace[0][0] = whiteFace[2][0];
    whiteFace[2][0] = whiteFace[2][2];
    whiteFace[2][2] = extraCube;
    //edges
    extraCube = whiteFace[0][1];
    whiteFace[0][1] = whiteFace[1][0];
    whiteFace[1][0] = whiteFace[2][1];
    whiteFace[2][1] = whiteFace[1][2];
    whiteFace[1][2] = extraCube;

    for (int i = 0; i < 3; i ++) {
      extraFace[i][0] = greenFace[i][2];
      greenFace[i][2] = orangeFace[i][2];
      orangeFace[i][2] = blueFace[i][0];
      blueFace[i][0] = redFace[i][2];
      redFace[i][2] = extraFace[i][0];
    }
  }
}