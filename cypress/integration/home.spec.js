// Home Page - Cypress testing

describe('jungle home page', () => {
  
  // visit the home page.
  it('should visit the home page', () => {
    cy.visit('/');
  });

  // Check that products are on the home page
  it("checks that there is products on the page", () => {
    cy.get(".products article").should("have.length", 2);
  });


});