//create class for clouds that move on the edge of the screen

class Clouds {
  //variable to allow clouds to move
  float xpos;
  float ypos;
  PVector yspeed = new PVector(0,-1);


  // create constrcutor
  Clouds() {
    xpos = 25;
    ypos = 500;
    yspeed = new PVector(0,-1);
  }
  //display clouds 
  void display() {
    ellipseMode(CORNER);
    noStroke();
    fill(255, 150);
    ellipse(xpos-50, ypos, 100, 300);
  }
  void update() {
    //move cloud vetically
    ypos = ypos + yspeed.y;
    if (ypos < -500) {
      ypos = 500;
    }
  }
}
