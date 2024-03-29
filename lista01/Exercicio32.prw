// 32 - Fa�a um algoritmo para ler dois arrays
// aArray1 e aArray2 de 15 n�meros cada. Calcular e
// escrever a quantidade de vezes que aArray1 e
// aArray2 possuem os mesmos n�meros e nas mesmas
// posi��es.

#INCLUDE 'TOTVS.CH'

User Function Ex032()

    local aArray1   := {}
    local aArray2   := {}
    local nI        := 0
    local nNum     := 0
    local cPosScan  := ''
    local nJ        := 0

    
    For nI := 1 to 15
        nNum := Val(FwInputBox('Digite o n�mero para o primeiro array: ' + cvaltochar(nI) + '/15'))
        aAdd(aArray1, nNum)
    next
    
    For nI := 1 to 15
        nNum := Val(FwInputBox('Digite o n�mero para o segundo array: ' + cvaltochar(nI) + '/15'))
        aAdd(aArray2, nNum)
    Next

    For nI := 1 to 15
        
        if (aArray1[nI]) == (aArray2[nI])
                cPosScan += cvaltochar(nI) + ' ; '
                nJ++
        endif
    Next

    if nJ > 0
        FwAlertInfo('Os arrays possuem n�meros iguais nas posi��es:' + cPosScan)
    else
        FwAlertError('N�o existem n�meros em posi��es iguais entre os arrays.')
    endif 
Return
