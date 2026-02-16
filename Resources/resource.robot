*** Settings ***
Library    SeleniumLibrary

     

*** Variables ***
${url}   http://10.13.1.180/ais/ 
${browser}    Firefox 


*** Keywords ***

OpenTheBrowser
    # This safer Evaluate string handles the import automatically
    ${options}=    Evaluate    sys.modules['selenium.webdriver'].FirefoxOptions() if 'selenium.webdriver' in sys.modules else __import__('selenium.webdriver').webdriver.FirefoxOptions()    sys
    Call Method    ${options}    add_argument    --disable-popup-blocking
    Call Method    ${options}    add_argument    --allow-running-insecure-content
    Call Method    ${options}    add_argument    --disable-web-security
    Call Method    ${options}    add_argument    --ignore-certificate-errors
    # IMPORTANT: You must use "options=${options}"
    Open Browser    ${url}    ${browser}    options=${options}

Finish TestCase    
    Close All Browsers
    
