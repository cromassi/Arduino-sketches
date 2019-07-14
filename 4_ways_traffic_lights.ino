
// The 4 ways cross traffic lights project for Arduino UNO

// author: Massimo Croci
//web site: www.crocimassimo.wordpress.com
//mail: massimo_croci@hotmail.com
// date: August 2015
//location: Sofia, Bulgaria, EU

// This Arduino sketch is open source software released under GPL 2.0 license
// Cor Magis Tibi Sena Pandit

// Lights position in the cross


//                                |       |
//                                |   3  |
//                          ------         -------
//                             4           2 
//                          -------        -------
//                                |   1  |
//                                |       |


// for pictures of the HW components used, see www.........


// ************************************************************************************************



int pinGREEN1=2;  // power pin for LED green 1
int pinGREEN2=3;  // power pin for LED green 3
int pinGREEN3=4;   // power pin for LED green 2
int pinGREEN4=5;  // power pin for LED green 4
int pinYELLOW1=6;    // power pin for LED yellow 1
int pinYELLOW2=7;    // power pin for LED yellow 3
int pinYELLOW3=8;    // power pin for LED yellow 2
int pinYELLOW4=9;    // power pin for LED yellow 4
int pinRED1=10;    // power pin for LED red 1
int pinRED2=11;    // power pin for LED red 3
int pinRED3=12;    // power pin for LED red 2
int pinRED4=13;    // power pin for LED red 4
String a1=(" Welcome to ");
String a2=(" the traffic lights project ");
String a3=("for Arduino UNO ");
int WaitGreenLights;   // duration of the green lights inserted by the user in seconds
int green;  // duration of the green lights inserted by the user in milliseconds

void setup() {

Serial.begin(115200);
String wel=a1+a2+a3;  // the welcome message
Serial.println(wel);   // the welcomw message
Serial.println("--------------------------------------------------------------------------------------");
Serial.println(" ");
Serial.println(" How many seconds do you want to wait for the green lights ? ");   // asked the user how many times he/she wants to us ethe traffic lights
while(Serial.available()==0){}  // wait for the user
WaitGreenLights=Serial.parseInt();   // number of loops to execute inserted by the user
green=WaitGreenLights*1000;

pinMode(pinGREEN1, OUTPUT);     // LED green 1 is for output
pinMode(pinGREEN2, OUTPUT);    // LED green 2 is for output
pinMode(pinGREEN3, OUTPUT);    // LED green 3 is for output
pinMode(pinGREEN4, OUTPUT);    // LED green 4 is for output
pinMode(pinYELLOW1, OUTPUT);    // LED yellow 1 LED is for output
pinMode(pinYELLOW2, OUTPUT);    // LED yellow 2 LED is for output
pinMode(pinYELLOW3, OUTPUT);    // LED yellow 3 LED is for output
pinMode(pinYELLOW4, OUTPUT);    // LED yellow 4 LED is for output
pinMode(pinRED1, OUTPUT);     // LED red 1 is for output
pinMode(pinRED2, OUTPUT);     // LED red 2 is for output
pinMode(pinRED3, OUTPUT);     // LED red 3 is for output
pinMode(pinRED4, OUTPUT);     // LED red 4 is for output

}




void loop() {
 
int j=1; 
while (j>=0) {  

Serial.println(" ");  
Serial.print(" This is loop number ");
Serial.println(j);
Serial.println(" ");  

digitalWrite (pinGREEN1,HIGH); 
digitalWrite (pinRED2,HIGH);  
digitalWrite (pinGREEN3,HIGH); 
digitalWrite (pinRED4,HIGH); 
Serial.println(" The light GREEN 1, RED 2, GREEN 3 and RED 4 are up");
Serial.println(" ");
delay (green);
digitalWrite (pinGREEN1,LOW); 
digitalWrite (pinGREEN3,LOW); 
digitalWrite (pinYELLOW1,HIGH); 
digitalWrite (pinYELLOW3,HIGH); 
Serial.println(" The light GREEN 1and GREEN 3 went down, YELLOW 1 and YELLOW 3 came up");
Serial.println(" ");
delay (5000);
digitalWrite (pinRED2,LOW);  
digitalWrite (pinRED4,LOW); 
digitalWrite (pinYELLOW1,LOW); 
digitalWrite (pinYELLOW3,LOW); 
digitalWrite (pinRED1,HIGH); 
digitalWrite (pinRED3,HIGH);
digitalWrite (pinGREEN2,HIGH);
digitalWrite (pinGREEN4,HIGH);
Serial.println(" The lights RED 1, GREEN 2, RED3 and GREEN 4 are up");
Serial.println(" ");
delay (green);
digitalWrite (pinYELLOW2,HIGH); 
digitalWrite (pinYELLOW4,HIGH); 
digitalWrite (pinGREEN2,LOW); 
digitalWrite (pinGREEN4,LOW); 
Serial.println(" The light GREEN 2 and GREEN 4 went down, YELLOW 2 and YELLOW 2 came up");
Serial.println(" ");
delay (5000);
digitalWrite (pinYELLOW2,LOW); 
digitalWrite (pinYELLOW4,LOW); 
digitalWrite (pinRED1,LOW); 
digitalWrite (pinRED3,LOW); 
j=j+1;

}


}



