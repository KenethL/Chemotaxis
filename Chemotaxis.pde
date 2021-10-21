Bacteria[] daves;
Boolean paused = false;
int counter = 250;
void setup()   
{     
  size(600, 600);
  background(255);
  daves = new Bacteria[500];
  for (int i = 0; i < daves.length; i++) {
    daves[i] = new Bacteria();
  }
}   
void draw()   
{ 
  if(paused == false){
  for (int i = 0; i < counter; i++) {
    daves[i].move();
    daves[i].show();
  }
  }
  fill(255);
  rect(560,580,100,100);
  textSize(20);
  fill(0);
  text(counter, 560,600);
}  
void mouseClicked(){
  if(paused == false){
  background(255);
  for (int i = 0; i < daves.length; i++) {
    daves[i] = new Bacteria();
  }
  }
}
void keyPressed(){
  if(key != CODED){
  if(paused == false){
    paused = true;
  }
  else{
    paused = false;
  }
  }
  if(keyCode == UP){
    counter = counter + 10;
    if (counter >= 500){
      counter = 500;
    }
  }
  if(keyCode == DOWN){
    counter = counter - 10;
    if (counter <= 0){
      counter = 0;
    }
  }
}
class Bacteria    
{     
  int myX, myY, myColor;
  Bacteria() {
    myX = (int) (Math.random()*600);
    myY = (int) (Math.random()*600);
    myColor =  color((int)(Math.random()*255), (int)(Math.random()*255), (int) (Math.random()*255));
  }
  void move() {
    myX = myX + (int) (Math.random()*7)-3;
    myY = myY + (int) (Math.random()*7)-3;
    if (myX > 600)
      myX = 600;
    if (myX < 0)
      myX = 0;
    if (myY > 600)
      myY = 600;
    if (myY < 0)
      myY = 0;
  }
  void show() {
    noStroke();
    fill(myColor);
    ellipse(myX, myY, 10, 10);
  }
}
