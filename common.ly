instrument-names = #'(
    (flute . ("Flute" "Fl" "Oboe"))
    (oboe . ("Oboe" "Ob" "Oboe"))
    (clarinet . ("Clarinet in A" "Cl" "Clarinet"))
    (horn . ("Horn in F" "Hn" "Horn"))
    (bassoon . ("Bassoon" "Bn" "Bassoon"))
)

flute-names = #(assoc-ref instrument-names 'flute)
flute-name = #(car flute-names)
flute-short-name = #(cadr flute-names)

oboe-names = #(assoc-ref instrument-names 'oboe)
oboe-name = #(car oboe-names)
oboe-short-name = #(cadr oboe-names)

clarinet-names = #(assoc-ref instrument-names 'clarinet)
clarinet-name = #(car clarinet-names)
clarinet-short-name = #(cadr clarinet-names)

horn-names = #(assoc-ref instrument-names 'horn)
horn-name = #(car horn-names)
horn-short-name = #(cadr horn-names)
horn-common-name = #(caddr horn-names)

bassoon-names = #(assoc-ref instrument-names 'bassoon)
bassoon-name = #(car bassoon-names)
bassoon-short-name = #(cadr bassoon-names)

main-indent = #29
short-indent = #4

qr = { r8 r8 }

maestoso-movement-number = "I."
scherzo-movement-number = "III."

cue-staff = 
#(define-music-function
  (instrument-name short-instrument-name music)
  (string? string? ly:music?)
  #{
    \new Staff \with {
        %\remove "Time_signature_engraver"
        alignAboveContext = #"main"
        fontSize = #-3
        \override StaffSymbol.staff-space = #(magstep -3)
        \override StaffSymbol.thickness = #(magstep -3)
        %firstClef = ##f
        instrumentName = \markup {
            \center-column {
                \line { #instrument-name }
                \line { "(cue)" }
            }
        }
        shortInstrumentName = #short-instrument-name
    }
    { #music }
  #})

sd =
#(define-event-function
  (markp) (markup?)
  (make-dynamic-script markp))

