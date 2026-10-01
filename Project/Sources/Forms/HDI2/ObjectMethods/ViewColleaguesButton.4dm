If (btnTrace)
	TRACE:C157
End if 


Case of 
		
	: (Form:C1466.employeeSelected.manager#Null:C1517)
		OBJECT SET VISIBLE:C603(*; "colleagues"; True:C214)
		Form:C1466.colleagues:=Form:C1466.employeeSelected.manager.directReports
		
	Else 
		ALERT:C41("This employee is a top manager")
		OBJECT SET VISIBLE:C603(*; "colleagues"; False:C215)
End case 

