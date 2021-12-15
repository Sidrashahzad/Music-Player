//Global variables
String PowerButton = "Power";
color purple=#E1ABF5 , blue=#6B6EFC , resetwhite=#FFFFFF , buttonColour;
float PowerButtonX, PowerButtonY, PowerButtonWidth,PowerButtonHeight ;


void PowerButton() {
  
  
  PowerButtonX=displayWidth*19/20;
  PowerButtonY= displayHeight*0;
  PowerButtonWidth= displayWidth*1/20;
  PowerButtonHeight =  displayHeight*1/20;

  
}//endvoid PowerButton()

void  PowerButtonDraw() {
 if ( mouseX>PowerButtonX && 
    buttonColour = purple;
    hoverOverButtonFill();
  } else {
    buttonColour = blue;
    hoverOverButtonFill();
  }
 //textCode(PowerButton,width*3/100,PowerButtonX, PowerButtonY, PowerButtonWidth,PowerButtonHeight );
}
//end PowerButtonDraw()

void  PowerButtonMousePressed(){
if(mouseX>PowerButtonX && mouseY>PowerButtonY&& mouseX<PowerButtonX+PowerButtonWidth &&  mouseY> PowerButtonY+PowerButtonHeight ) exit();
}
void hoverOverButtonFill() {
  fill(buttonColour);
  noStroke();
  rect(PowerButtonX, PowerButtonY, PowerButtonWidth, PowerButtonHeight);
  stroke(1); //reset stroke to 1 pixel
  fill(resetwhite);}
