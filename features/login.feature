#language: pt

    Funcionalidade:login
      Para que eu possa acessar meu perfil no PEP mobile
      sendo um usuário cadastrado
      Posso me autenticar pela tela de login

      @login_happy
      Cenário: Usuário logado

        Dado que acesso a tela de login
        Quando eu faço login com  "teste@hsl.org.br"  e "123456"
        Então posso acessar minha conta
        
        
      @login_happiless
      Esquema de Cenário: Tentar logar

        Dado que acesso a tela de login
        Quando eu faço login com <email> e <senha>
        Então devo ver <mensagem> como popup
        
        
        Exemplos:

        | email            | senha |  mensagem    |
        |"teste@hsl.org.br"|234567 |"Suas credenciais não conferem ou houve uma falha no processo."|
        |eu@gmail.com      |234567 |"Suas credenciais não conferem ou houve uma falha no processo."|
        |""                |234567 |"Suas credenciais não conferem ou houve uma falha no processo."|
        |"teste@hsl.org.br"|""     |"Todos os campos são obrigatórios."                           |                                               |



       
