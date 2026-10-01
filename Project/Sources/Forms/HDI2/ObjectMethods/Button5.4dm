
var $params : Object

If (btnTrace)
	TRACE:C157
End if 

$params:=New object:C1471
$params.parameters:=New collection:C1472

$params.parameters.push(Form:C1466.salary2)

If (Form:C1466.salary3#0)
	$params.parameters.push(Form:C1466.salary3)
	Form:C1466.employees:=ds:C1482.Employee.query("salary >= :1 and salary <= :2"; $params)
Else 
	Form:C1466.employees:=ds:C1482.Employee.query("salary >= :1"; $params)
End if 







