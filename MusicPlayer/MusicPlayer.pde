//liabrary
import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;




//Global Variables
Minim minim;//creates object to access all function
AudioPlayer song1;//creates a "play List" variable holding extensions WAV, AIFF, AU, SND, and MP3

void setup() {
  fullScreen();
  population();
 MusicPlayerButtons();
  //
  minim = new Minim (this);

  song1 = minim.loadFile("OSA Dress Code - Squadda B.mp3");

  song1 = minim.loadFile("Music/OSA Dress Code - Squadda B.mp3");

  song1.play();
  
}//end  setup()

void draw() {
 

 
}//end void draw()


void mousePressed() {
PowerButtonMousePressed(); 

}//end void mousePressed()


void keyPressed() {
  if (key == 'p') {
    if ( song1.isPlaying() ) {
      song1.pause();
    } else if ( song1.isPlaying() ) {
      song1.rewind();
      song1.play();
    } else {
      song1.play();
    }
  }
}//end void keyPressed() file
