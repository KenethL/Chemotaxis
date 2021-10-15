Bacteria[] daves;
 void setup()   
 {     
   size(400,400);
   daves = new Bacteria[400];
   for(int i = 0; i < daves.length; i++){
     daves[i] = new Bacteria();
   }
 }   
 void draw()   
 { 
   for(int i = 0; i < daves.length; i++){
     daves[i].move();
     daves[i].show();
   }
 }  
 class Bacteria    
 {     
   int myX, myY, myColor;
   Bacteria(){
     myX = (int) (Math.random()*400);
     myY = (int) (Math.random()*400);
     myColor =  color((int)(Math.random()*255), (int)(Math.random()*255),(int) (Math.random()*255));
   }
   void move(){
     myX = myX + (int) (Math.random()*7)-3;
     myY = myY + (int) (Math.random()*7)-3;
     if(myX > 400)
       myX = 400;
     if(myX < 0)
       myX = 0;
     if(myY > 400)
       myY = 400;
     if(myY < 0)
       myY = 0;
   }
   void show(){
     noStroke();
     fill(myColor);
     ellipse(myX,myY, 10,10);
   }
 }    
