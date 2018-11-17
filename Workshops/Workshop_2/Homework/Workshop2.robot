*** Settings ***
Library    SeleniumLibrary
Test Setup    Open Testing Browser
Test Teardown   Capture Screenshot And Close Browser
Resource    ../../../Conf/Keywords/Mahara/Keywords.robot
Variables    ../../../Conf/Settings/Mahara/Credentials.py
Variables    ../../../Conf/Objects/Mahara/Page_Objects.py     

*** Test Cases ***
Mahara Invalid Login
    Login To Mahara    ${invalid_username}    ${invalid_password}
    Wait Until Page Contains Element    ${error_messages}
    Page Should Contain    You have not provided the correct credentials to log in. Please check your username and password are correct.
    Page Should Contain    There was an error with submitting this form. Please check the marked fields and try again. 
    
Mahara Admin Login
    Login To Mahara    ${admin_username}    ${admin_password}
    Verify User Logged In    ${admin_name} 
    
Mahara Student Login
    Login To Mahara    ${student_user}    ${student_password}
    Verify User Logged In    ${student_name}
