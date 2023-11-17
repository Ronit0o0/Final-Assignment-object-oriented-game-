class roadLines {

  float[] linePos = new float [12];

  //variables for the lines on the road


  //create float for the x location of the line to make it easier to place
  float locaX;

  //create constructer
  roadLines(float locaX_) {
    locaX = locaX_;
    for (int i =0; i < linePos.length; i++) {
      linePos[i] = i * 50 - 150;
    }
  }

  void display() {
    //draw roadlines
    noStroke();
    fill(254, 255, 0);
    for (int i =0; i < linePos.length; i++) {
      rect(locaX, linePos[i], 2, 30);
    }
  }
  void updateroadLines() {
    for (int i =0; i < linePos.length; i++) {
      linePos[i]=linePos[i]+5;
      if (linePos[i]>height+30) {
        linePos[i]-=450;
      }
    }
  }
}
