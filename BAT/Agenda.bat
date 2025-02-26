@echo off

chcp 1252

color F1

cls

:menu
title Menu

echo Minha Agenda Telef�nica

echo.

echo 1 - Adicionar Contato
echo 2 - Consultar Todos os Contatos
echo 3 - Buscar por Nome
echo 0 - Sair

echo.

set /p op=Digite Aqui sua Op��o: 

if %op% equ 1 (
cls & goto A
) else if %op% equ 2 (
cls & goto B
) else if %op% equ 3 (
cls & goto C
) else if %op% equ 0 (
exit
)

echo Op��o Inv�lida

echo.

echo Pressione qualquer Tecla pra Tentar Novamente!

pause>nul

cls

goto menu

:A
title Adicionar Novo Contato

echo Minha Agenda Telef�nica

echo.

set /p nome=Digite o Nome do Contato: 

set /p tel=Digite o N�mero de %nome%: 

echo.

echo %nome% - %tel%.>>%userprofile%\Desktop\agenda.txt

echo Ok, Adicionado � Agenda!

echo.

echo Pressione qualquer Tecla pra Voltar ao Menu!

pause>nul

cls

goto menu

:B
title Lista de Todos os Contatos

echo Minha Agenda Telef�nica

echo.

type %userprofile%\Desktop\agenda.txt

echo.

echo Pressione qualquer Tecla pra Voltar ao Menu!

pause>nul

cls

goto menu

:C
title Busca de Contato por Nome

set /p contato=Digite o Nome do Contato: 

echo.

findstr /i "%contato%" %userprofile%\Desktop\agenda.txt

if %errorlevel% neq 0 (
echo Contato n�o Encontrado!
)

echo.

echo Pressione qualquer Tecla pra Voltar ao Menu!

pause>nul

cls

goto menu