Given(/^que estou na pagina inicial de Calcular Triangulo$/, () => {
  cy.visit("/");
});

When(/^eu informar o valor "([^"]*)" no "([^"]*)"$/, (numero1, lado1) => {
  cy.get('')
});

When(/^eu informar o valor "([^"]*)" no "([^"]*)"$/, (numero2, lado2) => {
  cy.get('')
});

When(/^eu informar o valor "([^"]*)" no "([^"]*)"$/, (numero3, lado3) => {
  cy.get('')
});

Then(/^deve apresentar mensagem de texto "([^"]*)"$/, (args1) => {
  console.log(args1);
  return true;
});

Then(
  /^o texto "([^"]*)" deve ser apresentado na cor "([^"]*)"$/,
  (args1, args2) => {
    console.log(args1, args2);
    return true;
  }
);

When(/^eu informar o valor "([^"]*)" no "([^"]*)"$/, (args1,args2) => {
	console.log(args1,args2);
	return true;
});

When(/^eu informar o valor "([^"]*)" no "([^"]*)"$/, (args1,args2) => {
	console.log(args1,args2);
	return true;
});

When(/^eu informar o valor "([^"]*)" no "([^"]*)"$/, (args1,args2) => {
	console.log(args1,args2);
	return true;
});

Then(/^deve apresentar mensagem de texto "([^"]*)"$/, (args1) => {
	console.log(args1);
	return true;
});

Then(/^o texto "([^"]*)" deve ser apresentado na cor "([^"]*)"$/, (args1,args2) => {
	console.log(args1,args2);
	return true;
});
