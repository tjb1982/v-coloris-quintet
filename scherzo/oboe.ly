\include "common.ly"
\include "scherzo/tempos.ly"

scherzo-oboe = \new Voice \relative c' {
    \tag #'part {
        \override Hairpin.to-barline = ##f 
    }
    \allegro-scherzando
    \time 6/8
    R4.*4
    |
        r8 f \f ( c ) a'8-. a ( f )
    |
        c'8.-> ( b16-. a-. g-. f8. ) r8.
    |
        e8-- e ( d ) f8.-> \> ( e16-. d-. c-.
    |
        \time 9/8
        bes8-- \mp \cresc ) bes ( des )
        bes-. bes ( des )
        bes-. bes ( des )
    |
        \time 6/8
        d!8. \ff ( c16-. bes-. a-.
        gis!4---> ) r8
        %d!8-- \f ) \qr r4.
    |
        d'8.-- \p \espressivo r8.
        \qr cis8 \p (
    |
        cis'8-. ) r8 cis8-.
}


scherzo-oboe-part = \score {
    \transpose f g \scherzo-oboe
    \header {
        title = \scherzo-movement-number
        subtitle = ""
        instrument = ""
        composer = ""
    }
}
