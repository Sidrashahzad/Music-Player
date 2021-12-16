
//Global variables
String PowerButton = "Power";
color purple=#E1ABF5 , blue=#6B6EFC , resetwhite=#FFFFFF , buttonColour;
float PowerButtonX, PowerButtonY, PowerButtonWidth,PowerButtonHeight ;
PFont textfont;
color black=#000000;

void PowerButton() {
  
  
  PowerButtonX=displayWidth*19/20;
  PowerButtonY= displayHeight*0;
  PowerButtonWidth= displayWidth*1/20;
  PowerButtonHeight =  displayHeight*1/20;

  
}//endvoid PowerButton()

void  PowerButtonDraw() {
 if ( mouseX>PowerButtonX &&  mouseX<PowerButtonX+PowerButtonWidth && mouseY>PowerButtonY && mouseY<PowerButtonY+PowerButtonHeight){
    buttonColour = purple;
    } else {
    buttonColour = blue;
 
  }
fill(buttonColour);
 rect(PowerButtonX, PowerButtonY, PowerButtonWidth,PowerButtonHeight );
 fill(resetwhite);
 fill(black);
 textAlign (CENTER, CENTER);
  textFont(textfont,10);
  text( PowerButton,PowerButtonX, PowerButtonY, PowerButtonWidth,PowerButtonHeight );
  fill(resetwhite);
 }
//end PowerButtonDraw()

void  PowerButtonMousePressed(){
if(mouseX>PowerButtonX && mouseY>PowerButtonY&& mouseX<PowerButtonX+PowerButtonWidth &&  mouseY> PowerButtonY+PowerButtonHeight ) exit();
}
