declare variable $DATE as xs:date external ;
<root>
  <date>
    {
    $DATE
    }
  </date>

  <table>
  {

  for $a in doc("xml/fdc-eventos-2012.xml")/EVENTOS/EVENT[ DATE = $DATE]
  let $play := doc("xml/fdc-obras-2012.xml")/PLAYS/PLAY[./ID_PLAY = $a/ID_PLAY]
  let $place := doc("xml/fdc-sedes-2012.xml")/PLACES/PLACE[./ID_PLACE = $a/ID_PLACE]
  let $artist := doc("xml/fdc-artistas-2012.xml")/ARTISTS/ARTIST[./ID_ARTIST = $a/ID_ARTIST1]
   return
    <row>
      {
        $play/TITLE
      }

      {
        $play/SYNOPSIS_ES
      }

      <PLACE>
        <NAME>{$place/TITLE/text()}</NAME>
        <ADDRESS>{$place/ADDRESS/text()}</ADDRESS>
      </PLACE>
      {
          $a/TIME
      }
      <ARTIST>
        {$artist/NAME}
      </ARTIST>
      {
        $artist/BIO_ES
      }
    </row>
    }
  </table>
</root>
