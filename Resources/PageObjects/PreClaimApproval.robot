*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${time}    5 seconds

*** Keywords ***
RegisterPre-ClaimApproval
    Sleep    ${time}
    Input Text    id:_r_a_    John Doe
    Select From List By Value    id:_r_b_    Self
    Input Text    id:_r_c_    1321323
