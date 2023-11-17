//declare variables
boolean isgameOver;//to determine weather the game is over
boolean isgameStarted;//to declare has game started and draw cars
//Declare Objects

Lossscreen lossscreen;
userCar usercar;
ArrayList<obstacleCar> obstaclecar = new ArrayList<obstacleCar>();
Startscreen startscreen;
Clouds clouds;
roadLines[] roadlines;


void setup() {
  isgameOver = false;
  size(400, 400);
  lossscreen = new Lossscreen();
  startscreen = new Startscreen();
  reset();


  //lines on the road to spereate lanes

  roadlines = new roadLines[3];
  roadlines[0] = new roadLines(width/1.5);
  roadlines[1] = new roadLines(width/2);
  roadlines[2] = new roadLines(width/3);

  //determine state of isgameOver
}

void draw() {
  //check if the boolean for isgameStarted is flase then changes to true
  println(isgameStarted);



  // what to do if game is over
  if (isgameOver) {
    lossscreen.display();
  } else {
    gameplay();
  }
}
void gameplay() {
  //draw road
  background(0, 150, 0);
  noStroke();
  fill(50);
  rect(60, 0, 280, 400);
  roadlines[0].locaX=width/1.5;
  roadlines[1].locaX=width/2;
  roadlines[2].locaX=width/3;

  //create loop for the road lines
  for (int i=0; i <= 2; i++) {
    if (isgameStarted) {
      roadlines[i].updateroadLines();
    }
    roadlines[i].display();
  }
  for (int i = 0; i < obstaclecar.size(); i++) {
    if (isgameStarted) {
      obstaclecar.get(i).display();
    }
    obstaclecar.get(i).update();
  }
  if (!isgameStarted) { //since game did not start show the start screen text
    startscreen.display();
  }

  clouds.display();
  clouds.update();
  if (isgameStarted) { //show display when space bar is pressed
    usercar.display();
    usercar.updatePlayer();
  }
  //lossscreen.display();
  for (int i = 0; i < obstaclecar.size(); i++) {
    if (usercar.carCrash(obstaclecar.get(i))) {
      isgameOver = true;
      break;
    }
  }
}
void reset() {
  isgameOver = false;
  isgameStarted = false;
  startscreen.display();
  usercar = new userCar(210, 310);
  obstaclecar = new ArrayList<obstacleCar>();
  addobstacleCar(new obstacleCar(160, 320));
  clouds = new Clouds();
}

void keyPressed() {
  if (key == 'r' && isgameOver) {
    reset();
  }
  if (key == ' ' && !isgameStarted) {
    isgameStarted = true;
  }
  usercar.keyPressed(key);
}

void keyReleased() {
  usercar.keyReleased(key);
}

void addobstacleCar(obstacleCar Enemy) {
  obstaclecar.add(Enemy);
}
