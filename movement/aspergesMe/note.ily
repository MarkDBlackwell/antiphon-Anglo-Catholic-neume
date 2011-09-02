\version "2.14.1"

\include "gregorian.ly"

% \divisioMinima

% mbreak = { \break } % Didn't work, somehow. Vaticana?
mbreak = { }

choir  = { }
ps     = { }
br     = { \divisioMinima }

%{..
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
..%}

malasatalatasagaNoLigatures       = \relative c  {
s c \[ \auctum \descendens d \] \[ \virga f \inclinatum e \inclinatum d e \pes \deminutum f \] \augmentum g }

hapamapahagahagasatasaNoLigatures = \relative c' {
\[ a \quilisma bes c \] \[ \virga c bes \] \[ \virga a g \] a \[ \virga g f \] \[ e \pes f \] }

gasalatamalamaNoLigatures         = \relative c' {
\[ \virga g \inclinatum f \inclinatum d \] s e \[ c d c \] \augmentum c }

gahapahagasatalasatasaNoLigatures = \relative c' {
\[ g \quilisma a \virga bes \inclinatum a \inclinatum g \] \[ \virga f e \] s \[ \auctum \descendens d \] \[ f e \pes \deminutum f \] }

masatasagaNoLigatures             = \relative c  {
\[ \virga c f \flexa \deminutum e \] \[ f \pes g \] g g g }

gapahagahaNoLigatures             = \relative c' {
\[ g \pes bes \] a \[ a \flexa \deminutum g \] \[ g \pes a \] }

gatasagaNoLigatures               = \relative c' {
\[ \virga g e \] \[ f \pes \deminutum g \] g g g }

gahapagasalamaNoLigatures         = \relative c' {
   g \[ g \quilisma a bes \] \[ \virga g \] f \[ f f f \] s \[ \virga d s c \] }

aspergesMeNotesVaticana = \relative c' {
  \clef "vaticana-do1"
         \mbreak \malasatalatasagaNoLigatures
  \choir \mbreak       \hapamapahagahagasatasaNoLigatures
         \mbreak             \gasalatamalamaNoLigatures
         \mbreak \malasatalatasagaNoLigatures
         \mbreak                   \gahapahagasatalasatasaNoLigatures
         \mbreak             \gasalatamalamaNoLigatures
  \ps    \mbreak                         \masatasagaNoLigatures
         \mbreak                               \gapahagahaNoLigatures
         \mbreak                                     \gatasagaNoLigatures
         \mbreak                                           \gahapagasalamaNoLigatures
         \mbreak                         \masatasagaNoLigatures
         \mbreak                               \gapahagahaNoLigatures
         \mbreak                                     \gatasagaNoLigatures
         \mbreak                               \gapahagahaNoLigatures
         \mbreak                                           \gahapagasalamaNoLigatures
}
