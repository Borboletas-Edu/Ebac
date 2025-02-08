            # language: pt

            Funcionalidade: Checkout

            Como cliente da EBAC-SHOP
            Quero concluir meu cadastro
            Para finalizar minha compra

            Critérios de Aceitação:
            1 – Deve ser cadastrado com todos os dados obrigatórios, marcado com asteriscos.
            2 – Não deve permitir campo e-mail com formato inválido. Sistema deve inserir uma mensagem de erro.
            3 – Ao tentar cadastrar com campos vazios, deve exibir mensagem de alerta.

            Contexto:
            Dado que eu esteja na tela de checkout

            Esquema do Cenário: Validação de campos obrigatórios durante cadastro
            Quando eu preencher os campos: <Nome>, <Sobrenome>, <Pais>, <Endereco>, <Cidade>, <CEP> e <Telefone>
            Então deve aparecer a seguinte mensagem: <mensagem>

            Exemplos:
            | Nome    | Sobrenome | País   | Endereço                | Cidade    | CEP      | Telefone      | Endereço de email        | mensagem                         |
            | Eduardo | Araujo    | Brasil | Rua da consolação, 1234 | São Paulo | 05527890 | 012 345678911 | Eduardo.ebac@ebac.com.br | Cadastro realizado com sucesso!  |
            |         | Araujo    | Brasil | Rua da consolação, 1234 | São Paulo | 05527890 | 012 345678911 | Eduardo.ebac@ebac.com.br | Nome é obrigatório!              |
            | Eduardo |           | Brasil | Rua da consolação, 1234 | São Paulo | 05527890 | 012 345678911 | Eduardo.ebac@ebac.com.br | Sobrenome é obrigatório!         |
            | Eduardo | Araujo    |        | Rua da consolação, 1234 | São Paulo | 05527890 | 012 345678911 | Eduardo.ebac@ebac.com.br | País é obrigatório!              |
            | Eduardo | Araujo    | Brasil |                         | São Paulo | 05527890 | 012 345678911 | Eduardo.ebac@ebac.com.br | Endereço é obrigatório!          |
            | Eduardo | Araujo    | Brasil | Rua da consolação, 1234 |           | 05527890 | 012 345678911 | Eduardo.ebac@ebac.com.br | Cidade é obrigatória!            |
            | Eduardo | Araujo    | Brasil | Rua da consolação, 1234 | São Paulo |          | 012 345678911 | Eduardo.ebac@ebac.com.br | CEP é obrigatório!               |
            | Eduardo | Araujo    | Brasil | Rua da consolação, 1234 | São Paulo | 05527890 |               | Eduardo.ebac@ebac.com.br | Telefone é obrigatório!          |
            | Eduardo | Araujo    | Brasil | Rua da consolação, 1234 | São Paulo | 05527890 | 012 345678911 |                          | Endereço de email é obrigatório! |





            Esquema do Cenário: formato de email inválido
            Quando eu utilizar um formato diferente de: 'email@gmail.com.br', 'email@yahoo.com.br' ou 'email@hotmail.com.br' no campo <Endereco de email>
            Então deve exibir uma mensagem de erro: <mensagem>

            Exemplos:
            | Endereco de email   | mensagem                                |
            | eduardo@ebac.com.br | Formato de email inválido! tente outro. |

