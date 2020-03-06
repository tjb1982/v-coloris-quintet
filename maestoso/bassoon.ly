\include "common.ly"
\include "maestoso/tempos.ly"

maestoso-bassoon = \new Voice \relative c {
    \tag #'part {
        \override Hairpin.to-barline = ##f 
    }
    %\maestoso
    \clef "bass"
    \time 4/4
    <<
        {
                R1 ^\markup {\whiteout "colla parte"}
            |
                r4 d,2. \f \> ~
            |
                d2 a' \p \fermata
            |
                R1
            |
                r4 cis,4~ \f 2 \>
            |
                cis'2. bis4 \p \fermata
            |
                r4 gis4---> \f \tuplet 3/2 { cis-- e-- \> a ~ }
            |
                a1 \p ~
            |
                2 \< bes4 \mp g4--
            |
                e2. \rfz r4
            |
                \time 6/4
                f4 \p \> ~ 2 \fermata ~
                %\piu-animato-stringendo
                4 \! r2
            |
                \time 4/4
                R1
            |
                r2
                %\piu-ritenuto-e-allarg
                \tuplet 3/2 { r4 c-- \p \< cis-- }
            |
                f4-- \rfz \> ( e2 ) r4 \!
            |
                f4 \p ( e4 ~ e4. ) r8
            |
                aes,1 \< ~
            |
                aes2 bes-- \! \>
            |
                c4 c,4~ c4 \fermata \breathe g'4 (
                \bar "||"
        }

        \tag #'part \cue-staff \horn-short-name \quoteDuring "maestoso-horn" {
            \clef "bass"
            s1*7
            \clef "tenor"
            s1*3
            s2. \clef "bass" s2.
            \clef "tenor"
            s1*3
            s2. s8 \clef "bass" s8
            s1*3
        }
    >>
    % Second theme
    |
        \allegretto
        \key c \major
        c1~ \pp
    |
        c2. ) r4
    |
        %r2 \clef "tenor" c''4. \f ( g8 )
        r2 \clef "tenor" c''4. \p ( f,8 )
    |
        %c,4. r8
        \time 2/4
        g4. \< ( c,8-. ) g2 \mf
}


maestoso-bassoon-part = \score {
    \new Staff \with { instrumentName = \bassoon-name } \maestoso-bassoon
    \header {
        title = \maestoso-movement-number
        subtitle = ""
        instrument = ""
        composer = ""
    }
}
