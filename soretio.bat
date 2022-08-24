@echo off
title Adivinhar numero - Atividade SI
mode 60, 30
color f1
:sorteio
set /a cont=5
set /a num=(%random% %%50) + 1
:inicio
cls
echo ===========================================
echo ADIVINHE UM NUMERO SORTEADO ENTRE: 01 E 50
echo ===========================================
echo      QUANTIDADE DE TENTATIVAS: %cont%
echo ===========================================
echo.
set /p ac=Tente adivinhar o numero:
if /i %ac% == %num% (goto:acertou) else if /i %ac% gtr 50  (
	echo ===========================
	echo    Numero invalido
	echo ===========================
	echo.
	pause
	goto:inicio
) else if /i %ac% lss 1 (
	echo ===========================
	echo    Numero invalido
	echo ===========================
	echo.
	pause
	goto:inicio
) else (goto:errou)

:acertou
echo ===========================
echo    PARABENS. VC ACERTOU!!
echo ===========================
echo.
set /p resp=Deseja jogar novamente?
if /i %resp% == s (goto:sorteio) else (exit)


:errou
if /i %ac% lss %num% (
	echo ==============================
	echo   OPS, DIGITE UM NUMERO MAIOR
	echo ==============================
) else (
	echo ==============================
	echo   OPS, DIGITE UM NUMERO MENOR
	echo ==============================
)
set /a cont=%cont% - 1
if /i %cont% == 0 (goto:perdeu)
pause
goto:inicio

:perdeu
echo.
echo.
echo ===============================
echo   POXA QUE PENA, VC PERDEU :(
echo ===============================
set /p resp=Quer jogar novamente?
if /i %resp% == s (goto:sorteio) else (exit)
