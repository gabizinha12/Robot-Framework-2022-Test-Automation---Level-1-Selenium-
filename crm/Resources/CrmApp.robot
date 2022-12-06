*** Settings ***
Resource        ../Resources/PO/AddCustomer.robot
Resource        ../Resources/PO/Customers.robot
Resource        ../Resources/PO/Home.robot
Resource        ../Resources/PO/LoggedOut.robot
Resource        ../Resources/PO/SignIn.robot
Resource        ../Resources/PO/TopNav.robot

*** Variables ***



*** Keywords ***
Go to "Home" Page
       Home.Navigate To
Login With Valid Credentials
     [Arguments]    ${Email}        ${Password}
     TopNav.Click "Sign In" Link
     SignIn.Verify Page Loaded
     SignIn.Login With Valid Credentials            ${Email}        ${Password}
     Customers.Verify Page Loaded

Add New Customer
    Customers.Click Add Customer Link
    AddCustomer.Verify Page Loaded
    AddCustomer.Add New Customer
    AddCustomer.Fill Customer Fields
    AddCustomer.Click Submit Button
    Customers.Verify Customer Added Successfully