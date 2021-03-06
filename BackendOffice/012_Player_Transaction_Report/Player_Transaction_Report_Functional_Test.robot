*** Settings ***
Test Teardown     Close ALL Browsers
Resource          ../Login.robot
Resource          xpath_resource.robot    # using resource to store xpath and all other Variables

*** Variables ***

*** Test Cases ***
Switch Time Zone
    Open Broser and Login automatically
    Wait Until Element is Visible    xpath=html/body/div[1]/div/div/header/nav/div[2]/ul[1]/li/span/a[1]/em    2
    Click Menu Tree
    Click Report submenu
    Sleep    1
    Click Player Transaction History in submenu
    Sleep    1
    Click Element    xpath=html/body/div[1]/div/div/section/div/div/div/div[2]/div[1]/div/div/div/span[1]/div[1]
    Wait Until element is Visible    xpath=html/body/div[1]/div/div/section/div/div/div/div[2]/div[1]/div/div/div[2]/div/div[2]    2
    Click Element    xpath=html/body/div[1]/div/div/section/div/div/div/div[2]/div[1]/div/div/div[2]/div/div[2]
    ${Time_ZONE_UTC}    Get Text    xpath=html/body/div[1]/div/div/section/div/div/div/div[2]/div[1]/div/div/div/span[1]/div[1]
    Should be Equal    ${Time_ZONE_UTC}    UTC (GMT+0)
    Sleep    1
    Click Element    xpath=html/body/div[1]/div/div/section/div/div/div/div[2]/div[1]/div/div/div/span[1]/div[1]
    Wait Until element is Visible    xpath=html/body/div[1]/div/div/section/div/div/div/div[2]/div[1]/div/div/div[2]/div/div[2]    2
    Click Element    xpath=html/body/div[1]/div/div/section/div/div/div/div[2]/div[1]/div/div/div[2]/div/div[3]
    ${Time_ZONE_EDT}    Get Text    xpath=html/body/div[1]/div/div/section/div/div/div/div[2]/div[1]/div/div/div/span[1]/div[1]
    Should be Equal    ${Time_ZONE_EDT}    EDT (GMT-4)
    Sleep    1
    Click Element    xpath=html/body/div[1]/div/div/section/div/div/div/div[2]/div[1]/div/div/div/span[1]/div[1]
    Wait Until element is Visible    xpath=html/body/div[1]/div/div/section/div/div/div/div[2]/div[1]/div/div/div[2]/div/div[2]    2
    Click Element    xpath=html/body/div[1]/div/div/section/div/div/div/div[2]/div[1]/div/div/div[2]/div/div[1]
    ${Time_ZONE_CST}    Get Text    xpath=html/body/div[1]/div/div/section/div/div/div/div[2]/div[1]/div/div/div/span[1]/div[1]
    Should be Equal    ${Time_ZONE_CST}    CST (GMT+8)

