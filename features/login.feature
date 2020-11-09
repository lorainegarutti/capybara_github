#language: pt

Funcionalidade: Login de usuarios
    Eu como programador cadastrado
    Quero fazer login no site
    Para que eu possa fazer o upload dos meus projetos

    @smoke
    Cenario: Login
        Dado que eu acesse a pagina de login
        Quando eu submeter o login com username e senha
        Entao serei redirecionada para minha pagina inicial

    @critical
    Esquema do Cenario: Tentativa de login
        Dado que eu acesse a pagina de login
        Quando eu submeter o login com:
            | username | <username> |
            | senha    | <senha>    |
        Entao devo ver um aviso "Incorrect username or password."

        Exemplos:
            | username       | senha      |
            |                | abcde      |
            | amandanogueira |            |
            | amandanogueira | abcde      |
            |                |            |

    @technical
    Cenario: Validacao segredo da senha
        Quando eu acesse a pagina de login
        Entao deve exibir o seguinte css selector: "input[type=password]"