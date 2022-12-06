*** Settings ***
Library     SeleniumLibrary


*** Variables ***
${SIGNIN_HEADER_LABEL} =        Login
${SIGNIN_EMAIL_TEXTBOX} =       id=email-id
${SIGNIN_PASSWORD_TEXTBOX} =    id=password
${SIGNIN_SUBMIT_BUTTON} =       id=submit-id


*** Keywords ***
Verify Page Loaded
    Wait Until Page Contains       ${SIGNIN_HEADER_LABEL}
Login With Valid Credentials
    [Arguments]    ${Email}        ${Password}
    Fill "Email" Field              ${Email}
    Fill "Password" Field           ${Password}
    Click "Submit" Button

Fill "Email" Field
    [Arguments]         ${Email}

    Input Text          ${SIGNIN_EMAIL_TEXTBOX}         ${Email}



Fill "Password" Field
    [Arguments]                 ${Password}
    Input Text                  ${SIGNIN_PASSWORD_TEXTBOX}       ${Password}


Click "Submit" Button
        Click Button            ${SIGNIN_SUBMIT_BUTTON}