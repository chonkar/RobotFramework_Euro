*** Settings ***
Resource        ../Resources/resource.robot
Resource        ../Resources/claim_UserDefinedKeywords.robot
Resource        ../Resources/PageObjects/Loginpage.robot
Resource        ../Resources/PageObjects/landingPage.robot
Resource        ../Resources/PageObjects/PreClaimApproval.robot

Test Setup       Login To Application
Test Teardown    Finish TestCase

*** Variables ***
${username}    claimantqa@gmail.com
${password}    Camunda@123

*** Keywords ***
Login To Application
    OpenTheBrowser
    MaximizeBrowserWindow
    ClickPreClaimAuthorization
    EnterUsernameAndPassword        ${username}        ${password}

Finish TestCase
    Close Browser

*** Test Cases ***
AaseyaClaims
    RegisterPre-ClaimApproval
