PImage img;

void setup() {
size(700, 700, P3D);
img = loadImage("Brain.jpg");
//img = loadImage("Anxiety.png");
img.resize(700, 700);
}

void draw() {

background(10);
fill(240);
noStroke();
sphereDetail(1);
float tiles = 200;
float tileSize = width/tiles;
push();
translate(width/2,height/2);
rotateY(radians(frameCount)*2);
  
for (int x = 0; x < tiles; x++) {
for (int y = 0; y < tiles; y++) {
color c = img.get(int(x*tileSize),int(y*tileSize));
float b = map(brightness(c),0,255,1,0);
float z = map(b,0,1,-75,75);
      
push();
translate(x*tileSize - width/2, y*tileSize - height/2, z);
sphere(tileSize*b*1.25);
pop();
      
}
}
  
pop();

int tilesX = 16;
int tilesY = 16;

int tileW = int(width/tilesX);
int tileH = int(height/tilesY);

for (int x = 0; x < tilesX; x++) {
for (int y = 0; y < tilesY; y++) {

// source
int sx = x*tileW + int(random(-10, 10));
int sy = y*tileH + int(random(-10, 10));
int sw = tileW;
int sh = tileH;

// destination
int dx = x*tileW;
int dy = y*tileH;
int dw = tileW;
int dh = tileH;
      
copy(sx, sy, sw, sh, dx, dy, dw, dh);

}
}
}
