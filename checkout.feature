            #language: pt

            Funcionalidade: Checkout da Tela de Cadastro
            Como cliente da EBAC-SHOP
            Quero fazer concluir meu cadastro
            Para finalizar minha compra

            Contexto:
            Dado que eu acesse o meu Cadastro

            Cenário: Cumpra todos os requisitos(astericos)
            Quando eu acessar o Checkout
            E preencher todos os campos de dados <obrigatorio> e <opcionais>
            Então deve finalizar a compra

            Cenário: E-mail inválido preenchido
            Quando eu acessar o Checkout
            E preencher um <e-mail> = inválido
            Então deve exibir uma mensagem de alerta: "E-mail inválido"

            Cenário: Cumpra todos os requisitos(astericos)
            Quando eu acessar o Checkout
            E não preencher os dados <opcionais>
            Então deve exibir uma mensagem de alerta: "Há alguns dados em branco, deseja prosseguir?"


            Exemplo
            | Campos obrigatórios | Campos Opcionnais | Exibe  |
            | válido              | válido            | compra |
            | inválido            | null              | alerta |
            | válido              | null              | alerta |