Switch Time Range
    Open Broser and Login automatically
    Wait Until Element is Visible    xpath=html/body/div[1]/div/div/header/nav/div[2]/ul[1]/li/span/a[1]/em    2
    Click Menu Tree
    Click Report submenu
    Click Player Transaction History in submenu
    Sleep    1
    Click Element    xpath=html/body/div[1]/div/div/section/div/div/div/div[2]/div[2]/div/div/div[1]/span[1]/div[1]
    Wait Until element is Visible    xpath=html/body/div[1]/div/div/section/div/div/div/div[2]/div[2]/div/div/div[2]/div/div[2]    2
    Click Element    xpath=html/body/div[1]/div/div/section/div/div/div/div[2]/div[2]/div/div/div[2]/div/div[2]
    ${Time_Range_Yesterday}    Get Text    xpath=html/body/div[1]/div/div/section/div/div/div/div[2]/div[2]/div/div/div[1]/span[1]/div[1]
    Should be Equal    ${Time_Range_Yesterday}    Yesterday
    Sleep    1
    Click Element    xpath=html/body/div[1]/div/div/section/div/div/div/div[2]/div[2]/div/div/div[1]/span[1]/div[1]
    Wait Until element is Visible    xpath=html/body/div[1]/div/div/section/div/div/div/div[2]/div[2]/div/div/div[2]/div/div[1]    2
    Click Element    xpath=html/body/div[1]/div/div/section/div/div/div/div[2]/div[2]/div/div/div[2]/div/div[1]
    ${Time_Range_Today}    Get Text    xpath=html/body/div[1]/div/div/section/div/div/div/div[2]/div[2]/div/div/div[1]/span[1]/div[1]
    Should be Equal    ${Time_Range_Today}    Today
    Sleep    1
    Click Element    xpath=html/body/div[1]/div/div/section/div/div/div/div[2]/div[2]/div/div/div[1]/span[1]/div[1]
    Wait Until element is Visible    xpath=html/body/div[1]/div/div/section/div/div/div/div[2]/div[2]/div/div/div[2]/div/div[3]
    Click Element    xpath=html/body/div[1]/div/div/section/div/div/div/div[2]/div[2]/div/div/div[2]/div/div[3]
    ${Time_Range_7Days}    Get Text    xpath=html/body/div[1]/div/div/section/div/div/div/div[2]/div[2]/div/div/div[1]/span[1]/div[1]
    Should be Equal    ${Time_Range_7Days}    Last 7 Days
    Sleep    1
    Click Element    xpath=html/body/div[1]/div/div/section/div/div/div/div[2]/div[2]/div/div/div[1]/span[1]/div[1]
    Wait Until element is Visible    xpath=html/body/div[1]/div/div/section/div/div/div/div[2]/div[2]/div/div/div[2]/div/div[4]    2
    Click Element    xpath=html/body/div[1]/div/div/section/div/div/div/div[2]/div[2]/div/div/div[2]/div/div[4]
    ${Time_Range_Month-to-Date}    Get Text    xpath=html/body/div[1]/div/div/section/div/div/div/div[2]/div[2]/div/div/div[1]/span[1]/div[1]
    Should be Equal    ${Time_Range_Month-to-Date}    Last Month

Switch Query Type
    Open Broser and Login automatically
    Wait Until Element is Visible    xpath=html/body/div[1]/div/div/header/nav/div[2]/ul[1]/li/span/a[1]/em    2
    Click Menu Tree
    Click Report submenu
    Click Player Transaction History in submenu
    Sleep    1
    Click Element    xpath=html/body/div[1]/div/div/section/div/div/div/div[1]/div[2]/div/div/div[1]/span[1]/div[1]
    Wait until element is Visible    xpath=html/body/div[1]/div/div/section/div/div/div/div[1]/div[2]/div/div/div[2]/div/div[2]
    Click Element    xpath=html/body/div[1]/div/div/section/div/div/div/div[1]/div[2]/div/div/div[2]/div/div[2]
    ${filter_Wallet_Transaction}    get text    xpath=html/body/div[1]/div/div/section/div/div/div/div[1]/div[2]/div/div/div/span[1]/div[1]
    Should be equal    ${filter_Wallet_Transaction}    Wallet Transaction
    Click Element    xpath=html/body/div[1]/div/div/section/div/div/div/div[1]/div[2]/div/div/div[1]/span[1]/div[1]
    Wait until element is visible    xpath=html/body/div[1]/div/div/section/div/div/div/div[1]/div[2]/div/div/div[2]/div/div[2]
    Click Element    xpath=html/body/div[1]/div/div/section/div/div/div/div[1]/div[2]/div/div/div[2]/div/div[3]
    ${filter_Spin_Transaction}    get text    xpath=html/body/div[1]/div/div/section/div/div/div/div[1]/div[2]/div/div/div/span[1]/div[1]
    Should be equal    ${filter_Spin_Transaction}    Spin Transaction
    Click Element    xpath=html/body/div[1]/div/div/section/div/div/div/div[1]/div[2]/div/div/div[1]/span[1]/div[1]
    Wait until element is visible    xpath=html/body/div[1]/div/div/section/div/div/div/div[1]/div[2]/div/div/div[2]/div/div[2]
    Click Element    xpath=html/body/div[1]/div/div/section/div/div/div/div[1]/div[2]/div/div/div[2]/div/div[1]
    ${filter_All_Transaction}    get text    xpath=html/body/div[1]/div/div/section/div/div/div/div[1]/div[2]/div/div/div/span[1]/div[1]
    Should be equal    ${filter_All_Transaction}    All Transactions

