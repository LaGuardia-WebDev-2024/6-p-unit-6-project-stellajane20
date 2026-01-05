//🟢Setup Procedure - Runs Once to Set The Canvas
void setup() {
size(400, 400); 
background(255,255,255,100);
}


//🟢Draw Procedure - Runs on Repeat
void draw(){
fill(255,255,255);
strokeWeight(1);

//💡⬇️⬇️⬇️💡 Your Code For This Project Goes Here

// Comment 1: green background using RGB
background(101, 158, 63);

// Comment 2: subtle horizontal texture lines
stroke(105, 155, 85);
strokeWeight(1); // 
for (int y = 10; y < 400; y += 18) {
line(0, y, 400, y);
}

// ----- STARS -----
noStroke();
// Top-left yellow
fill(245, 190, 40);
beginShape();
vertex(90, 45);   vertex(105, 75);  vertex(140, 80);  vertex(110, 100); vertex(120, 135);
vertex(90, 115);  vertex(60, 135);  vertex(70, 100);  vertex(40, 80);   vertex(75, 75);
endShape(CLOSE);

// Top-right blue
fill(60, 150, 210);
beginShape();
vertex(290, 27);  vertex(305, 57);  vertex(340, 62);  vertex(310, 82);  vertex(320, 117);
vertex(290, 97);  vertex(260, 117); vertex(270, 82);  vertex(240, 62);  vertex(275, 57);
endShape(CLOSE);

// Mid-left small blue
fill(60, 150, 210);
beginShape();
vertex(60, 155);  vertex(70, 175);  vertex(95, 180);  vertex(75, 195);  vertex(80, 220);
vertex(60, 205);  vertex(40, 220);  vertex(45, 195);  vertex(25, 180);  vertex(50, 175);
endShape(CLOSE);

// Mid-right small yellow
fill(245, 190, 40);
beginShape();
vertex(368, 125); vertex(376, 142); vertex(397, 146); vertex(381, 159); vertex(385, 179);
vertex(368, 168); vertex(351, 179); vertex(355, 159); vertex(339, 146); vertex(360, 142);
endShape(CLOSE);

// Bottom-left orange
fill(235, 130, 45);
beginShape();
vertex(85, 265);  vertex(100, 295); vertex(135, 300); vertex(105, 320); vertex(115, 355);
vertex(85, 335);  vertex(55, 355);  vertex(65, 320);  vertex(35, 300);  vertex(70, 295);
endShape(CLOSE);

// Bottom-center blue
fill(60, 150, 210);
beginShape();
vertex(200, 305); vertex(215, 325); vertex(240, 330); vertex(220, 345); vertex(225, 370);
vertex(200, 355); vertex(175, 370); vertex(180, 345); vertex(160, 330); vertex(185, 325);
endShape(CLOSE);

// Bottom-right orange
fill(235, 130, 45);
beginShape();
vertex(315, 295); vertex(330, 320); vertex(360, 325); vertex(335, 345); vertex(345, 375);
vertex(315, 355); vertex(285, 375); vertex(295, 345); vertex(270, 325); vertex(300, 320);
endShape(CLOSE);

// ----- APPLE -----

// Apple base
fill(240, 215, 165);
stroke(210, 50, 50);
strokeWeight(7); // 

ellipse(182, 220, 175, 150);
ellipse(258, 220, 175, 150);

// Cover the inner seam
noStroke();
fill(240, 215, 165);
ellipse(190, 223, 110, 138);

// Stem 
stroke(120, 70, 35);
strokeWeight(10);
line(220, 130, 214, 160);

// Seeds
noStroke();
fill(80, 55, 30);
ellipse(205, 225, 10, 18);
ellipse(222, 225, 10, 18);

// Stop redraw
noLoop();
}


//🟡Extra FUN Features Ms. Hall Added
//Proceed with Caution (and Curiosity!)

var fillR = 255;
var fillG = 0;
var fillB = 255;

//🟡Mouse Pressed Procedue - Runs When Mouse is Pressed on Canvas
void mousePressed(){
  fill(fillR,fillG,fillB);
  strokeWeight(1);
  ellipse(mouseX, mouseY, 12, 12);
  var myText = "x: " + mouseX + "\ny: " + mouseY;
  text(myText, mouseX + 15, mouseY);
  console.log(myText);
}

//🟡Key Pressed Procedure - Runs When Keyboard Key is Pressed
void keyPressed(){
  if(key == 'c' || key == 'C'){
    background(255,255,255,100);
    redraw();
  }

  if(key == 'r' || key == 'R'){
    fillR = random(100,255);
    fillG = 0;
    fillB = 0;
  }

  if(key == 'g' || key == 'G'){
    fillR = 0;
    fillG = random(100,255);
    fillB = 0;
  }
}