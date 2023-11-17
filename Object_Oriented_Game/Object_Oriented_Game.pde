Lossscreen lossscreen;
userCar usercar;
obstacleCar obstaclecar;
Startscreen startscreen;
Clouds clouds;

void setup() {
  size(400, 400);
  lossscreen = new Lossscreen();
  usercar = new userCar();
  obstaclecar = new obstacleCar();
  startscreen = new Startscreen();
  clouds = new Clouds();
}

void draw() {
  //lossscreen.display();
  //usercar.display();
  //obstaclecar.display();
  //startscreen.display();
  clouds.display();
}
