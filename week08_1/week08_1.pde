import processing.sound.*;
SoundFile sound1,sound2,sound3;
//存檔，把音樂拉進來
void setup(){
  size(400,300);
  sound1=new SoundFile(this,"In Game Music.mp3");
  sound1.play();
}
void draw(){
  
}
