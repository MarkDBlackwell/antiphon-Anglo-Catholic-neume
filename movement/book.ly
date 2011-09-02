%{..
Author: Mark D. Blackwell.
Change dates:
(mdb) August 29, 2011 create first draft
(mdb) September 1, 2011 improve formatting, correct word alignment
TODO:
* improve neumes
..%}

\version "2.14.1" % Made for LilyPond.

% Overall options:

%#(ly:set-option 'midi-extension "midi")
#(ly:set-option 'point-and-click #f)
#(ly:set-option 'relative-includes #t)
#(set-global-staff-size 17.82) % Points; 17.82 is song-book size; 20 for standard parts is default.
%%--For debugging:
%     \set Score.skipTypesetting = ##f % Place these lines among notes.
%     \set Score.skipTypesetting = ##t % Place these lines among notes.
%     showFirstLength = R1*10
%     showLastLength  = R1*24
%%--end 'for debugging'.

% Constants:

antiphonPrintableSettings = {
%  #(set-accidental-style 'piano 'Score)
  \override Score.PaperColumn #'keep-inside-line = ##t
%%--For debugging:
     \override Score.BarNumber #'break-visibility = #all-visible
     \set Score.barNumberVisibility = #all-bar-numbers-visible
%%--end 'for debugging'.
}

% Included files:
%% General:
% Articulate is working, but c-"rit." is not; don't know why.
\include "articulate.ly"
\include "gregorian.ly"
\include "general-includes.ily"

%% Movements:
\include "aspergesMe/score.ily"

\layout { % All layouts.
  indent = 27\mm  short-indent = 10\mm % Rough.
  \context { \RemoveEmptyStaffContext }
  \context { \DrumStaff
    \remove "Axis_group_engraver"
    \consists "Hara_kiri_engraver"
    \override VerticalAxisGroup #'remove-empty = ##t
  }
}

%{.. Header references:
* http://lilypond.org/doc/v2.12/Documentation/user/lilypond/Creating-titles
* http://lilypond.org/doc/v2.15/Documentation/learning/ancient-notation-templates#ancient-notation-templates
..%}

\header {
  title = "Antiphons"
%%  composer = "(anonymus)"
  arranger = \markup \tiny "Mark D. Blackwell, ed."
  typesetter = "Mark D. Blackwell"
  opus = \markup \tiny "Sept., 2011"
  duration = "? minutes"
  copyright = \markup { \with-url #"http://lilypond.org/web/" \tiny \line {
    "Copyright 2011 Mark D. Blackwell, engraved LilyPond" #(ly:export (lilypond-version)) "(see github.com/MarkDBlackwell)"
  } }
  tagline = ""
}

\book { \bookOutputName "../out/book"
  \paper {
    #(set-paper-size "letter")
    top-margin = 12\mm
    bottom-margin = 9\mm
    ragged-last-bottom = ##t % Seems to make the last system ragged-right.
    two-sided = ##f
% The deepest rim of a hole made by a 3-hole punch is 16 mm from the edge; the inner margin must be at least that.
%    inner-margin = 16\mm
%    outer-margin = 8\mm
    left-margin = 16\mm
    right-margin = 16\mm
%%--For debugging:
%     annotate-spacing = ##t
     ragged-bottom = ##t
     ragged-right = ##t
%%--end 'for debugging'.
  } % paper

%{..
  \score { \aspergesMePrintable
    \header {
      piece = "Asperges Me"
      subtitle = "Outside Paschal Time  Ant. 7" % TODO: all caps.
      subsubtitle = "On Sundays at the sprinkling of Holy Water"
      meter = \markup { \right-align "VIII. C" }
    }
    \layout { \context { \Voice \remove Ligature_bracket_engraver } } }
  \score { \aspergesMePrintableVaticana
    \header { }
    \layout { \context { \VaticanaVoice \remove Vaticana_ligature_engraver } } }
..%}

\score {
  <<
    \new VaticanaVoice = "cantus" { \transpose f c' \aspergesMeNotesVaticana
    }
    \new Lyrics \lyricsto "cantus" {
      \override LyricText #'X-offset = #-1
      \override LyricText #'self-alignment-X = #LEFT
      \aspergesMeLyrics
    }
  >>
}


%{..
  \score { \aspergesMePrintableNeumes
    \header { }
    \layout { } }
..%}

} %book

%{..
\midi { \context { \Score
  midiChannelMapping = #'instrument % Default is by instrument, not staff, as 'changes' documentation has it.
} } % All midi's.
..%}

%{..
\book { \bookOutputName "../out/movement/aspergesMe" \score { \new Staff { \unfoldRepeats \articulate <<
                                        \aspergesMeMidi >> } \midi { } } }
..%}
