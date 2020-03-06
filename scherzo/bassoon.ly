\include "common.ly"
\include "scherzo/tempos.ly"

scherzo-bassoon = \new Voice \relative c {
    \tag #'part {
        \override Hairpin.to-barline = ##f 
    }
    \allegro-scherzando
    \clef "bass"
    \time 6/8
        R4.*2
    |
        r8 g'' \f ( g, ) c,-. g ( e' )  %e, ( e' )
    |
        bes4.-- \fp \< c4.--
    |
        f,4.-- \rfz g'4.-- \mp ~
    |
        g4. \< f4. \mf \espressivo
    |
        \time 9/8
        R4.*3
    |
        \time 6/8
        c,4 \rfz \espressivo r8 cis'4. \mp \<
    |
        g!4 \rfz r8 cis'4. \mp \espressivo ~
    |
        cis8 cis, \pp ( cis' )
}


scherzo-bassoon-part = \score {
    \transpose f g \scherzo-bassoon
    \header {
        title = \scherzo-movement-number
        subtitle = ""
        instrument = ""
        composer = ""
    }
}
