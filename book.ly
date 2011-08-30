%{..
From a sample found at:
http://lilypond.org/doc/v2.12/Documentation/user/lilypond/Typesetting-Gregorian-chant

\include "gregorian.ly"
\score {
  <<
    \new VaticanaVoice = "cantus" \transpose c f {
      \[ c'\melisma c' \flexa a \]
      \[ a \flexa \deminutum g\melismaEnd \]
      f \divisioMinima
      \[ f\melisma \pes a c' c' \pes d'\melismaEnd \]
      c' \divisioMinima \break
      \[ c'\melisma c' \flexa a \]
      \[ a \flexa \deminutum g\melismaEnd \] f \divisioMinima
    }
    \new Lyrics \lyricsto "cantus" {
      San- ctus, San- ctus, San- ctus
    }
  >>
}

Our version:

Thou
Lord
shalt
-ter than
after
to the
mine
and to
as it
-ver shall
Thou

c d f e d e f g | a bes c c bes a g a
g f | e f g f d e c d c c | c
d f e d e f g | g a bes a g f e d f e f g f d
e c d c c | PS. c f e f g g |
g g g bes a a g g a | g e f g g
g | g g g a bes
g f f f f d c | c f e f g g
g | g g bes a a a g g a |
g e f g g | g g g g bes
a a g g a | g g a bes g f | f f f d c |
c d f e d e f g |

..%}

\version "2.14.1"

\include "gregorian.ly"

\include "lyric.ily"

ps = { }

notes = \relative c {
c d \[ f e d e f \] g \divisioMinima \[ a bes c \] \[ c bes \] \[ a g \] a 
\[ g f \] \divisioMinima \[ e f \] \[ g f d \] e \[ c d c \] c \divisioMinima  c 
d \[ f e d e f \] g \divisioMinima \[ g a bes a g \] \[ f e \] d \[ f e f \] \[ g f d \] 
e \[ c d c \] c \divisioMinima \ps \[ c f e \] \[ f g \] g \divisioMinima 
g g \[ g bes \] a \[ a g \] \[ g a \] \divisioMinima \[ g e \] \[ f g \] g 
g \divisioMinima g g \[ g a bes \] 
g f \[ f f f \] \[ d c \] \divisioMinima \[ c f e \] \[ f g \] g 
g \divisioMinima g \[ g bes \] a a \[ a g \] \[ g a \] \divisioMinima 
\[ g e \] \[ f g \] g \divisioMinima g g g \[ g bes \] 
a \[ a g \] \[ g a \] \divisioMinima g \[ g a bes \] g f \divisioMinima \[ f f f \] \[ d c \] \divisioMinima 
c d \[ f e d e f \] g \divisioMinima 
}

\score { <<
  \new VaticanaVoice = "cantus" \transpose f c' \notes
  \new Lyrics \lyricsto "cantus" {
    \override LyricText #'X-offset = #-1
    \override LyricText #'self-alignment-X = #LEFT \aspergesLyrics
  }
>> }