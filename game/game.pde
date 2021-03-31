
player p;

PImage[] cars ; 


int[] gridSize = {10, 10};
float cellsSize = 50;
float zoom = 0.9;
float[] offset = {420, 0}; 

int[] pos_projete_PointX = {-1,0,1,-1,0,1,-1,0,1};
int[] pos_projete_PointY = {1,1,1,0,0,0,-1,-1,-1};

void setup() { 
  size(1280, 695);
  surface.setResizable(true);
  surface.setLocation(3835, 0);
  
  imageMode(CENTER);
  
  cars = new PImage[10];
  cars[0] = loadImage("assets\\Car1_Blue.png");
  p = new player(cars[0]);
  
  int[] a = {5,5};
  int[] b = {4,3};
  p.setCord(a,b);
  
  p.randomRain();
} 
void draw() {
  translate(offset[0], offset[1]);
  background(255);
  keys();
  drawGrid();
  
  
  p.showPointProjete();
  p.show();
  p.hoverPoint();
  
  



 
  //println(offset[0]+"  "+offset[1]+"   "+zoom);
}





void mouseWheel(MouseEvent event) {
  float e = event.getCount();

  float zi = zoom/10;
  if (e>0) {
    zoom-=zi;
  }
  if (e<0) {
    zoom+=zi;
  }
  //zoom += e/10;
  if (zoom == 0) {
    zoom = 1;
  }
}
