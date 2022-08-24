@echo off
title JOKEN-PO SI
mode 60, 30
color f1
:inicio
cls
set /p nm=Digite seu nome:
echo ==============================
set /a emp=0
set /a vit=0
set /a der=0
:comeco
cls
echo.
echo.
echo.
echo ================================
echo       BEM VINDO AO JOGO
echo ================================
echo.
echo [1] PEDRA
echo [2] PAPEL
echo [3] TESOURA
echo [4] LAGARTO
echo [5] SPOCK
echo [E] ENCERRAR JOGO
echo [R] REGRAS DO JOGO
echo =================================
echo.
set /p op=Escolha uma opcao:
set /a cp=(%random% %%5) + 1
if %op% == 1 (
	echo %nm% escolheu pedra
	if %cp% == 1 (goto:pedra
	) else if %cp% == 2 (goto:papel
	) else if %cp% == 3 (goto:tesoura
	) else if %cp% == 4 (goto:lagarto
	) else if %cp% == 5 (goto:spock)
)


if %op% == 2 (
	echo %nm% escolheu papel
	if %cp% == 1 (goto:pedra
	) else if %cp% == 2 (goto:papel
	) else if %cp% == 3 (goto:tesoura
	) else if %cp% == 4 (goto:lagarto
	) else if %cp% == 5 (goto:spock)
)

if %op% == 3 (
	echo %nm% escolheu tesoura
	if %cp% == 1 (goto:pedra
	) else if %cp% == 2 (goto:papel
	) else if %cp% == 3 (goto:tesoura
	) else if %cp% == 4 (goto:lagarto
	) else if %cp% == 5 (goto:spock)
)

if %op% == 4 (
	echo %nm% escolheu lagarto
	if %cp% == 1 (goto:pedra
	) else if %cp% == 2 (goto:papel
	) else if %cp% == 3 (goto:tesoura
	) else if %cp% == 4 (goto:lagarto
	) else if %cp% == 5 (goto:spock)
)

if %op% == 5 (
	echo %nm% escolheu spock
	if %cp% == 1 (goto:pedra
	) else if %cp% == 2 (goto:papel
	) else if %cp% == 3 (goto:tesoura
	) else if %cp% == 4 (goto:lagarto
	) else if %cp% == 5 (goto:spock)
)

if /i %op% == e (exit)
if /i %op% == r (goto:regras) else (
	echo.
	echo ===========================
	echo      numero invalido
	echo ===========================
)
pause
goto:comeco

:pedra
echo.
echo Computador escolheu pedra
goto:partida

:papel
echo.
echo Computador escolheu papel
goto:partida

:tesoura
echo.
echo Computador escolheu tesoura
goto:partida

:lagarto
echo.
echo Computador escolheu lagarto
goto:partida

:spock
echo.
echo Computador escolheu spock
goto:partida


:partida
if %op% == %cp% (
set /a emp=%emp% + 1
echo.
echo.
echo ===========================
echo           EMPATE
echo ===========================
goto:empate
) else if %op% == 1 (
	goto:primeiro
) else if %op% == 2 (
	goto:segundo
) else if %op% == 3 (
	goto:terceiro
) else if %op% == 4 (
	goto:quarta
) else if %op% == 5 (
	goto:quinto
) else (
	echo ===========================
	echo      numero invalido
	echo ===========================
)
pause
goto:inicio

:quinto
if %cp% == 1 (goto:ganho2
) else if %cp% == 2 (goto:perde
) else if %cp% == 3 (goto:ganho
) else if %cp% == 4 (goto:perde)

:quarta
if %cp% == 1 (goto:perde
) else if %cp% == 2 (goto:ganho
) else if %cp% == 3 (goto:perde
) else if %cp% == 5 (goto:ganho)

:terceiro
if %cp% == 1 (goto:perde
) else if %cp% == 2 (goto:ganho
) else if %cp% == 4 (goto:ganho
) else if %cp% == 5 (goto:perde)

:segundo
if %cp% == 1 (goto:ganho
) else if %cp% == 3 (goto:perde
) else if %cp% == 4 (goto:perde
) else if %cp% == 5 (goto:ganho)

:primeiro
if %cp% == 2 (goto:perde
) else if %cp% == 3 (goto:ganho
) else if %cp% == 4 (goto:ganho
) else if %cp% == 5 (goto:perde)

:regras
echo Pedra
echo 	Empata com Pedra; Ganha de Tesoura e Lagarto; Perde de Papel e Spock;
echo.
echo Papel
echo 	Empata com Papel; Ganha de Pedra e Spock; Perde de Tesoura e Lagarto;
echo.
echo Tesoura
echo 	Empata com Tesoura; Ganha de Lagarto e Papel; Perde de Pedra e Spock;
echo.
echo Lagarto
echo 	Empata com Lagarto; Ganha de Papel e Spock; Perde de Pedra e Tesoura;
echo.
echo Spock
echo 	Empata com Spock; Ganha de Pedra e Tesoura; Perde de Lagarto e Papel;
echo.
pause
goto:comeco

:ganho
echo.
echo.
echo ===========================
echo         Ganhou
echo ===========================
set /a vit=%vit% + 1
goto:vitoria

:perde
echo.
echo.
echo ===========================
echo         Perdeu
echo ===========================
set /a der=%der% + 1
goto:derrota

:vitoria 
echo.
echo EMPATES: %emp%
echo VITORIAS: %vit%
echo DERROTAS: %der%
if %vit% == 3 (
	echo.
	echo.
	echo ========================
	echo   VOCE VENCEU O JOGO
	echo ========================
	pause
	goto:inicio
)
pause
goto:comeco

:derrota
echo.
echo EMPATES: %emp%
echo VITORIAS: %vit%
echo DERROTAS: %der%
if %der% == 3 (
	echo.
	echo.
	echo ========================
	echo   VOCE PERDEU O JOGO
	echo ========================
	pause
	goto:inicio
)
pause
goto:comeco

:empate
echo EMPATES: %emp%
echo VITORIAS: %vit%
echo DERROTAS: %der%
if %emp% == 5 (
	echo.
	echo.
	echo ========================
	echo   OS DOIS PERDERAM
	echo ========================
	pause
	goto:inicio
)
pause
goto:comeco
