\version "2.14.2"

% Included files:
%% General:
\include "../general-includes.ily"

%% Components:
\include "note.ily"
\include "lyric.ily"
\include "tempo.ily"

% Constants:

aspergesMeStaffSettings = {
  \key c \major
}

aspergesMePrintableSettings = \antiphonPrintableSettings

%{..
aspergesMePrintable = { \aspergesMePrintableSettings
  << % Stack of staves.
    \new ChoirStaff <<
      \new Dynamics { \aspergesMeTempo }
      \new Staff = "aspergesMeStaff" <<
        \aspergesMeStaffSettings
        \set Staff.instrumentName = #"" \set Staff.shortInstrumentName = #""
        \new Voice = "cantus" \aspergesMeNotes
      >>
      \new Lyrics { \lyricsto "cantus" {
        \override LyricText #'X-offset = #-1
        \override LyricText #'self-alignment-X = #LEFT
        \aspergesMeLyrics
      } }
    >> %ChoirStaff
  >> % Stack of staves.
}
..%}

% Per http://lilypond.org/doc/v2.15/Documentation/internals/vaticanavoice , Vaticana_ligature_engraver.

%{..
aspergesMePrintableVaticana = { \aspergesMePrintableSettings
%  << % Stack of staves.
%    \new ChoirStaff <<
%      \new Dynamics { \aspergesMeTempo }
      \new VaticanaStaff = "aspergesMeStaff" <<
        \aspergesMeStaffSettings
        \set Staff.instrumentName = #"" \set Staff.shortInstrumentName = #""
%        \new VaticanaVoice = "tempo" \aspergesMeTempo
        \new VaticanaVoice = "cantus"
% \with { \remove Vaticana_ligature_engraver }
\transpose f c' \aspergesMeNotes
      >>
      \new Lyrics { \lyricsto "cantus" {
        \override LyricText #'X-offset = #-1
        \override LyricText #'self-alignment-X = #LEFT
        \aspergesMeLyrics
      } }
%    >> %ChoirStaff
%  >> % Stack of staves.
}
..%}

%{..
aspergesMePrintableNeumes = { \aspergesMePrintableSettings
  << % Stack of staves.
    \new ChoirStaff <<
      \new Dynamics { \aspergesMeTempo }
      \new Staff = "aspergesMeStaff" <<
        \aspergesMeStaffSettings
        \set Staff.instrumentName = #"" \set Staff.shortInstrumentName = #""
        \new VaticanaVoice = "cantus" \transpose f c' \aspergesMeNotes
      >>
      \new Lyrics { \lyricsto "cantus" {
        \override LyricText #'X-offset = #-1
        \override LyricText #'self-alignment-X = #LEFT
        \aspergesMeLyrics
      } }
    >> %ChoirStaff
  >> % Stack of staves.
}
..%}
