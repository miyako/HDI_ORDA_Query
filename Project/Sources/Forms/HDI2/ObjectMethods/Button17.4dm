If (btnTrace)
	TRACE:C157
End if 


Form:C1466.employees:=Form:C1466.empsWithHighSalary.query("employer.name = :1"; "T@")

OBJECT SET VISIBLE:C603(*; "SubEmployees@"; True:C214)




