%{..
..%}
\version "2.14.1"

% \divisioMinima

% mbreak = { \break } % Didn't work, somehow. Vaticana?
mbreak = { }

choir  = { }
ps     = { }
br     = { \divisioMinima }

malasatalatasaga       = \relative c  {    c \auctum \ascendens d \[ f e d e f \] \augmentum g }
hapamapahagahagasatasa = \relative c' { \[ a \quilisma bes c \] \[ c bes \] \[ a g \] a \[ g f \] \[ e f \] }
gasalatamalama         = \relative c' { \[ g f d \] e \[ c d c \] \augmentum c }
gahapahagasatalasatasa = \relative c' { \[ g a bes a g \] \[ f e \] d \[ f e f \] }

masatasaga             = \relative c  { \[ c f e \] \[ f g \] g g g }
gapahagaha             = \relative c' { \[ g bes \] a \[ a g \] \[ \augmentum g \augmentum a \] s }
gatasaga               = \relative c' { \[ g e \] \[ f g \] g g g }
gahapagasalama         = \relative c' {    g \[ g a bes \] g f \[ f f f \] \[ \augmentum d \augmentum c \] s }


aspergesMeNotes = {
  \clef "vaticana-do1" 
         \mbreak \malasatalatasaga
  \choir \mbreak       \hapamapahagahagasatasa
         \mbreak             \gasalatamalama
         \mbreak \malasatalatasaga
         \mbreak                   \gahapahagasatalasatasa
         \mbreak             \gasalatamalama
  \ps    \mbreak                         \masatasaga
         \mbreak                               \gapahagaha
         \mbreak                                     \gatasaga                               
         \mbreak                                           \gahapagasalama 
         \mbreak                         \masatasaga 
         \mbreak                               \gapahagaha 
         \mbreak                                     \gatasaga
         \mbreak                               \gapahagaha
         \mbreak                                           \gahapagasalama
}

