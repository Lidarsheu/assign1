PImage imgFighter, imgHp, imgTreasure, imgEnemy, imgBg1, imgBg2;
int x, y, z, speed, blood, b1, b2;
void setup () {
  size(640,480) ;
  b1 = 0;
  b2 = -640;
  speed = 10; 
  imgFighter = loadImage("img/fighter.png");
  imgHp = loadImage("img/hp.png");
  imgTreasure = loadImage("img/treasure.png");
  imgEnemy = loadImage("img/enemy.png");
  imgBg1 = loadImage("img/bg1.png");
  imgBg2 = loadImage("img/bg2.png");
  x = floor(random(620));
  y = floor(random(440));
  z = floor(random(440));
  blood = floor(random(200));
}
 
void draw() { 
 
  image(imgBg2,b1,0);
  image(imgBg1,b2,0);
  fill(255,0,0);
  rect(20,15,blood,20);
  image(imgHp,5,5);
    
  image(imgFighter,580,240);
  image(imgTreasure,x,y);
  image(imgEnemy,(speed % 640),z);
  
  speed = speed + 5;
  b1 = b1 + 3;
  b2 = b2 + 3;
  if (speed > 640) speed = 5;
  if (b1 >640) b1=-640;
  if (b2 >640) b2=-640;
   
}