Check calander after set time range to Today
    [Tags]    issue
    Open Broser and Login automatically
    Wait Until Element is Visible    xpath=html/body/div[1]/div/div/header/nav/div[2]/ul[1]/li/span/a[1]/em    2
    Click Menu Tree
    Click Report submenu
    Click Player Transaction History in submenu
    Sleep    1
    Click Element    xpath=html/body/div[1]/div/div/section/div/div/div/div[2]/div[2]/div/div/div[1]/span[1]/div[1]
    Wait Until element is Visible    xpath=html/body/div[1]/div/div/section/div/div/div/div[2]/div[2]/div/div/div[2]/div/div[1]    2
    Click Element    xpath=html/body/div[1]/div/div/section/div/div/div/div[2]/div[2]/div/div/div[2]/div/div[1]
    ${today}    Get Current Date    result_format=%Y-%m-%d
    ${get_value_today}    Get Text    xpath=html/body/div[1]/div/div/section/div/div/div/div[3]/div[1]/div/div/div/span[1]/div[1]/span
    should be equal    ${today}    ${get_value_today}
    ${get_value_end}    Get Text    xpath=html/body/div[1]/div/div/section/div/div/div/div[3]/div[3]/div/div/div/span[1]/div[1]/span
    should be equal    ${today}    ${get_value_end}

Check calander after set time range to Yesterday
    [Tags]    issue
    Open Broser and Login automatically
    Wait Until Element is Visible    xpath=html/body/div[1]/div/div/header/nav/div[2]/ul[1]/li/span/a[1]/em    2
    Click Menu Tree
    Click Report submenu
    Click Player Transaction History in submenu
    Sleep    1
    Click Element    xpath=html/body/div[1]/div/div/section/div/div/div/div[2]/div[2]/div/div/div[1]/span[1]/div[1]
    Wait Until element is Visible    xpath=html/body/div[1]/div/div/section/div/div/div/div[2]/div[2]/div/div/div[2]/div/div[2]    2
    Click Element    xpath=html/body/div[1]/div/div/section/div/div/div/div[2]/div[2]/div/div/div[2]/div/div[2]
    sleep    1
    ${today}    Get Current Date    result_format=%Y-%m-%d
    ${Yesterday_start}    Subtract Time From Date    ${today}    1    result_format=%Y-%m-%d
    ${get_value_Yesterday}    Get Text    xpath=html/body/div[1]/div/div/section/div/div/div/div[3]/div[1]/div/div/div/span[1]/div[1]
    should be equal    ${Yesterday_start}    ${get_value_Yesterday}
    ${Yesterday_end}    Subtract Time From Date    ${today}    1    result_format=%Y-%m-%d
    ${get_value_Yesterday}    Get Text    xpath=html/body/div[1]/div/div/section/div/div/div/div[3]/div[3]/div/div/div/span[1]/div[1]
    should be equal    ${Yesterday_end}    ${get_value_Yesterday}

Check calander after set time range to 7-days before
    [Tags]    issue
    Open Broser and Login automatically
    Wait Until Element is Visible    xpath=html/body/div[1]/div/div/header/nav/div[2]/ul[1]/li/span/a[1]/em    2
    Click Menu Tree
    Click Report submenu
    Click Player Transaction History in submenu
    Sleep    1
    Click Element    xpath=html/body/div[1]/div/div/section/div/div/div/div[2]/div[2]/div/div/div[1]/span[1]/div[1]
    Wait Until element is Visible    xpath=html/body/div[1]/div/div/section/div/div/div/div[2]/div[2]/div/div/div[2]/div/div[2]    2
    Click Element    xpath=html/body/div[1]/div/div/section/div/div/div/div[2]/div[2]/div/div/div[2]/div/div[3]
    sleep    1
    ${today}    Get Current Date    result_format=%Y-%m-%d
    ${Last7Days_start}    Subtract Time From Date    ${today}    7 days    result_format=%Y-%m-%d
    log    ${today}
    log    ${Last7Days_start}
    ${get_value_Last7Days_start}    Get text    xpath=html/body/div[1]/div/div/section/div/div/div/div[3]/div[1]/div/div/div/span[1]/div[1]
    should be equal    ${Last7Days_start}    ${get_value_Last7Days_start}
    ${get_value_Last7Days_end}    Get text    xpath=html/body/div[1]/div/div/section/div/div/div/div[3]/div[3]/div/div/div/span[1]/div[1]
    should be equal    ${today}    ${get_value_Last7Days_end}
	
