$currentIp= "52.183.84.2"
$name="testapp1"                                  

#=============================================================================================
# Donot Modify anything below this
#=============================================================================================

$domain="wingtiptoys.site"                           # your domain
$type="A"                                    # Record type A, CNAME, MX, etc.
$ttl=600                                   # Time to Live min value 600
$port=1                                    # Required port, Min value 1
$weight=1                                  # Required weight, Min value 1
$key = 'e4hZ7JiM2EYH_VcsT54yNqgatTvtPZc15n3' #key for godaddy developer API
$secret = 'JWSjjivUHk4x6iNPTMyvzw' #Secret for godday developer API
[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12 

$headers = @{}

$headers["Content-Type"] = 'application/json'
$headers["Authorization"] = 'sso-key ' + $key + ':' + $secret
$Request = @(@{data=$currentIp;port=$port;priority=0;protocol="string";service="string";ttl=$ttl;weight=$weight })
$JSON = Convertto-Json $request
$result = Invoke-WebRequest https://api.godaddy.com/v1/domains/$domain/records/$type/$name -method put -headers $headers -Body $json -ContentType "application/json" -UseBasicParsing
