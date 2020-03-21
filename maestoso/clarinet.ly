\include "common.ly"
\include "maestoso/horn.ly"
\include "maestoso/tempos.ly"

\addQuote "maestoso-horn-ees" { \transpose c ees \maestoso-horn }

maestoso-clarinet = \new Voice \relative c' {
    \numericTimeSignature
    \tag #'part {
        \override Hairpin.to-barline = ##f 
    }
    \time 4/4
    <<
        {
                R1 ^\markup {\whiteout "colla parte"}
            |
                r4 a2. \f ~
            |
                a2 ~ a2 \fermata
            |
                R1
            |
                r4 gis \mp ~ gis2 \>
            |
                \time 5/4
                2 ~ 4~ \p 2 \fermata
            |
                \time 4/4
                R1*2
            |
                r4 a2. \pp (
            |
                %r4 c2. \ppp \< ~
                bes2 \< c2~
            |
                \time 6/4
                c4 \mp \> ~ 2 \fermata r4 ) \! r2
            |
                \time 4/4
                R1
            |
                %\tuplet 3/2 { r4 c-- \pp \< c-- }
                %\tuplet 3/2 { c-- c-- cis-- ( }
                %R1
                r4 f,4~ ( \p \< \tuplet 3/2 { f e ) cis-- }
            |
                g'4 \rfz ~ g2 \> r4 \!
            |
                a2~ \p ( a4 g8 ) r8
            |
                ees2. \< ees4--
            |
                ees4-- ( des2 ) g4---> \! \>
            |
                g2~ g4 \fermata \! r4
        }
        \tag #'part \cue-staff \horn-common-name \horn-short-name
            \quoteDuring "maestoso-horn-ees" {
                \numericTimeSignature
                \clef "treble"
                s1*5
                s2. s2 
                s1*4
                s2. s4 s2
                s1*3
                s2. s8 s8
                s1*3
            }
    >>
    |
        \bar "||"
        \allegretto
        \key c \major
        r8 e' \mf \< ( g-. ) c-. e-- a, ( c-. ) e-.
    |
        f8-- \f \> ( g16 ) f e8 ( f16 ) e d8-- ( g,-. ) b-. d-. \!
    |
        \bar ".|:"
        r8 e, \< ( g-. ) b-. e-- ( f,-. ) a-. d-.
    |
        \time 2/4
        \acciaccatura d c-- \! \> ( g-. ) r16 \! c-. \cresc b ( c )
    |
        d8 ( g,-. ) r16 d'-. c ( d )
    |
        e8 ( g,-. ) r16 e'-. d ( e )
    |
        fis8-- \f a,---> \sf \tuplet 3/2 { c8-- e-- fis-- }
    |
        gis8 ( b,8~ \rfz b16 ) c ( b c
    |
        b4. \> ) r8 \!
    |
        R2
    |
        \time 4/4
        r4 f, \mp ^\markup { \italic dolce } c'4. g8
    |
        \acciaccatura a'8 g4 ( g'2~ g8 ) r8
    |
        \acciaccatura a8 g8 ( g,4.~ \>
        g4 ) a4-- ( \p \<
    |
        g4-- \mp \> ) r4 \! r2
    |
        \time 2/4
        r4 d,4~ \p \< (
    |
        2 \mf \! \>
    |
        ees4 \! ) bes'4~ (
    |
        bes8 aes8~ aes4 ) \p \<
    |
        f4-- bes4-- \ff
    |
        \time 4/4
        \key ees \major
        \bar "||"
        r8 f \p \< ( g bes ees f g bes )
    |
        \time 2/4
        bes8 \rfz \> ( d,4 ) r8 \!
    |
        bes8 \espressivo ( aes4 ) r8
    |
        r4 f4~ ( \<
    |
        \time 4/4
        f4 \> g8 \p \< bes ees f g bes
    |
        \time 2/4
        d8 \rfz \> c4 ) r8 \!
    |
        c4~ \espressivo c16 g-.-- f ( ees )
    |
        d8 \rfz ( cis4 ) r8
    |
        R2
    |
        g4 \p \espressivo
         4 \mp \espressivo
         4 \mf \espressivo 
         4 \f \espressivo
    |
        \bar "||"
        \time 4/4
        \key c \major
        r8 e' \ff \> ( g-. ) c-. e-- a, ( c-. ) e-.
    |
        f8-- ( g16 ) f e8 ( f16 ) e d8-- ( g,-. ) b-. d-. \mf
        \bar ":|."
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
