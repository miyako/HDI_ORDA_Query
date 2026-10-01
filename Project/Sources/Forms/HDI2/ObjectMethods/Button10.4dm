C_OBJECT:C1216($queryOption)

If (btnTrace)
	TRACE:C157
End if 


Form:C1466.requiredQueryPlan:=""
Form:C1466.requiredQueryPath:=""

$queryOption:=New object:C1471("queryPlan"; (Form:C1466.queryPlan=1); "queryPath"; (Form:C1466.queryPath=1))

If (Form:C1466.companyName#"")
	Form:C1466.employees:=ds:C1482.Employee.query("firstName =:1 and employer.name=:2"; Form:C1466.employeeFirstName+"@"; Form:C1466.companyName+"@"; $queryOption)
Else 
	Form:C1466.employees:=ds:C1482.Employee.query("firstName =:1"; Form:C1466.employeeFirstName+"@"; $queryOption)
End if 

If (Form:C1466.queryPlan=1)
	Form:C1466.requiredQueryPlan:=Form:C1466.employees.queryPlan
End if 
If (Form:C1466.queryPath=1)
	Form:C1466.requiredQueryPath:=Form:C1466.employees.queryPath
End if 

_DisplayOption:=1
If (Form:C1466.queryPath=1)
	_DisplayOption:=2
End if 

OBJECT SET VISIBLE:C603(*; "queryPlan@"; (_DisplayOption=1))
OBJECT SET VISIBLE:C603(*; "queryPath@"; (_DisplayOption=2))
