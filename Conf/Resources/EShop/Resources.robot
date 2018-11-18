*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${Women_Section_URL}    http://automationpractice.com/index.php?id_category=3&controller=category#

${Browser}    Chrome

${Sort_Dropdown_Selected_Item}    xpath=//*[@id="uniform-selectProductSort"]/span

${Category1}    Price: Lowest first
${Category2}    Price: Highest first
${Category3}    Product Name: A to Z
${Category4}    Product Name: Z to A
${Category5}    In stock
${Category6}    Reference: Lowest first
${Category7}    Reference: Highest first

${Evening_Dresses_Cat_Name}    EVENING DRESSES 

${Filter_Category_URL}    http://automationpractice.com/index.php?id_category=3&controller=category#/categories-dresses 
