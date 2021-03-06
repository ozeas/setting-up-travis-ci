Configurando o travis ci no github.

[![Build Status](https://travis-ci.org/ozeas/setting-up-travis-ci.svg?branch=master)](https://travis-ci.org/ozeas/setting-up-travis-ci)

A configuração do travis ci no github é bastante simples, basicamente você precisa executar as seguintes configurações:

 1. Vincular sua conta do github no [travis ci](https://travis-ci.org/)
 2. Habilitar o projeto dentro do travis ci
 3. Adicionar configuração do travis no projeto
 
 Vincular sua conta do github no travis é bastante simples, na página principal do travis, basta vincular conta.

Logado na conta, vá no menu de configuração do usuário e habilite os projetos.

Para configurar o travis no projeto execute as seguintes configurações:

    $ touch .travis.yml

Edite o arquivo travis.yml e aplique as configurações, olhe a documentação para mais detalhes, nesse caso a linguagem base do projeto, cache e script para as tarefas:

    language: ​node_js
    node_js:
    - '10.15'

    cache:
    yarn: true
    directores:
        - node_modules

    script:
    - make pre-commit

No caso de um projeto `node_js` pode-se criar o arquivo `.nvmrc` com a versão do node.

Não esqueça de ter o comando de test configurado no `package.json` e uma Makefile com o comando `test` configurado.

Agora suas submissões para o github passará pela análise do travis ci, e seus PRs precisarão que todos os testes passem para que seja mergeado na master.