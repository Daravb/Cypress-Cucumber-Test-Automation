/// <reference types = "cypress"/>
import { When, Then} from "@badeball/cypress-cucumber-preprocessor";

When ("I enter valid firstname", () => {
    cy.get('[name="first_name"]').type("Andrew");
})

When ("I enter valid lastname", () => {
    cy.get('[name="last_name"]').type("Joe");
})

When ("I enter valid email address", () => {
    cy.get('[name="email"]').type("andrewjoe1@yahoo.com");
})

When ("I enter valid comment", () => {
    cy.get('textarea[name="message"]').type("First Try!");
})

When ("I click Submit button", () => {
    cy.get('[type="submit"]').click();
})

Then ("I am navigated to Success Contact Us submission page", () => {
    cy.get('h1').should("have.text", "Thank You for your Message!");
})

Then ("I am navigated to Unsuccess Contact Us submission page", () => {
    cy.get('body').contains("Error: Invalid email address");
})

When ("I enter valid firstname {string}", (firstName) => {
    cy.get('[name="first_name"]').type(firstName);
})

When ("I enter valid lastname {string}", (lastName) => {
    cy.get('[name="last_name"]').type(lastName);
})

When ("I enter valid email address {string}", (email) => {
    cy.get('[name="email"]').type(email);
})

When ("I enter valid comment {string} and {int} in the comment box" , (comment, number) => {
    cy.get('textarea[name="message"]').type(comment + number);
})

When ("I enter first name {string} and last name {word}", (firstName, lastName) => {
    cy.get('[name="first_name"]').type(firstName);
    cy.get('[name="last_name"]').type(lastName);
})

When ("I enter email address {string} and comment {string}", (email, comment) => {
    cy.get('[name="email"]').type(email);
    cy.get('textarea[name="message"]').type(comment);
})

Then ("I am navigated to Contact Us Submission page {string}", (message) => {
    cy.xpath("//h1 | //body").contains(message);
})


