// Add To Cart - Cypress testing

describe('jungle add to cart', () => {
  
  // visit the home page.
  it('should visit the home page', () => {
    cy.visit('/');
  });

  // Verify that the cart has 0 products in it.
  it("checks that the cart has 0 products", () => {
    cy.get('[data-cy="cart"]').should('contain.text', 'My Cart (0)');
  });

  // find the first product article and click on it's add to cart button
  it("finds the first product on the home page and clicks the add to cart button", () => {
    cy.get('[data-cy="add-to-cart"]').first().click({force: true});
  });

  // Verify that the cart now has 1 product in it.
  it("checks that the cart has 1 product", () => {
    cy.get('[data-cy="cart"]').should('contain.text', 'My Cart (1)');
  });
});