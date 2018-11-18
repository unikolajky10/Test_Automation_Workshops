*** Settings ***
Library    SeleniumLibrary
Variables    ../../../Conf/Objects/EShop/Page_Objects.py  
Resource     ../../../Conf/Resources/EShop/Resources.robot 

*** Keywords ***

Open EShop
    Open Browser    ${Women_Section_URL}    ${Browser}
    #Maximize Browser Window
    Wait Until Page Contains Element    ${Sort_dropdown}
    
Capture Screenshot And Close Browser
    Capture Page Screenshot    
    Close Browser    

Sort by One Criteria
    [Arguments]    ${criteriaValue}
    Wait Until Page Contains Element    ${Sort_dropdown}
    Select From List By Value        ${Sort_dropdown}    ${criteriaValue}
    Wait Until Element Is Not Visible    Center_Column
    Click Element    ${List}    
   
Sort Categories
	[Arguments]  ${Sort_dropdown}  ${Sort_category}
	Select From List By Label    ${Sort_dropdown}	${Sort_category}
	Element Should Contain		${Sort_Dropdown_Selected_Item}		${Sort_category}
	Capture Screenshot And Close Browser
    Open EShop   
    
Filter By Dresses Category
	Select Checkbox    ${Filter_categories_dresses_checkbox}
    Wait Until Element Is Visible    ${Enabled_filters}    
    

     
    
