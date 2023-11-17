class roadLines {

  //variables for the lines on the road
  float linePos1 = 0;
  float linePos2 = 40;
  float linePos3 = 80;
  float linePos4 = 120;
  float linePos5 = 160;
  float linePos6 = 200;
  float linePos7 = 240;
  float linePos8 = 280;
  float linePos9 = 320;
  float linePos10 = 360;
  float linePos11 = 400;
  float linePos12 = 440;
  float linePos13 = 480;
  float linePos14 = 520;
  float linePos15 = 560;

  //creat efloat for the x location of the line ti make it easier to place
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
    rect(locaX, linePos13, 2, 30);
    rect(locaX, linePos14, 2, 30);
    rect(locaX, linePos15, 2, 30);
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
    linePos11=linePos11+5;
    linePos12=linePos12+5;
    linePos13=linePos13+5;
    linePos14=linePos14+5;
    linePos15=linePos15+5;
    
    if (linePos1>height+50) {
      linePos1=-50;
    }
    if (linePos2>height+50) {
      linePos2=-50;
    }
    if (linePos3>height+50) {
      linePos3=-50;
    }
    if (linePos4>height+50) {
      linePos4=-50;
    }
    if (linePos5>height+50) {
      linePos5=-50;
    }
    if (linePos6>height+50) {
      linePos6=-50;
    }
    if (linePos7>height+50) {
      linePos7=-50;
    }
    if (linePos8>height+50) {
      linePos8=-50;
    }
    if (linePos9>height+50) {
      linePos9=-50;
    }
    if (linePos10>height+50) {
      linePos10=-50;

      if (linePos11>height+50) {
        linePos11=-50;
      }
      if (linePos12>height+50) {
        linePos12=-50;
      }
       if (linePos13>height+50) {
        linePos13=-50;
      }
       if (linePos14>height+50) {
        linePos14=-50;
         if (linePos15>height+50) {
        linePos15=-50;
      }
      }
    }
  }
}
