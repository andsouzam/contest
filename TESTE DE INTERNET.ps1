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
    if (Test-Connection globo.com -ErrorAction SilentlyContinue ){ 
        write-host "TÁ FUNFANDO -- $a"  -ForegroundColor white -BackgroundColor Green
        start-sleep -Seconds 10
        testederede}

    else {
        Write-Host "CAIIUUU -- $a" -ForegroundColor Black -BackgroundColor Red
        #comando cmd para resolver o problema
        Start-Sleep -Seconds 10
        testederede3}
}

function testederede3 {
    if (Test-Connection globo.com -ErrorAction SilentlyContinue ){ 
        write-host "TÁ FUNFANDO -- $a"  -ForegroundColor white -BackgroundColor Green
        start-sleep -Seconds 10
        testederede}

    else { Write-Host "CAIIUUU -- $a" -ForegroundColor Black -BackgroundColor Red
        start-sleep -Seconds 10
        testederede4}
}

function testederede4 {
    if (Test-Connection amazon.com -ErrorAction SilentlyContinue ){ 
        write-host "TÁ FUNFANDO -- $a"  -ForegroundColor white -BackgroundColor Green
        start-sleep -Seconds 10
        testederede}

    else { Write-Host "CAIIUUU nao conseguimos resolver-- $a" -ForegroundColor Black -BackgroundColor Red
        start-sleep -Seconds 10
        testederede3}
}



testederede
