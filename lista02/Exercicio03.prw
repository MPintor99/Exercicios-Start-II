// 3 � Alterar o programa do exerc�cio anterior de modo que ele possa ser usado em ve�culos com
// padr�o de consumo diferente de 12 Km por litro.

#INCLUDE 'TOTVS.CH'

User Function L2Ex03()
    nLitros     := 0
    nTempo      := 0
    nVelMed     := 0
    nDistancia  := 0
    nKmLitro    := 0

    //Aqui coletamos as informa��es fornecidas pelo usu�rio
    nKmLitro := FwInputBox('Digite quantos km por litro o seu carro faz: ')
        nKmLitro := val(nKmLitro)

    nTempo := FwInputBox('Digite o tempo gasto na viagem (h): ')
        nTempo := val(nTempo)

    nVelMed := FwInputBox('Digite a velocidade media durante a viagem (km/h): ')
        nVelMed := val(nVelMed)

    //C�lculos para descobrir a dist�ncia e a quantidade de combust�vel gasto
    nDistancia := nTempo * nVelMed

    nLitros := nDistancia / nKmLitro

    FwAlertSuccess('Velocidade M�dia:  ' + alltrim(Str(nVelMed)) +  ' km/h ' + CRLF + 'Tempo Gasto na Viagem: ' + alltrim(Str(nTempo)) + ' h ' + CRLF + 'Dist�ncia Percorrida: '  + alltrim(Str(nDistancia)) + 'km ' + CRLF + 'Quantidade de Litros Gastos na Viagem:  ' + alltrim(Str(nLitros, 18, 2)) + 'L ' , 'Resumo da Viagem')

Return
