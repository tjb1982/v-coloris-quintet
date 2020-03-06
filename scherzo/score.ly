\include "common.ly"
\include "scherzo/flute.ly"
\include "scherzo/oboe.ly"
\include "scherzo/clarinet.ly"
\include "scherzo/bassoon.ly"
\include "scherzo/horn.ly"


scherzo-music = \new StaffGroup {
    \transpose f g <<
        \new Staff \with {
            instrumentName = \flute-name
            shortInstrumentName = \flute-short-name
        } \removeWithTag #'part { \scherzo-flute }
        \new Staff \with {
            instrumentName = \oboe-name
            shortInstrumentName = \oboe-short-name
        } \removeWithTag #'part { \scherzo-oboe }
        \new Staff \with {
            instrumentName = \clarinet-name
            shortInstrumentName = \clarinet-short-name
        } \removeWithTag #'part { \scherzo-clarinet }
        \new Staff \with {
            instrumentName = \horn-name
            shortInstrumentName = \horn-short-name
        } \removeWithTag #'part { \scherzo-horn }
        \new Staff \with {
            instrumentName = \bassoon-name
            shortInstrumentName = \bassoon-short-name
        } \removeWithTag #'part { \scherzo-bassoon }
    >>
}

scherzo-music-concert-pitch = \new StaffGroup {
    \transpose f g <<
        \new Staff \with {
            instrumentName = \flute-name
            shortInstrumentName = \flute-short-name
            %midiInstrument = "flute"
            %midiInstrument = "oboe"
            midiInstrument = "acoustic grand"
        } \removeWithTag #'part { \scherzo-flute }
        \new Staff \with {
            instrumentName = \oboe-name
            shortInstrumentName = \oboe-short-name
            %midiInstrument = "oboe"
            midiInstrument = "acoustic grand"
        } \removeWithTag #'part { \scherzo-oboe }
        \new Staff \with {
            instrumentName = \clarinet-name
            shortInstrumentName = \clarinet-short-name
            %midiInstrument = "clarinet"
            %midiInstrument = "english horn"
            midiInstrument = "acoustic grand"
        } \removeWithTag #'part { \transpose c' a \scherzo-clarinet }
        \new Staff \with {
            instrumentName = \horn-name
            shortInstrumentName = \horn-short-name
            %midiInstrument = "french horn"
            %midiInstrument = "english horn"
            midiInstrument = "acoustic grand"
        } \removeWithTag #'part { \transpose c f, \scherzo-horn }
        \new Staff \with {
            instrumentName = \bassoon-name
            shortInstrumentName = \bassoon-short-name
            %midiInstrument = "bassoon"
            midiInstrument = "acoustic grand"
        } \removeWithTag #'part { \scherzo-bassoon }
    >>
}

title = \scherzo-movement-number

scherzo-score = \score {
    \layout {
        indent = \main-indent
        short-indent = \short-indent
    }
    \header {
        title = \title
        subtitle = ""
        instrument = ""
        composer = ""
    }
    \scherzo-music
}

scherzo-score-concert-pitch = \score {
    \layout {
        indent = \main-indent
        short-indent = \short-indent
    }
    \header {
        title = \title
        subtitle = ""
        instrument = ""
        composer = ""
    }
    \midi {}
    \scherzo-music-concert-pitch
}
