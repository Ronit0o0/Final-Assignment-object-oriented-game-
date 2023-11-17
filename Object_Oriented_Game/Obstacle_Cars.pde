class obstacleCar {

  void display() {
    //draw obstacle car
    //draw green body of the car
    noStroke();
    fill(1, 100, 32);
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
