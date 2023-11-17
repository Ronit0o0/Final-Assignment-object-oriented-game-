//variables for players car to move
boolean steerRight;
boolean steerLeft;
float carSpeed = 0;


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
  //update players position
  void updatePlayer() {
    if (steerLeft == true) { //steer left
      carSpeed += -10; //make the car speed negative since it moving left
    }
    if (steerRight == true) { //steer right
      carSpeed += 10; //make the car speed positive since its moving right
    }
  }
}

//allow the player to steer the car left and right in the road
void keyPressed() {
  if (key == 'a' || key == 'A' || keyCode == LEFT) { //if the 'a' key is pressed steer car to the left
    steerLeft = true;
  } else if (key == 'd' || key == 'D' || keyCode == RIGHT) { //if the 'd' key is pressed stter car to the right
    steerRight = true;
  }
}
