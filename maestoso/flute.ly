\include "common.ly"
\include "maestoso/horn.ly"
\include "maestoso/tempos.ly"

maestoso-flute-horn-solo-cue = {
    \clef "bass"
    s1*3
    s2 \clef "treble" s2
    s1*6
    s2. \clef "bass" s4 \clef "treble" s2
    s1*3
    s2. s8 \clef "bass" s8
    s1*3
}

maestoso-flute = \new Voice \relative c'' {
    \compressFullBarRests
    \tag #'part {
        \override Hairpin.to-barline = ##f 
    }
    \time 4/4
    <<
        {
                a''1 \pp \< ~ ^\markup {\whiteout "colla parte"}
            |
                a4 a2. \> ~
            |
                a2 ~ a2 \! \fermata \breathe
            |
                a1 \< ~
            |
                a8. r16 g4 ( \! \> gis2 ~
            |
                gis2. ) gis,4 \! \fermata
            |
                R1*4
            |
                \time 6/4
                %xxxr4 r2 \fermata r2.
                c,,4~ \ppp c2 \fermata \breathe c4-- \< 4-- 4--
            |
                \time 4/4
                %xxxR1*6
                c1~ \p \<
                \tuplet 6/4 { c4 \< 4-- 4-- 4-- 4-- cis4-- }
                %f!4-- \rfz \> ( fis2 ) \breathe g4~ ( \pp
                c!4~ \rfz \> 2 \breathe g'4~ ( \pp
                g1~ | g4 c2.~
                c1~
            |
                %r4 c4~ c4~ \fermata c4~
                %xxxR1
                c2 ) c'4~ \fermata c4~
                \bar "||"
        }
        %\tag #'part \maestoso-horn-solo "bass" "treble"
        \tag #'part \cue-staff \horn-short-name
            \quoteDuring "maestoso-horn" \maestoso-flute-horn-solo-cue
    >>
    |
        \allegretto
        \key c \major
        c1~ \pp
    |
        c1~
    |
        c2 r2
}


maestoso-flute-part = \score {
    \new Staff \with { instrumentName = \flute-name } \maestoso-flute
    \header {
        title = \maestoso-movement-number
        subtitle = ""
        instrument = ""
        composer = ""
    }
}
