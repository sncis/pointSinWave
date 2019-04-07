static final int NUM_LINES = 30;

float t;

void setup() {
  background(0);
  size (500, 500);
  noLoop();
}

void draw(){
    stroke(255); // draw an outline in white
    strokeWeight(5); // set the line weight to 5
    translate(width/2, height/2); // set the point in the middel (width and height are build in variables)
    
    //point(x1(t*2),y1(t*2));
    point(x2(t*2),y2(t*2));
    //point(x1(-t*2),y1(-t*2));
    point(x2(-t*2),y2(-t*2));

    stroke(255-(t*2));

    
    t += .5;
  //} 
}

void mousePressed() {
  int t = 0;
  while(t < 100) {
    
    loop();
    t++;
  }
}

void mouseReleased() {
  noLoop();


}
 /* 
float x1(float t) { // calcualte t for the x (horizontal) coordinate
  return sin(t/10) *100; 
}

float y1(float t) { // calculate t for the y (vertical)coordiante
  return sin(t/10) * (100); //creating a sine wave deviding by 
}
*/

float x2(float t) { // calcualte t for the x (horizontal) coordinate
  return sin(t/10) * (100); 
}

float y2(float t) { // calculate t for the y (vertical)coordiante
  return t; //creating a sine wave deviding by 
}

/*
while(t < 300) {
    stroke(255 - (t));
    rotate(t);
    //line(x(t),x(t) ,y(t), y(t));
    line(x(-t),x(-t) ,y(-t), y(-t));

    t++;
  }
  
  
  stroke(255); // draw an outline in white
    strokeWeight(5); // set the line weight to 5
    translate(width/2, height/2); // set the point in the middel (width and height are build in variables)
    point(x(t), y(t)); // draw a point at x and y coordinates
    point(-x(t), -y(t));
    t++;
*/
