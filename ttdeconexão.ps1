function testederede {
     $a= (Get-Date).ToString('dddd, dd "de" MMMM "de" yyyy "as" HH:mm:ss tt')
    if (Test-Connection amazon.com -ErrorAction SilentlyContinue ){ 
        Write-host "TÁ FUNFANDO -- $a"  -ForegroundColor white -BackgroundColor Green
        Start-Sleep -Seconds 20
        testederede}
    
    else { 
        Write-Host "CAIIUUU -- $a" -ForegroundColor Black -BackgroundColor Red
        Start-Sleep -Seconds 10
        testederede}
    
}
testederede


#fim