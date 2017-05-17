class Cross{
  float y1 = 0;
  float y2 = 250;
  float x1 = 150;
  float x2 = -100;
  int speed = 3;
  boolean grow = true;
  boolean grow2 = true;
  float x,y;
  Cross(float _x, float _y){ 
    x = _x;
    y = _y;
  }
  
  void update(){
    if(grow == true){
      y1+=speed;
      y2-=speed;
      x1-=speed;
      x2+=speed;
      if(y1>=250){
        grow = false;
      }
    }
    
    if(grow == false){
      y1-=speed;
      y2+=speed;
      x1+=speed;
      x2-=speed;
      if(y1<=0){
        grow = true;
      }
    }
    
  }
  void display(){
    pushMatrix();
    translate(x,y);
    rotate(PI/4);
    scale(0.3);
    beginShape(LINES);
    vertex(0,y1);
    vertex(50,y1);
    vertex(50,y1);
    vertex(50,100);
    vertex(50,100);
    vertex(x1,100);
    vertex(x1,100);
    vertex(x1,150);
    vertex(x1,150);
    vertex(50,150);
    vertex(50,150);
    vertex(50,y2);
    vertex(50,y2);
    vertex(0,y2);
    vertex(0,y2);
    vertex(0,150);
    vertex(0,150);
    vertex(x2,150);
    vertex(x2,150);
    vertex(x2,100);
    vertex(x2,100);
    vertex(0,100);
    vertex(0,100);
    vertex(0,y1);
    endShape();
    popMatrix();
  }
}