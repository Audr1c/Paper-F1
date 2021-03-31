class player {

  int[] pos = {0, 0};
  int[] vect = {0, 0};
  boolean[] projete = {true, true, true, true, true, true, true, true, true};
  boolean rain = true;
  PImage img;

  player(PImage img_) {
    img = img_;
  }

  void setCord(int[] pos_, int[] vect_) {
    pos = pos_;
    vect = vect_;
  }
  void showPointProjete() {
    noStroke();
    fill(#36D5FF);
    //print(vect[0]+"  "+vect[1]);  
    for (int i = 0; i<9; i++) {
      circle((pos_projete_PointX[i]+pos[0]+vect[0])*cellsSize*zoom, (pos_projete_PointY[i]+pos[1]+vect[1])*cellsSize*zoom, 25*zoom);
    }
    if (rain) {
      showPointProjeteRain();
    }
  }
  void showPointProjeteRain() {
    noStroke();
    fill(#F56565);
    for (int i = 0; i<9; i++) {
      if (projete[i]) {
        circle((pos_projete_PointX[i]+pos[0]+vect[0])*cellsSize*zoom, (pos_projete_PointY[i]+pos[1]+vect[1])*cellsSize*zoom, 25*zoom);
      }
    }
  }
  
  void hoverPoint(){
   //check if mouse is in a box near the points
   //x
   stroke(0);
   float xm = (pos[0]+vect[0]-2)*cellsSize*zoom;
   float xp = (pos[0]+vect[0]+2)*cellsSize*zoom;
   float ym = (pos[1]+vect[1]-2)*cellsSize*zoom;
   float yp = (pos[1]+vect[1]+2)*cellsSize*zoom;
   /*
   line(xm,-height*zoom,xm,height*zoom);
   line(xp,-height*zoom,xp,height*zoom);
   line(-width*zoom,ym,width*zoom,ym);
   line(-width*zoom,yp,width*zoom,yp);
   */
   if(mouseX-offset[0] > xm && mouseX-offset[0] < xp){
      if(mouseY-offset[1] > ym && mouseY-offset[1] < yp){
        
         for (int i = 0; i<9; i++) {
           if (mouseOnCercle((pos_projete_PointX[i]+pos[0]+vect[0])*cellsSize*zoom,(pos_projete_PointY[i]+pos[1]+vect[1])*cellsSize*zoom,22*zoom)){
             print(i);
             stroke(0);
             strokeWeight(3*zoom);
             fill(255,0);
             circle((pos_projete_PointX[i]+pos[0]+vect[0])*cellsSize*zoom, (pos_projete_PointY[i]+pos[1]+vect[1])*cellsSize*zoom, 25*zoom);
           }
         }
        //println("in!!"); 
      }
    
   }
    
  }
  boolean mouseOnCercle(float xC,float yC,float r){
    float mX = mouseX-offset[0];
    float mY = mouseY-offset[1];
    float d = dist(xC,yC,mX,mY);
    if(d<=r){
      return true;
    }
    else{
      return false;
    }
    
    
  }
  

  void randomRain() {
    resetRain();
    for (int i = 0; i<6; i++) {
      int r = int(random(0, 9));

      projete[r] = true;
    }
    int[] v = {0, 0};
    v[0] = int(random(-9, 9));
    v[1] = int(random(-9, 9));
    if (v[0]==0) {
      v[0] = 1;
    }
    vect = v;
    println(vect[0]+"  "+vect[1]);
  }
  void resetRain() {
    for (int i = 0; i<  projete.length; i++) {
      projete[i] = false;
    }
  }


  void show() {
    float r = atan((float(vect[1])/float(vect[0])));
    boolean revesed = false;
    if (vect[0]<0) {
      revesed = true;
    } 
    //println("  angle  "+angle+"r  "+r+"   c "+ coef);
    push();
    translate(pos[0]*cellsSize*zoom, pos[1]*cellsSize*zoom);
    rotate(r);  
    if (revesed) {
      scale(-1.0, 1.0);
      image(img, 0, 0, 100*zoom, 100*zoom);
    } 
    else {
      image(img, 0, 0, 100*zoom, 100*zoom);
    }
    pop();

    //fill(0);
    //circle((pos[0])*cellsSize*zoom, (pos[1])*cellsSize*zoom, 25*zoom);
  }
}
