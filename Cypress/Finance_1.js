



describe("Log in", function(){
    it("Sing in", function(){
       cy.visit("https://fabrique:fabrique@finance.dev.fabrique.studio/accounts/login/")
       cy.get('input[type = "email"]').type('admin@admin.ad')
       cy.get('input[type = "password"]').type('admin')
       cy.get('.button__content').click()
        
    })
})