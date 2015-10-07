/* please implement your assign1 code in this file. */

PImage bg1Img, bg2Img, enemyImg, fighterImg, hpImg, treasureImg;
int hpW;
int treasureX, treasureY;
int enemyX, enemyY;
int bg1X, bg2X;

void setup () {
  size(640,480) ;  // must use this size.
  
  bg1Img = loadImage("img/bg1.png");
  bg2Img = loadImage("img/bg2.png");
  enemyImg = loadImage("img/enemy.png");
  fighterImg = loadImage("img/fighter.png");
  hpImg = loadImage("img/hp.png");
  treasureImg = loadImage("img/treasure.png");  //img
  
  hpW = floor(random(0,200));  //hp
  
  treasureX = floor(random(0,640));
  treasureY = floor(random(0,480));   //treasure
  
  enemyX = 0;
  enemyY = floor(random(0,480));
  
  bg1X = 0;
  bg2X = 0;   //background
  
}  
  // your code


void draw() {
  
  enemyX+=5;
  enemyX%=640;   //enemy
  
  bg1X++;
  bg1X%=1280;
  bg2X++;
  bg2X%=1280;   //background
  
  image(bg1Img,bg1X,0);
  image(bg2Img,-640+bg2X,0);
  image(bg1Img,-1280+bg1X,0);
    
  image(enemyImg,enemyX,enemyY);
  image(fighterImg,600,240);
  image(hpImg,0,0);
  image(treasureImg,treasureX,treasureY);   //img
  
  fill(255,0,0,150);
  rect(5,3,hpW,25);   //hp
}
  
  // your code
