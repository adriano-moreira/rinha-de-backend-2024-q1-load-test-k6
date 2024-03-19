#/bin/bash

set -ex

./k6.sh run src/validacoes/concorentes-d.js
./k6.sh run src/validacoes/concorentes-c.js
./k6.sh run src/validacoes/criterios-clientes.js
./k6.sh run src/validacoes/criterio-cliente-nao-encontrado.js