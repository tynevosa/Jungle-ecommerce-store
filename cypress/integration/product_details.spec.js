// Product Page - Cypress testing

describe('jungle product page', () => {
  
  // visit the home page.
  it('should visit the home page', () => {
    cy.visit('/');
  });

  // find a unique product article and click on it
  it("finds the first product on the page", () => {
    cy.get(".products article").first().click();
  });

  // establish that we are on the product details page
  // by finding a piece of information unique to that page.
  it("validates that you are on the product details (show) page", () => {
    cy.get('[data-cy="product-name"]').should('have.text', 'Scented Blade');
  });
});