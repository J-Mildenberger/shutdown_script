# shutdown_script
This project is about the initiation of a timed shutdown.

Operating system: Windows10

## Usage of the .ps1 script
**Right click on file -> execute as PowerShell Script**

In general the script will guide the user, therefore there is actually no reason to continue reading at this point.

:grin:

<br />
<br />
<br />
<br />
nevertheless you can find instructions in the following.  

At first the user has to enter the desired shutdown time in the Format [dez][h] or [dez][min] or dez[s].   
"dez" is an even natural number.     
"h" is hours.   
"min" is minutes.   
"s" is seconds.     

User input example: **1h**  
User input example: **60min**  
User input example: **3600s**  

    
In Case of anything going wrong with the script: EXIT by typing [STRG] + [c]   

**To abort the shutdown, type "q"**

## Executing a Windows Powershell script for the 1st time
When you are executing a PowerShell script for the first time you may encounter the following error:

> *.... cannot be loaded because running scripts is disabled on this system.*   

You have to give PowerShell permission to execute scripts.  
In order of doing so, open Windows PowerShell with admin rights.    
E.g. by searching "Windows Powershell" in the search bar --> right click on App symbol --> execute as admin.

![Powershell_as_admin.png](https://github.com/J-Mildenberger/shutdown_script/blob/main/images/Powershell_as_admin.png?raw=true)

Then execute the following command inside of the shell window

> *Set-ExecutionPolicy Unrestricted*  

![set_execution_policy_powershell.PNG](https://github.com/J-Mildenberger/shutdown_script/blob/main/images/set_execution_policy_powershell.PNG?raw=true)


Press [Enter] to confirm the command   
Type [Y] for *Yes*  
Press [Enter] to confirm 



Enjoy! :runner: