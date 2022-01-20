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
float rectX3, rectY3, rectWidth3, rectHeight3;
float triX1, triY1, triX2, triY2, triX3, triY3;
float rectX4, rectY4, rectWidth4, rectHeight4;
float rectX5, rectY5, rectWidth5, rectHeight5;
float triX4, triY4, triX5, triY5, triX6, triY6;
float rectX6, rectY6, rectWidth6, rectHeight6;
float rectX7, rectY7, rectWidth7, rectHeight7;
color  white = #FFFFFF , reset=white;
Boolean  rect1=false ;
Boolean  rect2=false ;
Minim minim;//creates object to access all function
int numberOfSongs = 3;
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
   song [currentSong+2] = minim.loadFile("Music/Somewhere Fuse - French Fuse.mp3");
  //song1.play();
}//end  setup()

void draw() {
  PowerButtonDraw();
  fill (black);
  rect(rectX4, rectY4, rectWidth4, rectHeight4);
  fill (reset);
  if (rect1==true)rect(rectX1, rectY1, rectWidth1, rectHeight1);
  if (rect2==true ) rect(rectX2, rectY2, rectWidth2, rectHeight2);
  rect(rectX3, rectY3, rectWidth3, rectHeight3);
  
   triangle(triX1, triY1, triX2, triY2, triX3, triY3);
   rect ( rectX5, rectY5, rectWidth5, rectHeight5 );
    triangle(triX4, triY4, triX5, triY5, triX6, triY6);
  rect ( rectX6, rectY6, rectWidth6, rectHeight6 );
  rect ( rectX7, rectY7, rectWidth7, rectHeight7 );
  /*
  if (song1.isLooping()){
   println("Is Looping");
   println(song1.loopCount() ); 
   } */
}//end void draw()


void keyPressed() {
 // currentSong ++;  

   
   //fastforward
   if (key== 'f') song [currentSong].skip(1000);
   
   // fast rewind
   if ( key == 'r')  song [currentSong].skip(-1000);
   
   // mute
   if (key == 'm') { 
   if (  song [currentSong].isMuted() ) {
   song [currentSong].unmute();
   } else {
    song [currentSong].mute();
   }
   } 
  //loop
  int loopIntNum=2;
  if (key =='l'||key =='L')song[currentSong] .loop(loopIntNum);
  //
  if (key == 'n' || key == 'N') {
    if ( song[currentSong] .isPlaying() ) {
      song[currentSong]. pause();
      song[currentSong].rewind();
    //
     arrayFixError();
     //
      song[currentSong].play();
    } else {
      song[currentSong].rewind();
       arrayFixError();
    }
  } // end next button
  
  
  
  
  
  
  
}//end void keyPressed() 

void mousePressed() {
  PowerButtonMousePressed();
 currentSong ++;  
  //play-pause 

      
  if ( mouseX >rectX4  && mouseY>rectY4 &&  mouseX<  rectX4+rectWidth4  && mouseY< rectY4+rectHeight4)
  {
   if ( song[currentSong].isPlaying() ) {
   song[currentSong].pause();
   } else if ( song[currentSong].position() >= song[currentSong].length()-2000 ) {
   song[currentSong].rewind();
   song[currentSong].play();
   } else {
   song[currentSong].play();
   }
   }
  
   //play-stop
 
   if (mouseX>rectX3 &&  mouseX<rectX3+rectWidth3 && mouseY>rectY3 && mouseY<rectY3+rectHeight3 ) {
   if ( song[currentSong].isPlaying() ) {
   song[currentSong].rewind();
   song[currentSong].pause();
   } else {
   song[currentSong].rewind();
   }
   }
}//end void mousePressed()song1.isMuted
