Feature: Calcular Triangulo
    Para usuario, deseja calcular o tipo de triangulo conforme preenchimento de valores em cada lado

Background:
Given que estou na pagina inicial de Calcular Triangulo

Scenario: Triangulo Equilátero
When eu informar o valor "3" no "lado 1"
And eu informar o valor "3" no "lado 2"
And eu informar o valor "3" no "lado 3"
Then deve apresentar mensagem de texto "Esse triângulo é do tipo: Equilátero"
And o texto "Equilátero" deve ser apresentado na cor "laranja"

Scenario: Triangulo Isósceles
When eu informar o valor "3" no "lado 1"
And eu informar o valor "3" no "lado 2"
And eu informar o valor "2" no "lado 3"
Then deve apresentar mensagem de texto "Esse triângulo é do tipo: Isósceles"
And o texto "Isósceles" deve ser apresentado na cor "azul"

Scenario:Triangulo Escaleno
When eu informar o valor "3" no "lado 1"
And eu informar o valor "2" no "lado 2"
And eu informar o valor "1" no "lado 3"
Then deve apresentar mensagem de texto "Esse triângulo é do tipo: Escaleno"
And o texto "Escaleno" deve ser apresentado na cor "verde"



Scenario: Não informou os valores
When eu não informo o valor no "lado 1"
And eu não informo o valor no "lado 2"
And eu não informo o valor no "lado 3"
Then o botão de calcular desabilitado até preencher os valores corretos

Scenario: Digitação de Letras
When eu tento informo o valor "A" em um dos "lados"
Then não permitir digitação

Scenario: Valores Menores ou Igual a Zero
When eu tento informo um valor "menor ou igual a zero" em um dos "lados"
Then não permitir digitação

Scenario: Alteração por letra
And os três lados estão preenchidos corretamente 
When eu tento alterar o conteúdo de algum lado por letras
Then não permitir essa alteração


Scenario: Alteração por Valor Menor ou igual a Zero
And os três lados estão preenchidos corretamente 
When eu tento alterar o conteúdo de algum lado por valor menor ou igual a zero
Then não permitir essa alteração