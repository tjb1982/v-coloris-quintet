\version "2.19"

\include "common.ly"
\include "maestoso/score.ly"
\include "scherzo/score.ly"

#(set-default-paper-size "b4")

transposing-score = "score (transposing)"
sounding-score = "score (sounding)"

\book {
    \paper {
        print-all-headers = ##t
    }
    \header {
        tagline = ""
        title = "Quintet"
        subtitle = "for Flute, Oboe, Clarinet, Horn, and Bassoon"
        composer = "Tom Brennan"
    }

    \bookpart {
        \paper {}
        \header {
            instrument = \transposing-score
        }
        \maestoso-score
        \scherzo-score
    }

    \bookpart {
        \paper {}
        \header {
            instrument = \sounding-score
        }
        \maestoso-score-concert-pitch
        \scherzo-score-concert-pitch
    }

    %parts
    \bookpart {
        \paper {}
        \header {
            instrument = \flute-name
        }
        \maestoso-flute-part
        \scherzo-flute-part
    }
    \bookpart {
        \paper {}
        \header {
            instrument = \oboe-name
        }
        \maestoso-oboe-part
        \scherzo-oboe-part
    }
    \bookpart {
        \paper {}
        \header {
            instrument = \clarinet-name
        }
        \maestoso-clarinet-part
        \scherzo-clarinet-part
    }
    \bookpart {
        \paper {}
        \header {
            instrument = \bassoon-name
        }
        \maestoso-bassoon-part
        \scherzo-bassoon-part
    }
    \bookpart {
        \paper {}
        \header {
            instrument = \horn-name
        }
        \maestoso-horn-part
        \scherzo-horn-part
    }


    %\bookpart {
    %    \paper {
    %        %print-all-headers = ##t
    %        system-system-spacing =
    %            #'((basic-distance . 25))
    %        %last-bottom-spacing =
    %        %    #'((basic-distance . 20))
    %        %       (minimum-distance . 6)
    %        %       (padding . 1)
    %        %       (stretchability . 12))
    %    }
    %    \header {
    %        subtitle = "I: Aria, \"the mass of the mechanics\""
    %        poet = "Sarah Mangold"
    %    }
    %    \mass-of-the-mechanics-score
    %}

    %\bookpart {
    %    \paper {
    %        score-system-spacing =
    %            #'((basic-distance . 23))
    %        system-system-spacing =
    %            #'((basic-distance . 20))
    %        ragged-last = ##t
    %    }
    %    \header {
    %        subtitle = "III. Saraband"
    %    }
    %    \grave-score
    %    \grave-score-a-sub-one
    %    \grave-score-a-sub-two
    %    \grave-score-b
    %    \grave-score-c-sub-one
    %    \grave-score-c-sub-two
    %}

}
