A sample command-line application with an entrypoint in `bin/`, library code
in `lib/`, and example unit test in `test/`.
------------------------------------------------------------------------------------------------------------------------------------------
## Executar o app, duas formas:
# 1 forma
dart bin\backend.dart

# 2 forma
em debug => create a launch.json file => no arquivo launch.json adicionar:
"program": "bin/backend.dart"
assim o F5 estará habilitado
------------------------------------------------------------------------------------------------------------------------------------------
## Liberar porta do windows
netstat -ano | findstr <PORTA>
netstat -ano | findstr 4469

taskkill /PID <PORTA> /F
taskkill /PID 17180 /F

-------------------------------------------------------------------------------------------------------------------------------------------
## Aula sobre o Prisma
https://www.youtube.com/watch?v=hEq1gldqbMU
https://www.prisma.io/docs/reference/api-reference/command-reference
https://www.prisma.io/docs/concepts/components/prisma-schema/data-model

instalar Prisma => npm install -g prisma

# Comandos:
prisma db -h [ help ]
prisma db push [ subir a base de dados ]


1 - raiz criar uma pasta chamada prisma e dentro dela criar um arquivo schema.prisma
2 - no VS Code pode-se instalar a extensão Prisma para facilitar
3 - criar as definições de conexão, tabelas e etc
4 - prisma generator
5 - no arquivo .env, para criar uma base de dados nova, deve-se colocar u, '/<nome-da-base-de-dados>'
6 - se adicionar um novo campo na tabela, pode-se dar o prisma db push para subir esse novo campo, exemplo 
    o campo role que foi adicionado depois.

-------------------------------------------------------------------------------------------------------------------------------------------