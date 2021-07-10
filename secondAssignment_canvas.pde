int y_max = 799;
int x_max = 799;

int menuSize = 50;

int textSizeLarge = menuSize/2;
int textSizeLargeHover=(menuSize/2)+(menuSize/4);
int textSizeSmall = menuSize/4;
int textSizeSmallHover = (menuSize/4)+(menuSize/20);

color menuFill = (200);
color menuStroke = (100);

color userColor = 0;
color colorChoice = (255);
int totalColors = 15;
int colorDeviation = 255/totalColors;

float brushSize = 10;
float brushSizeMax = 45;
float brushSizeMin = 3;

int position = 0;

void setup(){
  size(800,800);
  background(255);
  
}

void draw(){
  drawMenu();
  
  if(mouseX > menuSize && mouseX < x_max && mouseY < y_max - menuSize && mouseY > 0){
    fill(userColor);
    noStroke();
    if(mousePressed){
      ellipse(mouseX,mouseY,brushSize,brushSize);
    }
  }
}



void drawMenu(){
  stroke(menuStroke);
  fill(menuFill);
  sideBar();
  underBar();
  cornerBox();
}

void sideBar(){
  position = -1;
  rect(0,0,menuSize,y_max-menuSize);
  brushDisplay();
  plusButton();
  minusButton();
  sizeDisplay();
}

void brushDisplay(){
  position += 1;
  fill(255);
  rect(0,menuSize*position,menuSize,menuSize);
  fill(userColor);
  ellipse(menuSize/2,(menuSize/2),brushSize,brushSize);
  fill(menuFill);
}

void plusButton(){
  position += 1;
  //IF MOUSE HOVERS OVER THIS BOX
  if(mouseX > 0 && mouseX < menuSize &&  mouseY > menuSize*position && mouseY < menuSize*position*2){
    fill(255);
    rect(0,menuSize*position,menuSize,menuSize);
    fill(0);
    textSize(textSizeLargeHover);
    text("+",menuSize/2,(menuSize*position)+(menuSize/2)+(menuSize/4));
    fill(menuFill);
    if(mousePressed&&brushSize<brushSizeMax){
      brushSize += 0.5;
    }
  }
  else{
    rect(0,menuSize*position,menuSize,menuSize);
    textAlign(CENTER);
    textSize(textSizeLarge);
    fill(0);
    text("+",menuSize/2, (menuSize*position)+(menuSize/2)+8);
    fill(menuFill);
  }
}

void minusButton(){
  position += 1;
  //IF MOUSE HOVERS OVER THIS BOX
  if(mouseX > 0 && mouseX < menuSize &&  mouseY > menuSize*position && mouseY < menuSize*position*2){
    fill(255);
    rect(0,menuSize*position,menuSize,menuSize);
    fill(0);
    textSize(textSizeLargeHover);
    text("-",menuSize/2,(menuSize*position)+(menuSize/2)+(menuSize/4));
    fill(menuFill);
    if(mousePressed&&brushSize>brushSizeMin){
      brushSize -= 0.5;
    }
  }
  else{
    rect(0,menuSize*position,menuSize,menuSize);
    textAlign(CENTER);
    textSize(textSizeLarge);
    fill(0);
    text("-",menuSize/2, (menuSize*position) +(menuSize/2)+8);
    fill(menuFill);
  }
}

void sizeDisplay(){
  position += 1;
  rect(0,menuSize*position,menuSize,menuSize);
  textAlign(CENTER);
  textSize(textSizeSmall);
  fill(0);
  if(brushSize == brushSizeMax){
    text("MAX",menuSize/2, menuSize*position +(menuSize/2)+8);
  }
  else if(brushSize == brushSizeMin){
    text("MIN",menuSize/2, menuSize*position +(menuSize/2)+8);
  }
  else{
    text(brushSize+"",menuSize/2, menuSize*position +(menuSize/2)+8);
  }
  fill(menuFill);
}
  

void cornerBox(){
  //IF MOUSE HOVERS OVER THIS BOX
  if(mouseX > 0 && mouseX < menuSize &&  mouseY > y_max - menuSize && mouseY < y_max){
    fill(255);
    rect(0,y_max-menuSize,menuSize,menuSize);
    fill(0);
    textSize(textSizeSmallHover);
    text("clear",menuSize/2,y_max - (menuSize/2)+6);
    if(mousePressed){
      clear();
      background(255);
      brushSize = 10;
    }
  }
  else{
  rect(0,y_max-menuSize,menuSize,menuSize);
  textAlign(CENTER);
  textSize(textSizeSmall);
  fill(0);
  text("clear",menuSize/2,y_max - (menuSize/2)+5);
  }
}

void underBar(){
  position = 0;
  colorChoice = 255;
  rect(menuSize,y_max-menuSize,x_max-menuSize,menuSize);
  
  
  color1();
  color2();
  color3();
  color4();
  color5();
  color6();
  color7();
  color8();
  color9();
  color10();
  color11();
  color12();
  color13();
  color14();
  color15();
  
  
}

