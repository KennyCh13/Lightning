int startX = 250;
int startY = 250;
int endX = 250;
int endY = 250;
int x = 0;
boolean mouseWasClicked = false;
void setup() {
  size(500, 500);
  background(0);
}
void draw() {
  fill(0);
  stroke(255);
  //human
  fill(0, 0, 0);
  stroke(255, 255, 255);
  //head
  ellipse(180, 200, 80, 80);
  //body
  line(180, 240, 160, 330);
  //arms
  line(175,260,150,265);
  line(150,265,130,280);
  line(175, 260, 230, 255);
  //legs
  line(160, 330, 180, 340);
  line(180, 340, 190, 410);
  line(160, 330, 130, 410);
  //coin
  ellipse(250+x, 250, 30, 30);
  line(240+x, 245, 245+x, 245);
  line(255+x, 245, 260+x, 245);
  triangle(250+x, 255, 245+x, 250, 255+x, 250);
    
  if (mouseWasClicked == true) {
    while (endX < 600) {
      endX = startX + (int)(Math.random()*15)+2;
      endY = startY + (int)(Math.random() * 12) - 6;
      line(startX, startY, endX, endY);
      startX = endX;
      startY = endY;
      }
      startX = 250;
      startY = 250;
      endX = 250;
      endY = 250;
        while (x < 600) {
  ellipse(250+x, 250, 30, 30);
  line(240+x, 245, 245+x, 245);
  line(255+x, 245, 260+x, 245);
  triangle(250+x, 255, 245+x, 250, 255+x, 250);
        x = x + 10;
        }
    }
  }



void mouseClicked() {
  mouseWasClicked = true;
  while (endX < 600) {
    endX = startX + (int)(Math.random()*10)+2;
    endY = startY + (int)(Math.random() * 10) - 2;
    line(startX, startY, endX, endY);
    startX = endX;
    startY = endY;
  }
  startX = 250;
  startY = 250;
  endX = 250;
  endY = 250;
}

