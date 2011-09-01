%{..
..%}
\version "2.14.1"

% Included files:
%% General:
\include "../general-includes.ily"

%% Components:
\include "note.ily"
\include "lyric.ily"
\include "tempo.ily"

% Constants:

aspergesMePrintableSettings = \antiphonPrintableSettings

aspergesMePrintable = {
  \aspergesMePrintableSettings
  << % Stack of staves.
    \new Dynamics { \aspergesMeTempo }
    \new VaticanaVoice = "cantus" \transpose f c' \aspergesMeNotes
    \new Lyrics \lyricsto "cantus" {
      \override LyricText #'X-offset = #-1
      \override LyricText #'self-alignment-X = #LEFT \aspergesMeLyrics
    }
  >> % Stack of staves.
} %aspergesMePrintable

aspergesMeMidi = <<
  \new Staff \aspergesMeTempo
  \new Staff \with { midiInstrument = #"synth voice"  } \aspergesMeNotes
>>
