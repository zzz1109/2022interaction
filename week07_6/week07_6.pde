import processing.sound. *;

SoundFile file1,file2;

void setup(){
  file1 = new SoundFile(this,"Intro Song_Final.mp3");
  file2 = new SoundFile(this,"In Game Music.mp3");
  file.play();
}
void draw(){
  
}
void mousePressed(){
  file2.play();
}