Check special condition for partners ID
    Open Broser and Login automatically
    Wait Until Element is Visible    xpath=html/body/div[1]/div/div/header/nav/div[2]/ul[1]/li/span/a[1]/em    2
    Click Menu Tree
    Click Report submenu
    Click Player Transaction History in submenu
    Sleep    2
	Click element    xpath=html/body/div[1]/div/div/section/div/div/div[1]/div[1]/div[4]/div/div/div/span[1]/div[1]
	Sleep    1
	Click element    xpath=html/body/div[1]/div/div/section/div/div/div[1]/div[1]/div[4]/div/div/div[2]/div/div[19]
	Sleep    1
    Element Should Be Visible    xpath=html/body/div[1]/div/div/section/div/div/div[1]/div[6]/div[2]/button
	${Wallet_Log}    get text    xpath=html/body/div[1]/div/div/section/div/div/div[1]/div[6]/div[1]/div/label/span
	should be equal    ${Wallet_Log}    Search Wallet Log
	${button_text}    get text    xpath=html/body/div[1]/div/div/section/div/div/div[1]/div[6]/div[2]/button
	should be equal   ${button_text}    Search By User ID
		
Download File checking-Default
    Open Broser and Login automatically
    Wait Until Element is Visible    xpath=html/body/div[1]/div/div/header/nav/div[2]/ul[1]/li/span/a[1]/em    2
    Click Menu Tree
    Click Report submenu
    Click TOP 100 Players Across Platform in submenu
    Click Element    xpath=html/body/div[1]/div/div/section/div/div[1]/div/form/div[4]/div/div/button
    Sleep    1
    ${PlayerID}    get text    xpath=html/body/div[1]/div/div/section/div/div[2]/div/div/div[2]/div/div/table/tbody/tr[1]/td[2]
    log    ${PlayerID}
    Sleep    1
    Click Player Transaction History in submenu
    Sleep    1
    Input text    xpath=html/body/div[1]/div/div/section/div/div/div/div[1]/div[1]/div/input    ${PlayerID}
    Click Search by Date button
    Sleep    5
    Click Export button
    Run Keyword And Ignore Error    Save File
    Wait Until Created    C:\\Users\\${Accountname}\\Downloads\\pthSummary.csv
    File Should Exist    C:\\Users\\${Accountname}\\Downloads\\pthSummary.csv
    Remove file    C:\\Users\\${Accountname}\\Downloads\\pthSummary.csv
    Wait Until Removed    C:\\Users\\${Accountname}\\Downloads\\pthSummary.csv

#Test File Content checking-Default
#    Open Broser and Login automatically
#    Wait Until Element is Visible    xpath=html/body/div[1]/div/div/header/nav/div[2]/ul[1]/li/span/a[1]/em    2
#    Click Menu Tree
#    Click Report submenu
#    Click TOP 100 Players Across Platform in submenu
#    Click Element    xpath=html/body/div[1]/div/div/section/div/div[1]/div/form/div[6]/div/div/button
#    Sleep    1
#    ${PlayerID}    get text    xpath=html/body/div[1]/div/div/section/div/div[2]/div/div/div[2]/div/div/table/tbody/tr[1]/td[2]
#    log    ${PlayerID}
#    Sleep    1
#    Click Player Transaction History in submenu
#    Sleep    1
#    Input text    xpath=html/body/div[1]/div/div/section/div/div/div/div[1]/div[1]/div/input    ${PlayerID}
#    Click Search by Date button
#    Sleep    5
#    Click Export button
#    Wait Until Created    C:\\Users\\${Accountname}\\Downloads\\pthSummary.csv
#    File Should Exist    C:\\Users\\${Accountname}\\Downloads\\pthSummary.csv
#    ${TextFileContent}=    Get File    C:\\Users\\${Accountname}\\Downloads\\pthSummary.csv
#    page should contain    ${TextFileContent}
#    Remove file    C:\\Users\\${Accountname}\\Downloads\\pthSummary.csv
#    Wait Until Removed    C:\\Users\\${Accountname}\\Downloads\\pthSummary.csv

