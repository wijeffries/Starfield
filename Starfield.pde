Particle[] bruh = new Particle[500];
void setup()
{
  size(400,400);
  for (int i = 0; i < bruh.length; i++) {
    bruh[i] = new Particle();
    if (i % 5 == 0) {
      bruh[i] = new OddBallParticle();
    }
  }
}
void draw()
{
  background(153, 76, 0);
  for (int i = 0; i < bruh.length; i++) {
    bruh[i].move();
    bruh[i].show();
  }
}
  
class Particle 
{
  int col, size;
  double myX, myY, angle, speed;
  Particle ()
  {
    angle = (Math.random()*360);
    speed = (Math.random()*0.4);
    size = (int)(Math.random()*80+20);
    myX = (Math.cos(angle)*(Math.random()*300)+200);
    myY = (Math.sin(angle)*(Math.random()*300)+200);
  }
  void move()
  {
    myX = myX + Math.cos(angle)*speed;
    myY = myY + Math.sin(angle)*speed;
    if ((myX > 480 || myX < -80) || (myY > 480 || myY < -80)) {
     myX = (Math.cos(angle)*(Math.random()*100)+200);
     myY = (Math.sin(angle)*(Math.random()*100)+200); 
    }
  }
  void show() 
  {
    fill(153, 76, 0);
    stroke(255, 204, 153);
    ellipse((int)myX, (int)myY, size, size);
  }
};
class OddBallParticle extends Particle
{
  int col, size;
  double myX, myY, angle, speed;
  OddBallParticle ()
  {
    angle = (Math.random()*360);
    speed = (Math.random()*2);
    size = 15;
    myX = (Math.cos(angle)*(Math.random()*300)+200);
    myY = (Math.sin(angle)*(Math.random()*300)+200);
  }
  void move()
  {
    myX = myX + Math.cos(angle)*speed;
    myY = myY + Math.sin(angle)*speed;
    if ((myX > 480 || myX < -80) || (myY > 480 || myY < -80)) {
     myX = (Math.cos(angle)*(Math.random()*100)+200);
     myY = (Math.sin(angle)*(Math.random()*100)+200); 
    }
  }
  void show() 
  {
    fill(209, 167, 124);
    stroke(255);
    ellipse((int)myX, (int)myY, size, size);
  }
}
