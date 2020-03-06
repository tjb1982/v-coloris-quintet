\include "common.ly"
\include "maestoso/flute.ly"
\include "maestoso/oboe.ly"
\include "maestoso/clarinet.ly"
\include "maestoso/bassoon.ly"
\include "maestoso/horn.ly"

maestoso-flute-score = \killCues \maestoso-flute
maestoso-oboe-score = \killCues \maestoso-oboe
maestoso-clarinet-score = \killCues \maestoso-clarinet
maestoso-horn-score = \killCues \maestoso-horn
maestoso-bassoon-score = \killCues \maestoso-bassoon

maestoso-music = \new StaffGroup {
    <<
        \new Staff \with {
            instrumentName = \flute-name
            shortInstrumentName = \flute-short-name
        } \removeWithTag #'part { \maestoso-flute-score }
        \new Staff \with {
            instrumentName = \oboe-name
            shortInstrumentName = \oboe-short-name
        } \removeWithTag #'part { \maestoso-oboe-score }
        \new Staff \with {
            instrumentName = \clarinet-name
            shortInstrumentName = \clarinet-short-name
        } \removeWithTag #'part { \transpose c ees \maestoso-clarinet-score }
        \new Staff \with {
            instrumentName = \horn-name
            shortInstrumentName = \horn-short-name
        } \removeWithTag #'part { \transpose c g \maestoso-horn-score }
        \new Staff \with {
            instrumentName = \bassoon-name
            shortInstrumentName = \bassoon-short-name
        } \removeWithTag #'part { \maestoso-bassoon-score }
    >>
}

maestoso-music-concert-pitch = \new StaffGroup {
    <<
        \new Staff \with {
            instrumentName = \flute-name
            shortInstrumentName = \flute-short-name
            midiInstrument = "flute"
            %midiInstrument = "oboe"
            %midiInstrument = "acoustic grand"
        } \removeWithTag #'part { \maestoso-flute-score }
        \new Staff \with {
            instrumentName = \oboe-name
            shortInstrumentName = \oboe-short-name
            midiInstrument = "oboe"
            %midiInstrument = "acoustic grand"
        } \removeWithTag #'part { \maestoso-oboe-score }
        \new Staff \with {
            instrumentName = \clarinet-name
            shortInstrumentName = \clarinet-short-name
            midiInstrument = "clarinet"
            %midiInstrument = "english horn"
            %midiInstrument = "acoustic grand"
        } \removeWithTag #'part { \maestoso-clarinet-score }
        \new Staff \with {
            instrumentName = \horn-name
            shortInstrumentName = \horn-short-name
            %midiInstrument = "french horn"
            midiInstrument = "english horn"
            %midiInstrument = "acoustic grand"
        } \removeWithTag #'part { \maestoso-horn-score }
        \new Staff \with {
            instrumentName = \bassoon-name
            shortInstrumentName = \bassoon-short-name
            midiInstrument = "bassoon"
            %midiInstrument = "acoustic grand"
        } \removeWithTag #'part { \maestoso-bassoon-score }
    >>
}

title = \maestoso-movement-number

maestoso-score = \score {
    \layout {
        indent = \main-indent
        short-indent = \short-indent
        \context {
            \Staff \RemoveEmptyStaves
        }
    }
    \header {
        title = \title
        instrument = ""
        composer = ""
        subtitle = ""
    }
    \maestoso-music
}

maestoso-score-concert-pitch = \score {
    \layout {
        indent = \main-indent
        short-indent = \short-indent
        \context {
            \Staff \RemoveEmptyStaves
        }
    }
    \header {
        title = \title
        instrument = ""
        composer = ""
        subtitle = ""
    }
    \midi {}
    \maestoso-music-concert-pitch
}
