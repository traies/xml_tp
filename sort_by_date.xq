


declare variable $DATE as xs:date external ;

<EVENT>
{
let $a := doc("xml/fdc-eventos-2012.xml")//EVENT[xs:date(text(DATE)) = $DATE]
for $b in $a 
 return $b
}
</EVENTS>

		 
	
