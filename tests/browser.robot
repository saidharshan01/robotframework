*** Settings ***

Library    SeleniumLibrary
Suite Teardown       Close All Browsers

*** Test Cases ***
#Simple test case
    [tags]          Login HRM
    Open Browser    https://opensource-demo.orangehrmlive.com/index.php/auth/login    Firefox
    Click Element    id=txtUsername
    Input Text       id=txtUsername     Admin
    Click Element    id=txtPassword
    Input Text       id=txtPassword     admin123
#    Sleep    2
    Click Button    id=btnLogin
 #   Sleep           5
    Close browser

Simple for loop
    FOR     ${i}    IN      @{products}
    Open Browser    https://www.google.com    Firefox
    Wait Until Element Is Visible    xpath=/html/body/div[1]/div[3]/form/div[1]/div[1]/div[1]/div/div[2]/input
    Click Element    xpath=/html/body/div[1]/div[3]/form/div[1]/div[1]/div[1]/div/div[2]/input
    Input Text    xpath=/html/body/div[1]/div[3]/form/div[1]/div[1]/div[1]/div/div[2]/input   ${i}
  #  Sleep   2
    Exit For Loop If   '${i}' == 'bucket'
    END

#Connect
 #   open browser
  #  Open
   # Input Credentials
    #Submit

***Variables***
#${Url}      https://admin-demo.nopcommerce.com/
#${Browser}      Firefox
#${username}      admin@yourstore.com
#${password}     admin
@{products}   shampoo     soap       bucket       body lotion