*** keyword ***
Download File checking-Partner_Selected
    Open Broser and Login automatically
    Wait Until Element is Visible    xpath=html/body/div[1]/div/div/header/nav/div[2]/ul[1]/li/span/a[1]/em    2
    Click Menu Tree
    Click Player Transaction Report Link
    Sleep    1
    Click Element    xpath=html/body/div[1]/div/div/section/div/div[1]/div/form/div[5]/div[1]/div[1]/div/div[2]/div/div/div/div
    Wait until element is Visible    xpath=html/body/div[2]/div/div/div/ul/li[2]    5
    Click Element    xpath=html/body/div[2]/div/div/div/ul/li[2]
    Sleep    1
    Click Search button
    Sleep    5
    Click Export button
    Wait Until Created    C:\\Users\\${Accountname}\\Downloads\\Game Income by Partner View by GAME - Partner- BBIN Staging, Game- All Games.csv
    File Should Exist    C:\\Users\\${Accountname}\\Downloads\\Game Income by Partner View by GAME - Partner- BBIN Staging, Game- All Games.csv
    Remove file    C:\\Users\\${Accountname}\\Downloads\\Game Income by Partner View by GAME - Partner- BBIN Staging, Game- All Games.csv
    Wait Until Removed    C:\\Users\\${Accountname}\\Downloads\\Game Income by Partner View by GAME - Partner- BBIN Staging, Game- All Games.csv

Download File checking-Game_Selected
    Open Broser and Login automatically
    Wait Until Element is Visible    xpath=html/body/div[1]/div/div/header/nav/div[2]/ul[1]/li/span/a[1]/em    2
    Click Menu Tree
    Click Player Transaction Report Link
    Sleep    1
    Click Element    xpath=html/body/div[1]/div/div/section/div/div[1]/div/form/div[5]/div[2]/div[2]/div/div[2]/div/div/div/div
    Wait until element is Visible    xpath=html/body/div[2]/div/div/div/ul/li[2]    5
    Click Element    xpath=html/body/div[2]/div/div/div/ul/li[2]
    Sleep    1
    Click Search button
    Sleep    5
    Click Export button
    Wait Until Created    C:\\Users\\${Accountname}\\Downloads\\Game Income by Partner View by GAME - Partner- All partners, Game- Bloodlines.csv
    File Should Exist    C:\\Users\\${Accountname}\\Downloads\\Game Income by Partner View by GAME - Partner- All partners, Game- Bloodlines.csv
    Remove file    C:\\Users\\${Accountname}\\Downloads\\Game Income by Partner View by GAME - Partner- All partners, Game- Bloodlines.csv
    Wait Until Removed    C:\\Users\\${Accountname}\\Downloads\\Game Income by Partner View by GAME - Partner- All partners, Game- Bloodlines.csv

Download File checking-View_Selected
    Open Broser and Login automatically
    Wait Until Element is Visible    xpath=html/body/div[1]/div/div/header/nav/div[2]/ul[1]/li/span/a[1]/em    2
    Click Menu Tree
    Click Player Transaction Report Link
    Sleep    1
    Click Element    xpath=html/body/div[1]/div/div/section/div/div/div/div[1]/div[2]/div/div/div[1]/span[1]/div[1]
    Wait until element is Visible    xpath=html/body/div[2]/div/div/div/ul/li[2]    5
    Click Element    xpath=html/body/div[2]/div/div/div/ul/li[2]
    Sleep    1
    Click Search button
    Sleep    5
    Click Export button
    Sleep    5
    Wait Until Created    C:\\Users\\${Accountname}\\Downloads\\Game Income by Partner View by CURRENCY - Partner- All partners, Currency- All Currency.csv    10
    File Should Exist    C:\\Users\\${Accountname}\\Downloads\\Game Income by Partner View by CURRENCY - Partner- All partners, Currency- All Currency.csv
    Remove file    C:\\Users\\${Accountname}\\Downloads\\Game Income by Partner View by CURRENCY - Partner- All partners, Currency- All Currency.csv
    Wait Until Removed    C:\\Users\\${Accountname}\\Downloads\\Game Income by Partner View by CURRENCY - Partner- All partners, Currency- All Currency.csv    10

