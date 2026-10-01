//%attributes = {}
//Business logic related to the DataStore
Form:C1466.employees:=ds:C1482.Employee.all()

//Query with placeholders
Form:C1466.salary:=0
Form:C1466.lastName:="F"
Form:C1466.lastName2:="C"
Form:C1466.salary2:=36500
Form:C1466.salary3:=38000


//Query without placeholders
Form:C1466.query1:="firstName = 'e@'"
Form:C1466.query2:="salary >= 70000"
Form:C1466.query3:="firstName = a@ and lastName = s@"
Form:C1466.selectQ1:=1
Form:C1466.selectQ2:=0
Form:C1466.selectQ3:=0


//Query with asking queryPlan and queryPath
Form:C1466.employeeFirstName:="A"
Form:C1466.companyName:="X"
Form:C1466.queryPlan:=0
Form:C1466.queryPath:=0

ARRAY TEXT:C222(_DisplayOption; 2)
_DisplayOption{1}:="Query plan"
_DisplayOption{2}:="Query path"
_DisplayOption:=1
OBJECT SET VISIBLE:C603(*; "queryPlan@"; False:C215)
OBJECT SET VISIBLE:C603(*; "queryPath@"; False:C215)


//Use recursive link (1/2)
OBJECT SET ENABLED:C1123(*; "ViewColleaguesButton"; False:C215)
OBJECT SET VISIBLE:C603(*; "colleagues"; False:C215)


//Use recursive link (2/2)
Form:C1466.managerLastName:="F"
Form:C1466.manager2LastName:="W"


//Query an entity selection
Form:C1466.empsWithHighSalary:=ds:C1482.Employee.query("salary >= :1"; 70000)
OBJECT SET VISIBLE:C603(*; "SubEmployees@"; False:C215)

//Extract properties of an entity selection
Form:C1466.companies:=ds:C1482.Employee.newSelection()
Form:C1466.lastNames:=New collection:C1472