\include "common.ly"
\include "maestoso/tempos.ly"

maestoso-bassoon = \new Voice \relative c {
    \numericTimeSignature
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
                r4 d,2. \f ~
            |
                d2 a \fermata
            |
                R1
            |
                r4 cis2. ( \mp \>
            |
                \time 5/4
                cis'2. bis2 ) \p \fermata
            |
                \time 4/4
                r4 gis4---> \f \tuplet 3/2 { cis-- e-- \> a-- }
            |
                a1 \p ~
            |
                2 \< bes4 \mp g4--
            |
                e2. \rfz r4
            |
                \time 6/4
                f4 \p \> ~ 2 \fermata
                %\piu-animato-stringendo
                r4 \! r4 \clef "tenor" g-- \mf \<
            |
                \time 4/4
                c4. g'8 aes4 bes4
            |
                %r2
                %%\piu-ritenuto-e-allarg
                %\tuplet 3/2 { c'4-- \pp \< c-- cis-- }
                \tuplet 3/2 { c2-- \f ( c4-- ) }
                \clef "bass" c,,,!4---> g''4--->
            |
                f!4-- \rfz ( e2 \< ) d!4-- ~ \>
            |
                d f4 e4. \p ees,8
            |
                aes1 \< ~
            |
                aes2 bes-- \! \>
            |
                c4 c,4~ c4 \fermata \breathe g'4--
        }

        \tag #'part \cue-staff \horn-common-name \horn-short-name \quoteDuring "maestoso-horn" {
            \numericTimeSignature
            \clef "bass"
            s1*5
            s2. s2
            s1
            \clef "tenor"
            s1*3
            s2. \clef "bass" s2.
            \clef "tenor"
            s1*3
            s2. s8 \clef "bass" s8
            s1*3
        }
    >>
    |

    %% Allegretto
        \bar "||"
        \allegretto
        \key c \major
        c1~ \pp \<
    |
        c2. \> r4 \!
    |
        R1
    |
        \time 2/4
        \grace s8
        R2
    |
        r4 g'8.-- \mf \cresc g16-.
    |
        g4-- g4--
    |
        d'4-- \f a4--
    |
        r8 e,4.---> \rfz ~
    |
        e8 e4-- b'8 \mf (
    |
        e4 \> gis8-- b--
    |
        \time 4/4
        c4. ) \p r8 r2
        % XXX
    |
        R1
    |
        R1
    |
        \time 2/4
        R2
    |
        % \XXX
        r8 d4 \pp \cresc a16 ( g32 fis
    |
        g4 ) c,4
    |
        ees8-- ( \mf \> g4 ) bes8 ( \p
    |
        aes4. \espressivo ees8
    |
        des4 ) bes4~
    |
        \time 4/4
        \key ees \major
        bes2. g'4~ \p \<
    |
        \time 2/4
        g2 \rfz
    |
        ees2 \espressivo
    |
        des4 ( \< ees,4~ \mf
    |
        \time 4/4
        ees2~ ees8 ) r8 \clef "tenor" f''4~ \p \<
    |
        \time 2/4
        f4. \rfz \> r8 \!
    |
        fes8 \p \espressivo ( ees4 ) f!8 ( %r16 ees,,-- d!-- ees--
    |
        \key c \major
        d8 \rfz a'4 ) r8
    |
        \clef "bass" bes,,8 \mp \espressivo ( f'4 ) r8
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
        c1~ \ff \>
    |
        c2. r4 \!

    %% Allegretto 2
        %r2 \clef "tenor" c''4. \f ( g8 )
        r2 \clef "tenor" c'''4. \p ( f,8 )
    |
        %c,4. r8
        \time 2/4
        \acciaccatura a8 g4. \< ( c,8-. )
    |
        \clef "bass"
        g4.-- \mf g,8-. \p
    |
        g'4.-- \mf c,,8-. \p
    |
        c'4-- \f a--->
    |
        e4.---> \rfz b8-.
    |
        e4.-- b8 \mf (
    |
        e4 \> gis8-- b--
    |
        \time 4/4
        %c4. ) \p r8 r2
        c4. ) \p r8 r8 \clef "tenor" g' \mp \< ( c-. ) e-.
    |
        \tuplet 3/2 { f8-- \f \> c'-- f,-- }
        \tuplet 3/2 { e8-- f-- e-- }
        d4~ ( \tuplet 3/2 { d8 \p \clef "bass" c,-. g'-. ) }
    |
        r8 \clef "tenor" d''4 ( d,8-. ) r8 \clef "bass" d,4.~ \< (
    |
        d8-- \mp \> g8-. \! ) r4
        r4 d,4~ \pp
    |
        \time 2/4
        d4. \cresc a''16 ( g32 fis
    |
        g4 ) c,4 (
    |
        ees,8-- \mf \> g4 ) bes8-- \p
    |
        aes4.-- \< ees8--
    |
        des4-- bes4--~ \ff \>
    |
        \time 4/4
        \key ees \major
        bes2. g''4~ \p \<
    |
        \time 2/4
        g4. \rfz \> r8 \!
    |
        ees4. \espressivo r8
    |
        des4-- \< ees,4--~ \mf
    |
        \time 4/4
        ees2. \clef "tenor" f''4~ \p \<
    |
        \time 2/4
        f4. \rfz \> r8 \!
    |
        fes8 \p \espressivo ( ees4 ) f!8 ( %r16 ees,,-- d!-- ees--
    |
        \key c \major
        d8 \rfz a'4 ) r8
    |
        \clef "bass" bes,,8 \mp \espressivo ( f'4 ) r8
    |
        \tempo "allargando"
        f,4 \p \espressivo
        4 \mp \espressivo
        4 \mf \espressivo
        4 \f \espressivo
}


maestoso-bassoon-part = \score {
    \removeWithTag #'score \new Staff \with { instrumentName = \bassoon-name } \maestoso-bassoon
    \header {
        title = \maestoso-movement-number
        subtitle = ""
        instrument = ""
        composer = ""
    }
}
