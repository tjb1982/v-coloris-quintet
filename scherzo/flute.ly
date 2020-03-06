\include "common.ly"
\include "scherzo/tempos.ly"

scherzo-flute = \new Voice \relative c' {
    \tag #'part {
        \override Hairpin.to-barline = ##f 
    }
    \allegro-scherzando
    \time 6/8
    |
        R4.*4
    |
        r4. \qr f'8-- \pp
    |
        c'8. \p \> ( b16-. a-. g-. f8. e16-. d-. c-.
    |
        b8-- \pp ) \qr r4.
    |
        \time 9/8
        R4.*3
    |
        \time 6/8
        %\override TextSpanner.bound-details.left.text = \markup {\small "flz., breathy"}
        \repeat tremolo 8 { d32 ( \p \espressivo ^\markup { \italic "flz., breathy" } } d,8-. ) r4.
    |
        \repeat tremolo 6 { d32 \espressivo \mp ^\markup { \italic "sim." } } r8.
        r8 cis-. \p cis'-.
    |
        r4. cis'8 ( cis,-. ) cis''-.->
    |
        cis,-. \> cis,-. cis'-.-> cis,-. cis'-.-> \pp cis-.
    |
        \time 9/8
        ais8-- r8 r8 cis-. cis-.
        gis-- r8 cis-. cis-.
    |
        fis,--
}


scherzo-flute-part = \score {
    \transpose f g \scherzo-flute
    \header {
        title = \scherzo-movement-number
        subtitle = ""
        instrument = ""
        composer = ""
    }
}
