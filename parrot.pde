//Hello Sketch of Group 6 
// Arrow follow Parrot which flying 

Parrot parrot ;   //Declare parrot use class Parrot
Arrow arrow;      

void setup() {
  size(700, 700) ; 
  parrot = new Parrot(250, 250, 0.05, 100, 150);     //create object 
  arrow = new Arrow();
}

void draw() {
  background(255);
  parrot.followMouse();
  arrow.rotates();
}

class Parrot {        
  PImage imgParrot ;        //imgParrot is PImage's class
  float x, y, spd;
  int wid, hig ;
  Parrot (float x_pos, float y_pos, float speed, int width_bird, int heigh_bird) {
    x = x_pos;
    y = y_pos;
    spd = speed;
    wid = width_bird;
    hig = heigh_bird;
    imgParrot = loadImage("parrot.png");    //load picture from folder data
  }

  void followMouse() {    //method let image following mousecursor( with slow speed )
    float distantsX = mouseX - x; 
    x += distantsX * spd;       
    float distantsy = mouseY - y;
    y += distantsy * spd;
    imageMode(CENTER);
    image(imgParrot, x, y, wid, hig);
  }
}

class Arrow {  
  PImage imgArrow ;   //imgArrow is PImage's class
  int x_pos, y_pos, size ; 
  //float spd; 
  
  Arrow() { 
    imgArrow = loadImage("arrow.png");   //load pic from data folder
    size = 100 ; 
    x_pos = 100 ;
    y_pos = height-100 ;
  }
  void rotates() { // method let image turnaround itself 
    float degree = atan2( (mouseY), (mouseX) );        //have problem -> cant rotate around itself it rotate on circle    
    translate(x_pos,y_pos);                            //
    rotate(degree);            
    imageMode(CENTER);
    image(imgArrow, 0, 0, size, size);
  }
}
