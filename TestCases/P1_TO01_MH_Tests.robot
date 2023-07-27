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
  Accept Cookies  Accept all
  Navigate To Test Approaches
  Search Links By Name      Exploratory Testing

P1_TO01_MH_TC01/2 Start For Free
    [Documentation]    Test Start For Free Button
    [Tags]    P1TO01_TC01/2  exploratory
    Set Selenium Speed    0.5
    Accept Cookies  Accept all
    Navigate To TestBench Logo
    Scroll And Click Start For Free Button

P1_TO01_MH_TC01/3 Learn More About Imbus
    [Documentation]    Test Learn more about Imbus button
    [Tags]    P1TO01_TC01/3  exploratory
    Set Selenium Speed    0.5
    Accept Cookies  Accept all
    Navigate To TestBench Logo
    Scroll And Click Learn More About Imbus Button
    Accept Cookies Imbus Page

P1_TO02_MH_TC02 Validate Exploratory Testing
   [Documentation]  Validates if the page Exploratory Testing
   ...  page works properly
   [Tags]  MH_TC02   exploratory
   Set Selenium Speed    0.5
   Accept Cookies   Accept all
   Navigate To Test Approaches
   Search Links By Name      Exploratory Testing
   Check If The Page Contains   Explore. Learn. Create. Execute. Improve.
   Scroll Down To   What Is Exploratory Testing?

P1_TO01_MH_TCO9_1 Test Manager Verify Box
    [Documentation]    Validates if the As A Test Manager Button works correctly
    [Tags]    MH_TC09_1  exploratory
    Set Selenium Speed    0.5
    Accept Cookies   Accept all
    Verify As A Test Manager Button And Its Elements

P1_TO01_MH_TC09_2 Software Developer Verify Box
    [Documentation]    Verifies if the As A Software Developer Button works correctly
    [Tags]    MH_TC09_2    exploratory
    Set Selenium Speed    0.5
    Accept Cookies  Accept all
    Verify As A Software Developer Button And Its Elements

P1_TO01_MH_TC09_3 Project Manager Verify Box
    [Documentation]    Verifies if the As A Project Manager Button works correctly
    [Tags]    MH_TC09_3    exploratory
    Set Selenium Speed    0.5
    Accept Cookies  Accept all
    Verify As A Project Manager Button And Its Elements

P1_T009_MH_TC09_4 Tester Verify Box
    [Documentation]    Verifies if the As A Tester Button works correctly
    [Tags]    MH_TC09_4    exploratory
    Set Selenium Speed    0.5
    Accept Cookies  Accept all
    Verify As A Tester Button And Its Elements
