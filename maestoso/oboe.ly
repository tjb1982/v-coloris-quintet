\include "common.ly"
\include "maestoso/horn.ly"
\include "maestoso/flute.ly"
\include "maestoso/tempos.ly"

maestoso-oboe = \new Voice \relative c' {
    \numericTimeSignature
    \tag #'part {
        \override Hairpin.to-barline = ##f 
    }
    %\maestoso
    \time 4/4
        <<
        {
                R1 ^\markup {\whiteout "colla parte"}
            |
                e1 \f ~
            |
                2 ~ 2 \fermata
            |
                R1
            |
                r4 g \mp ( gis2 ) \>
            |
                \time 5/4
                2 ~ 4~ \p 2 \fermata
            |
                \time 4/4
                R1*3
            |
                r2 r4 \ppp f4~ \<
            |
                \time 6/4
                f4 \p \> ~ 2 \fermata
                %\piu-animato-stringendo
                r4 \! r2
            |
                \time 4/4
                R1
            |
                %\tuplet 3/2 { r4 r4 c4-- \pp \< }
                %\piu-ritenuto-e-allarg
                %r2
                %\tuplet 3/2 { r4 c-- \pp \< cis-- ( }
                %R1
                \tuplet 3/2 { r4 c4-- \f e4-- } c4-- ais~
            |
                ais4~ \rfz \> ais2 r4 \!
            |
                b!2.~ \p b8 d8-- \mp
            |
                d4-- ( c2. \> ~ 
            |
                c2 ) c2 \p ~
            |
                c2~ c4 \fermata \breathe c4~ \pp \<
        }
        \tag #'part \cue-staff \horn-common-name \horn-short-name
            \quoteDuring "maestoso-horn" \maestoso-flute-horn-solo-cue
        >>

    |

    %% Allegretto
        \bar "||"
        \allegretto
        \key c \major
        c1~
    |
        c2. \> r4 \! %r8 r4 r8 c4.~ \espressivo
    |
        R1
    |
        \time 2/4
        \grace s8
        R2*7
    |
        \time 4/4
        R1*3
    |
        \time 2/4
        r4
        r16 g'-.-- \mp fis ( g )
    |
        a8 \cresc ( d, ) r16 a'-.-- g ( a )
    |
        bes8 ( d, ) r16 bes'-.-- a ( bes )
    |
        bes8-- ( ees,~ ees16 ) ees-.-- d ( ees )
    |
        d8 \espressivo \mf \< ( c~ c16 ) c ( d ees
    |
        f8 ) c-- f-- ( \f \> bes^~
    |
        \time 4/4
        \key ees \major
        bes2. ) \p r4
    |
        \time 2/4
        r4 r16 ees,-.-- \mp d ( ees )
    |
        d8 \espressivo ( c~ c16 ) c ( d ees f8 ) c-- f-- bes--^~
    |
        \time 4/4
        bes2 \p \acciaccatura c'8 bes8 ( bes,4 ) r8
    |
        \time 2/4
        r4 r16 bes-.-- \mf c ( d )
    |
        d8 \p \espressivo ( ees~ ees16 ) ees-.-- d ( ees )
    |
        \key c \major
        e!4. \rfz r8
    |
        R2
    |
        \tempo "allargando"
        f,4 \p \espressivo
        4 \mp \espressivo
        4 \mf \espressivo
        4 \f \espressivo
    |
        \bar "||"
        \time 4/4
        \tempo "a tempo"
        r2 c2~ \p \<
    |
        c2~ \f \> 8 c4.~ \p

    %% Allegretto 2
        c8 r8 c''2.~ \pp \<
    |
        \time 2/4
        \tag #'score {
            \hideNotes \grace s8 \unHideNotes
        }
        c2 \! \>
    |
        r8 \! \acciaccatura a8 g4 ( g,8-. )
        r8 \acciaccatura a'8 g4 ( g,8-. )
        r8 a'4 ( e,8-. )
    |
        
        e4-^ \sf \once \override Hairpin #'minimum-length = #7 b''4~ \p \<
    |
        b4. \! \> r8 \!
    |
        R2
        \time 4/4
        r2
        r8 \! \acciaccatura d,8 c4 \p ( c,8-. )
    |
        r8 c''4 ( c,,8-. )
        r8 d''8~ ( \tuplet 3/2 { d8 c,,-. g'-. ) }
    |
        r8 d''4 ( g,,8-. )
        r8
        \tag #'part {
        \shape #'(
            ((0 . 0) (0 . 0.5) (0 . 1) (0 . 0))
            ((0 . 0.5) (0 . 0.5) (0 . 0) (0 . 0))
        ) Slur
        }
        d''4.~ \< (
    |
        d8-- \mp \> g,8-. \! )
        r4 r4
        r16 g,-.-- \mp fis ( g )
    |
        \time 2/4
        a8 \cresc ( d, ) r16 a'-.-- g ( a )
    |
        bes8 ( d, ) r16 bes'-.-- a ( bes )
    |
        bes8 ( ees,~ ees16 ) ees-.-- d ( ees )
    |
        d8 \espressivo \f \< ( c~ c16 ) c ( d ees
    |
        f8 ) c-- f-- \ff \> bes^~
    |
        \time 4/4
        \key ees \major
        %bes2~ \p \> bes2~
        bes2 \p \acciaccatura c'8 bes8 bes,4.~ \>
    |
        \time 2/4
        bes8 \pp r8 r16 ees,-.-- \mp d ( ees )
    |
        d8 \espressivo ( c~ c16 ) c ( d ees f8 ) c-- \tuplet 3/2 { ees-- f-- bes-- ^~ \> }
    |
        \time 4/4
        bes2 \p \acciaccatura c'8 bes8 ( bes,4.~ \<
    |
        \time 2/4
        bes8 \rfz \> g~ g16 ) bes-.-- \mf c ( d )
    |
        d8 \p \espressivo ( ees~ ees16 ) ees-.-- d ( ees )
    |
        \key c \major
        e!4. \rfz r8
    |
        R2
    |
        \tempo "allargando"
        f,4 \p \espressivo
        4 \mp \espressivo
        4 \mf \espressivo
        4 \f \espressivo
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
