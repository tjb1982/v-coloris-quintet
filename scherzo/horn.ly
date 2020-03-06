\include "common.ly"
\include "scherzo/tempos.ly"

scherzo-horn = \transpose c g \new Voice \relative c {
    \tag #'part {
        \override Hairpin.to-barline = ##f 
    }
    \allegro-scherzando
    \time 6/8
        r8 c' \f ( g ) ees'-. ees ( bes )
    |
        f'4.-- c4.--
    |
        \tag #'part { \override Hairpin.height = 0.4 }
        f,4.-- \fp \> r4. \!
        \revert Hairpin.height
    |
        c4. \rfz \> ^\markup { \italic "cuivré" } ~ c4 ~ c8 \p
    |
        %r4. \! bes'4. \mf \espressivo
        r4. bes'4. \mf \espressivo
    |
        \time 9/8
        ges!4. \p ~ ( ges4. aes!4 \< e8 )
    |
        \time 6/8
        d4 \rfz \espressivo r8
        fis4._+ \sf
    |
        r8 a,4-> (
        fis'4. \mf \espressivo
    |
        eis8. \mp ) r8. r4.
}


scherzo-horn-part = \score {
    \transpose f g \scherzo-horn
    \header {
        title = \scherzo-movement-number
        subtitle = ""
        instrument = ""
        composer = ""
    }
}
