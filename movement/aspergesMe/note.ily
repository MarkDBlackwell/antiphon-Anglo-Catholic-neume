\version "2.14.2"

\include "gregorian.ly"

% \divisioMinima
% \divisioMaior
% \divisioMaxima
% \finalis


% mbreak = { \break } % Didn't work, somehow. Vaticana?
mbreak = { }

choir  = { }
ps     = { }

malasatalatasaga = \relative c  {
  c \[ \auctum \descendens d \] \[ \virga f \inclinatum e \inclinatum d e \pes \deminutum f \] \augmentum g
}
hapamapahagahagasatasa = \relative c' {
  \[ a \quilisma bes c \] \[ \virga c bes \] \[ \virga a g \] a \[ \virga g \episemInitium f \episemFinis \] \divisioMinima \[ e \pes f \]
}
gasalatamalama = \relative c' {
  \[ \virga g \inclinatum f \inclinatum d \] s e \[ c \episemInitium d c \episemFinis \] \augmentum c \divisioMaxima
}
gahapahagasatalasatasa = \relative c' {
  \[ g \quilisma a \virga bes \inclinatum a \inclinatum g \] \[ \virga f e \] s \[ \auctum \descendens d \] \[ f e \pes \deminutum f \]
}
masatasaga = \relative c  {
  \[ \virga c f \flexa \deminutum e \] \[ f \pes g \] g
}
gapahagaha = \relative c' {
  g \[ g \pes bes \] a \[ a \flexa \deminutum g \] \[ g \episemInitium \pes a \episemFinis \]
}
gatasaga = \relative c' {
  \[ \virga g e s \] \[ f \pes \deminutum g \] g g
}
gahapagasalama = \relative c' {
  g \[ g \quilisma a bes \] \[ \virga g \] f \[ f f f \] s \[ \virga d \episemInitium c \episemFinis \]
}
aspergesMeNotesVaticana = \relative c' {
  \clef "vaticana-do1"
         \mbreak \malasatalatasaga \divisioMinima
  \choir \mbreak       \hapamapahagahagasatasa
         \mbreak             \gasalatamalama \divisioMaxima
         \mbreak \malasatalatasaga \divisioMaior
         \mbreak                   \gahapahagasatalasatasa
         \mbreak             \gasalatamalama \finalis
  \ps    \mbreak                         \masatasaga \divisioMinima
         \mbreak                               \gapahagaha \divisioMaxima
         \mbreak                                     \gatasaga \divisioMinima
         \mbreak                                           \gahapagasalama \finalis
         \mbreak                         \masatasaga \divisioMinima
         \mbreak                               \gapahagaha \divisioMaxima
         \mbreak                                     \gatasaga \divisioMinima
         \mbreak                               \gapahagaha \divisioMaxima
         \mbreak                                           \gahapagasalama \finalis
         \mbreak \malasatalatasaga \divisioMaxima \finalis
}
