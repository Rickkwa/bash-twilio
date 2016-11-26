# Base Twilio

## SMS Installation for Zabbix

### Setup sms.sh
1. Copy `sms.sh` to the path specified by the `alertscriptspath` field in your `zabbix-server.conf`.
1. Ensure that `zabbix` has execute permissions for `sms.sh`.
1. Go into the script and edit in your Twilio account SID and authentication token.

### Frontend Configuration

#### Media Type setup
1. Create a new Media Type.
1. Set the type to `Script`.
1. Set the script name to `sms.sh`.
1. Create 3 parameters with the following values:
    1. `{ALERT.SENDTO}`
    1. `<your_twilio_number>`
    1. `{ALERT.MESSAGE}`
    
#### User setup
In the Media tab of a user's settings, add a new media item with the newly created Media Type from the above section. Set the `Send to` field to be the user's phone number (in international format).

#### Action setup
Create a new action. 
The message field is what will be sent through sms.
Take into consideration the length of the message, as a long message will result in it being split into multiple parts. This 
results in higher Twilio charges since they bill per message, not per request.
