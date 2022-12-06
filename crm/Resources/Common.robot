*** Settings ***
Library     SeleniumLibrary


*** Variables ***
${BROWSER} =    Chrome
${URL} =       https://automationplayground.com/crm


*** Keywords ***
Begin Web Test
    Log             Starting the test case....
    Open Browser   about:blank      ${BROWSER}

End Web Test
    Close Browser