int totalResult;
void setup()
{
  noLoop();
  size(300, 300);
}
void draw()
{
  background(0);
  Die bob = new Die(90, 90);
  bob.show();
}
void mousePressed()
{
  redraw();
}
class Die //models one single dice cube
{
  int myX;
  int myY;
  Die(int x, int y) //constructor
  {
    int myX = x;
    int myY = y;
  }
int result;
  void roll()
  {
    result = (int)(Math.random() * 6) + 1;
  }
  int totalResult;
  void show()
  {
    for (int y = 0; y < 300; y += 100) {
      for (int x = 0; x < 300; x += 100) {
        myX = x;
        myY = y;
        roll();
        fill(255);
        rect(myX, myY, 70, 70);
        
        
        totalResult += result;
        if (result == 1) {
          fill(0);
          ellipse(35 + myX, 35 + myY, 10, 10);
        } else if (result == 2) {
          fill(0);
          ellipse(10 + myX, 10 + myY, 10, 10);
          ellipse(60 + myX, 60 + myY, 10, 10);
        } else if (result == 3) {
          fill(0);
          ellipse(10 + myX, 10 + myY, 10, 10);
          ellipse(35 + myX, 35 + myY, 10, 10);
          ellipse(60 + myX, 60 + myY, 10, 10);
        } else if (result == 4) {
          fill(0);
          ellipse(10 + myX, 10 + myY, 10, 10);
          ellipse(10 + myX, 60 + myY, 10, 10);
          ellipse(60 + myX, 10 + myY, 10, 10);
          ellipse(60 + myX, 60 + myY, 10, 10);
        } else if (result == 5) {
          fill(0);
          ellipse(10 + myX, 10 + myY, 10, 10);
          ellipse(10 + myX, 60 + myY, 10, 10);
          ellipse(35 + myX, 35 + myY, 10, 10);
          ellipse(60 + myX, 10 + myY, 10, 10);
          ellipse(60 + myX, 60 + myY, 10, 10);
        } else if (result == 6) {
          fill(0);
          ellipse(10 + myX, 10 + myY, 10, 10);
          ellipse(10 + myX, 35 + myY, 10, 10);
          ellipse(10 + myX, 60 + myY, 10, 10);
          ellipse(60 + myX, 10 + myY, 10, 10);
          ellipse(60 + myX, 35 + myY, 10, 10);
          ellipse(60 + myX, 60 + myY, 10, 10);
        }
        //System.out.println(totalResult);
        //text("You got: " + totalResult, 150, 200);
      }
      //System.out.println(totalResult);
    }
    System.out.println(totalResult);
    fill(255);
    text("You got: " + totalResult, 110, 190);
  }
  //text("You got: " + totalResult, 150, 200);
  //System.out.println(totalResult);
}
