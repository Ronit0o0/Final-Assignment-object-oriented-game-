Lossscreen lossscreen;
userCar usercar;
obstacleCar obstaclecar;
Startscreen startscreen;

void setup() {
  size(400, 400);
  lossscreen = new Lossscreen();
  usercar = new userCar();
  obstaclecar = new obstacleCar();
  startscreen = new Startscreen();
}

void draw() {
  lossscreen.display();
  //usercar.display();
  //obstaclecar.display();
  //startscreen.display();
}