Download File checking-GAME/Partner_Selected
    Open Broser and Login automatically
    Wait Until Element is Visible    xpath=html/body/div[1]/div/div/header/nav/div[2]/ul[1]/li/span/a[1]/em    2
    Click Menu Tree
    Click Player Transaction Report Link
    Sleep    1
    Click Element    xpath=html/body/div[1]/div/div/section/div/div[1]/div/form/div[5]/div[1]/div[1]/div/div[2]/div/div/div/div
    Sleep    1
    Wait until element is Visible    xpath=html/body/div[2]/div/div/div/ul/li[2]    5
    Click Element    xpath=html/body/div[2]/div/div/div/ul/li[2]
    Sleep    1
    Click Element    xpath=html/body/div[1]/div/div/section/div/div[1]/div/form/div[5]/div[2]/div[2]/div/div[2]/div/div/div/div
    Sleep    1
    Wait until element is Visible    xpath=html/body/div[3]/div/div/div/ul/li[2]    5
    Click Element    xpath=html/body/div[3]/div/div/div/ul/li[2]
    Sleep    1
    Click Search button
    Sleep    5
    Click Export button
    Sleep    5
    Wait Until Created    C:\\Users\\${Accountname}\\Downloads\\Game Income by Partner View by GAME - Partner- BBIN Staging, Game- Bloodlines.csv    10
    File Should Exist    C:\\Users\\${Accountname}\\Downloads\\Game Income by Partner View by GAME - Partner- BBIN Staging, Game- Bloodlines.csv
    Remove file    C:\\Users\\${Accountname}\\Downloads\\Game Income by Partner View by GAME - Partner- BBIN Staging, Game- Bloodlines.csv
    Wait Until Removed    C:\\Users\\${Accountname}\\Downloads\\Game Income by Partner View by GAME - Partner- BBIN Staging, Game- Bloodlines.csv    10

Download File checking-GAME/View_Selected
    Open Broser and Login automatically
    Wait Until Element is Visible    xpath=html/body/div[1]/div/div/header/nav/div[2]/ul[1]/li/span/a[1]/em    2
    Click Menu Tree
    Click Player Transaction Report Link
    Sleep    1
    Click Element    xpath=html/body/div[1]/div/div/section/div/div[1]/div/form/div[5]/div[1]/div[1]/div/div[2]/div/div/div/div
    Sleep    1
    Wait until element is Visible    xpath=html/body/div[2]/div/div/div/ul/li[2]    5
    Click Element    xpath=html/body/div[2]/div/div/div/ul/li[2]
    Sleep    1
    Click Element    xpath=html/body/div[1]/div/div/section/div/div/div/div[1]/div[2]/div/div/div[1]/span[1]/div[1]
    Sleep    1
    Wait until element is Visible    xpath=html/body/div[3]/div/div/div/ul/li[4]    5
    Click Element    xpath=html/body/div[3]/div/div/div/ul/li[4]
    Sleep    1
    Click Element    xpath=html/body/div[1]/div/div/section/div/div[1]/div/form/div[5]/div[2]/div[5]/div/div[2]/div/div/div/div
    wait until element is visible    xpath=html/body/div[4]/div/div/div/ul/li[2]    5
    Click element    xpath=html/body/div[4]/div/div/div/ul/li[2]
    Sleep    1
    Click Search button
    Sleep    5
    Click Export button
    Sleep    5
    Wait Until Created    C:\\Users\\${Accountname}\\Downloads\\Game Income by Partner View by DEVICE - Partner- BBIN Staging, Device- desktop.csv    10
    File Should Exist    C:\\Users\\${Accountname}\\Downloads\\Game Income by Partner View by DEVICE - Partner- BBIN Staging, Device- desktop.csv
    Remove file    C:\\Users\\${Accountname}\\Downloads\\Game Income by Partner View by DEVICE - Partner- BBIN Staging, Device- desktop.csv
    Wait Until Removed    C:\\Users\\${Accountname}\\Downloads\\Game Income by Partner View by DEVICE - Partner- BBIN Staging, Device- desktop.csv    10

Incorrect Date format
    Open Broser and Login automatically
    Wait Until Element is Visible    xpath=html/body/div[1]/div/div/header/nav/div[2]/ul[1]/li/span/a[1]/em    2
    Click Menu Tree
    Click Player Transaction Report Link
    Sleep    1
    Click Element    xpath=html/body/div[1]/div/div/section/div/div[1]/div/form/div[3]/div[1]/div/div[2]/div/span/span/input
    Input Text    xpath=html/body/div[2]/div/div/div/div/div[1]/div/input    2017/05/01
    Click Element    xpath=html/body/div[1]/div/div/section/div/div[1]/div/form/div[5]/div[3]/div/div/div
    Wait until element is not visible    xpath=html/body/div[2]/div/div/div/div/div[1]/div/input
    ${yyyy}    ${mm}    ${d}    Get Time    year,month,day
    ${today}    Set Variable    ${yyyy}-${mm}-${d}
    #${today}    Get Current Date    result_format=%Y-%m-%d
    ${get_value_calander}    Get Value    xpath=html/body/div[1]/div/div/section/div/div[1]/div/form/div[3]/div[1]/div/div[2]/div/span/span/input
    should be equal    ${today}    ${get_value_calander}

