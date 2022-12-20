//Simple Car ART WORK Animation Processing Sketch
//Car- Simple-flat-three-color-with-space Artwork inspired by Oldifluff




void setup() {
  size(500, 500);                      //size of frame
  background(#D0D16E);               //background color
}

String text;
int car_x = 200;
int car_speed = 1;

void draw() {
 
  text = "Car- Simple-flat-three-color-with-space Artwork inspired by Oldifluff";
  
  
  fill(#524D4D);
  rect(0, 200, 500, 150);                //shape of road
  fill(#FFFF4D);
  ellipse(400, 40, 80, 80);              //shape of sun

  car (car_x, 300, 200, color(255, 151, 23)); //car drawn in the draw block

  car_x += car_speed;

  if ((car_x-100) > width) {

    car_x = -300;
    
  }
}

//car method constructed from arcs and ellipses that draws the car
void car (int x, int y, int carsize, color c) {

  int dia = carsize;

  fill(c);
  noStroke ();
  fill (c);

  //the car body
  arc (x, y, dia/1.3, dia, -PI, 0);

  //the car front
  arc (x+(dia/2.5), y, dia/2.5, dia/2, -PI, 0);

  //the window
  fill (255);
  arc (x+(dia/300), y-(dia/4.5), dia/2, dia/2, -PI, 0);

  //the tyres
  fill (0);
  ellipse (x-dia/6, y+(dia/50), dia/6, dia/6);
  ellipse (x+dia/3, y+(dia/50), dia/6, dia/6);

  fill (255);
  ellipse (x-dia/6, y+(dia/50), dia/8, dia/8);
  ellipse (x+dia/3, y+(dia/50), dia/8, dia/8);

  fill (c, 100);
  rect (x-dia/15, y-dia/2.1, dia/40, dia/3);
}
