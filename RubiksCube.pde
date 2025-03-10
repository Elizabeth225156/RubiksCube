import peasy.*;

PeasyCam cam;

int dim = 3;
Cubie [] cube = new Cubie[dim * dim * dim];
String moveList = "";
String keyVal = "";
String curMoveKey;

Move[] allMoves = new Move[]{
  new Move(0, 1, 0, 1),
  new Move(0, 1, 0, -1),
  new Move(0, -1, 0, 1),
  new Move(0, -1, 0, -1),
  new Move(1, 0, 0, 1),
  new Move(1, 0, 0, -1),
  new Move(-1, 0, 0, 1),
  new Move(-1, 0, 0, -1),
  new Move(0, 0, 1, 1),
  new Move(0, 0, 1, -1),
  new Move(0, 0, -1, 1),
  new Move(0, 0, -1, -1),
};

boolean started = false;

Move currentMove;

int colorNum = 1;

void setup() {
  size(600, 600, P3D);
  cam = new PeasyCam(this, 400);
  for (int x = -1; x <= 1; x++) {
    for (int y = -1; y <= 1; y++) {
      for (int z = -1; z <= 1; z++) {
        PMatrix3D  matrix = new PMatrix3D();
        matrix.translate(x, y, z);
        cube[index] = new Cubie(matrix, x, y, z);
        index ++;
      }
    }
  }

  currentMove = allMoves[0];

  //initiate each string
  for (int i = 0; i < 3; i ++) {
    for (int j = 0; j < 3; j ++) {
      greenFace[i][j] = 'g' + String.valueOf(colorNum);
      orangeFace[i][j] = 'o' + String.valueOf(colorNum);
      blueFace[i][j] = 'b' + String.valueOf(colorNum);
      redFace[i][j] = 'r' + String.valueOf(colorNum);
      whiteFace[i][j] = 'w' + String.valueOf(colorNum);
      yellowFace[i][j] = 'y' + String.valueOf(colorNum);
      colorNum ++;
    }
  }
}

int index = 0;

void turnZ(int index, int dir) {
  for (int i= 0; i < cube.length; i++) {
    Cubie qb = cube[i];
    if (qb.z == index) {
      PMatrix2D matrix  = new PMatrix2D();
      matrix.rotate (dir*HALF_PI);
      matrix.translate(qb.x, qb.y);
      qb.turnFacesZ(dir);
      qb.update(round(matrix.m02), round(matrix.m12), round(qb.z));
    }
  }
}

void turnY(int index, int dir) {
  for (int i= 0; i < cube.length; i++) {
    Cubie qb = cube[i];
    if (qb.y == index) {
      PMatrix2D matrix  = new PMatrix2D();
      matrix.rotate (dir*HALF_PI);
      matrix.translate(qb.x, qb.z);
      qb.turnFacesY(dir);
      qb.update(round(matrix.m02), qb.y, round(matrix.m12));
    }
  }
}

void turnX(int index, int dir) {
  for (int i= 0; i < cube.length; i++) {
    Cubie qb = cube[i];
    if (qb.x == index) {
      PMatrix2D matrix  = new PMatrix2D();
      matrix.rotate (dir*HALF_PI);
      matrix.translate(qb.y, qb.z);
      qb.turnFacesX(dir);
      qb.update(qb.x, round(matrix.m02), round(matrix.m12));
    }
  }
}

void draw() {
  background(51);
  rotateX(-0.5);
  rotateY(0.4);
  rotateZ(0.1);

  currentMove.update();
  if (currentMove.finished()) {
    currentMove.start();
  }

  scale(50);
  for (int i = 0; i < cube.length; i++) {
    push();
    if (abs(cube[i].z) > 0 && cube[i].z == currentMove.z) {
      rotate(currentMove.angle);
    } else if (abs(cube[i].x) > 0 && cube[i].x == currentMove.x) {
      rotateX(currentMove.angle);
    } else if (abs(cube[i].y) > 0 && cube[i].y == currentMove.y) {
      rotateY(-currentMove.angle);
    }
    cube[i].show();
    pop();
  }


}
