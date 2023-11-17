//create class for the users/players car
class userCar {

  void display() {
    //draw users car
    //draw red body of the car
    noStroke();
    fill(250, 0, 0);
    rect(10, 10, 40, 80);
    //draw hood of car
    noStroke();
    fill(0);
    rect(18, 20, 25, 60);
    //draw wheels of car
    noStroke();
    fill(0);
    rect(5, 18, 5, 15);
    rect(5, 70, 5, 15);
    rect(50, 18, 5, 15);
    rect(50, 70, 5, 15);
  }
}
