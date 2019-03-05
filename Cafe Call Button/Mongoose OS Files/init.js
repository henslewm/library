load('api_config.js');
load('api_events.js');
load('api_gpio.js');
load('api_mqtt.js');
load('api_net.js');
load('api_sys.js');
load('api_timer.js');

let led = Cfg.get('pins.led');
let button = Cfg.get('pins.button');
let topic = '/devices/' + Cfg.get('device.id') + '/events';

// Blink built-in LED every second
GPIO.set_mode(led, GPIO.MODE_OUTPUT);
Timer.set(1000 /* 1 sec */, Timer.REPEAT, function() {
  let value = GPIO.toggle(led);
}, null);

Net.serve({
  addr: 'tcp://23',
  onconnect: function(conn) {
    print('onconnect:shit');
    let data = JSON.stringify(Math.floor(Sys.uptime()));
    print('uptime: ', data)
    Net.send(conn, data);            // Echo received data back
  },
  
});

// Monitor network connectivity.
Event.addGroupHandler(Net.EVENT_GRP, function(ev, evdata, arg) {
  let evs = '???';
  if (ev === Net.STATUS_DISCONNECTED) {
    evs = 'DISCONNECTED';
  } else if (ev === Net.STATUS_CONNECTING) {
    evs = 'CONNECTING';
  } else if (ev === Net.STATUS_CONNECTED) {
    evs = 'CONNECTED';
  } else if (ev === Net.STATUS_GOT_IP) {
    evs = 'GOT_IP';
  }
  print('== Net event:', ev, evs);
}, null);
