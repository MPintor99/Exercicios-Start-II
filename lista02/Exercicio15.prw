// 15 - Fazer um programa para calcular e exibir os "n" primeiros n�meros da s�rie de Fibonacci.
// O usu�rio informar� o valor de n.

#INCLUDE "TOTVS.CH"

User Function L2Ex15()
    nNum   := 0

    //Aqui o usu�rio escolhe quantos n�meros ser�o gerados.
    nNum := FwInputBox('Digite quantos n�meros da s�rie Fibonacci quer ver: ')
        nNum:= val(nNum)

    CalcFib(nNum)

Return

//Fun��o que ir� realizar o c�lcul dos n�meros da s�rie de Fibonacci de acordo com a quantidade informada pelo usu�rio acima.
Static Function CalcFib(nNum)
    local nA    := 0
    local nB    := 1
    local nC    := 0
    local nCont := 1
    local aC    := {}
    local cShow := ""

    if nNum = 0
        FwAlertSuccess("Os n�meros da s�rie Fibonacci �: " + alltrim(Str(nA)))

    elseif  nNum = 1
        FwAlertSuccess("Os n�meros da s�rie Fibonacci �: " + alltrim(Str(nB)))
    
    else
        while (nCont < nNum)
            nC := nA + nB
            nA := nB
            nB := nC

            AADD(aC, nC)

            cShow += (' , ' + Alltrim(STR(aC[nCont])))

            nCont++ 
        enddo 
    endif


    FwAlertSuccess('Os n�meros da s�rie fibonacci s�o: 0 , 1' + cShow)

Return
