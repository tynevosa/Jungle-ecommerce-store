// Home Page - Cypress testing
// import cy from 'cypress';

describe('jungle home page', () => {
  
  //run this before starting each test.
  it('should visit the home page', () => {
    cy.visit('/');
  });

  // Check that products are on the home page
  it("checks that there is products on the page", () => {
    cy.get(".products article").should("have.length", 2);
  });


});