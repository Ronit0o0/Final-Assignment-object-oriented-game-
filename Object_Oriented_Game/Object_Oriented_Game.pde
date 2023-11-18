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
   println("Controls: A to move left, D to move right. 'r' to restart. 'space bar' to start game from starting screen. To change colour of car while playing press '1','2','3', or '4'.");
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

      if (i == 0) {
        obstaclecar.get(i).update(obstaclecar.get(1));
      } else {
        obstaclecar.get(i).update(obstaclecar.get(0));
      }
    }
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
  //check if we crashed with any obstaclecars
  //looping through to check if player car crashed with the obstacle car and then set game over to true
  for (int i = 0; i < obstaclecar.size(); i++) {
    if (usercar.carCrash(obstaclecar.get(i))) {
      isgameOver = true;
      break;
    }
  }
}
void reset() { //reset game when you lose and have everything go bac kto start screen and reset gameplay as well
  isgameOver = false;
  isgameStarted = false;
  startscreen.display();
  usercar = new userCar(210, 310);
  obstaclecar = new ArrayList<obstacleCar>();
  addobstacleCar(new obstacleCar(0, 500));
  addobstacleCar(new obstacleCar(0, 500));
  clouds = new Clouds();
}
// when game is over press r to reset game and press space bar to start game from start screen
void keyPressed() {
  if (key == 'r' && isgameOver) {
    reset();
  }
  if (key == ' ' && !isgameStarted) {
    isgameStarted = true;
  }//movement of car
  usercar.keyPressed(key);
}

void keyReleased() {
  //movement of car but to allow it to stop
  usercar.keyReleased(key);
}
// to add the obstacle car into the game
void addobstacleCar(obstacleCar Enemy) {
  obstaclecar.add(Enemy);
}
