class roadLines {

  //variables for the lines on the road
  float linePos1 = 0;
  float linePos2 = 50;
  float linePos3 = 100;
  float linePos4 = 150;
  float linePos5 = 200;
  float linePos6 = 250;
  float linePos7 = 300;
  float linePos8 = 350;
  float linePos9 = 400;
  float linePos10 = -50;
  float linePos11 = -100;
  float linePos12 = -160;


  //creat efloat for the x location of the line to make it easier to place
  float locaX;

  //create constructer
  roadLines(float locaX_) {
    locaX = locaX_;
  }

  void display() {
    //draw roadlines
    noStroke();
    fill(254, 255, 0);
    rect(locaX, linePos1, 2, 30);
    rect(locaX, linePos2, 2, 30);
    rect(locaX, linePos3, 2, 30);
    rect(locaX, linePos4, 2, 30);
    rect(locaX, linePos5, 2, 30);
    rect(locaX, linePos6, 2, 30);
    rect(locaX, linePos7, 2, 30);
    rect(locaX, linePos8, 2, 30);
    rect(locaX, linePos9, 2, 30);
    rect(locaX, linePos10, 2, 30);
    rect(locaX, linePos11, 2, 30);
    rect(locaX, linePos12, 2, 30);
  }

  void updateroadLines() {
    linePos1=linePos1+5;
    linePos2=linePos2+5;
    linePos3=linePos3+5;
    linePos4=linePos4+5;
    linePos5=linePos5+5;
    linePos6=linePos6+5;
    linePos7=linePos7+5;
    linePos8=linePos8+5;
    linePos9=linePos9+5;
    linePos10=linePos10+5;
    linePos10=linePos11+5;
    linePos10=linePos12+5;

    if (linePos1>height+30) {
      linePos1=-30;
    }
    if (linePos2>height+30) {
      linePos2=-30;
    }
    if (linePos3>height+30) {
      linePos3=-30;
    }
    if (linePos4>height+30) {
      linePos4=-30;
    }
    if (linePos5>height+30) {
      linePos5=-30;
    }
    if (linePos6>height+30) {
      linePos6=-30;
    }
    if (linePos7>height+30) {
      linePos7=-30;
    }
    if (linePos8>height+30) {
      linePos8=-30;
    }
    if (linePos9>height+30) {
      linePos9=-30;
    }
    if (linePos10>height+30) {
      linePos10=-30;
    }
    if (linePos11>height+30) {
      linePos11=-30;
    }
    if (linePos12>height+30) {
      linePos12=-30;
    }
  }
}
