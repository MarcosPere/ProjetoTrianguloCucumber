When("I enter {string} in the {string} side", (size, side) => {
  cy.get("input[name=" + side + "]").type(size);
});

When("I do not enter a {string} in the {string} side", (size, side) => {
  cy.get("input[name=" + side + "]").clear(size);
});

When("I try to enter {string} in the {string} side", (size, side) => {
  cy.get("input[name=" + side + "]")
    .clear()
    .type(size);
});

When("I try to change {string} in the {string} side", (size, side) => {
  cy.get("input[name=" + side + "]")
    .clear()
    .type(size);
});

Then("the message {string} should be displayed", (message) => {
  cy.get("button").click();
  cy.get("p").should("have.text", message);
});

Then("the text {string} should be displayed correctly", (text) => {
  switch (text) {
    case "Escaleno":
      cy.get("h").should("have.text", " escaleno");
      cy.get("h").should("have.css", "color", "rgb(144, 238, 144)");
      break;
    case "Isósceles":
      cy.get("h").should("have.text", " isósceles");
      cy.get("h").should("have.css", "color", "rgb(0, 0, 255)");
      break;
    case "Equilátero":
      cy.get("h").should("have.text", " equilátero");
      cy.get("h").should("have.css", "color", "rgb(255, 165, 0)");
      break;
  }
});

Then(
  "the calculate button is disabled until the correct values are entered",
  () => {
    cy.get("button").should("be.disabled");
  }
);

Then("it is not allowed any letters or numbers in any side", () => {
   cy.get('input[name="first"]').should("have.value", "");
   cy.get('input[name="second"]').should("have.value", "");
   cy.get('input[name="third"]').should("have.value", "");
});
