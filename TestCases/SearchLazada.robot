*** Settings ***
Library    SeleniumLibrary
Library    OperatingSystem

*** Variables ***
${my_URL}    https://www.lazada.sg/
${item}    Hydroflask
${item2}    Nintendo Switch

*** Test Cases ***
Search for Hydroflasks
    Open Browser    ${my_URL}    chrome
    Input Text    id:q    ${item}
    Press Keys    None    ENTER
    Capture Page Screenshot
    Sleep    5s
    Close Browser

Search for Capcom games from preferred sellers
    Open Browser    ${my_URL}    chrome
    Input Text    id:q    ${item2}
    Press Keys    None    ENTER
    Click Element    xpath = //*[@id="root"]/div/div[2]/div[1]/div/div[2]/div/div[2]/div[2]/div/div[1]/a[5]/label/span[1]/input
    Sleep    1s
    Click Element    xpath = //*[@id="root"]/div/div[2]/div[1]/div/div[2]/div/div[3]/div[2]/div/div[1]/label[1]/span[1]/input
    Sleep    1s
    Click Element    xpath = //*[@id="root"]/div/div[2]/div[1]/div/div[1]/div[3]/div[1]/div/div/div[1]/div/a/div/img
    Capture Page Screenshot
    Sleep    5s
    Close Browser