End date value is early then Start date
    Open Broser and Login automatically
    Wait Until Element is Visible    xpath=html/body/div[1]/div/div/header/nav/div[2]/ul[1]/li/span/a[1]/em    2
    Click Menu Tree
    Click Player Transaction Report Link
    Sleep    1
    Click Element    xpath=html/body/div[1]/div/div/section/div/div[1]/div/form/div[3]/div[1]/div/div[2]/div/span/span/input
    wait until element is visible    xpath=html/body/div[2]/div/div/div/div/div[1]/div/input    5
    Input Text    xpath=html/body/div[2]/div/div/div/div/div[1]/div/input    2100-11-01
    Click Element    xpath=html/body/div[1]/div/div/section/div/div[1]/div/form/div[5]/div[3]/div/div/div
    Wait until element is not visible    xpath=html/body/div[2]/div/div/div/div/div[1]/div/input
    Click Search button
    wait until element is visible    xpath=html/body/div[1]/div/div/section/div/div[1]/div/form/div[4]/div[1]/div/div[2]/div/div    5
    ${Error_enddate}    get text    xpath=html/body/div[1]/div/div/section/div/div[1]/div/form/div[4]/div[1]/div/div[2]/div/div
    ${error_endtime}    get text    xpath=html/body/div[1]/div/div/section/div/div[1]/div/form/div[4]/div[2]/div/div[2]/div/div
    should be equal    ${Error_enddate}    End Date can not be before Start Date
    should be equal    ${error_endtime}    End Date can not be before Start Date

End time value is early then Start time
    Open Broser and Login automatically
    Wait Until Element is Visible    xpath=html/body/div[1]/div/div/header/nav/div[2]/ul[1]/li/span/a[1]/em    2
    Click Menu Tree
    Click Player Transaction Report Link
    Sleep    1
    Click Element    xpath=html/body/div[1]/div/div/section/div/div[1]/div/form/div[3]/div[2]/div/div[2]/div/span/input
    wait until element is visible    xpath=html/body/div[2]/div/div/div/div[1]/input    5
    Input Text    xpath=html/body/div[2]/div/div/div/div[1]/input    23:59:59
    Click Element    xpath=html/body/div[1]/div/div/section/div/div[1]/div/form/div[5]/div[3]/div/div/div
    Wait until element is not visible    xpath=html/body/div[2]/div/div/div/div[1]/input
    Click Search button
    wait until element is visible    xpath=html/body/div[1]/div/div/section/div/div[1]/div/form/div[4]/div[1]/div/div[2]/div/div    5
    ${Error_enddate}    get text    xpath=html/body/div[1]/div/div/section/div/div[1]/div/form/div[4]/div[1]/div/div[2]/div/div
    ${error_endtime}    get text    xpath=html/body/div[1]/div/div/section/div/div[1]/div/form/div[4]/div[2]/div/div[2]/div/div
    should be equal    ${Error_enddate}    End Date can not be before Start Date
    should be equal    ${error_endtime}    End Date can not be before Start Date
    #Test123
    #    File Should Exist    C:\\Users\\${Accountname}\\Downloads\\Game Income by Partner View by CURRENCY - Partner_ BBIN Staging, Currency_ CNY.csv
    #    ${GETFILE}    get file    C:\\Users\\${Accountname}\\Downloads\\npp-robot-master.zip
    #    log    ${GETFILE}
    #    Remove File    C:\\Users\\${Accountname}\\Downloads\\Game Income by Partner View by CURRENCY - Partner_ BBIN Staging, Currency_ CNY.csv
    #    Wait Until Removed    C:\\Users\\${Accountname}\\Downloads\\Test.txt
    #    Game Income by Partner View by GAME - Partner- BBIN Staging, Game- All Games.csv
    #    Create Session    BO    http://172.16.50.52:8082
    #    ${resp}=    Delete    BO    /api/players/Company/QAPlayer001
    #    Should Be Equal As Strings    ${resp.status_code}    200
