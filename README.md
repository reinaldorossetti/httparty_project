# Projeto usando o Httparty e Cucumber.

A configuração (importe das gems) está dentro do **suport/env.rb** e a instância do Httparty está dentro do módulo Http, com isso eu elimino muito código desnecessário.

A Classe GlobalPage contém todas as função que é comum no projeto, assim não é repetida as mesmas no steps_definitions.

Pra usar as funções globais é somente chamar $GlobalPage, ela é instanciada somente uma vez no env.rb.

# PASSO A PASSO

**1 - Faça um clone no projeto no seu PC.**

git clone https://github.com/reinaldorossetti/httparty_project.git

**2 - Passo de entre na pasta do projeto**

cd httparty_project/tests

**3 - Passo instale as dependências**

bundle install

** Precisa instalar a gem, comando "gem install bundle", sem aspas duplas.

**4 - Passo Acesse esse link para saber mais sobre como configurar a api:**

https://github.com/thiagomarquessp/httpartyforall/blob/master/Fake_api.md

**5- Passo rode o nosso projeto, abrar o terminal em tests e envie o comando abaixo:**

cucumber 

ou

bundle exec cucumber


**Linux:**

1. Baixar o nodejs para linux, através do comando abaixo:
url -sL https://deb.nodesource.com/setup_6.x | sudo -E bash -

2. Enviar o comando nodejs no linux:
sudo apt-get install jq nodejs curl -qy

3. Realizar a instalação da API no nodejs:
npm install -g json-server

**Mac:**

1. Baixar o npm , através do comando abaixo:
brew install npm

2. Realizar a instalação da API no nodejs:
npm install -g json-server

**Windows:**

1. Instalar o nodejs para o windows.
link: https://nodejs.org/en/download/

2. Realizar a instalação da API no nodejs:
npm install -g json-server


### Iniciar o Servidor, primeiro devemos entrar dentro do nosso projeto.
cd nome_do_projeto
### Agora só mandar o comando que vai iniciar o server json com os dados.
json-server --watch lib/app.json


{
  "clientes": [
    {
      "nome": "Glenna Schneider",
      "cpf": "86930618446",
      "endereco": "Dathomir",
      "usuario": "Blastoise",
      "senha": "inicial5458",
      "id": 1
    }
  ]
}

Versão 2.0, fork da primeira versão do Bruno:
https://github.com/brunobatista25/test_api_httparty_cucumber
