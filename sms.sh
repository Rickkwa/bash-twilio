# Get the Account SID and Authentication Token from your Twilio Dashboard
readonly ACCOUNT_SID=''
readonly AUTH_TOKEN=''

to="$1" # Should contain the value of {ALERT.SENDTO}
from="$2" # Should contain your Twilio phone number
text="$3" # Should container the value of {ALERT.MESSAGE} or {ALERT.SUBJECT}

curl -X POST "https://api.twilio.com/2010-04-01/Accounts/${ACCOUNT_SID}/Messages.json" \
    --data-urlencode "To=${to}" \
    --data-urlencode "From=${from}" \
    --data-urlencode "Body=${text}" \
    -u "$ACCOUNT_SID:$AUTH_TOKEN"
