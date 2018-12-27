#include <LiquidCrystal.h>

// defines pins numbers
const int sense1 = 38;
const int sense0 = 39;
const int echoPin = 53;
const int lock = 42;

// defines variables
long duration;
int distance;
int range;
int sense;

LiquidCrystal lcd(8,9,4,5,6,7);
void setup() {
  pinMode(echoPin, INPUT);
  pinMode(sense1,OUTPUT);
  pinMode(sense0,OUTPUT);
  pinMode(A1,INPUT);
  lcd.begin(16,2);
}
void loop() {
  duration = pulseIn(echoPin, HIGH);
  distance= duration*0.034/2;
  
  sense = map (analogRead(A1),0,1023,0,2);
  if (sense == 2){
    range = 30;
    digitalWrite(sense1,HIGH);
    digitalWrite(sense0,LOW);
    }
  else if (sense == 1){
    range = 20;
    digitalWrite(sense1,LOW);
    digitalWrite(sense0,HIGH);
  }
  else{
    range = 10;
    digitalWrite(sense1,LOW);
    digitalWrite(sense0,LOW);
  }
  
  lcd.clear();
  lcd.setCursor(0,0);
  lcd.print("D:");
  lcd.print(distance);
  lcd.print(" R:");
  lcd.print(range);
  lcd.setCursor(0,1);
  

if(digitalRead(lock) == HIGH){
  lcd.print("Locked");}
  else{
  lcd.print("Searching...");
  }

}
