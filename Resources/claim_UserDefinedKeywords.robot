*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${time}    5 seconds

*** Keywords ***
MaximizeBrowserWindow
    Maximize Browser Window
    Set Selenium Implicit Wait    ${time}
