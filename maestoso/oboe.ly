\include "common.ly"
\include "maestoso/horn.ly"
\include "maestoso/flute.ly"
\include "maestoso/tempos.ly"

maestoso-oboe = \new Voice \relative c' {
    \tag #'part {
        \override Hairpin.to-barline = ##f 
    }
    %\maestoso
    \time 4/4
        <<
        {
                R1 ^\markup {\whiteout "colla parte"}
            |
                e1 \f \> ~
            |
                2 ~ 2 \p \fermata
            |
                R1
            |
                r4 g \f ( gis2 ) \>
            |
                2 ~ 4~ \p 4 \fermata
            |
                R1*4
            |
                \time 6/4 f4 \p \> ~ 2 \fermata ~
                %\piu-animato-stringendo
                4 \! r2
            |
                \time 4/4
                R1
            |
                \tuplet 3/2 { r4 r4 c4-- \pp \< }
                %\piu-ritenuto-e-allarg
                \tuplet 3/2 { c4-- 4-- cis-- ( }
            |
                ais4~ \rfz \> ais2 ) r4 \!
            |
                b!2.~ \p b8 d8-- \<
            |
                d4-- ( c2. ~ 
            |
                c2 ) c2 \! \> ~
            |
                c2~ c4~ \fermata \! c4~
                \bar "||"
        }
        \tag #'part \cue-staff \horn-short-name
            \quoteDuring "maestoso-horn" \maestoso-flute-horn-solo-cue
        >>

        |
            \allegretto
            \key c \major
            c1~ \espressivo
        |
            c8 r8 r4 r8 c4. \espressivo
        |
            r4 c''2.~ \pp \<
        |
            c2 \! \> r2 \!
}


maestoso-oboe-part = \score {
    \new Staff \with { instrumentName = \oboe-name } \maestoso-oboe
    \header {
        title = \maestoso-movement-number
        subtitle = ""
        instrument = ""
        composer = ""
    }
}
