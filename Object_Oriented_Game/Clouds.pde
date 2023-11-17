//create class for clouds that move on the edge of the screen

class Clouds {
  //variable to allow clouds to move
  PVector position;
  PVector velocity;
  float speed = 1;
  float height;
  float width;


  // Declare position and velocity values
  Clouds(float x, float y, float width, float height) {
    velocity = new PVector (speed, 1);
    position = new PVector (x, y);
    velocity.x = 1;
    position.x = y;
    position.y = y;
    this.width = width;
    this.height = height;
  }
  //display clouds on the side of the screen
  void display() {
    ellipseMode(CORNER);
    noStroke();
    fill(255, 10);
    ellipse(-25, 100, 80, 300);
  }
  void move() {
    position.sub(velocity);
    if ( position.y < -150) {
      position.x= 25;
      position.y = 400;
      velocity.x = 1;
    }
  }
}
