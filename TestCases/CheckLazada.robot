*** Settings ***
Library    SeleniumLibrary
Resource    variables.robot
Documentation  This is the documentation of the test cases suite

*** Variables ***
${LINK_LOCATOR}    xpath://a[@href='//member.lazada.sg/user/login?spm=a2o42.home-sg.header.d5.5727eBb7eBb7yN']


*** Test Cases ***
App store Installation Link
    [Documentation]    Click on Apple store link to download the Lazada app
    Open Browser    ${url}    chrome
    # Maximize window
    Maximize Browser Window
    # Scroll all the way to footer
    Execute JavaScript    window.scrollTo(0, document.body.scrollHeight)
    # Click on Apple store download link
    Click Element    xpath = /html/body/div[3]/section/div[1]/div/div[3]/div[2]/div[3]/a[1]
    # Current URL should be Apple store
    Location Should Be    https://apps.apple.com/us/app/lazada-12-12-all-out-sale/id785385147
    Capture Page Screenshot
    Sleep    3s
    Close Browser

Login with without entering any details
    [Documentation]    Click on login button without enetering any details
    Open Browser    ${url}    chrome
    # Maximize window
    Maximize Browser Window
    #Click on login button
    Click Element    xpath = /html/body/div[2]/div/div[1]/div/div/div[1]/div/div[6]/a
    #Click on login button again
    Click Element    xpath = /html/body/div[2]/div/div[2]/div/div[2]/form/div/div/div[4]/button
    Capture Page Screenshot
    Sleep    3s
    Close Browser

Click On Vouchers button
    [Documentation]    Click on Vouchers link
    Open Browser    ${url}    chrome
    # Maximize window
    Maximize Browser Window
    # Click on Vouchers link
    Click Element    xpath = /html/body/section/div/div/div/div/div[2]/div/div[2]/div[1]/div/a[3]/div/span
    Capture Page Screenshot
    Sleep    3s
    Close Browser

