%{..
Author: Mark D. Blackwell.
Change dates:
(mdb) August 29, 2011 create first draft
(mdb) September 2, 2011 improve neumes, improve formatting, correct word alignment
..%}

\version "2.14.1" % Made for LilyPond.

% Overall options:

% #(ly:set-option 'midi-extension "midi")

#(ly:set-option 'point-and-click #f)
#(ly:set-option 'relative-includes #t)

% Points; 17.82 is song-book size; 20 for standard parts is default.
#(set-global-staff-size 40)
%%--For debugging:
%     \set Score.skipTypesetting = ##f % Place these lines among notes.
%     \set Score.skipTypesetting = ##t
%     showFirstLength = R1*10
%     showLastLength  = R1*24
%%--end 'for debugging'.

% Constants:

antiphonPrintableSettings = {
%  #(set-accidental-style 'piano 'Score)
  \override Score.PaperColumn #'keep-inside-line = ##t
%%--For debugging:
%     \override Score.BarNumber #'break-visibility = #all-visible
%     \set Score.barNumberVisibility = #all-bar-numbers-visible
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
  indent = 0\mm  short-indent = 0\mm
  \context { \Lyrics
    \override LyricText #'font-size = #-6
  }
}

%{.. Header references:
* http://lilypond.org/doc/v2.12/Documentation/user/lilypond/Creating-titles
* http://lilypond.org/doc/v2.15/Documentation/learning/ancient-notation-templates#ancient-notation-templates
..%}

\header {
%%  title = "Antiphons"
%%  composer = "(anonymus)"
  opus = \markup \fontsize #-8 "Sept. 2011"
  piece = \markup \fontsize #-4 { \italic { Asperges Me } VIII. C }
  copyright = \markup { \fontsize #-8 \with-url #"http://lilypond.org/web/" \line {
    "Copyright 2011 Mark D. Blackwell (ed.), engraved LilyPond" #(ly:export (lilypond-version)) "(see github.com/MarkDBlackwell)"
  } }
  tagline = ""
}

\book { \bookOutputName "../out/book"
  \paper {
    #(set-paper-size "letter")
    top-margin = 12\mm
    bottom-margin = 9\mm
    ragged-bottom = ##t
    ragged-last-bottom = ##t % Seems to make the last system ragged-right.
    two-sided = ##f
% The deepest rim of a hole made by a 3-hole punch is 16 mm from the edge; the inner margin must be at least that.
%%    inner-margin = 16\mm
%%    outer-margin = 8\mm
    left-margin = 16\mm
    right-margin = 16\mm
    system-system-spacing #'basic-distance = #0.5
%%--For debugging:
%     annotate-spacing = ##t
%    ragged-right = ##t
%%--end 'for debugging'.
  } % paper

\score {
  <<
    \new VaticanaVoice = "cantus" { \transpose f c' \aspergesMeNotesVaticana
    }
    \new Lyrics \lyricsto "cantus" {
      \override LyricHyphen #'minimum-distance = #0.5
      \override LyricHyphen #'thickness = #0.5
      \override LyricHyphen #'height = #0.25
      \override LyricText #'X-offset = #-0.5
      \override LyricText #'self-alignment-X = #LEFT
      \aspergesMeLyrics
    }
  >>
}
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
  \score { \aspergesMePrintableNeumes
    \header { }
    \layout { } }
..%}

} %book
