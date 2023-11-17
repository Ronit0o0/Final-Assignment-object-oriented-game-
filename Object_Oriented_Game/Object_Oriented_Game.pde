Lossscreen lossscreen;
userCar usercar;

void setup() {
  size(400, 400);
  lossscreen = new Lossscreen();
  usercar = new userCar();
}

void draw() {
  //lossscreen.display();
  usercar.display();
}
