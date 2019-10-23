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
  rect(mouseX, mouseY, 50, 50);
}
class Bacteria    
{     
  int myX, myY, myColor;
  String col;
  Bacteria() {
    myX = 200;
    myY = 200;
    myColor = color(212, 180, 255, 10);
    col = "212, 180, 255, 10";
  }
  void walk() {
    myX = myX + (int)(Math.random() * 7) - 3;
    myY = myY + (int)(Math.random() * 7) - 3;
    if(myX < 10 || myX > 390 || myY < 10 || myY > 390) {
      myX = myY = 200;
      myColor = color(175, 238, 255, 10);
      col = "175, 238, 255, 10";
    } else if((col == "175, 238, 255, 10") && (myX < 10 || myX > 390 || myY < 10 || myY > 390)) {
      myX = myY = 200;
      myColor = color(212, 180, 255, 10);
      col = "212, 180, 255, 10";
    }
  }
  void show() {
    fill(myColor);
    ellipse(myX, myY, 5, 5);
  }
}    




