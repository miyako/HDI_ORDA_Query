If (btnTrace)
	TRACE:C157
End if 

If (Form:C1466.lastName2#"")
	Form:C1466.employees:=ds:C1482.Employee.query("lastName =:1 or lastName = :2"; Form:C1466.lastName+"@"; Form:C1466.lastName2+"@")
Else 
	Form:C1466.employees:=ds:C1482.Employee.query("lastName =:1"; Form:C1466.lastName+"@")
End if 
