int Rrandom = 0;
int Grandom = 0;
int Brandom = 0;
boolean shift = true;
void setup() {
  size(500, 500);  //feel free to change the size
  noLoop(); //stops the draw() function from repeating
}
void draw() {
  for(int y = -20; y <= 500; y += 33){
    for(int x = -20; x <= 500; x += 30){
      if (shift == true)
        scale(x+15,y);
      else 
        scale(x,y);
     }
     if (shift == true)
       shift = false;
     else
       shift = true;
    }
  }

void scale(int x, int y) {
  Rrandom = (int)(Math.random()*40 + 30);
  Grandom = (int)(Math.random()*3 + 8);
  Brandom = (int)(Math.random()*60 + 90);
  noStroke();
  fill(0);
  rect(x,y,40,20);
  ellipse(x+20,y+20,40,40);
  fill(Rrandom,Grandom,Brandom);
  rect(x+5,y+5,30,20);
  ellipse(x+20,y+20,30,30);
}
