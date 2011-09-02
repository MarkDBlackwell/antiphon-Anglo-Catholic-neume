\version "2.14.1"

rit = \markup { \italic "rit." }

% mBreak = { \break } % Use during development.
mBreak = { }

optTenuto = -\tenuto
% optTenuto = -\tweak #'color #white -\tenuto

stemOn = { \revert Staff.Stem #'transparent }
stemOff = { \override Staff.Stem #'transparent = ##t }
% hideSlur = \once \override Slur #'transparent = ##t

cantorTempo = \tempo 4=108

%{..
Lilypond's notation manual, under a heading, 'Hiding the extender line for text dynamics':
http://lilypond.org/doc/v2.14/Documentation/notation/expressive-marks-attached-to-notes#dynamics
directs us to use:
      \override DynamicTextSpanner #'style = #'none
. Per http://lists.gnu.org/archive/html/bug-lilypond/2010-09/msg00200.html , to avoid an internal Lilypond error, use instead:
      \override DynamicTextSpanner #'dash-period = #-1
Lilypond's internals manual says, 'If negative, no line is drawn at all.':
http://lilypond.org/doc/v2.14/Documentation/internals/dynamictextspanner
..%}
myTextDecrescendoSettings = {
  \set decrescendoSpanner = #'text
%%  \override DynamicTextSpanner #'dash-period = #-1 % removes spacing for the spanner, so grobs get clobbered.
}
