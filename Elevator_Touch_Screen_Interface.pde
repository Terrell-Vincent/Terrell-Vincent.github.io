int xPoint;
int yPoint;
int leftX = 27;
int leftY = 592;
int rightX = 233;
int rightY = 592;
boolean closed;

void setup() {
  size(1000, 800);
  noStroke();
}

void draw() {
  background(100, 30, 250);

  color white = color(255, 255, 255);
  fill(200);
  line(mouseX, 20, mouseX, 80);
  line(20, mouseY, 80, mouseY);
  rect(350, 40, 450, 650); //Background

  color black = color(0, 0, 0);
  fill(black);
  noStroke();
  rect(475, 103, 200, 100); // floor indicator

  color gray = color(100, 100, 100);
  fill(gray);
  rect(400, 363, 341, 250); //Touch screen

  textSize(50);
  fill(255, 0, 0);
  text("--", 560, 175); // floor counter

  textSize(40);
  fill(black);
  text("Select a floor", 465, 295);

  fill(white);
  stroke(black);  //Floor buttons
  rect(400, 363, 85, 100);
  rect(485, 363, 85, 100);
  rect(570, 363, 85, 100);
  rect(655, 363, 85, 100);
  rect(400, 463, 85, 100);
  rect(485, 463, 85, 100);
  rect(570, 463, 85, 100);
  rect(655, 463, 85, 100);

  fill(black);// Floor numbers
  text("1", 435, 420);
  text("2", 520, 420);
  text("3", 600, 420);
  text("4", 685, 420);
  text("5", 435, 515);
  text("6", 520, 515);
  textSize(30);
  text("Open", 578, 515);
  text("Close", 665, 515);
  
  fill(255, 0, 0);
  rect(400, 563, 85, 50);//emergency button
  fill(black);
  textSize(15);
  text("Emergency", 408, 585);
  
  rect(485, 563, 170, 46);
  
  textSize(20);
  fill(white);
  int m = minute();
  int h = hour();
  text(h + " :", 685, 594);
  text(m, 715, 594);

  fill(black);
  rect(135, 505, 50, 10);//Floor 1
  fill(white);
  textSize(20);
  text("Floor 1", 44, 527);
  
  fill(black);
  rect(135, 405, 50, 10);//Floor 2
  fill(white);
  textSize(20);
  text("Floor 2", 44, 427);
  
  fill(black);
  rect(135, 305, 50, 10);//Floor 3
  fill(white);
  textSize(20);
  text("Floor 3", 44, 327);
  
  fill(black);
  rect(135, 205, 50, 10);//Floor 4
  fill(white);
  textSize(20);
  text("Floor 4", 44, 227);
  
  fill(black);
  rect(135, 105, 50, 10);//Floor 5
  fill(white);
  textSize(20);
  text("Floor 5", 44, 127);
  
  fill(black);
  rect(135, 5, 50, 10);//Floor 6
  fill(white);
  textSize(20);
  text("Floor 6", 44, 27);

  fill(black);
  rect(leftX, leftY, 75, 75);//left door
  rect(rightX, rightY, 75, 75);//right door

  textSize(50);
  if (xPoint > 399 && xPoint < 481 && yPoint > 365 && yPoint < 461)//if button 1 is pressed
  {
    fill(255, 0, 0);//turn the button on
    stroke(black);
    rect(400, 363, 85, 100);
    fill(black);
    text("1", 435, 420);
    
    fill(white);
    noStroke();
    rect(424, 231, 300, 100);
    fill(black);
    textSize(30);
    text("Proceeding to floor 1", 440, 300);
    fill(black);
    textSize(50);
    
    if (leftX != 100) //close the doors
      leftX = leftX + 1;
    if (rightX != 165)
      rightX = rightX - 1;
      
    if(leftX == 100 && rightX == 165)
    {
      closed = true;
    }
    
    if (closed == true && leftY > 505 && rightY > 505)// get to the floor
    {
      if(leftY != 505)
      {
        leftY = leftY - 1;
      }
      if(rightY != 505)
      {
        rightY = rightY - 1;
      }
    }
    else if(closed == true && leftY < 505 && rightY < 505)
    {
      if(leftY != 505 && rightY != 505)
      {
        leftY = leftY + 1;
        rightY = rightY + 1;
      }
    }
    if(leftY == 505 && rightY == 505)//open the doors
    {
      rect(475, 103, 200, 100);
      fill(255, 0, 0);
      text("1", 560, 175);
      while(leftX != 27)
      {
        leftX = leftX - 1;
      }
      while(rightX != 233)
      {
        rightX = rightX + 1;
      }
      fill(white);
      noStroke();
      rect(424, 231, 300, 100);
      fill(black);
      textSize(30);
      text("Have a nice day", 475, 300);
      closed = false;
    }
  }
  if (xPoint > 486 && xPoint < 570 && yPoint > 365 && yPoint < 461)//if button 2 is pressed
  {
    fill(255, 0, 0);
    stroke(black);
    rect(485, 363, 85, 100);
    fill(black);
    text("2", 520, 420);
    
    fill(white);
    noStroke();
    rect(424, 231, 300, 100);
    fill(black);
    textSize(30);
    text("Proceeding to floor 2", 440, 300);
    fill(black);
    textSize(50);
    
    if (leftX != 100) //close the doors
      leftX = leftX + 1;
    if (rightX != 165)
      rightX = rightX - 1;

    if(leftX == 100 && rightX == 165)
    {
      closed = true;
    }
    
    if (closed == true && leftY > 405 && rightY > 405)// get to the floor
    {
      if(leftY != 405)
      {
        leftY = leftY - 1;
      }
      if(rightY != 405)
      {
        rightY = rightY - 1;
      }
    }
    else if(closed == true && leftY < 405 && rightY < 405)
    {
      if(leftY != 405 && rightY != 405)
      {
        leftY = leftY + 1;
        rightY = rightY + 1;
      }
    }
    
    if(leftY == 405 && rightY == 405)//open the doors
    {
      rect(475, 103, 200, 100);
      fill(255, 0, 0);
      text("2", 560, 175);
      while(leftX != 27)
      {
        leftX = leftX - 1;
      }
      while(rightX != 233)
      {
        rightX = rightX + 1;
      }
      fill(white);
      noStroke();
      rect(424, 231, 300, 100);
      fill(black);
      textSize(30);
      text("Have a nice day", 475, 300);
      closed = false;
    }
  }
  if (xPoint > 573 && xPoint < 650 && yPoint > 365 && yPoint < 461)//if button 3 is pressed
  {
    fill(255, 0, 0);
    stroke(black);
    rect(570, 363, 85, 100);
    fill(black);
    text("3", 600, 420);
    
    fill(white);
    noStroke();
    rect(424, 231, 300, 100);
    fill(black);
    textSize(30);
    text("Proceeding to floor 3", 440, 300);
    fill(black);
    textSize(50);
    
    if (leftX != 100)
      leftX = leftX + 1;
    if (rightX != 165)
      rightX = rightX - 1;

    if(leftX == 100 && rightX == 165)
    {
      closed = true;
    }
    
    if (closed == true && leftY > 305 && rightY > 305)// get to the floor
    {
      if(leftY != 305)
      {
        leftY = leftY - 1;
      }
      if(rightY != 305)
      {
        rightY = rightY - 1;
      }
    }
    else if(closed == true && leftY < 305 && rightY < 305)
    {
      if(leftY != 305 && rightY != 305)
      {
        leftY = leftY + 1;
        rightY = rightY + 1;
      }
    }
    
    if(leftY == 305 && rightY == 305)//open the doors
    {
      rect(475, 103, 200, 100);
      fill(255, 0, 0);
      text("3", 560, 175);
      while(leftX != 27)
      {
        leftX = leftX - 1;
      }
      while(rightX != 233)
      {
        rightX = rightX + 1;
      }
      fill(white);
      noStroke();
      rect(424, 231, 300, 100);
      fill(black);
      textSize(30);
      text("Have a nice day", 475, 300);
      closed = false;
    }
  }
  if (xPoint > 657 && xPoint < 737 && yPoint > 365 && yPoint < 461)//if button 4 is pressed
  {
    fill(255, 0, 0);
    stroke(black);
    rect(655, 363, 85, 100);
    fill(black);
    text("4", 685, 420);
    
    fill(white);
    noStroke();
    rect(424, 231, 300, 100);
    fill(black);
    textSize(30);
    text("Proceeding to floor 4", 440, 300);
    fill(black);
    textSize(50);
    
    if (leftX != 100)
      leftX = leftX + 1;
    if (rightX != 165)
      rightX = rightX - 1;

    if(leftX == 100 && rightX == 165)
    {
      closed = true;
    }
    
    if (closed == true && leftY > 205 && rightY > 205)// get to the floor
    {
      if(leftY != 205)
      {
        leftY = leftY - 1;
      }
      if(rightY != 205)
      {
        rightY = rightY - 1;
      }
    }
    else if(closed == true && leftY < 205 && rightY < 205)
    {
      if(leftY != 205 && rightY != 205)
      {
        leftY = leftY + 1;
        rightY = rightY + 1;
      }
    }
    
    if(leftY == 205 && rightY == 205)//open the doors
    {
      rect(475, 103, 200, 100);
      fill(255, 0, 0);
      text("4", 560, 175);
      while(leftX != 27)
      {
        leftX = leftX - 1;
      }
      while(rightX != 233)
      {
        rightX = rightX + 1;
      }
      fill(white);
      noStroke();
      rect(424, 231, 300, 100);
      fill(black);
      textSize(30);
      text("Have a nice day", 475, 300);
      closed = false;
    }
  }
  if (xPoint > 403 && xPoint < 482 && yPoint > 467 && yPoint < 559)//if button 5 is pressed
  {
    fill(255, 0, 0);
    stroke(black);
    rect(400, 463, 85, 100);
    fill(black);
    text("5", 435, 515);
    
    fill(white);
    noStroke();
    rect(424, 231, 300, 100);
    fill(black);
    textSize(30);
    text("Proceeding to floor 5", 440, 300);
    fill(black);
    textSize(50);
    
    if (leftX != 100)
      leftX = leftX + 1;
    if (rightX != 165)
      rightX = rightX - 1;

    if(leftX == 100 && rightX == 165)
    {
      closed = true;
    }
    
    if (closed == true && leftY > 105 && rightY > 105)// get to the floor
    {
      if(leftY != 105)
      {
        leftY = leftY - 1;
      }
      if(rightY != 105)
      {
        rightY = rightY - 1;
      }
    }
    else if(closed == true && leftY < 105 && rightY < 105)
    {
      if(leftY != 105 && rightY != 105)
      {
        leftY = leftY + 1;
        rightY = rightY + 1;
      }
    }
    
    if(leftY == 105 && rightY == 105)//open the doors
    {
      rect(475, 103, 200, 100);
      fill(255, 0, 0);
      text("5", 560, 175);
      while(leftX != 27)
      {
        leftX = leftX - 1;
      }
      while(rightX != 233)
      {
        rightX = rightX + 1;
      }
      fill(white);
      noStroke();
      rect(424, 231, 300, 100);
      fill(black);
      textSize(30);
      text("Have a nice day", 475, 300);
      closed = false;
    }
  }
  if (xPoint > 487 && xPoint < 568 && yPoint > 467 && yPoint < 559)//if button 6 is pressed
  {
    fill(255, 0, 0);
    stroke(black);
    rect(485, 463, 85, 100);
    fill(black);
    text("6", 520, 515);
    
    fill(white);
    noStroke();
    rect(424, 231, 300, 100);
    fill(black);
    textSize(30);
    text("Proceeding to floor 6", 440, 300);
    fill(black);
    textSize(50);
    
    if (leftX != 100)//Close the door
      leftX = leftX + 1;
    if (rightX != 165)
      rightX = rightX - 1;

    if(leftX == 100 && rightX == 165)
    {
      closed = true;
    }
    
    if (closed == true && leftY > 5 && rightY > 5)// get to the floor
    {
      if(leftY != 5)
      {
        leftY = leftY - 1;
      }
      if(rightY != 5)
      {
        rightY = rightY - 1;
      }
    }
    else if(closed == true && leftY < 5 && rightY < 5)
    {
      if(leftY != 5 && rightY != 5)
      {
        leftY = leftY + 1;
        rightY = rightY + 1;
      }
    }
  }
  
  if(leftY == 5 && rightY == 5)//open the doors
    {
      rect(475, 103, 200, 100);
      fill(255, 0, 0);
      text("6", 560, 175);
      while(leftX != 27)
      {
        leftX = leftX - 1;
      }
      while(rightX != 233)
      {
        rightX = rightX + 1;
      }
      fill(white);
      noStroke();
      rect(424, 231, 300, 100);
      fill(black);
      textSize(30);
      text("Have a nice day", 475, 300);
      closed = false;
    }
  if (xPoint > 657 && xPoint < 737 && yPoint > 465 && yPoint < 557)//if button CLOSE is pressed
  {
    fill(255, 0, 0);//turn the button on
    stroke(black);
    rect(655, 463, 85, 100);
    fill(black);
    textSize(30);
    text("Close", 665, 515);
    
    if (leftX != 100) //close the doors
      leftX = leftX + 1;
    if (rightX != 165)
      rightX = rightX - 1;
    
    if(leftY == 505 && rightY == 505)//close the doors
    {
      rect(475, 103, 200, 100);
      fill(255, 0, 0);
      text("1", 560, 175);
      while(leftX != 27)
      {
        leftX = leftX - 1;
      }
      while(rightX != 233)
      {
        rightX = rightX + 1;
      }
    }
    closed = true;
  }
  if (xPoint > 574 && xPoint < 651 && yPoint > 467 && yPoint < 558)//if button OPEN is pressed
  {
    fill(255, 0, 0);//turn the button on
    stroke(black);
    rect(570, 463, 85, 100);
    fill(black);
    textSize(30);
    text("Open", 578, 515);
    
    if (closed == true && leftX != 27) // open the doors
      leftX = leftX - 1;
    if (closed == true && rightX != 233)
      rightX = rightX + 1;
    
  }
  if(xPoint > 404 && xPoint < 482 && yPoint > 566 && yPoint < 607)
  {
    fill(white);
    noStroke();
    rect(424, 231, 300, 100);
    fill(black);
    textSize(30);
    text("Emergency Stop", 475, 300);
    
    fill(255, 0, 0);//turn the 1 button on
    stroke(black);
    rect(400, 363, 85, 100);
    fill(black);
    text("1", 435, 420);
    
    fill(255, 0, 0);//turn the 2 button on
    stroke(black);
    rect(485, 363, 85, 100);
    fill(black);
    text("2", 520, 420);
    
    fill(255, 0, 0);//turn the 3 button on
    stroke(black);
    rect(570, 363, 85, 100);
    fill(black);
    text("3", 600, 420);
    
    fill(255, 0, 0);//turn the 4 button on
    stroke(black);
    rect(655, 363, 85, 100);
    fill(black);
    text("4", 685, 420);
    
    fill(255, 0, 0);//turn the 5 button on
    stroke(black);
    rect(400, 463, 85, 100);
    fill(black);
    text("5", 435, 515);
    
    fill(255, 0, 0);//turn the 6 button on
    stroke(black);
    rect(485, 463, 85, 100);
    fill(black);
    text("6", 520, 515);
    
    fill(255, 0, 0);//turn the open button on
    stroke(black);
    rect(570, 463, 85, 100);
    fill(black);
    textSize(30);
    text("Open", 578, 515);
    
    fill(255, 0, 0);//turn the close button on
    stroke(black);
    rect(655, 463, 85, 100);
    fill(black);
    textSize(30);
    text("Close", 665, 515);
  }
}

void mouseClicked() {
  println(xPoint + "," + yPoint);
  xPoint = mouseX;
  yPoint = mouseY;
}
