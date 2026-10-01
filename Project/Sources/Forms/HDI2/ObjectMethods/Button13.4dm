If (btnTrace)
	TRACE:C157
End if 


Form:C1466.employees:=ds:C1482.Employee.query("manager.lastName =:1"; Form:C1466.managerLastName+"@")
