#include <ESP8266WiFi.h>
#include <ESP8266WiFiScan.h>
#include <ESP8266WiFiSTA.h>
#include <ESP8266WiFiType.h>
#include <WiFiClient.h>
#include <WiFiClientSecure.h>
#include <WiFiServer.h>


// Configure the device's network info
const char ID[] = "T3A7";

//Configure the WiFi router authentication parameters
const char ssid[] = "PemCafe1";
const char pw[] = "3au5j75^s7lk";

//Setup the LED pin number
const short int BUILT_IN_LED2 = 2; //GPIO2

// Use WiFiClient class to create TCP connections
WiFiClient client;

void setup()
{
  // initialize digital pin LED_BUILTIN as an output.
  pinMode(BUILT_IN_LED2, OUTPUT);

  //Attempt to connect to host router
  WiFi.begin(ssid, pw);
  
  // Setup the Serial output for debugging
  Serial.begin(115200);
  Serial.println();
}


void loop() {

  const uint16_t port = 6341;
  const char * host = "192.168.10.207";    //"192.168.1.213"; // ip or DNS "Use PC Name?"
  
  Serial.print("Connecting");
  while (WiFi.status() != WL_CONNECTED)
  {
    delay(500);
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
    return;
  }

  // turn the LED on (LOW is the voltage level)
  digitalWrite(BUILT_IN_LED2, LOW);

  // This will send the data to the server
  client.println(ID);
  delay(500); //Delay to allow data Tx.

  //Disconnect the WiFi and Loop!
  //WiFi.disconnect();

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


