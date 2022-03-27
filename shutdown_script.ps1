
Function Main
{
    $periodic_info = 5;
    $stopWatch = New-Object -TypeName System.Diagnostics.Stopwatch
    $timeSpan = New-TimeSpan -Seconds 5
    $stopWatch.Start()

    Write-Host "when shutdown?" -fore red
    Write-Host "usage examples: 1h, 60min, 3600s" -fore green
    $var = Read-Host 
    if ($var -like "*h"){
        Write-Host "System shutting down in $($var.ToLower().TrimEnd("h")) hours." -fore green
        shutdown.exe /s /t $($var.ToLower().TrimEnd("h").ToInt32($null)*3600)
        $var = $var.ToLower().TrimEnd("h").ToInt32($null)*3600;
       Time_and_abort
    }
    elseif($var -like "*min"){
        Write-Host "System shutting down in $($var.ToLower().TrimEnd("min")) mins." -fore green
        shutdown.exe /s /t $($var.ToLower().TrimEnd("min").ToInt32($null)*60)
        $var = $var.ToLower().TrimEnd("min").ToInt32($null)*60;
        Time_and_abort
    }
    elseif($var -like "*s"){
        Write-Host "System shutting down in $($var.ToLower().TrimEnd("s")) seconds." -fore green
        shutdown.exe /s /t $($var.ToLower().TrimEnd("s").ToInt32($null))
        $var = $var.ToLower().TrimEnd("s").ToInt32($null);
        Time_and_abort
    } 
    else { Write-Output "Wrong User Input - restart and try again"}
    Write-Host "####### shutdown aborted ######" -fore Cyan


    Read-Host -Prompt “Press Enter to exit”
}

Function Time_and_abort{
    while($true){
        if ([Console]::KeyAvailable){
                $KeyPress = $host.UI.RawUI.ReadKey()
                if($KeyPress.Character -eq 'q'){
                    shutdown.exe /a
                    break
                }
        }
        if ($stopWatch.Elapsed -ge $timeSpan){ 
            $stopWatch.Restart()
            $var = $var - $periodic_info
            Write-Output "System shutting down in $var seconds.     to abort press 'q' "  
            
            if ($var -lt 0){  Write-Host "termination..." -fore red 
                break
            }
        }		
    }
}


Main