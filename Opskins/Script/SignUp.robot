*** Settings ***
Resource        ../Libs/commonLib.robot
Resource        ../Libs/navigationLib.robot
Variables       ../TestData/Roles.py

Test Setup      Setup browser
Test Teardown   #Close everything
Documentation   This is jus an example of a test suite with one test case on it
...             More documentation



*** Test Cases ***
Login and logout

    #[Tags]   smoke
    Navigate to Sign In / Register
    Naviagate to Create an Account
    Fill out Form
    Click on Register With OPSkins button


