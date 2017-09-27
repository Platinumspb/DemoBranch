*** Settings ***
Library     Selenium2Library


*** Variables ***
##################################
# Global Variables For Test
#
##################################
${ENV}              PROD
${BROWSER}          chrome
${REMOTE_URL}       ${EMPTY}
${CAPABILITIES}     browserName:${BROWSER},platform:${PLATFORM}

${EMAIL}               opskins@mailinator.com
@{PACKAGES}            Automation Test

*** Keywords ***
Setup Environment URL
    Run keyword if      '${ENV}' == 'QA'                Set Environment To QA
    ...     ELSE IF     '${ENV}' == 'STAGING'           Set Environment To STAGING
    ...     ELSE IF     '${ENV}' == 'PROD'              Set Environment To PRODUCTION


Set Environment To QA
    Set Global Variable     ${START_HOME}
Set Environment To STAGING
    Set Global Variable     ${START_HOME}
Set Environment To PRODUCTION
    Set Global Variable     ${START_HOME}   https://opskins.com/



Open the browser
    [Arguments]     ${url}
    [Documentation]  This a keyword wrapper of 'Open browser' to open the remote or local browser based on the ${REMOTE_URL} variable
    run keyword if      '${REMOTE_URL}' == '${EMPTY}'     open browser    ${url}      browser=${BROWSER}
    ...     ELSE        _open remote browser     ${url}



_open remote browser
    [Arguments]     ${url}
    log     <${REMOTE_URL}>${\n}<${CAPABILITIES}>
    open browser    ${url}      remote_url=${REMOTE_URL}        desired_capabilities=${CAPABILITIES}


Close remote browser
   close browser