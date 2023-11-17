//create class for loss screen
class Lossscreen {

  // colour of background when you lose
  color backgroundColor = color(255, 0, 0, 200);

  void display() {
    //draw text saying "Game Over"
    fill(backgroundColor);
    stroke(0);
    text("Game Over", 170, height / 2);
  }
}
