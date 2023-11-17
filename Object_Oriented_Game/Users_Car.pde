
//create class for the users/players car
class userCar {

  //variables for players car to move

  boolean steerRight;
  boolean steerLeft;
  float carSpeedright = 2;
  float carSpeedleft = -2;
  float carx;
  float cary;

  userCar(float x, float y) {
    carx = x;
    cary = y;
  }
  void display() {
    //draw users car
    //draw red body of the car
    noStroke();
    fill(250, 0, 0);
    rect(carx + 5, cary + 0, 40, 80);
    //draw hood of car
    noStroke();
    fill(0);
    rect(carx + 13, cary + 10, 25, 60);
    //draw wheels of car
    noStroke();
    fill(0);
    rect(carx + 0, cary +10, 5, 15);
    rect(carx + 0, cary +60, 5, 15);
    rect(carx + 45, cary +10, 5, 15);
    rect(carx + 45, cary +60, 5, 15);
  }
  //update players position
  void updatePlayer() {
    if (steerLeft == true) { //steer left
      carx = carx + carSpeedleft; //make the car speed negative since it moving left
    }
    if (steerRight == true) { //steer right
      carx = carx + carSpeedright; //make the car speed positive since its moving right
    }
    carx = constrain(carx, 55,295);
  }


  //allow the player to steer the car left and right in the road
  void keyPressed(char key) {
    if (key == 'a' || key == 'A' || keyCode == LEFT) { //if the 'a' key is pressed steer car to the left
      steerLeft = true;
    } else if (key == 'd' || key == 'D' || keyCode == RIGHT) { //if the 'd' key is pressed stter car to the right
      steerRight = true;
    }
    switch(key){
     case '1':
     //add carcolour varible here
     break;
     
     case '2':
     //add carcolour varible here
     break;
     
     case '3':
     //add carcolour varible here
     break;
    }
    
  }

  void keyReleased(char key) {
    if (key == 'a' || key == 'A' || keyCode == LEFT) { //if the 'a' key is pressed steer car to the left
      steerLeft = false;
    } else if (key == 'd' || key == 'D' || keyCode == RIGHT) { //if the 'd' key is pressed stter car to the right
      steerRight = false;
    }
  }

  boolean carCrash(obstacleCar collider) {
    if (collider.location.x >= carx && collider.location.x <= carx + 40 && collider.location.y >= cary && collider.location.y <= cary + 80) {
      return true;
    }  if (collider.location.x + 40 >= carx && collider.location.x + 40 <= carx + 40 && collider.location.y >= cary && collider.location.y <= cary + 80) {
      return true;
    }  if (collider.location.x >= carx && collider.location.x <= carx + 40 && collider.location.y + 80 >= cary && collider.location.y + 80 <= cary + 80) {
      return true;
    }  if (collider.location.x + 40 >= carx && collider.location.x + 40 <= carx + 40 && collider.location.y + 80 >= cary && collider.location.y + 80 <= cary + 80) {
      return true;
    }
    return false;
  }
}
