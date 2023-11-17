class obstacleCar {
  PVector location = new PVector();


  //constrcutor
  obstacleCar(float x, float y) {
    //create variables for the y and x position of the obstacle cars
    location.x = x;
    location.y = y;
  }

  void display() {
    //draw obstacle car
    //draw green body of the car
    noStroke();
    fill(1, 100, 32);
    rect(location.x + 10, location.y + 10, 40, 80);
    //draw hood of car
    noStroke();
    fill(0);
    rect(location.x+18, location.y +20, 25, 60);
    //draw wheels of car
    noStroke();
    fill(0);
    rect(location.x+5, location.y +18, 5, 15);
    rect(location.x+5, location.y +70, 5, 15);
    rect(location.x+50, location.y +18, 5, 15);
    rect(location.x+50, location.y +70, 5, 15);
  }

  void update(obstacleCar othercar) {
    location.y = location.y + 5;
    if (location.y > height) {
      location.y=random(-500, -70);
      location.x = round(random(1, 4)) * 70;
      PVector offset = PVector.sub(location, othercar.location); //take target point and subtract from othercar to direction
      float distance = offset.mag(); //find disntance to othercar
      if (distance < 100) {
        if (location.y < othercar.location.y) {
          location.y -= 50;
        }
      }
    }
  }
}