void color1(){
    position+=1;
    fill(colorChoice);
    rect(menuSize*position,y_max-menuSize,menuSize,menuSize);
    if(mousePressed && mouseX > menuSize*position && mouseX < (menuSize*position)+menuSize && mouseY > y_max - menuSize && mouseY < y_max){
      userColor = colorChoice;
    }
    colorChoice -= colorDeviation;
    fill(menuFill);
}
void color2(){
    position+=1;
    fill(colorChoice);
    rect(menuSize*position,y_max-menuSize,menuSize,menuSize);
    if(mousePressed && mouseX > menuSize*position && mouseX < (menuSize*position)+menuSize && mouseY > y_max - menuSize && mouseY < y_max){
      userColor = colorChoice;
    }
    colorChoice -= colorDeviation;
    fill(menuFill);
}
void color3(){
    position+=1;
    fill(colorChoice);
    rect(menuSize*position,y_max-menuSize,menuSize,menuSize);
    if(mousePressed && mouseX > menuSize*position && mouseX < (menuSize*position)+menuSize && mouseY > y_max - menuSize && mouseY < y_max){
      userColor = colorChoice;
    }
    colorChoice -= colorDeviation;
    fill(menuFill);
}
void color4(){
    position+=1;
    fill(colorChoice);
    rect(menuSize*position,y_max-menuSize,menuSize,menuSize);
    if(mousePressed && mouseX > menuSize*position && mouseX < (menuSize*position)+menuSize && mouseY > y_max - menuSize && mouseY < y_max){
      userColor = colorChoice;
    }
    colorChoice -= colorDeviation;
    fill(menuFill);
}
void color5(){
    position+=1;
    fill(colorChoice);
    rect(menuSize*position,y_max-menuSize,menuSize,menuSize);
    if(mousePressed && mouseX > menuSize*position && mouseX < (menuSize*position)+menuSize && mouseY > y_max - menuSize && mouseY < y_max){
      userColor = colorChoice;
    }
     colorChoice -= colorDeviation;
    fill(menuFill);
}
void color6(){
    position+=1;
    fill(colorChoice);
    rect(menuSize*position,y_max-menuSize,menuSize,menuSize);
    if(mousePressed && mouseX > menuSize*position && mouseX < (menuSize*position)+menuSize && mouseY > y_max - menuSize && mouseY < y_max){
      userColor = colorChoice;
    }
    colorChoice -= colorDeviation;
    fill(menuFill);
}
void color7(){
    position+=1;
    fill(colorChoice);
    rect(menuSize*position,y_max-menuSize,menuSize,menuSize);
    if(mousePressed && mouseX > menuSize*position && mouseX < (menuSize*position)+menuSize && mouseY > y_max - menuSize && mouseY < y_max){
      userColor = colorChoice;
    }
    colorChoice -= colorDeviation;
    fill(menuFill);
}
void color8(){
    position+=1;
    fill(colorChoice);
    rect(menuSize*position,y_max-menuSize,menuSize,menuSize);
    if(mousePressed && mouseX > menuSize*position && mouseX < (menuSize*position)+menuSize && mouseY > y_max - menuSize && mouseY < y_max){
      userColor = colorChoice;
    }
    colorChoice -= colorDeviation;
    fill(menuFill);
}
void color9(){
    position+=1;
    fill(colorChoice);
    rect(menuSize*position,y_max-menuSize,menuSize,menuSize);
    if(mousePressed && mouseX > menuSize*position && mouseX < (menuSize*position)+menuSize && mouseY > y_max - menuSize && mouseY < y_max){
      userColor = colorChoice;
    }
    colorChoice -= colorDeviation;
    fill(menuFill);
}
void color10(){
    position+=1;
    fill(colorChoice);
    rect(menuSize*position,y_max-menuSize,menuSize,menuSize);
    if(mousePressed && mouseX > menuSize*position && mouseX < (menuSize*position)+menuSize && mouseY > y_max - menuSize && mouseY < y_max){
      userColor = colorChoice;
    }
    colorChoice -= colorDeviation;
    fill(menuFill);
}
void color11(){
    position+=1;
    fill(colorChoice);
    rect(menuSize*position,y_max-menuSize,menuSize,menuSize);
    if(mousePressed && mouseX > menuSize*position && mouseX < (menuSize*position)+menuSize && mouseY > y_max - menuSize && mouseY < y_max){
      userColor = colorChoice;
    }
    colorChoice -= colorDeviation;
    fill(menuFill);
}
void color12(){
    position+=1;
    fill(colorChoice);
    rect(menuSize*position,y_max-menuSize,menuSize,menuSize);
    if(mousePressed && mouseX > menuSize*position && mouseX < (menuSize*position)+menuSize && mouseY > y_max - menuSize && mouseY < y_max){
      userColor = colorChoice;
    }
    colorChoice -= colorDeviation;
    fill(menuFill);
}
void color13(){
    position+=1;
    fill(colorChoice);
    rect(menuSize*position,y_max-menuSize,menuSize,menuSize);
    if(mousePressed && mouseX > menuSize*position && mouseX < (menuSize*position)+menuSize && mouseY > y_max - menuSize && mouseY < y_max){
      userColor = colorChoice;
    }
    colorChoice -= colorDeviation;
    fill(menuFill);
}
void color14(){
    position+=1;
    fill(colorChoice);
    rect(menuSize*position,y_max-menuSize,menuSize,menuSize);
    if(mousePressed && mouseX > menuSize*position && mouseX < (menuSize*position)+menuSize && mouseY > y_max - menuSize && mouseY < y_max){
      userColor = colorChoice;
    }
    colorChoice -= colorDeviation;
    fill(menuFill);
}
void color15(){
    position+=1;
    fill(colorChoice);
    rect(menuSize*position,y_max-menuSize,menuSize,menuSize);
    if(mousePressed && mouseX > menuSize*position && mouseX < (menuSize*position)+menuSize && mouseY > y_max - menuSize && mouseY < y_max){
      userColor = colorChoice;
    }
    colorChoice -= colorDeviation;
    fill(menuFill);
}
