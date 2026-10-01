If (btnTrace)
	TRACE:C157
End if 


Case of 
	: (Form:C1466.selectQ1=1)
		Form:C1466.employees:=ds:C1482.Employee.query(Form:C1466.query1)
	: (Form:C1466.selectQ2=1)
		Form:C1466.employees:=ds:C1482.Employee.query(Form:C1466.query2)
	: (Form:C1466.selectQ3=1)
		Form:C1466.employees:=ds:C1482.Employee.query(Form:C1466.query3)
		
End case 
