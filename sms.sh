# Get the Account SID and Authentication Token from your Twilio Dashboard
readonly ACCOUNT_SID=''
readonly AUTH_TOKEN=''

to="$1"
from="$2"
text="$3"

curl -X POST "https://api.twilio.com/2010-04-01/Accounts/${ACCOUNT_SID}/Messages.json" \
    --data-urlencode "To=${to}" \
    --data-urlencode "From=${from}" \
    --data-urlencode "Body=${text}" \
    -u "$ACCOUNT_SID:$AUTH_TOKEN"
