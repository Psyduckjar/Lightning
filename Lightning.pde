void setup()
{
  size(1000,1000);
  noStroke();
  background(0,255,255);
  
}
int startX = 500;
int startY = 0;
int radiusX = 50;
int radiusY = 50;


void draw()
{

  background(0,255,255);
  ocean();
  build();
  love();
  Wasabi();
  
   
    explosion();
   
    
  }


void explosion() {
  if(startY >=700) {
  fill(255,0,0);
  quad(startX - ((int)(Math.random()*51)),startY - ((int)(Math.random()*51)),startX + ((int)(Math.random()*51)),startY - ((int)(Math.random()*51)),startX + ((int)(Math.random()*51)),startY + ((int)(Math.random()*51)),startX - ((int)(Math.random()*51)),startY + ((int)(Math.random()*51))); 
}
}
void build() {
  fill(128,128,128);
  stroke(0);
  rect(300,300,200,400);
  rect(400,200,200,500);
  rect(500,400,200,300);
  rect(200,500,200,200);
  rect(350,600,200,100);

}

void ocean() {
  fill(0,0,255);
  rect(0,700,1000,300);

}

void mousePressed()
{
  background(0,0,0);
  startX = 500;
  startY = 0;

}


void Wasabi() {
  if(startY < 700 && startX > 0)
  {
    fill(255,165,0);
    ellipse(startX,startY,radiusX,radiusY);
    startX = startX + ((int)(Math.random()*100)-50);
    startY = startY + ((int)(Math.random()*10)+9);
    //fortroubleshooting
  //  System.out.println("hi");
  }
}

void love() {
  int endX = startX;
  System.out.println(endX);
  int endY = startY;
  stroke((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256));
  line(startX,startY,endX,endY);
}
