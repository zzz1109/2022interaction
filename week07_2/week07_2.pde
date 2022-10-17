int [][]show={

  { 0, 0, 0, 0, 0, 0, 0, 0},

  { 0, 0, 0, 0, 0, 0, 0, 0},

  { 0, 0, 0, 0, 0, 0, 0, 0},

  { 0, 0, 0, 0, 0, 0, 0, 0}

};//翻牌前, 0 都不會秀哦! 

int [][]board={

  { 1, 2, 2, 3, 3, 4, 4, 5},

  { 5, 6, 6, 7, 7, 7, 7, 7},

  {-1,-2,-2,-3,-3,-4,-4,-5},

  {-5,-6,-6,-7,-7,-7,-7,-7}

}; //暗棋的格子,比較少 4x8=32個棋子

void setup(){

  size(500,300);

  PFont font = createFont("標楷體", 30);

  textFont(font);

  textAlign(CENTER, CENTER);

  for(int k=0;k<1000;k++){

    int i1=int(random(4)), j1=int(random(8));

    int i2=int(random(4)), j2=int(random(8));

    int temp=board[i1][j1];

    board[i1][j1]=board[i2][j2];

    board[i2][j2]=temp;

  }

}

void draw(){

  background(#F0B82C);

  for (int x=50; x<=450; x+=50) {

    line( x, 50, x, 250);

  }

  for (int y=50; y<=250; y+=50) {

    line( 50, y, 450, y);

  }  

  for(int i=0; i<4; i++){

    for(int j=0; j<8; j++){

      if(show[i][j]==0){

        fill(255);

        ellipse( 50+25+j*50, 50+25+i*50, 40, 40);        

      }else{

        int id = board[i][j];

        drawChess(50+25+j*50, 50+25+i*50, id);

      }

    }

  }

  if(moving){

    drawChess(50+25+moveJ*50,50+25+moveI*50,9);

  }

}

int moveI=-1,moveJ=-1;

boolean moving =false;

void mousePressed(){

  for(int i=0; i<4;i++){

    for(int j=0; j<8; j++){

      if(dist(mouseX,mouseY,50+25+j*50,50+25+i*50)<20){

        if( show[i][j]==0 ) show[i][j] = 1; //沒秀? 秀它

        //

        else{

          moveI=i;

          moveJ=j;

          moving=true;

        }

      }

    }

  }

}

String [] name = {"將", "士", "象", "車", "馬", "包", "卒"};

String [] name2 = {"帥", "仕", "相", "俥", "傌", "炮", "兵"};

void drawChess(int x, int y, int id){

    fill(255);

    ellipse( x, y, 40, 40);

    if(id==9){

      fill(0,255,0);

      ellipse(x,y,40,40);

    }else if(id>0){//黑

      fill(0);

      text( name[id-1], x, y-3);

    }else{//紅

      fill(255,0,0);

      text( name2[-id-1], x, y-3);

    }

}
