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
            Então deve exibir uma mensagem de checkout

            Cenário: Autenticação inválida
            Quando eu digitar o usuário "usuarioquenaoexiste@gmail.com"
            E a senha "senhainexistente99"
            Então deve exibir mensagem de alerta: "Usuário ou senha inválidos"

            Cenário: Autenticação com senha inválida
            Quando eu digitar o usuário "usuarioqueexiste@gmail.com"
            E a senha "senhainexistente99"
            Então deve exibir mensagem de alerta: "Senha incorreta"

            Esquema do Cenário: Autenticação válida
            Quando eu digitar o usuário <usuario>
            E a senha <senha>
            Então deve exibir uma <mensagem> de checkout

            Exemplos:
            | usuário                         | senha                | mensagem  |
            | "usuarioqueexiste@gmail.com"    | "senhaexistente66"   | checkout  |
            | "usuarioquenaoexiste@gmail.com" | "senhainexistente99" | alerta    |
            | "usuarioqueexiste@gmail.com"    | "senhainexistente99" | alerta    |