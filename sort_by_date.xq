


declare variable $DATE as xs:date external ;

<EVENTS>
{
let $a := doc("xml/fdc-eventos-2012.xml")//EVENT[xs:date(DATE) = $DATE]
for $b in $a 
 return $b
}
</EVENTS>

		 
	
