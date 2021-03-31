boolean UpKey = false;
boolean DownKey = false;
boolean RightKey = false;
boolean LeftKey = false;





void keyPressed() {
  if (keyCode == UP) {
    UpKey = true;
  }
  if (keyCode == DOWN) {
    DownKey = true;
  }
  if (keyCode == RIGHT) {
    RightKey = true;
  }
  if (keyCode == LEFT) {
    LeftKey = true;
  }
  if (key == 'r') {
    p.randomRain();
    
   
  }
  
}
void keyReleased() {
  if (keyCode == UP) {
    UpKey = false;
  }
  if (keyCode == DOWN) {
    DownKey = false;
  }
  if (keyCode == RIGHT) {
    RightKey = false;
  }
  if (keyCode == LEFT) {
    LeftKey = false;
  }
}


void keys(){
  
  float valTodecal = 10;
  if (UpKey) {
    offset[1] += valTodecal*zoom;
  }
  if (DownKey) {
    offset[1] -= valTodecal*zoom;
  }
  if (RightKey) {
    offset[0] -= valTodecal*zoom;
  }
  if (LeftKey) {
    offset[0] += valTodecal*zoom;
  }
  
}
