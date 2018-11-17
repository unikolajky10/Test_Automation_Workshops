*** Settings ***
Library    SeleniumLibrary

Resource    ../../../Conf/Keywords/Mahara/Keywords.robot
Variables    ../../../Conf/Settings/Mahara/Credentials.py
Variables    ../../../Conf/Objects/Mahara/Page_Objects.py     

*** Test Cases ***

Test Mahara users
    [Template]    Test All Users Login 
    ${admin_username}    ${admin_password}
    ${student_username}    ${student_password}
    ${learner_username}    ${learner_password}
    ${staff_username}    ${staff_password}
