#language: pt

Funcionalidade: Busca por repositorios
    Eu como programador cadastrado
    Quero buscar repositorios
    Para que eu possa encontrar meus projetos salvos

    Contexto:
        * Login com credenciais validas

    @happy
    Cenario: Buscar repositorio
        Dado que eu esteja na minha pagina inicial
        Quando eu fizer a busca por repositorio
        Entao eu verei o repositorio correto
        Mas nao verei outro repositorio

    @critical
    Esquema do Cenario: Tentativa de busca invalida
        Dado que eu esteja na minha pagina inicial
        Quando eu fizer a busca pelo repositorio: "<exemplo>"
        Entao eu nao verei nenhum resultado "<exemplo>"

        Exemplos:
            | exemplo    |
            | asdfgghjkl |
            | 0000       |


