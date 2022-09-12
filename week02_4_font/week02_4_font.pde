void setup(){
  size(500,500);
  PFont font = createFont("標楷體",40);
  textFont(font);
}
int w=25;
void draw(){
  drawPokerCard(100,100,"黑桃4");
  drawPokerCard(130,150,"紅心3");
  drawPokerCard(160,200,"方塊5");
  drawPokerCard(190,250,"梅花J");
}
void drawPokerCard(int x,int y,String face){
  fill(255);
  rect(x-w/2,y-w/2,150+w,250+w,20);
  fill(#F50F0F);
  rect(x,y,150,250,20);
  fill(0);
  textSize(40);
  text(face,x,y+40);
}
