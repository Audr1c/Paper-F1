void drawGrid() {
  /*----------
   .Draw lines
   .----------
   */
  float x= 0;
  float y= 0;
  noFill();
  stroke(0);
  strokeWeight(1);



  boolean b = true;
  //draw line Vertical to Right
  while (b && x<(width-offset[0]+cellsSize)/zoom ) {   
    while (x>(-cellsSize-offset[0])/zoom  && x<(width-offset[0]+cellsSize)/zoom ) {
      b = false;
      line(x*zoom, 0-offset[1], (x)*zoom, (height-offset[1]) );
      x+=cellsSize;
    }
    x+=cellsSize;
  }
  //draw line Vertical to Left
  x = 0;
  b= true;
  while (b && x>(-cellsSize-offset[0])/zoom) {   
    while (x>-(width+offset[0]-cellsSize)/zoom && x>(-cellsSize-offset[0])/zoom) {
      b = false;
      line(x*zoom, 0-offset[1], x*zoom, height-offset[1]);
      x-=cellsSize;
    }
    x-=cellsSize;
  }

  b= true;
  //draw line horizontal to Down
  while (b && y<(height-offset[1]+cellsSize)/zoom ) {   
    while (y>(-cellsSize-offset[1])/zoom && y<(height-offset[1]+cellsSize)/zoom) {
      b = false;
      line(0-offset[0], y*zoom, width-offset[0], y*zoom);
      y+=cellsSize;
    }
    y+=cellsSize;
  }
  //draw line horizontal to UP
  y = 0;
  b= true;
  while (b && y>(0-offset[1]-cellsSize)/zoom) {   
    while (y>-(height+offset[1]-cellsSize)/zoom && y>(0-offset[1]-cellsSize)/zoom) {
      b = false;
      line(0-offset[0], y*zoom, width-offset[0], y*zoom);
      y-=cellsSize;
    }
    y-=cellsSize;
  }

  /*----------
   .Draw Dots
   .----------
   */

  strokeWeight(5*zoom);
  stroke(100);

  float xB = 0;

  boolean c = true;
  
  while (c && xB<(width-offset[0]+cellsSize)/zoom  ) {   
    while (xB>(-cellsSize-offset[0])/zoom   && xB<(width-offset[0]+cellsSize)/zoom  ) {
      c = false;
      drawpoints(xB);
      
      xB+=cellsSize;
    }
    xB+=cellsSize;
  }
  xB = 0;
  c = true;
  while (c && xB>(-cellsSize-offset[0])/zoom) {   
    while (xB>-(width+offset[0]-cellsSize)/zoom && xB>(-cellsSize-offset[0])/zoom) {
      c = false;
      drawpoints(xB);
      
      xB-=cellsSize;
    }
    xB-=cellsSize;
  }
}
void drawpoints(float xB) {
  float yB = 0;
  boolean b = true;
  while (b && yB<(height-offset[1]+cellsSize)/zoom ) {   
    while (yB>(-cellsSize-offset[1])/zoom && yB<(height-offset[1]+cellsSize)/zoom) {
      b = false;
      point(xB*zoom, yB*zoom);

      yB+=cellsSize;
    }
    yB+=cellsSize;
  }
  yB = 0;
  b = true;
  while (b && yB>(0-offset[1]-cellsSize)/zoom) {   
    while (yB>-(height+offset[1]-cellsSize)/zoom && yB>(0-offset[1]-cellsSize)/zoom) {
      b = false;
      point(xB*zoom, yB*zoom);
      yB-=cellsSize;
    }
    yB-=cellsSize;
  }
  b = true;
}
