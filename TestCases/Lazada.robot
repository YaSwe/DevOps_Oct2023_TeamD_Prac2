*** Settings ***
Library    SeleniumLibrary
Resource    variables.robot
Documentation  This is the documentation of the test cases suite

*** Test Cases ***
Google Play Installation Link
    [Documentation]    Click on Apple store link to download the Lazada app
    Open Browser    ${url}    chrome
    # Maximize window
    Maximize Browser Window
    # Scroll to footer
    Execute JavaScript    window.scrollTo(0, document.body.scrollHeight)
    # Click on Apple store download link
    Click Element    xpath = /html/body/div[3]/section/div[1]/div/div[3]/div[2]/div[3]/a[2]
    # Current URL should be Apple store
    Location Should Be    https://play.google.com/store/apps/details?id=com.lazada.android
    Capture Page Screenshot
    Sleep    3s
    Close Browser

Check Return Policy
    [Documentation]    Check the return policies for Lazada
    Open Browser    ${url}    chrome
    # Maximize window
    Maximize Browser Window
    # Click on Lazada Care
    Click Element    xpath = /html/body/div[2]/div/div[1]/div/div/div[1]/div/div[4]
    # Click on help center
    Click Element    xpath = /html/body/div[2]/div/div[1]/div/div/div[1]/div/div[4]/div/div/ul/li[1]/a
    #Click search bar
    Click Element    xpath = //*[@id="hq"]
    # Input "return" in search bar
    Input Text    xpath = //*[@id="hq"]  return
    # Click on search button
    Click Element    css = ._3X5JK
    # Click on first result
    Click Element    xpath = //div[@data-spm="search-result"]//a[1]
    Close Browser
Check Phone Cases is navigated through side menu links
    [Documentation]    Check the working of the Navbar
    Open Browser    ${url}    chrome
    # Maximize window
    Maximize Browser Window
    # Hover to first Element in Navbar
    Hover Over Navbar Element    /html/body/section/div/div/div/div/div[2]/div/div[1]/div/div[1]/div/div[1]
    #Hover to the next element which appears on the side menu
    Hover Over Navbar Element    /html/body/section/div/div/div/div/div[2]/div/div[1]/div/div[1]/div[2]/div[1]/a
    #Click Phone Cases on the side menu
    Click Element    xpath=//span[@id="9543"]
    # Wait for page to load 
    Sleep    2s
    # Get the current URL
    ${current_url} =    Get Location
    # Assert that the current URL contains the expected part
    Should Contain    ${current_url}    https://www.lazada.sg/shop-phone-cases/?spm=a2o42
    Capture Page Screenshot
    Sleep    3s
    Close Browser


Check Search Bar features
    [Documentation]    Click on Terms & Condition
    Open Browser    ${url}    chrome
    # Maximize window
    Maximize Browser Window
    # Input "Clothes" in the search bar
    Input Text    xpath=//*[@id="q"]    Clothes
    # Click on the search button
    Click Element    xpath=//button[@class="search-box__button--1oH7"]
    # Wait for the page to load
    Sleep    10s
    # Get the current URL
    ${current_url} =    Get Location
    # Assert that the current URL contains the expected part
    Should Contain    ${current_url}    https://www.lazada.sg/catalog/?q=Clothes
    Capture Page Screenshot
    Sleep    3s
    Close Browser

*** Keywords ***
Hover Over Navbar Element
    [Arguments]    ${xpath}
    ${element} =    Get WebElement    xpath=${xpath}
    Mouse Over    ${element}
    # Optionally, you can wait for a moment to observe the hover effect
    Sleep    2s

    