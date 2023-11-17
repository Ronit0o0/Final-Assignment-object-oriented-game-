//create class for clouds that move on the edge of the screen

class Clouds {
  //variable to allow clouds to move
  float xpos;
  float ypos;
  PVector yspeed = new PVector(-1,0);


  // create constrcutor
  Clouds() {
    xpos = 25;
    ypos = 500;
    yspeed = new PVector();
  }
  //display clouds 
  void display() {
    ellipseMode(CORNER);
    noStroke();
    fill(255, 150);
    ellipse(-25, 100, 80, 300);
  }
  void update() {
    //move cloud vetically
    ypos = ypos + yspeed.y;
    if (ypos > height) {
      ypos = 500;
    }
  }
}
