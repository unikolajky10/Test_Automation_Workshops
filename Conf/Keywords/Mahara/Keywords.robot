*** Settings ***
Library    SeleniumLibrary
Library    OperatingSystem
Variables    ../../../Conf/Objects/Mahara/Page_Objects.py    

*** Keywords ***
Open Testing Browser     
    Log  %{PATH} 
    Append To Environment Variable    PATH    /Users/luis.rozo/Downloads
    Log  %{PATH}   
    Open Browser To Mahara    https://demo.mahara.org/    chrome        
    #Maximize Browser Window
      
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
    
Verify User Logged In
    [Arguments]    ${name}
    Wait Until Page Contains Element    ${frame_profile}
    Page Should Contain Element   ${profile_block} 
    Page Should Contain    ${name}
