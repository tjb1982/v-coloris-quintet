\include "common.ly"
\include "scherzo/tempos.ly"

scherzo-clarinet = \transpose c ees \new Voice \relative c {
    \tag #'part {
        \override Hairpin.to-barline = ##f 
    }
    \allegro-scherzando
    \time 6/8
        R4.*2
    |
        %r8 g \f ( c, ) e'-. e ( c )
        r8 c4 \f e'4 ( g,8 )
    |
        %\tag #'part { \override Hairpin.height = 0.4 }
        c4.-- \fp \> r8 \! g4 \pp \< ~
        %\revert Hairpin.height
    |
        g4. \rfz f'8. \f ( e16-. d-. c-.
    |
        b4. \> ais8 \! ) \qr
    |
        \time 9/8
        cis,4. \p ( dis4. e4 \< gis8 )
    |
        \time 6/8
        g!4-- \rfz \espressivo r8
        r8 gis8 \mp \< ( cis8 )
    |
        d8. \f ( cis16-. b-. a-.
        gis!4.-- \> ~
    |
        gis8. \mp ) r8. r4.
    |
        R4.*2
    |
        \compoundMeter #'((5 8) (4 8))
        fis''8 ( b, fis'8-. ) \qr
        
        
}


scherzo-clarinet-part = \score {
    \transpose f g \scherzo-clarinet
    \header {
        title = \scherzo-movement-number
        subtitle = ""
        instrument = ""
        composer = ""
    }
}
