COUNT=0
func()
{
	$COUNT = $COUNT + 1
	echo "$COUNT"
	func $COUNT
}

	while true; do
		func 1			
	done	
