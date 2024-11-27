            #language: pt

            Funcionalidade: Realizar Login
            Como cliente da EBAC SHOP
            Quero fazer o login (autenticação) na plataforma
            Para visualizar meus pedidos

            Contexto:
            Dado que eu acesse a página de Login da EBAC SHOP

            Cenário: Autenticação válida
            Quando eu digitar o usuário "usuarioqueexiste@gmail.com"
            E a senha "senhaexistente66"
            Então deve exibir a tela de checkout

            Cenário: Autenticação inválida
            Quando eu digitar o usuário "usuarioquenaoexiste@gmail.com"
            E a senha "senhainexistente99"
            Então deve exibir mensagem de alerta: "Usuário ou senha inválidos"

            Cenário: Autenticação com e-mail inválido
            Quando eu digitar o usuário "usuarioquenaoexiste@gmail.com"
            E a senha "senhaexistente66"
            Então deve exibir mensagem de alerta "Usuário não encontrado"

            Cenário: Autenticação com senha inválida
            Quando eu digitar o usuário "usuarioqueexiste@gmail.com"
            E a senha "senhainexistente99"
            Então deve exibir mensagem de alerta: "Senha incorreta"

            Exemplos:
            | usuário                         | senha                | exibe    |
            | "usuarioqueexiste@gmail.com"    | "senhaexistente66"   | checkout |
            | "usuarioquenaoexiste@gmail.com" | "senhainexistente99" | alerta   |
            | "usuarioquenaoexiste@gmail.com" | "senhaexistente66"   | alerta   |
            | "usuarioqueexiste@gmail.com"    | "senhainexistente99" | alerta   |