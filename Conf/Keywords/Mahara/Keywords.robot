*** Settings ***
Library    SeleniumLibrary
Library    OperatingSystem
Variables    ../../../Conf/Objects/Mahara/Page_Objects.py    

*** Keywords ***
Open Testing Browser     
    Open Browser To Mahara    https://demo.mahara.org/    chrome    
#    Maximize Browser Window
      
Open Browser To Mahara
    [Arguments]    ${url}    ${BrowserName}
    Open Browser    ${url}    ${BrowserName}     
      
Login To Mahara
    [Arguments]    ${uname}    ${pwd}
    Input Text    id=login_login_username    ${uname}
    Input Password    name=login_password    ${pwd}
    Click Button    Login

Capture Screenshot And Close Browser
    Capture Page Screenshot    
    Close Browser

Test All Users Login
    [Arguments]    ${uname}    ${pwd}	
    Open Testing Browser  
	Login To Mahara    ${uname}    ${pwd}    
    Wait Until Page Contains Element    id=sb-profile
    Page Should Contain Element    xpath=//a[@class="user-icon"]
    Capture Screenshot And Close Browser


