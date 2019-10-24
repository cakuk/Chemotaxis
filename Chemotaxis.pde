Bacteria[] a;
void setup()   
{     
  size(400, 400); 
  background(0);
  a = new Bacteria[10];
  for(int i = 0; i < a.length; i = i + 1) {
    a[i] = new Bacteria();
  }
}   
void draw()   
{    
  noStroke(); 
  for(int i = 0; i < a.length; i = i + 1) {
    a[i].show();
    a[i].walk();
  }
} 
void mousePressed() {
  fill(0, 0, 0, 100);
  rectMode(CENTER);
  rect(mouseX, mouseY, 60, 60);
}
class Bacteria    
{     
  int myX, myY, r, g, b;
  String col;
  Bacteria() {
    myX = 200;
    myY = 200;
    r = (int)(Math.random()* 155);
    g = (int)(Math.random()* 155);
    b = (int)(Math.random()* 155);
  }
  void walk() {
    myX = myX + (int)(Math.random() * 7) - 3;
    myY = myY + (int)(Math.random() * 7) - 3;
    if(myX < 10 || myX > 390 || myY < 10 || myY > 390) {
      myX = myY = 200;
      r = (int)(Math.random()* 155);
      g = (int)(Math.random()* 155);
      b = (int)(Math.random()* 155);
    } 
  }
  void show() {
    fill(r, g, b, 30);
    ellipse(myX, myY, 5, 5);
  }
}    




