//: [Previous](@previous)

/*
Numa empresa, chamada Ogitrov Analog, os dados dos colaboradores são gerenciados por meio de um sistema orientado a objetos.

Todos os colaboradores possuem uma classe base com alguns dados comuns que todos possuem, como:

Nome
Data de Nascimento
E-mail
Endereço
O endereço é uma classe que possui:

Rua

Número

Complemento (opcional)

Bairro

Cidade

UF

CEP

description

description é uma propriedade especial, que descreve como deve imprimir um objeto da classe quando este é parametro da função print. Na description deve retornar o endereço completo, com a junção de todas as informaçoes que estão separadas. Pesquise no google como utilizá-lo, dúvidas nos procurem, mas primeiro tentem.

O UF deve ser um enum que possui como opção todas as unidades federativas do Brasil.

Já o e-mail é uma lista de objetos de uma classe Email, esta possui:

Endereço
Tipo
O tipo é um enum, e pode possuir os seguintes valores:

Pessoal
Profissional
Ou seja, são cadastrados todos os e-mails profissionais que o colaborador possui, assim como ao menos um e-mail pessoal (para comunicações que precisam ser feitas com ele fora do vínculo empregatício).

Os colaboradores são classificados conforme seu modelo de contratação, todos modelos são subclasses da classe base acima.

Existe uma subclasse para os estagiários, ela possui:

Data de contratação
Data final do contrato
Valor da Bolsa
Chave pix para depósito
 
Para os colaboradores CLT há uma outra subclasse, que possui:

Data de contratação
Cargo
Salário
Agência conta salário
Número da conta salário
Já para os que são PJ os dados são:

Data de contrataçao
Data final do contrato
Valor da hora
Quantidade de horas mínimas mensal acordada
Chave pix para depósito
Por fim existe a classe da própria empresa Ogitrov Analog, essa classe deve possuir as seguintes propiedades/atributos:

Estagiários
CLT's
PJ's
Todos esses atributos são listas contendo objetos do tipo correspondente.

Além dessas propiedades essa classe deve possuir um método para calcular o custo mensal da folha, que será a soma da bolsa de todos os estagiários, o salário de todos os CLT's e o custo de todos os colaboradores PJ (valor hora x quantidade minima de horas acordadas por mes).

02
A empresa Ogitrov Analog gera a maior parte de sua receita por meio de projetos de desenvolvimento de software. Ela gerencia seus projetos pelo mesmo sistema orientado a objetos descrito na questão anterior.

Esse gerenciamento ocorre por uma classe que contém os dados dos projetos. Dados como:

Nome do projeto
Colaboradores CLT atuando no projeto
Colaboradores PJ atuando no projeto
Estagiários atuando no projeto
Valor bruto que a empresa recebe pelo projeto mensalmente
Além desses dados possui um método para calcular o valor líquido do projeto, que é a subtraçao do valor bruto recebido pelo custo do valor pago aos integrantes atuando no projeto.

Dentro da classe da Ogitrov Analog deve existir um novo método, que faz o cálculo do lucro mensal dela. O lucro se dá pelo valor bruto recebido pelos projetos menos o custo da folha de pagamento mensal dos funcionários.
*/
//: [Next](@next)
