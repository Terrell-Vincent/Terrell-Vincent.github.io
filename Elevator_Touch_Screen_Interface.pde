int xPoint, yPoint;
PImage img, backImg, cloudImg;
Table table, tableNews;
Boolean healthButton = false;

void setup(){
  size(1200, 800);
  noStroke();
  img = loadImage("Calendar icon.png");
  backImg = loadImage("Bathroom.jpg");
  cloudImg = loadImage("cloudLogo.png");
  table = loadTable("Todo.csv", "header");
  tableNews = loadTable("BreakingNews.csv", "header");
  fill(0);

}

void draw()
{
  background(230);
  image(backImg, 0, 0, 1200, 800);
  int d = day();
  int mon = month();
  int s = second();
  int min = minute();
  int h = hour();
    fill(255);
    stroke(0);
    rect(0, 150, 250, 500); //Todo/events
    textSize(35);
    fill(0);
    text("To Do", 90, 185);
    fill(255);
    rect(73, 56, 105, 73);
    fill(0);
    text((mon + "/" + d), 82, 95);
    textSize(20);
    int list = 215;
    for (TableRow row : table.rows())
    {
      String task = row.getString("Need to do");
      
      text(("-" + task), 15, list);
      list = list + 40;
    }
    image(img, 50, 0, 150, 150);//Current date
    
    fill(173,216,250);
    textSize(35);
    rect(0, 650, 250, 150); //Weather forecast
    image(cloudImg, 20, 700, 100, 100);
    fill(255);
    text("Weather", 60, 690);
    fill(0);
    textSize(50);
    text("72", 160, 760);
    textSize(25);
    text("o", 209, 720);
    
    fill(255);
    rect(950, 0, 250, 500); //News
    fill(0);
    text("News", 1040, 50);
    textSize(20);
    int newsList = 100;
    for (TableRow row : tableNews.rows())
    {
      String tasks = row.getString("Breaking News");
      
      text(("-" + tasks), 952, newsList);
      newsList = newsList + 40;
    }
    
    fill(255);
    rect(1050, 500, 150, 150); //Lights
    fill(0);
    textSize(35);
    text("Lights", 1070, 580);
    if (xPoint > 1050 && xPoint < 1200 && yPoint > 500 && yPoint < 650)//If light is pressed
    {
      fill(255, 0, 0);
      rect(750, 500, 75, 75);//red
      fill(255, 165, 0);
      rect(825, 500, 75, 75);//orange
      fill(255, 255, 0);
      rect(900, 500, 75, 75);//yellow
      fill(0, 255, 0);
      rect(975, 500, 75, 75);//green
      fill(0, 0, 255);
      rect(750, 575, 75, 75);//blue
      fill(255, 0, 255);
      rect(825, 575, 75, 75);//purple
      fill(255);
      rect(900, 575, 75, 75);//white
      fill(222,184,135);
      rect(975, 575, 75, 75);//tan
    }
    
    if (xPoint > 750 && xPoint < 825 && yPoint > 500 && yPoint < 575)//red selected
    {
      noFill();
      strokeWeight(16);
      stroke(255, 0, 0);
      rect(250, 0, 700, 800);
    }
    if (xPoint > 825 && xPoint < 900 && yPoint > 500 && yPoint < 575)//orange selected
    {
      noFill();
      strokeWeight(16);
      stroke(255, 165, 0);
      rect(250, 0, 700, 800);
    }
    if (xPoint > 900 && xPoint < 975 && yPoint > 500 && yPoint < 575)//yellow selected
    {
      noFill();
      strokeWeight(16);
      stroke(255, 255, 0);
      rect(250, 0, 700, 800);
    }
    if (xPoint > 975 && xPoint < 1050 && yPoint > 500 && yPoint < 575)//green selected
    {
      noFill();
      strokeWeight(16);
      stroke(0, 255, 0);
      rect(250, 0, 700, 800);
    }
    if (xPoint > 750 && xPoint < 825 && yPoint > 575 && yPoint < 650)//blue selected
    {
      noFill();
      strokeWeight(16);
      stroke(0, 0, 255);
      rect(250, 0, 700, 800);
    }
    if (xPoint > 825 && xPoint < 900 && yPoint > 575 && yPoint < 650)//purple selected
    {
      noFill();
      strokeWeight(16);
      stroke(255, 0, 255);
      rect(250, 0, 700, 800);
    }
    if (xPoint > 900 && xPoint < 975 && yPoint > 575 && yPoint < 650)//white selected
    {
      noFill();
      strokeWeight(16);
      stroke(255);
      rect(250, 0, 700, 800);
    }
    if (xPoint > 975 && xPoint < 1050 && yPoint > 575 && yPoint < 650)//tan selected
    {
      noFill();
      strokeWeight(16);
      stroke(222,184,135);
      rect(250, 0, 700, 800);
    }
    
    strokeWeight(1);
    stroke(0);
    fill(255);
    square(1050, 650, 150); //Health button
    fill(0);
    text("Health\nButton", 1065, 720);
    if (xPoint > 1050 && xPoint < 1200 && yPoint > 650 && yPoint < 800)//health button pressed
    {
      healthButton = true;
    }
    
    fill(255);
    rect(495, 24, 185, 42);
    fill(0);
    textSize(50);
    text((h + ":" + min + ":" + s), 500, 60); //Time
  
  if (healthButton == true)//If the health button is pressed
  {
    fill(230);
    noStroke();
    image(backImg, 0, 0, 1200, 800); //making the background
    stroke(0);
    fill(255);
    rect(495, 24, 185, 42);
    fill(0);
    textSize(50);
    text((h + ":" + min + ":" + s), 500, 60);//Time
    
    fill(0, 0, 55);
    rect(0, 150, 250, 500); //sleep information
    textSize(35);
    fill(255);
    text("      Sleep\nInformation", 35, 185);
    textSize(20);
    text("How long you\nslept last night", 10, 280);
    text(" Deep Vs Light:", 5, 380);
    text("5.5hrs/1.0hrs", 135, 380);
    text(" This weeks sleep:", 5, 450);
    text("53.2hrs", 160, 450);
    text(" Last weeks sleep:", 5, 510);
    text("51.8hrs", 160, 510);
    textSize(35);
    text("6.5hrs", 160, 300);
    
    fill(255);
    rect(950, 60, 250, 150); //Total mirror time
    fill(0);
    textSize(25);
    text("Mirror Time", 1015, 90);
    textSize(35);
    int m = millis();
    text(m / 1000 + "s", 1060, 130);
    
    fill(255);
    rect(950, 150, 250, 300);//Weight Information
    fill(0);
    textSize(25);
    text("Current Weight", 1000, 190);
    textSize(35);
    text("145lbs", 1020, 250);
    textSize(25);
    text("Last Week Weight", 990, 320);
    textSize(35);
    text("149lbs", 1020, 380); 
    
    fill(255);
    rect(950, 450, 250, 200);//Walking Information
    textSize(25);
    fill(0);
    text("Walking Info", 1010, 488);
    text("Steps: 5,091", 970, 515);
    text("Standing: 5.5hrs", 970, 545);
    text("Exercise: 47.5min", 970, 575);
    
    fill(255);
    square(1050, 650, 150); //Back to main
    fill(0);
    textSize(35);
    text("Main\nMenu", 1085, 700);
    
    if (xPoint > 1050 && xPoint < 1200 && yPoint > 650 && yPoint < 800 && healthButton == true)
    {
      healthButton = false;
    }
  }
}

void mouseClicked()
{
  xPoint = mouseX;
  yPoint = mouseY;
  println(xPoint + "," + yPoint);
}
