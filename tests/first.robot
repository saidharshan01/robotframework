*** Settings ***
Documentation

*** Variables ***

*** Test Cases ***
${hashtable} 	myname 	myvalue
${isempty} = 	Call Method 	${hashtable} 	isEmpty
    Should  Not  Be  True 	${isempty}
${value} = 	Call Method 	${hashtable} 	get 	myname
    Should Be Equal 	${value} 	myvalue
    Call Method 	${object} 	kwargs 	name=value 	foo=bar
    Call Method 	${object} 	positional 	escaped\=equal
