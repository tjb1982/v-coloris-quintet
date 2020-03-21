\include "common.ly"
\include "maestoso/horn.ly"
\include "maestoso/tempos.ly"

maestoso-flute-horn-solo-cue = {
    \numericTimeSignature
    \clef "bass"
    s1*3
    s2 \clef "treble" s2
    s1
    s2. s2
    s1*4
    s2. \clef "bass" s4 \clef "treble" s2
    s1*3
    s2. s8 \clef "bass" s8
    s1*3
    \omit Staff.BarLine
}

maestoso-flute = \new Voice \relative c'' {
    \numericTimeSignature
    \compressFullBarRests
    \tag #'part {
        \override Hairpin.to-barline = ##f 
    }
    \time 4/4
    <<
        {
                a''1 \pp \< ~ ^\markup {\whiteout "colla parte"}
            |
                a4~ a2.~ \>
            |
                a2 ~ a2~ \! \fermata
            |
                a1 \< ~
            |
                a8. r16
            <<
                %%normal
                %{
                %    \once \override Staff.TimeSignature #'stencil = ##f
                %    g4 \p ( gis2 ~
                %|
                %    \time 5/4
                %    gis2.~ gis2~ \fermata
                %|
                %    \time 4/4
                %    gis1~ \>
                %|
                %    gis2 \ppp g!2~
                %|
                %    g2 f!2~
                %|
                %    f2. f,4--
                %    %f1~
                %|
                %    \time 6/4
                %    f4~ f2 ) \fermata \breathe
                %}

                %ossia
                %\new Staff \with {
                %    instrumentName = "flute ossia"
                %    shortInstrumentName = \markup {
                %        \center-column {
                %            \line { \flute-short-name }
                %            \line { "(oss.)" }
                %        }
                %    }
                %    alignAboveContext = #"flute-context"
                %    %firstClef = ##f
                %    fontSize = #-3
                %    \override StaffSymbol.staff-space = #(magstep -3)
                %    \override StaffSymbol.thickness = #(magstep -3)
                %} {
                    \numericTimeSignature
                    \once \override Staff.TimeSignature #'stencil = ##f
                {
                    g4 \p ( gis2 ~
                |
                    \time 5/4
                    gis2. \> gis,2~ \ppp \fermata
                |
                    \time 4/4
                    gis1~
                %|
                %    gis2 g!4.~ g8 \glissando _\markup { \teeny "(chromatic)" }
                %|
                %    bes,4 f'4. ) r8 f4~ (
                |
                    gis2 g!2~
                |
                    g4 f4. ) r8 f4~ (
                |
                    f4. r8 e,4 f4--
                |
                    \time 6/4
                    f4~ f2 ) \fermata \breathe
                    e4
                    %e8 f16 \tuplet 3/2 { g32 a b }
                    %e8 \tuplet 6/4 { f32 g a b c d }
                    c'4. g'8
                |
                    \time 4/4
                    d4 ( e4.~ e8 ) g,4 \espressivo
                |
                    %\tuplet 3/2 { r4 ees'-- des-- }
                    \tuplet 3/2 { r4 ees'4-- des,4-- }
                    ges'4 \tuplet 3/2 { r8 e! ( f }
                    %fis4 \tuplet 3/2 { r8 e32 ( fis g a b cis dis e64 fis }
                |
                    g'!4 g,,!2 ) r4
                |
                    r2 r4 %g4~

                %|
                %    g2 f!2~
                %|
                %    f2 e4-- f~
                %    %f1~
                %|
                %    \time 6/4
                %    \once \override Hairpin.circled-tip = ##t
                %    f4~ \> f2~ \fermata f4 \! ) r2
                }

                %%normal
                %{
                %    g'4 ( \! \> gis2 ~
                %|
                %    \time 5/4
                %    gis2. gis,2 \! \fermata )
                %|
                %    \time 4/4
                %    R1*4
                %|
                %    \time 6/4
                %    r4 r2 \fermata r4 r2
                %}
            >>
            %|
            %    \time 4/4
            %    %c2.~ \sfp \< c8 \f r8
            %    R1

            %    %\tuplet 3/2 { c4-- \p 4-- \< 4--}
            %    %\tuplet 3/2 { 4-- 4-- cis4-- }
            %    %f!4-- \rfz \> ( fis2.~
            %    %fis2 g2~ \pp | g2 ) c2~

            %    R1*2
            %|
            %    r2 r4
                \once \override Hairpin.circled-tip = ##t
                g4~ \<
            |
                g2 \pp \< c2~
            |
                c1~ \! \>
            |
                c2~ c4 \! \fermata r4
        }
        \tag #'part \cue-staff \horn-common-name \horn-short-name
            \quoteDuring "maestoso-horn" \maestoso-flute-horn-solo-cue
    >>
    |
        \bar "||"
        \allegretto
        \key c \major
        c'1~ \pp 
    |
        c1~ \<
    |
        \bar ".|:"
        c2 \> r2 \!
    |
        \time 2/4
        \tag #'score {
            \hideNotes \grace s8 \unHideNotes
        }
        R2
    |
        r4 g'8-.-- \pp \acciaccatura g8 g,16-. g-.
    |
        r4 g'8-.-- \acciaccatura g8 g,16-. r
    |
        r8 a---> \mf \tuplet 3/2 { c-- e-- fis-- }
    |
        gis8 ( \> b,4 ) r8 \!
    |
        r8 e,,4.~ \p ( \<
    |
        e4 \> d4 ) \!
    |
        \time 4/4
        r8 f \mf \< ( g-. ) c-. e-- g, ( c-. ) e-.
    |
        \tuplet 3/2 { f8-- \f \> c'-- f,-- }
        \tuplet 3/2 { e8-- f-- e-- }
         d8-- ( g,-. ) b-. d-. \!
    |
        r8 g, \< ( c-- ) d-- g-- g, ( c-- ) fis--
    |
        g8-- \f
        \tag #'part {
            \shape #'((0 . -2) (0 . 2) (0 . 0) (0 . 0)) Slur
        }
        \tag #'score {
            \shape #'((0 . -3) (0 . 3) (0 . 0) (0 . 0)) Slur
        }
        %d,4~ \sfp ( d16 \> g64 d' g d'
        d,4-> \fp ( g32 d' g d'
        g2~ \>
    |
        \time 2/4
        g2~ \pp
    |
        g4 ) d4 \<
    |
        \acciaccatura e!8 d8 ( g,4 ) f8--
    |
        c2 ~ \p \<
    |
        c8 c,8---> f8---> \ff bes--->
    |
        \time 4/4
        \key ees \major
        r2 r4
        \once \override Hairpin.circled-tip = ##t
        bes~ \<
    |
        \time 2/4
        bes2~ \p \>
    |
        bes8 \! \pp
        \acciaccatura c' bes4 ( bes,8-. )
    |
        r8 bes'8~ \< bes16 c-. g ( c-. )
    |
        \time 4/4
        bes8-- \> ( ees,4.~ ees8 \! ) r8 r4
    |
        \time 2/4
        R2
    |
        R2
    |
        a8 \mf ( a,~ \f \> 16 ) b-.-- c ( d )
    |
        e8 \mp ( g,~  g16 ) g ( f e' )
    |
        e8 \espressivo \p ( a, )
        e' \espressivo \mp ( a, )
        e' \espressivo \mf ( a, )
        e' \espressivo \f ( a, )
    |
        \bar "||"
        \time 4/4
        \key c \major
        r2 c'2~ \pp \<
    |
        c1~ \p
        \bar ":|."
}


maestoso-flute-part = \score {
    \removeWithTag #'score \new Staff = "flute-context" \with {
        instrumentName = \flute-name
    } \maestoso-flute
    \header {
        title = \maestoso-movement-number
        subtitle = ""
        instrument = ""
        composer = ""
    }
}
