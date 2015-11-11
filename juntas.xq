declare function local:findPlayTitle($play as node()) as node() {
  let $play := doc("xml/fdc-obras-2012.xml")/PLAYS/PLAY[./ID_PLAY = $play]
  return $play/TITLE/text()
};
declare variable $DATE as xs:date external ;

<table>
{
for $a in doc("xml/fdc-eventos-2012.xml")/EVENTOS/EVENT[ DATE = $DATE]
  let $play := local:findPlay($a/ID_PLAY)
   return
   <row>
    <title> {
      local:findPlay($a/ID_PLAY)
    }
    </title>
    <description> {
    } </description>
    <place> {} </place>
    <time> {} </time>
    <artist> {} </artist>
    <bio> {} </bio>
   </row>
}
</table>
