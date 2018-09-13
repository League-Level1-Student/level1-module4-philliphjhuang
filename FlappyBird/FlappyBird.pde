int birdy = 250;  
int birdVelocity = 30;
int gravity = 3;
int pipex = 1026;
int birdx = 100;
int topPipeHeight = (int) random(100,225);
int botPipeHeight = (int) random(100,225);
public void setup(){
  size(1000,500);

  
  
  
  
}



public void draw(){
  
  background(0,0,255);
  fill(255,0,255);
  stroke(255,255,255);
  ellipse(birdx,birdy,25,25);
  if(birdy>=512){
    System.out.println("You lose");
   System.exit(0);
  } else if(birdy<=12){
   birdy=12; 
  }
  
  
  birdy+=gravity;
  
 fill(0,255,0);
  rect(pipex,0,50,topPipeHeight);
  pipex-=7;
 
  
  if(pipex<=-26){
  pipex=1026;
  topPipeHeight = (int) random(100,225);
  } 
  if((birdy<=topPipeHeight)&&(birdx>=pipex)&&(birdx<=pipex+100)){
    System.out.println("You lose");
    System.exit(0);
  }
  
  
  fill(0,255,0);
  rect(pipex,500-botPipeHeight,50,botPipeHeight);
  pipex-=7;
 
  
  if(pipex<=-26){
  pipex=1026;
  botPipeHeight = (int) random(100,225);
  } 
  if((birdy>=(500-botPipeHeight))&&(birdx>=pipex)&&(birdx<=pipex+100)){
    System.out.println("You lose");
    System.exit(0);
  }
  
  
 
}
public void mousePressed(){

    birdy-=birdVelocity*3;

}
