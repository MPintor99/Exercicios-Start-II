// 18 � Desenvolva uma rotina que permita realizar
// cadastros de cursos.

#INCLUDE 'TOTVS.CH'

User Function CadZZCur()

    Local cAlias := 'ZZC', cTitulo := 'Cadastro de Cursos '

    DbSelectArea(cAlias)
    DbSetOrder(1)
    AxCadastro(cAlias, cTitulo, .F., NIL)

Return
