*** Settings ***
Library     SeleniumLibrary


*** Variables ***
${ADDCUSTOMER_HEADER_LABEL} =           Add Customer
${ADDCUSTOMER_SUBMIT_BUTTON} =          Submit
${ADDCUSTOMER_EMAIL_TEXTBOX} =          id=EmailAddress
${ADDCUSTOMER_FIRST_NAME_TEXTBOX} =     id=FirstName
${ADDCUSTOMER_LAST_NAME_TEXTBOX} =      id=LastName
${ADDCUSTOMER_CITY_TEXTBOX} =           id=City
${ADDCUSTOMER_STATE_DROPDOWN} =         id=StateOrRegion
${ADDCUSTOMER_GENDER_RADIO} =           gender
${ADDCUSTOMER_PROMOS_CHECKBOX} =        name=promos-name


*** Keywords ***
Verify Page Loaded
    Wait Until Page Contains        ${ADDCUSTOMER_HEADER_LABEL}

Add New Customer
    Fill Customer Fields
    Click Submit Button

Fill Customer Fields
        Input Text     ${ADDCUSTOMER_EMAIL_TEXTBOX}      janedoe@gmail.com
        Input Text     ${ADDCUSTOMER_FIRST_NAME_TEXTBOX}      Jane
        Input Text     ${ADDCUSTOMER_LAST_NAME_TEXTBOX}       Doe
        Input Text     ${ADDCUSTOMER_CITY_TEXTBOX}           Dallas
        Select From List By Value   ${ADDCUSTOMER_STATE_DROPDOWN}   TX
        Select Radio Button         ${ADDCUSTOMER_GENDER_RADIO}     female
        Select Checkbox            ${ADDCUSTOMER_PROMOS_CHECKBOX}

Click Submit Button
        Click Button            ${ADDCUSTOMER_SUBMIT_BUTTON}