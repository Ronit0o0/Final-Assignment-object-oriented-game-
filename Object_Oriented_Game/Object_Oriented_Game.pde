Lossscreen lossscreen;
userCar usercar;
obstacleCar obstaclecar;
Startscreen startscreen;
Clouds clouds;
roadLines;

void setup() {
  size(400, 400);
  lossscreen = new Lossscreen();
  usercar = new userCar();
  obstaclecar = new obstacleCar();
  startscreen = new Startscreen();
  //clouds = new Clouds();
  road = new Road();
}

void draw() {
  //draw road
  background(0, 150, 0);
  noStroke();
  fill(50);
  rect(60,0,280,400);
  //lossscreen.display();
  //usercar.display();
  //obstaclecar.display();
  //startscreen.display();
  //clouds.display();
  //clouds.move();
  //road.display();
}
