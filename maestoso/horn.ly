\include "common.ly"
\include "maestoso/tempos.ly"

maestoso-horn = \new Voice \relative c {
    \numericTimeSignature
    \tag #'part {
        \override Hairpin.to-barline = ##f 
    }
    \maestoso
    \time 4/4
        r4 ^\markup {\whiteout "solo ad lib."} a \p \< cis e
    |
        f!2. ( \ff \> e4 )
    |
        e2 ( cis ) \f \fermata
    |
        r4 e4 \p \< a8 ( cis4 ) e8
    |
        f!2. \mf \> e4 ( ~
    |
        \time 5/4
        e4. dis8 ) 4~ 2 \fermata \p
    |
        \time 4/4
        R1
    |
        r4 \p \< cis2 ( e4 )
    |
        f!4. ( \mp e8 ) d4 bes'4--
    |
        c,2 \rfz g4 ( bes )
    |
        \time 6/4
        bes4-- ( \> aes2 ) \fermata \! \breathe
  
        \piu-animato-stringendo
        c,4-- \< g'-- c--
    |
        \time 4/4
        f4. \f e8
        d4 \< c--
    |
        \tuplet 3/2 { c'4---> \ff bes---> f---> }
        \tuplet 3/2 { e---> g,---> cis---> }
    |
        \piu-ritenuto-e-allarg
        cis4---> ( d2 ) \> \breathe dis4 ( \mf \> ~
    |
        dis4 e2~ \autoBeamOff 
            \atempo
            e8 ) bes8-- \p ^\markup { \whiteout \italic "piu cogli altri" } \<
            \autoBeamOn
    |
        bes4-- ( aes2 ) g4--
    |
        g4-- \! \> ( f2. ~
    |
        f2 ) e4~ \! \fermata e4~ 
    |
        \bar "||"
        \allegretto
        \key c \major
        e8 r8 r4 r2
        %R1
    |
        %r2 c2~
        r2 r8 c8~ \p \< c8 c16-. c16-.
    |
        \bar ".|:"
        c4 \mp \> ( c'2 ) c'4 \p \< ~
    |
        \time 2/4
        \tag #'score {
            \hideNotes \grace a8 \unHideNotes
        }
        c4. \! \> r8 \!
    |
        R2*2
    |
        a,4-- \< c--
    |
        r8 \once \override Hairpin #'minimum-length = #7
            b4. \sfp \< ~ ^\markup { \italic "stopped" }
        b8 b8 \rfz ~ b16 c ( b c
    |
        b4. ) \> r8 \!
    |
        \time 4/4
        R1
    |
        r2 r8 g'~ \p ^\markup { \italic open } g \tuplet 3/2 { g16-. 16-. 16-. }
    |
        g4-- d~
        d8 r8 a8-- \< ( b16 ) c
    |
        b4-- \mp \> r4 \!
        r2
    |
        \time 2/4
        %r4 d,4~ \pp \< d2~ d2~ \! \> d2 
        R2*3
    |
        ees,2-- \p \<
    |
        aes,4-- ees'4-- \ff
    |
        \time 4/4
        \key ees \major
        r8 bes \p \< ( ees f g bes ees4
    |
        \time 2/4
        d4 \rfz \> ) r4 \!
    |
        R2
    |
        aes4~ \< aes \mf
    |
        \time 4/4
        r8 bes, \p \< ( ees f g aes ees' d~
    |
        \time 2/4
        d4. \rfz \> ) r8 \!
    |
        aes4.-+ \espressivo r8 %r16 ees-- d-- ees--
    |
        e4. \rfz r8
    |
        R2
    |
        c4 \p \espressivo
         4 \mp \espressivo
         4 \mf \espressivo
         4 \f \espressivo
    |
        \bar "||"
        \time 4/4
        \key c \major
        c1~ \ff \>
    |
        c2~ 8 8~ \p \< 8 16-. 16-. \!
        \bar ":|."
}

\addQuote "maestoso-horn" { \maestoso-horn }

maestoso-horn-part = \score {
    \removeWithTag #'score \new Staff \with { instrumentName = \horn-name } \transpose c g \maestoso-horn
    \header {
        title = \maestoso-movement-number
        subtitle = ""
        instrument = ""
        composer = ""
    }
}
