//declare variables
boolean isgameOver; //to determine weather the game is over and you lost or not

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
  clouds = new Clouds();
  lossscreen = new Lossscreen();
  usercar = new userCar();
  startscreen = new Startscreen();

  //spawn obstacle cars at random spots on road
  obstaclecar.add(new obstacleCar(160, 320));

  //lines on the road to spereate lanes

  roadlines = new roadLines[3];
  roadlines[0] = new roadLines(width/1.5);
  roadlines[1] = new roadLines(width/2);
  roadlines[2] = new roadLines(width/3);

  //determine state of isgameOver
}

void draw() {
  //call the funciton of the roadlines

 
    // what to do if gmae is over
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
    roadlines[i].updateroadLines();
    roadlines[i].display();


}
for(int i = 0; i < obstaclecar.size(); i++){
  obstaclecar.get(i).display();
  obstaclecar.get(i).update();
}

clouds.display();
clouds.update();
//usercar.display();
//obstaclecar.display();
//startscreen.display();
//lossscreen.display();
}
void reset() {
  isgameOver = false;
  startscreen.display();
}

void keyPressed() {
  if (key == 'r' && isgameOver) {
    reset();
    
  }
}
