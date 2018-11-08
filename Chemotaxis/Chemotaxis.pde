Bacteria[] bacteria;
int bact = 2500;
boolean away = false;
 void setup() {    
   size(1000,1000);
   frameRate(20);
   background(0);
   bacteria = new Bacteria[bact];
   for (int i = 0; i < bacteria.length; i++){
    int x = (int)(width*Math.random());
    int y = (int)(height*Math.random());   
    int r = (int)(random(255));
    int g = (int)(random(255));
    int b = (int)(random(255));
    int rad = (int)random(30)+ 5;
    
    bacteria[i] = new Bacteria(x, y, r, g, b, rad);
   }
 }   
 
 void draw()   {    
  background(0);
  for (int i = 0; i < bacteria.length; i++) {
    bacteria[i].show();
    
  }

    
    
 }  

   
 class Bacteria    {   
   float x_pos; 
   float y_pos;
   int r;
   int g;
   int b;
   int rad;
   
   
   Bacteria(float x, float y, int r, int g, int b, int radius){
     x_pos = x;
     y_pos = y;
     this.r = r;
     this.g = g;
     this.b = b;
     rad = radius;
 
     
   }
  
   
   void show(){
     float j = 2;
     float z = 2;
     if(mousePressed){
       j = mouseX;
       z = mouseY;
       
     
     }

     
     pushMatrix();
     translate(x_pos + random(j), y_pos + random(z));
     fill((r),(g),(b), 100);
     ellipse(0,0,rad,rad);
     popMatrix();
   }
   
   
 	
 }    
