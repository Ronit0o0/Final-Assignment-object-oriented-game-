Lossscreen lossscreen;
userCar usercar;
obstacleCar obstaclecar;

void setup() {
  size(400, 400);
  lossscreen = new Lossscreen();
  usercar = new userCar();
  obstaclecar = new obstacleCar();
}

void draw() {
  //lossscreen.display();
  //usercar.display();
  obstaclecar.display();
}
