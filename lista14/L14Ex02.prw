#INCLUDE 'TOTVS.CH'
#INCLUDE 'TBICONN.CH'

/*/{Protheus.doc} User Function Ex2L14
    Deve-se alterar o endere�o e o telefone do cliente.
    Obs: Se houver algum problema no processo,
    deve ser apresentada uma mensagem que indica onde est� o problema.
    @type  Function
    @author Matheus Pintor
    @since 19/05/2023
    /*/
User Function L14Ex02()
    local aDados    := {}
    local nOper     := 4  

    private lMsErroAuto := .F.

    PREPARE ENVIRONMENT EMPRESA '99' FILIAL '01' MODULO 'COM'

    aAdd(aDados, {'A1_COD'      , 'TESTE'          , NIL}) 
    aAdd(aDados, {'A1_END'      , 'TESTE DE RUA'  , NIL})
    aAdd(aDados, {'A1_DDD'      , '19'               , NIL})  
    aAdd(aDados, {'A1_TEL'      , '995236875'        , NIL})

    MsExecAuto({|x, y| CRMA980(x, y)}, aDados, nOper)

    if lMsErroAuto
        MostraErro()
    endif
Return
