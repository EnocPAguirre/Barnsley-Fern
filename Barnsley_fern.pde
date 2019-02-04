float x = 0;
float y = 0;

void setup() {
  size(600, 600);
  
   float nextX;
  float nextY;
  float r = random(1);
  
  if (r < 0.25) {
    
   nextX = 0.0 * x;
    nextY = 0.16 * y;
    //2
  } else if (r < 0.5) {
    
     nextX = 0.85 * x + 0.04 * y;
    nextY = -0.04 * x + 0.85 * y + 1.6;
  } else if (r < 0.75) {
    
    //3
  nextX = 0.2 * x + -0.26 * y;
     nextY = 0.23 * x + 0.22 * y + 1.6;
  } else {
    //4
    nextX = -0.15 * x + 0.28 * y;
    nextY = 0.26 * x + 0.24 * y + 0.44 ;
}    
    x = nextX;
    y = nextY;
}

void drawPoint(){
  
   background(0); 
  
  stroke(255);
  strokeWeight(8);
  float px = map(x,-1,1,0,width);
    float py = map(y,-1,1,height,0);

  point(px,py);
  
}

void draw() {

  drawPoint();
  nextPoint();
  
    
}
