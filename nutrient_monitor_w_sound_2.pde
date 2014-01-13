import beads.*;


PFont font;

//needs to enumerate what vegetables you've eaten
// needs to quantify how many calories you've eaten
float vitaminc = 99;
float vitamind = 99;
float vitamina = 99;
float vitaminb1 = 99;
float vitaminb2 = 99;
float niacin = 99;
float vitaminb6 = 99;
float folicacid = 99;
float vitaminb12 = 99;
float biotin = 99;
float pantothenicacid = 99;
float phosphorus = 99;

float calcium = 299;
float iodine = 299;
float magnesium = 299;
float zinc = 299;
float iron = 299;
float selenium = 299;
float copper = 299;
float manganese = 299;
float vitamine = 299;
float vitamink = 299;
float potassium = 299;

float sodium = 499;
float dietaryfiber = 499;
float fat = 499;
float cholesterol = 499;
float protein = 499;
float carbohydrate = 499;
float calories = 499;

AudioContext ac0;
AudioContext ac1;
String sourceFile0 = sketchPath("") + "sound1.wav";
String sourceFile1 = sketchPath("") + "sound2.wav";
SamplePlayer sp0;
SamplePlayer sp1;

Gain g0;
Gain g1;

Glide gainValue;

void setup() {
  
background(#C1F5D9);
size(850, 600);
ac0 = new AudioContext();
ac1 = new AudioContext();
  


ac0 = new AudioContext();
ac1 = new AudioContext();

sourceFile0 = sketchPath("") + "sound1.wav";
sourceFile1 = sketchPath("") + "sound2.wav";

try {
  
  sp0 = new SamplePlayer(ac0, new Sample(sourceFile0));
    sp1 = new SamplePlayer(ac1, new Sample(sourceFile1)); }
    
    
    catch(Exception e){
  println("Exception while attempting to load sample!"); 
  e.printStackTrace(); 
}

sp0.setKillOnEnd(false);
sp1.setKillOnEnd(false);

gainValue = new Glide(ac0, 0.0, 20); 
gainValue = new Glide(ac1, 0.0, 20);

g0 = new Gain(ac0, 1, gainValue);
g1 = new Gain(ac1, 1, gainValue);


g0.addInput(sp0); 
g1.addInput(sp1);

ac0.out.addInput(g0);
ac1.out.addInput(g1);

ac0.start();
ac1.start();



 
  font = loadFont("BookshelfSymbolSeven-10.vlw");
  textFont(font, 10);
}
void keyTyped() { 
  
   print(key);
   gainValue.setValue(50/50);
  sp0.setToLoopStart(); sp0.start();
  if (key== 'w' ) { 
    
   
   

    
    
  
  //beets
  calcium = calcium - 1;
  iron = iron -1;
  vitaminc = vitaminc-6;
  vitaminb6 = vitaminb6-5;
  magnesium = magnesium-4;
  protein = protein -2;
  sodium = sodium -2;
  potassium= potassium-7;
  calories = calories-1.75;
  carbohydrate = carbohydrate-2;
  dietaryfiber = dietaryfiber-9;
 // beets - key w = beets
  }
  
  if (key== 'w' && vitaminc <= 0){gainValue.setValue(50/50);
  sp1.setToLoopStart(); sp1.start();}
  
    if (key== 'w' && vitamina <= 0){gainValue.setValue(50/50);
  sp1.setToLoopStart(); sp1.start();}
  
    if (key== 'w' && vitaminb1 <= 0){gainValue.setValue(50/50);
  sp1.setToLoopStart(); sp1.start();}
  
    if (key== 'w' && vitaminb2 <= 0){gainValue.setValue(50/50);
  sp1.setToLoopStart(); sp1.start();}
  
    if (key== 'w' && niacin <= 0){gainValue.setValue(50/50);
  sp1.setToLoopStart(); sp1.start();}
    
if (key== 'g' ) { 
 

  
  
 ; // one medium cucumber 196 g

  potassium= potassium- 12;
  carbohydrate = carbohydrate-3;
  protein = protein -4;
  vitaminb6 = vitaminb6 - 5;
  dietaryfiber =dietaryfiber - 6;
  vitamina = vitamina -6;
  calcium = calcium -4;
  magnesium= magnesium-9;
  vitaminc = vitaminc -14;
  iron = iron- 4;
} // zucchini


  if (key== 'f' ) { 
    
   
   

    
    
  
  //beets
  vitamink = vitamink - 10;
  calcium = calcium - 1;
  iron = iron -1;
  vitaminc = vitaminc-6;
  vitaminb6 = vitaminb6-5;
  magnesium = magnesium-4;
  protein = protein -2;
  sodium = sodium -2;
  potassium= potassium-7;
  calories = calories-1.75;
  carbohydrate = carbohydrate-2;
  dietaryfiber = dietaryfiber-9;
 // beets - key w = beets
  }

if (key== 's' ) { 
 

  
  

fat = fat-44;
  vitaminb2 = vitaminb2 -10;
  sodium = sodium -1;
  potassium = potassium-27;
  carbohydrate = carbohydrate-5;
  protein = protein - 8;
  vitamina = vitamina-5;
  calcium = calcium-2;
  vitaminb6 = vitaminb6 -25;
  magnesium = magnesium -14;
  calories = calories - 1.6;
  dietaryfiber = dietaryfiber -5;
  iron = iron-6;
}// kale
if (key== 'd' ) { 

 

  
  
  sodium = sodium -1;
  potassium = potassium -5;
  carbohydrate = carbohydrate-2;
  dietaryfiber = dietaryfiber-6;
  vitamina = vitamina-203;
  calcium = calcium -2;
  vitaminc = vitaminc -6;
  vitaminb6 = vitaminb6 -5;
  magnesium = magnesium -1;
  iron = iron -1;
  protein = protein -1;
  sodium = sodium -1;
}


}

void draw() {
  
 

  fill(0);

  if (vitamina <= 0) {
    vitamina = 100;
     
  }
  noFill();
  rect(10, 100, 80, 0);
  rectMode(CORNERS);
  fill(#932B87);
  rect(10, 100, 80, vitamina); 
  text("Vitamin A", 12, 115 );

  if (vitaminb1 <= 0) {
    vitaminb1=100;
  }
  noFill();
  rect(85, 100, 155, 0);
  fill(#ED7326);
  rect(85, 100, 155, vitaminb1); 
  text("Vitamin B1", 92, 115 );

  if (vitaminb2 <= 0) {
    vitaminb2 =100;
  }
  noFill();
  rect(160, 100, 230, 0);
  fill(#2A9032);
  rect(160, 100, 230, vitaminb2);
  text("Vitamin B2", 172, 115);

  if (niacin <= 0) {
    niacin= 100;
  }
  noFill();
  rect(235, 100, 305, 0);
  fill(#D0E83B);
  rect(235, 100, 305, niacin);
  text("Niacin", 247, 115); 

  if (folicacid <=0) {
    folicacid = 100;
  }
  noFill();
  rect(310, 100, 380, 0);
  fill(#5F7CE0);
  rect(310, 100, 380, folicacid);
  text("Folic Acid", 317, 115); 

  if (vitaminb12 <= 0) {
    vitaminb12 = 100;
  }
  noFill();
  rect(610, 100, 680, 0);
  fill(#BD5FE0);
  rect(610, 100, 680, vitaminb12);
  text("Vitamin B12", 610, 115 );

  if (vitaminc<= 0) {
    vitaminc = 100;
  } 
  noFill();
  rect(685, 100, 755, 0);
  fill(#2A9032);
  rect(685, 100, 755, vitaminc);
  text("Vitamin C", 690, 115);

  if (biotin <= 0) {
    biotin = 100;
  }
  noFill();
  rect(460, 100, 530, 0);
  fill(#E05F88);
  rect(460, 100, 530, biotin);
  text("Biotin", 475, 115);

  if (pantothenicacid <= 0) {
    pantothenicacid = 100;
  }
  noFill();
  rect(535, 100, 605, 0);
  fill(#66EADE);
  rect(535, 100, 605, pantothenicacid);
  text("Pantothenic", 535, 115);
  text("Acid", 555, 127);

  if (vitaminb6 <= 0) {
    vitaminb6 = 100;
  }
  noFill();
  rect(385, 100, 455, 0);
  fill(#2A9032);
  rect(385, 100, 455, vitaminb6);
  text("Vitamin B6", 390, 115);

  if (vitamind <= 0) {
    vitamind = 100;
  }
  noFill();
  rect(765, 100, 830, 0);
  fill(#225A5D);
  rect(765, 100, 830, vitamind);
  text("Vitamin D", 765, 115);

  if (vitaminb12 <= 0) {
    vitaminb12 = 100;
  }
  noFill();
  rect(10, 300, 80, 200);
  fill(#5A417C);
  rect(10, 300, 80, vitamine);
  text("Vitamin E", 12, 315);

  if (calcium <= 200) {
    calcium = 300;
  }
  noFill();
  rect(760, 300, 830, 200);
  fill(#2A9032);
  rect(760, 300, 830, calcium);
  text("Calcium", 760, 315);

  if (magnesium <= 200) {
    magnesium = 300;
  } 
  noFill();
  rect(85, 300, 155, 200);
  fill(#2A9032);
  rect(85, 300, 155, magnesium);
  text("Magnesium", 88, 315);

  if (zinc <= 200) {
    zinc = 300;
  }
  noFill();
  rect(160, 300, 230, 200);
  fill(#2A9032);
  rect(160, 300, 230, zinc);
  text("Zinc", 167, 315);

  if (selenium <= 200) {
    selenium = 300;
  }
  noFill();
  rect(235, 300, 305, 200);
  fill(#2A9032);
  rect(235, 300, 305, selenium);
  text("Selenium", 242, 315);

  if (copper <= 200) {
    copper = 300;
  }
  noFill();
  rect(310, 300, 380, 200);
  fill(#2A9032);
  rect(310, 300, 380, copper);
  text("Copper", 317, 315);

  if (manganese<= 200) {
    manganese = 300;
  }
  noFill();
  rect(385, 300, 455, 200);
  fill(#2A9032);
  rect(385, 300, 455, manganese);
  text("Manganese", 385, 315);


  if (iron <= 200) {
    iron = 300;
  }
  noFill();
  rect(460, 300, 530, 200); 
  fill(#2A9032);
  rect(460, 300, 530, iron);
  text("Iron", 475, 315);


  if (potassium <= 200) {
    potassium = 300;
  }
  noFill();  
  rect(535, 300, 605, 200);      
  fill(#2A9032);
  rect(535, 300, 605, potassium);
  text("Potassium", 542, 315);

  if (iodine <= 200) {
    iodine = 300;
  }    
  noFill();
  rect(610, 300, 680, 200);
  fill(#2A9032);
  rect(610, 300, 680, iodine);
  text("Iodine", 612, 315);

  if (vitamink <= 200) {
    vitamink = 300;
  }
  noFill();
  rect(685, 300, 755, 200);
  fill(#E37347);
  rect(685, 300, 755, vitamink);
  text("Vitamin K", 692, 315);


  // i deleted molybdeum and chloride and chromium
  if (fat <= 400) {
    fat = 500;
  }
  noFill();
  rect(10, 500, 80, 400);
  fill(#2A9032);
  rect(10, 500, 80, fat);
  text("Fat", 35, 515);

  if (dietaryfiber <= 400) {
    dietaryfiber = 500;
  }
  noFill();
  rect(85, 500, 155, 400);
  fill(#2A794F);
  rect(85, 500, 155, dietaryfiber);
  text("Dietary Fiber", 87, 515);

  if (sodium <= 400) {
    sodium = 500;
  }
  noFill();
  rect(160, 500, 230, 400);
  fill(#2A9032);
  rect(160, 500, 230, sodium);
  text("Sodium", 167, 515);

  if (protein <= 400) {
    protein = 500;
  }
  noFill();
  rect(235, 500, 305, 400);
  fill(#2A9032);
  rect(235, 500, 305, protein);
  text("Protein", 249, 515);


  if (cholesterol <= 400) {
    cholesterol = 500;
  }
  noFill();
  rect(315, 500, 385, 400);
  fill(#2A9032);
  rect(315, 500, 385, cholesterol);
  text("Cholesterol", 315, 515);

  if (carbohydrate <= 400) {
    carbohydrate = 500;
  }
  noFill();
  rect(385, 500, 455, 400);
  fill(#F7114B);
  rect(385, 500, 455, carbohydrate);
  text("Carbohydrates", 385, 515);

  if (calories <= 400) {
    calories = 500;
  }
  noFill();
  rect(460, 500, 530, 400);
  fill(#4E81D6);
  rect(460, 500, 530, calories);
  text("Calories", 465, 515);








  fill(0);

  line(460, 0, 460, 600);
  line(800, 0, 800, 600);
  line(380, 0, 380, 600);
}






