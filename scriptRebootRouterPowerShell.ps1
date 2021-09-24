$url = "192.168.1.1" 
$username="admin" 
$password="admin"
$ie = New-Object -com  internetexplorer.application; 
$ie.visible = $false; 
$ie.navigate($url); 

while ($ie.Busy -eq $true) 
{ 
    Start-Sleep -Milliseconds 5000; 
} 

$ie.document.IHTMLDocument3_getElementById('username').innertext=$username
$ie.document.IHTMLDocument3_getElementById('password').innertext=$password
$ie.document.IHTMLDocument3_getElementById('loginbtn').Click()

Start-Sleep -Milliseconds 5000; 

$ie.navigate("http://192.168.1.1/restore_reboot.php"); 

Start-Sleep -Milliseconds 5000;

$ie.document.IHTMLDocument3_getElementById('btn1').Click()

Start-Sleep -Milliseconds 5000;

$ie.document.IHTMLDocument3_getElementById('popup_ok').Click()

Start-Sleep -Milliseconds 1000;