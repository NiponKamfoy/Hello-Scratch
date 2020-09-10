PImage imgParrot ;
PImage imgArrow ;
Parrot parrot = new Parrot();
Arrow arrow = new Arrow();

void setup(){
  size(500,500) ;
  imgParrot = loadImage("parrot.png");
  imgArrow = loadImage("arrow.png");
}

void draw(){
  background(255);
  arrow.rotates();
  parrot.followMouse();
}

class Parrot{
  
    float x,y = 250;
    float speed = 0.05;
    int widthParrot = 200 ;
    int heightParrot = 150 ;
    
    
  void followMouse(){
    
    
    float distantsX = mouseX - x; // distants between mouse X and 0
    x += distantsX * speed;       // add a little position until equqal position mouse x 
   
    float distantsy = mouseY - y;
    y += distantsy * speed;
    
    imageMode(CENTER);
    image(imgParrot, x, y, widthParrot, heightParrot);
  }
}

class Arrow{
 
  int sizeArrow = 100 ;
  
  void rotates(){
   
     imageMode(CENTER);
     image(imgArrow, 250, 450, sizeArrow, sizeArrow);;
  }
}
