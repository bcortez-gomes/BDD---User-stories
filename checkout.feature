            #language: pt

            Funcionalidade: Checkout da Tela de Cadastro
            Como cliente da EBAC-SHOP
            Quero fazer concluir meu cadastro
            Para finalizar minha compra

            Contexto:
            Dado que eu acesse o meu Cadastro

            Cenário: E-mail inválido preenchido
            Quando eu acessar o Checkout
            E preencher um e-mail "emailinvalido@gmail.br"
            Então deve exibir uma mensagem de alerta: "E-mail inválido"

            Cenário: Cumpra todos os requisitos(astericos)
            Quando eu acessar o Checkout
            E não preencher os dados "opcionais"
            Então deve exibir uma mensagem de alerta: "Há alguns dados em branco, deseja prosseguir?"

            Esquema do Cenário: Cumpra todos os requisitos(astericos)
            Quando eu acessar o Checkout
            E preencher todos os campos de dados <obrigatorios> e <opcionais>
            Então deve aparecer uma <mensagem> finalizando a compra

            Exemplo
            | obrigatórios | opcionnais | Mensagem  |
            | válido       | válido     | compra    |
            | inválido     | null       | alerta    |
            | null         | válido     | alerta    |
            | válido       | null       | alerta    |