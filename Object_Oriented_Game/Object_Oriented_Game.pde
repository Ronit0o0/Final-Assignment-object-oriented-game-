//Declare Objects
Lossscreen lossscreen;
userCar usercar;
obstacleCar obstaclecar;
Startscreen startscreen;
Clouds clouds;
roadLines[] roadlines;

void setup() {
  size(400, 400);
  lossscreen = new Lossscreen();
  usercar = new userCar();
  obstaclecar = new obstacleCar();
  startscreen = new Startscreen();
  //clouds = new Clouds();
  //lines on the road to spereate lanes
  roadlines = new roadLines[3];

  roadlines[0] = new roadLines(width/1.5);
  roadlines[1] = new roadLines(width/2);
  roadlines[2] = new roadLines(width/3);
}

void draw() {
  //draw road
  background(0, 150, 0);
  noStroke();
  fill(50);
  rect(60, 0, 280, 400);

  //call the funciton of the roadlines
  roadlines[0].locaX=width/1.5;
  roadlines[1].locaX=width/2;
  roadlines[2].locaX=width/3;
  //create loop for the road lines
  for (int i=0; i<=2; i++) {
    roadlines[i].updateroadLines();
    roadlines[i].display();
  }

  //usercar.display();
  //obstaclecar.display();
  //startscreen.display();
  //clouds.display();
  //clouds.move();
  //lossscreen.display();
}
