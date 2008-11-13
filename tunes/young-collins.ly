\include "includes/header.ly"
\score {

<<
\context Voice = voiceone {
\include "includes/staffheader.ly"
\time 4/4 \key d \major

\relative d'' {

{
d8( e) fis( g) a4 a | g b e,2 | a4 a8 a8 b4 a8 g | fis4 e d2 |
d8( e) fis( g) a4 a | g b e,4 fis8( g) | a4 a4 b4 a8( g) | fis4 e d2 |
}

\mark "A 2"
\repeat volta 2 {
d8 e fis g a4 a | g b e, fis8 g | a4 a b a8 g | fis4 e d2 |
}

\mark "B 2"
\repeat volta 2 {
b4 a4 b8 cis8 d4 | e4 e4 d4. e8 | fis4 e4 fis8 g8 a4 | b4 b4 a8 g8 fis8 e8 |
d8 e fis g a4 a | g b e, fis8 g | a4 a b a8 g | fis4 e d2 |
}

} % relative
} % context

\lyricsto voiceone \new Lyrics \lyricmode { 
\include "includes/staffheader.ly"
Old Young Col -- lins, grey and bent, how has it come that your youth is spent?
Cut -- ting hay to pay the rent, and tos -- sing to my heartʼs con -- tent!
}
>>

} % score
