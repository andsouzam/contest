function testederede {

    $a= (Get-Date).ToString('dddd, dd "de" MMMM "de" yyyy "as" HH:mm:ss tt')


    if (Test-Connection amazon.com -ErrorAction SilentlyContinue ){ 
        write-host "TÁ FUNFANDO -- $a"  -ForegroundColor Black -BackgroundColor Green
        start-sleep -Seconds 10
        testederede}

    else {Write-Host "CAIIUUU -- $a" -ForegroundColor Black -BackgroundColor Red
          start-sleep -Seconds 10
          testederede2}
}

function testederede2 {
    $b= (Get-Date).ToString('dddd, dd "de" MMMM "de" yyyy "as" HH:mm:ss tt')
    if (Test-Connection globo.com -ErrorAction SilentlyContinue ){ 
        write-host "TÁ FUNFANDO -- $b"  -ForegroundColor Black -BackgroundColor Green
        start-sleep -Seconds 10
        testederede}

    else {
        Write-Host "CAIIUUU -- $b" -ForegroundColor Black -BackgroundColor Red
        #comando cmd para resolver o problema
        
        
        $command = “cmd.exe /c 'ipconfig /release'" 
        $process = [WMICLASS]“$cmp_atu\ROOT\CIMV2:win32_process“
        $process.Create($command)


        #----
        Start-Sleep -Seconds 10
        testederede3}
}

function testederede3 {
    $c= (Get-Date).ToString('dddd, dd "de" MMMM "de" yyyy "as" HH:mm:ss tt')
    if (Test-Connection globo.com -ErrorAction SilentlyContinue ){ 
        write-host "TÁ FUNFANDO -- $c"  -ForegroundColor Black -BackgroundColor Green
        start-sleep -Seconds 10
        testederede}

    else { Write-Host "CAIIUUU -- $c" -ForegroundColor Black -BackgroundColor Red
        start-sleep -Seconds 10
        testederede4}
}

function testederede4 {
    $d= (Get-Date).ToString('dddd, dd "de" MMMM "de" yyyy "as" HH:mm:ss tt')
    if (Test-Connection amazon.com -ErrorAction SilentlyContinue ){ 
        write-host "TÁ FUNFANDO -- $d"  -ForegroundColor Black -BackgroundColor Green
        start-sleep -Seconds 10
        testederede}

    else { Write-Host "CAIIUUU nao conseguimos resolver-- $d" -ForegroundColor Black -BackgroundColor Red
        start-sleep -Seconds 10
        testederede3}
}

testederede
