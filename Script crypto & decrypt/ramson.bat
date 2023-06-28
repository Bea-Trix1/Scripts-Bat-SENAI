@echo off
::Script batch para "criptografar" um arquivo com senha
::uso: ramson.bat [arquivo] [novonome] [senha]
set caminho_arquivo = %1
set novo_nome = %2
set senha = 3%
start call "C:\ProgramFiles\7-Zip\7z.exe" a -p%senha% -mhe=on %novo_nome% %caminho_arquivo%
start call del = %aminho_arquivo%