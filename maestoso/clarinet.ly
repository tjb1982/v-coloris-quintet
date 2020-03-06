\include "common.ly"
\include "maestoso/horn.ly"
\include "maestoso/tempos.ly"

\addQuote "maestoso-horn-ees" { \transpose c ees \maestoso-horn }

maestoso-clarinet = \new Voice \relative c' {
    \tag #'part {
        \override Hairpin.to-barline = ##f 
    }
    \time 4/4
    <<
        {
                R1 ^\markup {\whiteout "colla parte"}
            |
                r4 a2. \f \> ~
            |
                a2 ~ a2 \p \fermata
            |
                R1
            |
                r4 gis \f ~ gis2 \>
            |
                2 ~ 4~ \p 4 \fermata
            |
                R1*3
            |
                r4 c2. \ppp \< ~
            |
                \time 6/4
                c4 \mp \> ~ 2 \fermata ~ 4 \! r2
            |
                \time 4/4
                R1
            |
                \tuplet 3/2 { r4 r4 c-- \pp \< }
                \tuplet 3/2 { c-- c-- cis-- ( }
            |
                g4 \rfz ~ g2 ) \> r4 \!
            |
                a2 \p ( g4. ) r8
            |
                ees2. \< ees4--
            |
                ees4-- ( des2 ) g4---> \! \>
            |
                g2~ g4 \fermata \! r4
                \bar "||"
        }
        \tag #'part \cue-staff \horn-short-name
            \quoteDuring "maestoso-horn-ees" {
                \clef "treble"
                s1*3
                s2 s2
                s1*6
                s2. s4 s2
                s1*3
                s2. s8 s8
                s1*3
            }
    >>
    \allegretto
    |
        \key c \major
        r8 e' \mf \< ( g-. ) c-. e-- a, ( c-. ) e-.
    |
        f8-- \f \> ( g16 ) f e8 ( f16 ) e d8-- ( g,-. ) \mf b-. d-.
    |
        r8 e, \< ( g-. ) b-. e-- ( f,-. ) a-. d-.
    |
        \time 2/4
        \acciaccatura d c-- \! \> ( g-. ) r16 \! c-. b ( c )
    |
        \time 4/4
}


maestoso-clarinet-part = \score {
    \new Staff \with { instrumentName = \clarinet-name } \transpose c ees \maestoso-clarinet
    \header {
        title = \maestoso-movement-number
        subtitle = ""
        instrument = ""
        composer = ""
    }
}
