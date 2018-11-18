*** Settings ***

Library    SeleniumLibrary
Resource    ../../../Conf/Keywords/Eshop/Keywords.robot
Variables    ../../../Conf/Objects/Eshop/Page_Objects.py  
Test Setup    Open EShop    
Test Teardown    Capture Screenshot And Close Browser

*** Test Cases ***

Sort
    [Template]    Sort by One Criteria    
    name:asc  
    reference:asc

Sort Categories
    [Template]    Sort Categories
    ${Sort_dropdown}    ${Category1}
    ${Sort_dropdown}    ${Category2}
    ${Sort_dropdown}    ${Category3}
    ${Sort_dropdown}    ${Category4}
    ${Sort_dropdown}    ${Category5}
    ${Sort_dropdown}    ${Category6}
    ${Sort_dropdown}    ${Category7}
       
Filter Category to Dresses
    Filter By Dresses Category
    Location Should Contain    ${Filter_Category_URL} 
    
