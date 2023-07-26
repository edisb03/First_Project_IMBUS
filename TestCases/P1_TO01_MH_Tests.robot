*** Settings ***
Documentation    Login In     ...
Resource            ..//Resources/import.resource

# Test Setup    Open Web Browser    browser_type=headlesschrome
Test Setup          Open Web Browser
Test Teardown       Close Browser


*** Test Cases ***
P1_TO01_MH_TC01 Verify Test Approaches Works
  [Documentation]  Checks if the test approaches works
  [Tags]   MH_TC01  exploratory
  Set Selenium Speed    0.5
  Accept Cookies
  Navigate To Test Approaches
  Search Links By Name      Exploratory Testing

P1_TO01_MH_TCO9_1 Verify As A Test Manager Button
    [Documentation]    Validates if the As A Test Manager Button works correctly
    [Tags]    MH_TC09_1  exploratory
    Set Selenium Speed    0.5
    Accept Cookies
    Verify As A Test Manager Button And Its Elements

P1_TO01_TC09_2 Verify As A Software Developer Button
    [Documentation]    Verifies if the As A Software Developer Button works correctyl
    [Tags]    MH_TC09_2    exploratory
    Set Selenium Speed    0.5
    Accept Cookies
    Verify As A Software Developer Button And Its Elements
  