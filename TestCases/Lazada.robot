*** Settings ***
Library    SeleniumLibrary
Resource    variables.robot
Documentation  This is the documentation of the test cases suite

*** Test Cases ***
Click On App Store Link
    [Documentation]    Click on Apple store link to download the Lazada app
    Open Browser    ${url}    chrome
    # Click on Apple store download link
    Click Element    xpath = /html/body/div[3]/section/div[1]/div/div[3]/div[2]/div[3]/a[1]
    # Current URL should be Apple store
    Location Should Be    https://apps.apple.com/us/app/lazada-online-shopping-app/id785385147
    Capture Page Screenshot
    Sleep    5s
    Close Browser

Check Return Policy
    [Documentation]    Check the return policies for Lazada
    Open Browser    ${url}    chrome
    # Click on Lazada Care
    Click Element    xpath = /html/body/div[2]/div/div[1]/div/div/div[1]/div/div[4]
    # Click on help center
    Click Element    xpath = /html/body/div[2]/div/div[1]/div/div/div[1]/div/div[4]/div/div/ul/li[1]/a
    #Click search bar
    Click Element    xpath = //*[@id="hq"]
    # Input return in search bar
    Input Text    xpath = //*[@id="hq"]  return
    # Click on search button
    Click Element    css = ._3X5JK
    # Click on first result
    Click Element    css = .uZTtD
    Close Browser

    