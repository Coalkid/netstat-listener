
#IP:port we expect to listen / (?!\S) -regex space 
$ipaddress = "127.0.0.1:3702"
$lastresult = $null

do{
 

    $result = $null

    $result = netstat -aon
#    Write-Host "refresh"

 

    if($result -match $ipaddress){



       # $result #console output
        $lastresult = $result -match $ipaddress
        $lastresult
#set proper txt file for logs
        $lastresult >> .\logs.txt

}



}while($true)