\include "includes/header.ly"
\score {
\context Voice = voiceone \relative g' {
\include "includes/staffheader.ly"
\time 6/8 \key g \major
\mark "A 2"
\repeat volta 2 {
g4 b8 d4 g8 | e4. d4 c8 | b4. g4 b8 | a4 fis8 e4 d8 |
g4 b8 d4 g8 | e4. d4 c8 | b4 g8 a4 fis8 | g2.
}
\mark "B 2"
\repeat volta 2 {
b4. g4 b8 | c4. a4 c8 | b4. g4 b8 | a4 fis8 e4 d8 |
b'4. g4 b8 | c4. a4 c8 | b4 g8 a4 fis8 | g2.  | }
\pageBreak
}
} % score
