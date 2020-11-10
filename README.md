## O que é?
Projeto de automatização de login e busca por repositórios aqui do Github, utilizando BDD com Cucumber e Capybara.

## Como rodar no meu computador?
### Passo 1
Fazer o clone do repositório na sua máquina


### Passo 2
Instalar as dependências

```bash
bundle install
```


### Passo 3
Criar o arquivo features/support/helper.rb e <b>modificar as variáveis sensíveis <seu_username> <sua_senha> <seu_repositorio_existente_na_busca> <seu_repositorio_inexistente_na_busca></b>

```bash
class Login
  def initialize
    @username = "seu_username"
    @senha = "sua_senha"
  end

  def username
    @username
  end

  def senha
    @senha
  end
end

class Repositories
  def initialize
    @repo_correct = "seu_repositorio_existente_na_busca"
    @repo_incorrect = "seu_repositorio_inexistente_na_busca"
  end

  def repo_correct
    @repo_correct
  end

  def repo_incorrect
    @repo_incorrect
  end
end
```


### Passo 4
Na linha de comando, rodar o cucumber e as tags desejadas. O relatório gerá gerado automaticamente de forma local na pasta /reports/.
Caso o teste falhe, um screenshot será tirado e salvo na pasta /screenshots/
<i>Você pode encontrar as tags dentro das features na pasta features/ (os arquivos com ".feature")</i>

Por exemplo, para rodar a tag smoke, no terminal:

```bash
cucumber -t @smoke
```