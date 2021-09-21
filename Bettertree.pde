float a = PI/8;
float w;

void setup()
{
  size(800, 800);
  background(0);
  stroke(255);
}

void draw()
{
  background(0);
  stroke(255);

  translate(width/2, height);
  Tree1(200, 20);

  a=map(mouseY, 0, 800, 0, PI); 
}

void Tree1(float h, float w)
{
  strokeWeight(w);
  line(0, 0, 0, -h);
  translate(0, -h);

  if (h > 4)
  {
    pushMatrix();
    rotate(a);  
    Tree1(h * 0.7, w * 0.7);
    popMatrix();
    pushMatrix();
    rotate(-a);
    Tree1(h * 0.7, w * 0.7);
    popMatrix();
  }
}
