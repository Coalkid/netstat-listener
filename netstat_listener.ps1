

#IP we expect to listen
$ipaddress = "*8.8.8.8*"

 

do{
 

    $result=$null

    $result = netstat -aon

#    Write-Host "refresh"

 

if($result -like $ipaddress){

    $result #console output

#set proper txt file for logs

    $result >> C:\netstat_log\logs.txt

}


}while($true)