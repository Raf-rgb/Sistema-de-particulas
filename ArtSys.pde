ArrayList<Circle> circles;
PImage img;

int n;

void setup() {
  size(700, 700);
  background(0);
  
  n = 3000;
  
  circles = new ArrayList<Circle>();
  
  img = loadImage("joven.png");
}

void draw() {
  fill(0, 20);
  noStroke();
  rect(0, 0, width, height);
  
  if(circles.size() > 0) {
    for(int i = 0; i < circles.size(); i++) {
      Circle c = circles.get(i);
      
      c.c = img.get(int(c.pos.x), int(c.pos.y));
      
      c.show();
      c.move();
      
      if(c.isDead()) circles.remove(i);
    }
  }
}

void mousePressed() {
  for(int i = 0; i < n; i++)
    circles.add(new Circle(mouseX, mouseY, 20));
}
