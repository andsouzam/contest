#Looping 1 em amazon.com
function testederede {
    #Registro de Horário
    $a= (Get-Date).ToString('dddd, dd "de" MMMM "de" yyyy "as" HH:mm:ss tt')

    #teste de conexão em amazon.com com pausa de 10 segundos para próximo teste se resposta positiva
    if (Test-Connection amazon.com -ErrorAction SilentlyContinue ){ 
        write-host "TÁ FUNFANDO -- $a"  -ForegroundColor Black -BackgroundColor Green
        start-sleep -Seconds 10
        testederede}

        #Resultado mostrado se teste de conexão com resposta negativa com pausa de 10 segundos
    else {Write-Host "CAIIUUU -- $a" -ForegroundColor Black -BackgroundColor Red
          start-sleep -Seconds 10
          testederede2}
}


#Looping 2 em globo.com
function testederede2 {
    #Registro de Horário
    $b= (Get-Date).ToString('dddd, dd "de" MMMM "de" yyyy "as" HH:mm:ss tt')
    
     #teste de conexão em globo.com com pausa de 10 segundos para próximo teste se resposta positiva (se positio voltará ao looping 1)
    if (Test-Connection globo.com -ErrorAction SilentlyContinue ){ 
        write-host "TÁ FUNFANDO -- $b"  -ForegroundColor Black -BackgroundColor Green
        start-sleep -Seconds 10
        testederede}

        #Resultado mostrado se teste de conexão com resposta negativa com pausa de 10 segundos
    else {
        Write-Host "CAIIUUU -- $b" -ForegroundColor Black -BackgroundColor Red
        Start-Sleep -Seconds 10
        testederede3}
}


#Looping 3 em globo.com
function testederede3 {
    #Registro de Horário
    $c= (Get-Date).ToString('dddd, dd "de" MMMM "de" yyyy "as" HH:mm:ss tt')
    
     #teste de conexão em globo.com com pausa de 10 segundos para próximo teste se resposta positiva (se positio voltará ao looping 1)
    if (Test-Connection globo.com -ErrorAction SilentlyContinue ){ 
        write-host "TÁ FUNFANDO -- $c"  -ForegroundColor Black -BackgroundColor Green
        start-sleep -Seconds 10
        testederede}

        #Resultado mostrado se teste de conexão com resposta negativa com pausa de 10 segundos
    else { Write-Host "CAIIUUU -- $c" -ForegroundColor Black -BackgroundColor Red
        start-sleep -Seconds 10
        testederede4}
}


#Looping 4 em amazon.com
function testederede4 {
    #Registro de Horário
    $d= (Get-Date).ToString('dddd, dd "de" MMMM "de" yyyy "as" HH:mm:ss tt')
    
    #teste de conexão em amazon.com com pausa de 10 segundos para próximo teste se resposta positiva (se positio voltará ao looping 1)
    if (Test-Connection amazon.com -ErrorAction SilentlyContinue ){ 
        write-host "TÁ FUNFANDO -- $d"  -ForegroundColor Black -BackgroundColor Green
        start-sleep -Seconds 10
        testederede}

        #Resultado mostrado se teste de conexão com resposta negativa com pausa de 10 segundos
    else { Write-Host "CAIIUUU nao conseguimos resolver-- $d" -ForegroundColor Black -BackgroundColor Red
        start-sleep -Seconds 10
        testederede3}
}


#Execultar looping (qualquer looping em caso de sucesso irá retornar ao "Looping 1")
testederede
