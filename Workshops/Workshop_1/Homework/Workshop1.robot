*** Settings ***
Library    Dialogs  

*** Variables ***
${dialog_value}    ${EMPTY}
${user_value}    DefaultValue 

*** Test Cases ***
Open Text Dialog And Compare Strings
    Open Text Dialog
    Compare Strings
           
*** Keywords ***
Open Text Dialog
    ${dialog_value}=    Get Value From User    Please Insert Value For Comparison
    Set Global Variable    ${dialog_value}    
    
Compare Strings
    Should Be Equal As Strings    ${dialog_value}    ${user_value}    Values are not equal 
