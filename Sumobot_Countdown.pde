boolean timer;
PFont font;
Timer mainTimer;

void setup(){
  size(1920, 1080);
  background(219, 68, 55);
  font = createFont("Roboto-Bold", 500);
  textFont(font, 500);
  textAlign(CENTER);
  text("Ready", width/2, height/2);
  mainTimer = new Timer();
  mainTimer.setTime(36000);
}

void draw(){
  
  
  
  
  if(keyPressed){
    if(key == '1'){
      background(244, 160, 0);
      text("Set", width/2, height/2);
    }
    if(key == '2'){
      background(15, 157, 88);
      text("Go!", width/2, height/2);
    }
    if(key == '3'){
      timer = true;
      mainTimer.start();
    }
  }
  
  if(timer){
    background(15, 157, 88);
    text(int(mainTimer.getTimeSeconds()/1000), width/2, height/2);
    
    if(mainTimer.getTimeSeconds() < 0){
      timer = false;
      background(219, 68, 55);
      text("Ready", width/2, height/2);
    }
  }
}
