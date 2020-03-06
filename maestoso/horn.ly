\include "common.ly"
\include "maestoso/tempos.ly"

maestoso-horn = \new Voice \relative c {
    \tag #'part {
        \override Hairpin.to-barline = ##f 
    }
    \maestoso
    \time 4/4
        r4 ^\markup {\whiteout "solo ad lib."} a \p \< cis e
    |
        f!2. \ff e4 \>
    |
        e2 cis \p \fermata
    |
        r4 e4 \< a8 ( cis4 ) e8
    |
        f!2. \f \> e4 ( ~
    |
        e dis4 ) 4~ 4 \fermata \p
    |
        R1
    |
        a4 ( \p \< cis2 ) e4
    |
        f!4. \mp e8 d4 bes'4--
    |
        c,2 \rfz g4 ( bes )
    |
        \time 6/4
        bes4-- ( \> aes2 ) \fermata \! \breathe
  
        \piu-animato-stringendo
        c,4-- \f g'-- c--
    |
        \time 4/4
        f4. e8
        d4 \< c->
    |
        \tuplet 3/2 { c'4---> \ff bes---> f---> }
        \piu-ritenuto-e-allarg
        \tuplet 3/2 { e---> g,---> cis---> }
    |
        cis4---> ( d2 ) \> \breathe dis4 ( \p ~
    |
        dis4 e2~ e8 ) bes8-- \<
    |
        bes4-- ( aes2 ) g4--
    |
        g4-- \! \> ( f2. ~
    |
        f2 ) e4~ \! \fermata e4
        \bar "||"
    |
        \allegretto
        \key c \major
        R1
    |
        %r2 c2~
        r2 r8 c8~ \p \< c8 c16-. c16-.
    |
        c4 \mp \> ( c'2 ) c'4 \p \< ~
    |
        c4. \! \> r8 \!
}

\addQuote "maestoso-horn" { \maestoso-horn }

maestoso-horn-part = \score {
    \new Staff \with { instrumentName = \horn-name } \transpose c g \maestoso-horn
    \header {
        title = \maestoso-movement-number
        subtitle = ""
        instrument = ""
        composer = ""
    }
}
