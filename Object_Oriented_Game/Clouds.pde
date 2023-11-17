//create class for clouds that move on the edge of the screen



class Clouds {
  //variable to allow clouds to move
  PVector position;
  PVector velocity;
  float speed = 1;
 


Clouds() {
   velocity = new PVector (speed,1);
    position = new PVector (25, 400);
    velocity.x = 1;
    position.x = 25;
    position.y = 400;

}
  
    void display() {
    ellipseMode(CORNER);
    noStroke();
    fill(255, 10);
    ellipse(-25, 100, 80, 300);
  }
}
