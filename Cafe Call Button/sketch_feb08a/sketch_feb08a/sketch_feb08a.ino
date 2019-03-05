#include <DHT.h>
#include <DHT_U.h>

#include <ESP8266WiFi.h>
#include <ESP8266WiFiScan.h>
#include <ESP8266WiFiSTA.h>
#include <ESP8266WiFiType.h>
#include <WiFiClient.h>
#include <WiFiClientSecure.h>
#include <WiFiServer.h>


// Configure the device's network info
const char ID[] = "T3A11/A12";

//Configure the WiFi router authentication parameters
const char ssid[] = "PemCafe1";
const char pw[] = "3au5j75^s7lk";

const uint16_t port = 6341;
const char * host = "CO-OPS-L-191268";  //"192.168.10.207";    // ip or DNS "Use PC Name?"

//Setup the LED pin number and ON/OFF Buttons
const short int BUILT_IN_LED2 = 2; //GPIO2 - D4 - TXD1
const short int CALL_BUTTON = 4; //GPIO4 - D2 ; GPIO0 - D3
bool WAITINGONSERVER = false;

// Use WiFiClient class to create TCP connections
WiFiClient client;

void setup()
{
  // Digital pin for LED as an OUTPUT.
  pinMode(BUILT_IN_LED2, OUTPUT);

  //  ON/OFF button Digital Pin as INPUT
  pinMode(CALL_BUTTON, INPUT);
  
  //Attempt to connect to host router
  WiFi.begin(ssid, pw);
  WiFi.mode(WIFI_STA);

  
  // Setup the Serial output for debugging
  Serial.begin(115200);
  Serial.println();
}


void loop() {

  //SOMEONE PUSHED THE BUTTON
  if(digitalRead(CALL_BUTTON)==LOW){

      //Simply invert the variable. If you weren't waiting...now you are & vice versa
      WAITINGONSERVER = !WAITINGONSERVER;
      //For Debug
      Serial.println("CALL_BUTTON PRESSED");
      delay(1000);
  } 

    //IF YOU ARE WAITING ON A SERVER, DO THIS.
    if(WAITINGONSERVER){
      Serial.print("WAITINGONSERVER(TRUE): ");
      Serial.println(WAITINGONSERVER);
      
       //Call WiFi status function 
      CheckWiFiStatus();
      
      //Connect to the Host Server Application
      ConnectToHost();
      
      // turn the LED ON (LOW is the voltage level)
      digitalWrite(BUILT_IN_LED2, LOW);
  
      // This will send the BUTTON ID to the server's software
      client.println(ID);
    
      //Delay to allow data Transmit to server.
      delay(500); 
      
    } else {
      //Otherwise...you're not waiting on the server...so turn your lights down low
      digitalWrite(BUILT_IN_LED2, HIGH);
      delay(200);

      Serial.print("WAITINGONSERVER(FALSE): ");
      Serial.println(WAITINGONSERVER);
    }

}

void CheckWiFiStatus()
{
    if (WiFi.status() == WL_CONNECTED) {
    Serial.println("WiFi Connected");
    // don't continue:
  }
  if (WiFi.status() == WL_IDLE_STATUS) {
    Serial.println("WiFi WL_IDLE_STATUS");
    // don't continue:
  }
  if (WiFi.status() == WL_CONNECT_FAILED) {
    Serial.println("WL_CONNECT_FAILED");
    // don't continue:
  }
  if (WiFi.status() == WL_CONNECTION_LOST) {
    Serial.println("WL_CONNECTION_LOST");
    // don't continue:
  }
  if (WiFi.status() == WL_DISCONNECTED) {
    Serial.println("WL_DISCONNECTED");
    // don't continue:
  }
}

void ConnectToHost()
{
  Serial.print("Connecting");
  while (WiFi.status() != WL_CONNECTED)
  {
    delay(500);
    ESP.restart();
    Serial.print(".");
  }
  Serial.println();
  Serial.print("Connected, IP address: ");
  Serial.println(WiFi.localIP());

  //Connect to the server
  Serial.print("connecting to server: ");
  Serial.println(host);

  if (!client.connect(host, port)) {
    Serial.println("connection failed");
    Serial.println("wait 5 sec...");
    delay(5000);

    //Attempt to reconnect to host router
    WiFi.disconnect();
    delay(1000);
    WiFi.begin(ssid, pw);
    return;
  }
}

