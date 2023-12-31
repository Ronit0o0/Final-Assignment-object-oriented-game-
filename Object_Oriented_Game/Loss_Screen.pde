//create class for loss screen
class Lossscreen {

  // colour of background when you lose
  color backgroundColor = color(200, 0, 0);

  void display() {
    //create red sqaures for background when you lose
    stroke(255);
    strokeWeight(2);
    for (int y = 0; y < height; y = y + 20) {
      for (int x = 0; x < width; x = x + 20) {
        fill(backgroundColor);
        rect(x, y, 20, 20);
      }
    }
    //draw text saying "Game Over"
    fill(0);
    textSize(60);
    text("Game Over", 70, 100);

    //draw text saying press r to return to start screen
    fill(0);
    textSize(25);
    text("press 'r' to return to start screen", 50, 250);
  }
}
