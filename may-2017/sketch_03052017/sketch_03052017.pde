Ellipses ellipses;
void setup(){
  size(500,500);
  smooth();
  ellipses = new Ellipses();
  background(19,65,188);
}

void draw(){
  noStroke();
  fill(19,65,188,50);
  rect(0,0,width, height);
  ellipses.display();
}