
C_COLLECTION:C1488($orderCollection)
C_OBJECT:C1216($orderObject)

If (btnTrace)
	TRACE:C157
End if 


$orderCollection:=New collection:C1472

$orderObject:=New object:C1471
$orderObject.propertyPath:="employer.name"
$orderCollection.push($orderObject)

$orderObject:=New object:C1471
$orderObject.propertyPath:="department"
$orderObject.descending:=False:C215
$orderCollection.push($orderObject)

$orderObject:=New object:C1471
$orderObject.propertyPath:="salary"
$orderObject.descending:=True:C214
$orderCollection.push($orderObject)

Form:C1466.employees:=ds:C1482.Employee.all().orderBy($orderCollection)
