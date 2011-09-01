\version "2.14.1"

% \divisioMinima

% mbreak = { \break } % Didn't work, somehow. Vaticana?
mbreak = { }

choir  = { }
ps     = { }
br     = { \divisioMinima }

% \pes 
% \flexa 
% \augmentum 


malasatalatasaga       = \relative c  {
   c \auctum \ascendens d \[ f \flexa e \flexa d \pes e \pes f \] \augmentum g }

hapamapahagahagasatasa = \relative c' {
\[ a \quilisma bes \pes c \] \[ c \flexa bes \] \[ a \flexa g \] a \[ g \flexa f \] \[ e \pes f \] }

gasalatamalama         = \relative c' {
\[ g \flexa f \flexa d \] e \[ c \pes d \flexa c \] \augmentum c }

gahapahagasatalasatasa = \relative c' {
\[ g \pes a \pes bes \flexa a \flexa g \] \[ f \flexa e \] d \[ f \flexa e \pes f \] }

masatasaga             = \relative c  {
\[ c \pes f \flexa e \] \[ f \pes g \] g g g }

gapahagaha             = \relative c' {
\[ g \pes bes \] a \[ a \flexa g \] \[ g \pes a \] }

gatasaga               = \relative c' {
\[ g \flexa e \] \[ f \pes g \] g g g }

gahapagasalama         = \relative c' {
   g \[ g \pes a \pes bes \] g \flexa f \[ f f f \] \[ d \flexa c \] }

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

