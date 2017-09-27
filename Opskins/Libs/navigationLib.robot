*** Settings ***
Resource        ../Settings/Settings.robot

*** Keywords ***

Navigate to Sign In / Register
    click element                       xpath=//div[@class='navbar-header']//a[.=' Sign In / Register']
    wait until page contains            Create an OPSkins Account                                       timeout=20s

Naviagate to Create an Account
    click element                       link=Create an OPSkins Account
    wait until page contains element    id=register-form

Fill out Form
    ${numbers}=   Evaluate     random.randrange(100)    random
    input text          id=register-username               Usernameopskins${numbers}
    input text          id=register-password               Test123!
    input text          id=register-password-confirm       Test123!
    input text          id=register-email                  opskinstesting1+${numbers}@gmail.com
    select checkbox     id=accept-tos
    select checkbox     id=over-18
Click on Register With OPSkins button
    click button        xpath=//form[@id='register-form']//button[.='Register With OPSkins']
    wait until page contains    Account registered successfully! We've sent an email to