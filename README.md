# Projeto usando o Httparty e Cucumber.

Linux:

1. Baixar o nodejs para linux, através do comando abaixo:
url -sL https://deb.nodesource.com/setup_6.x | sudo -E bash -

2. Enviar o comando nodejs no linux:
sudo apt-get install jq nodejs curl -qy

3. Realizar a instalação da API no nodejs:
npm install -g json-server

Mac:
1. Baixar o npm , através do comando abaixo:
brew install npm

2. Realizar a instalação da API no nodejs:
npm install -g json-server

Windows:

1. Instalar o nodejs para o windows.
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