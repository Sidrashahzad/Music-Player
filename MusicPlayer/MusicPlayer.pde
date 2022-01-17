//liabrary
import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;




//Global Variables
float rectX1, rectY1, rectWidth1, rectHeight1;
float rectX2, rectY2, rectWidth2, rectHeight2;
float rectX3,rectY3, rectWidth3, rectHeight3;
float triX1,  triY1, triX2, triY2, triX3, triY3;
Minim minim;//creates object to access all function
int numberOfSongs = 2;
AudioPlayer [] song = new AudioPlayer[numberOfSongs];//creates a "play List" variable holding extensions WAV, AIFF, AU, SND, and MP3
int currentSong = numberOfSongs- numberOfSongs; //current song 0
void setup() {
  fullScreen();
  population();
  MusicPlayerButtons();
  PowerButton();

  //
  minim = new Minim (this);


  song [currentSong] = minim.loadFile("Music/OSA Dress Code - Squadda B.mp3");
  song [currentSong+1] = minim.loadFile("Music/Space Age Hustle - Squadda B (2).mp3");         

  //song1.play();
}//end  setup()

void draw() {
  PowerButtonDraw();

  rect(rectX1, rectY1, rectWidth1, rectHeight1);
  rect(rectX2, rectY2, rectWidth2, rectHeight2);
  rect(rectX3,rectY3,  rectWidth3, rectHeight3);
  
  if (song1.isLooping()){
  println("Is Looping");
  println(song1.loopCount() );
  }
}//end void draw()


void keyPressed() {
  //play-pause 
  if (key == 'p' ) {
    if ( song1.isPlaying() ) {
      song1.pause();
    } else if ( song1.position( ) >= song1.length()-2000 ) {
      song1.rewind();
      song1.play();
    } else {
      song1.play();
    }
  }
  

  //fastforward
  if (key== 'f')song1.skip(1000);

  // fast rewind
  if ( key == 'r') song1.skip(-1000);

  // mute
  if (key == 'm') { 
    if ( song1.isMuted() ) {
      song1.unmute();
    } else {
      song1.mute();
    }
  }
  //loop
  int loopIntNum=2;
  if (key =='l'||key =='L')song1 .loop(loopIntNum);
  
  //
}//end void keyPressed() file

void mousePressed() {
  PowerButtonMousePressed();
   //play-stop
  if (mouseX>rectX3 &&  mouseX<rectX3+rectWidth3 && mouseY>rectY3 && mouseY<rectY3+rectHeight3 ) {
    if ( song1.isPlaying() ) {
      song1.rewind();
      song1.pause();
    } else {
      song1.rewind();
    }
  }
}//end void mousePressed()song1.isMuted
