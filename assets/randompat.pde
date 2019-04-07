//Random patterns and class exploration
//Anmol Srivastava


float a = 0;
float dir = 1;
void setup()
{
  size(1920,1080);
rectMode(CENTER);
}

void draw()
{
  //background(mouseX,mouseY, (mouseX+mouseY)/10);

  a = a+0.09;
  
  for(int i = 0; i < width; i=i+50)
  {
    for (int j = 0; j < height; j=j+50)
    {
      stroke(mouseX+mouseY/5,mouseY/5,(mouseX+mouseY)/10);
      fill(mouseX, mouseY, mouseX*mouseY/10);
      rotrect(i,j,10);
    }
  } 
  //fill(#FFB6C1);
  //ellipse(mouseX,mouseY,20,20);
  
}

void rotrect(float x, float y, float size)
{
  
  translate(x,y);
  rotate(a);
  //ellipse(0,0,size,size);
  line(0,0,size,size);
  resetMatrix();
  
  //translate(x+10,y+10);
  //rotate(a);
  //line(0,0,size,size);
  //resetMatrix();
  
  //translate(x+20,y+20);
  //rotate(a);
  //ellipse(0,0,size,size);
  //resetMatrix();
}

void mousePressed()
{
  background(random(255), random(255), random(255));
}
