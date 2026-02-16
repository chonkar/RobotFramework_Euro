*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${time}    5 seconds
${username}    claimantqa@gmail.com
${password}    Camunda@123


*** Keywords ***
EnterUsernameAndPassword
    [arguments]        ${username}        ${password}
    Input Text    id:_r_6_    ${username}
    Input Text    id:_r_7_    ${password}
    Sleep    ${time}
    Click Button    LOGIN