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
	if %cp% == 1 (
		echo.
		echo Computador escolheu pedra
	) else if %cp% == 2 (
		echo.
		echo Computador escolheu papel
	) else if %cp% == 3 (
		echo.
		echo Computador escolheu tesoura
	) else if %cp% == 4 (
		echo.
		echo Computador escolheu lagarto
	) else if %cp% == 5 (
		echo.
		echo Computador escolheu spock
	)
	pause
	goto:partida
)


if %op% == 2 (
	echo %nm% escolheu papel
	if %cp% == 1 (
		echo.
		echo Computador escolheu pedra
	) else if %cp% == 2 (
		echo.
		echo Computador escolheu papel
	) else if %cp% == 3 (
		echo.
		echo Computador escolheu tesoura
	) else if %cp% == 4 (
		echo.
		echo Computador escolheu lagarto
	) else if %cp% == 5 (
		echo.
		echo Computador escolheu spock
	)
	pause
	goto:partida
)
if %op% == 3 (
	echo %nm% escolheu tesoura
	if %cp% == 1 (
		echo.
		echo Computador escolheu pedra
	) else if %cp% == 2 (
		echo.
		echo Computador escolheu papel
	) else if %cp% == 3 (
		echo.
		echo Computador escolheu tesoura
	) else if %cp% == 4 (
		echo.
		echo Computador escolheu lagarto
	) else if %cp% == 5 (
		echo.
		echo Computador escolheu spock
	)
	pause
	goto:partida
)
if %op% == 4 (
	echo %nm% escolheu lagarto
	if %cp% == 1 (
		echo.
		echo Computador escolheu pedra
	) else if %cp% == 2 (
		echo.
		echo Computador escolheu papel
	) else if %cp% == 3 (
		echo.
		echo Computador escolheu tesoura
	) else if %cp% == 4 (
		echo.
		echo Computador escolheu lagarto
	) else if %cp% == 5 (
		echo.
		echo Computador escolheu spock
	)
	pause
	goto:partida
)
if %op% == 5 (
	echo %nm% escolheu spock
	if %cp% == 1 (
		echo.
		echo Computador escolheu pedra
	) else if %cp% == 2 (
		echo.
		echo Computador escolheu papel
	) else if %cp% == 3 (
		echo.
		echo Computador escolheu tesoura
	) else if %cp% == 4 (
		echo.
		echo Computador escolheu lagarto
	) else if %cp% == 5 (
		echo.
		echo Computador escolheu spock
	)
	pause
	goto:partida
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

:partida
if %op% == %cp% (
set /a emp=%emp% + 1	
echo ===========================
echo           EMPATE
echo ===========================
goto:empate
) else if %op% == 1 (
	goto:doidera
) else if %op% == 2 (
	goto:locura
) else if %op% == 3 (
	goto:doido
) else if %op% == 4 (
	goto:louco
) else if %op% == 5 (
	goto:doidasso
) else (
	echo ===========================
	echo      numero invalido
	echo ===========================
)
pause
goto:inicio

:doidasso
if %cp% == 1 (
	echo ===========================
	echo         Ganhou
	echo ===========================
	set /a vit=%vit% + 1
	goto:vitoria
) else if %cp% == 2 (
	echo ===========================
	echo         Perdeu
	echo ===========================
	set /a der=%der% + 1
	goto:derrota
) else if %cp% == 3 (
	echo ===========================
	echo         Ganhou
	echo ===========================
	set /a vit=%vit% + 1
	goto:vitoria
) else if %cp% == 4 (
	echo ===========================
	echo         Perdeu
	echo ===========================
	set /a der=%der% + 1
	goto:derrota
)
pause
goto:comeco

:louco
if %cp% == 1 (
	echo ===========================
	echo         Perdeu
	echo ===========================
	set /a der=%der% + 1
	goto:derrota
) else if %cp% == 2 (
	echo ===========================
	echo         Ganhou
	echo ===========================
	set /a vit=%vit% + 1
	goto:vitoria
) else if %cp% == 3 (
	echo ===========================
	echo         Perdeu
	echo ===========================
	set /a der=%der% + 1
	goto:derrota
) else if %cp% == 5 (
	echo ===========================
	echo         Ganhou
	echo ===========================
	set /a vit=%vit% + 1
	goto:vitoria
)
pause
goto:comeco

:doido
if %cp% == 1 (
	echo ===========================
	echo         Perdeu
	echo ===========================
	set /a der=%der% + 1
	goto:derrota
) else if %cp% == 2 (
	echo ===========================
	echo         Ganhou
	echo ===========================
	set /a vit=%vit% + 1
	goto:vitoria
) else if %cp% == 4 (
	echo ===========================
	echo         Ganhou
	echo ===========================
	set /a vit=%vit% + 1
	goto:vitoria
) else if %cp% == 5 (
	echo ===========================
	echo         Perdeu
	echo ===========================
	set /a der=%der% + 1
	goto:derrota
)
pause
goto:comeco

:locura
if %cp% == 1 (
	echo ===========================
	echo         Ganhou
	echo ===========================
	set /a vit=%vit% + 1
	goto:vitoria
) else if %cp% == 3 (
	echo ===========================
	echo         Perdeu
	echo ===========================
	set /a der=%der% + 1
	goto:derrota
) else if %cp% == 4 (
	echo ===========================
	echo         Perdeu
	echo ===========================
	set /a der=%der% + 1
	goto:derrota
) else if %cp% == 5 (
	echo ===========================
	echo         Ganhou
	echo ===========================
	set /a vit=%vit% + 1
	goto:vitoria
)
pause
goto:comeco

:doidera
if %cp% == 2 (
	echo ===========================
	echo         Perdeu
	echo ===========================
	set /a der=%der% + 1
	goto:derrota
) else if %cp% == 3 (
	echo ===========================
	echo         Ganhou
	echo ===========================
	set /a vit=%vit% + 1
	goto:vitoria

) else if %cp% == 4 (
	echo ===========================
	echo         Ganhou
	echo ===========================
	set /a vit=%vit% + 1
	goto:vitoria
) else if %cp% == 5 (
	echo ===========================
	echo         Perdeu
	echo ===========================
	set /a der=%der% + 1
	goto:derrota
)
pause
goto:comeco

:regras
echo Pedra
echo 	Empata com vghmvhhvmvjvghjmvm
echo.
echo papel
echo 	empata guggyugkg
echo.
echo tesoura
echo 	empata guggyugkg
echo.
echo lagarto
echo 	empata guggyugkg
echo.
echo spock
echo 	empata guggyugkg
echo.
pause
goto:comeco

:vitoria 
echo.
echo EMPATES: %emp%
echo VITORIAS: %vit%
echo DERROTAS: %der%
if %vit% == 3 (
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
	echo ========================
	echo   OS DOIS PERDERAM
	echo ========================
	pause
	goto:inicio
)
pause
goto:comeco
