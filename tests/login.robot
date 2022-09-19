*** Settings ***
Library     SeleniumLibrary
Test Teardown    Close All Browsers

*** Variables ***

${Password}     admin
${Browser}      Firefox
${Submit}       class:login-button
${E-mail}       admin@yourstore.com
${Url}          https://admin-demo.nopcommerce.com/

*** Test cases ***

Simple login
    Open Browser and go to url
    Enter credential
    Click submit

*** Keywords ***

Open browser and go to url
    Open Browser    ${Url}
    Maximize Browser Window

Enter credential
    Input Credentials    ${E-mail}    ${Password}

Input Credentials
    [Arguments]    ${username}    ${password}
    Input Text      id=Email      ${username}
    Input Text      id=Password    ${password}

Click submit
    Click Element     ${Submit}
