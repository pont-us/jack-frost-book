\include "includes/header.ly"
\score {
\context Voice = voiceone \relative g' {
\include "includes/staffheader.ly"
\time 6/8 \key d \major

\partial 8 a,8

\mark A
\repeat volta 2 {
d4 d8 d8 fis8 a8 | b8 a8 g8 fis8 e8 d8 | d4 d8 d8 fis8 a8 | b8 a8 g8 e4 a,8 |
d4 d8 d8 fis8 a8 | b8 a8 g8 fis8 g8 a8 | b8 d8 b8 a8 g8 fis8 | g8 fis8 e8 d4. |
}
\repeat volta 2 {
\mark B
d8 fis8 a8 d4 a8 | b8 a8 g8 fis8 e8 d8 | d8 fis8 a8 d4 a8 | b8 a8 g8 e4 a,8 |
d8 fis8 a8 d4 a8 | b8 a8 g8 fis8 g8 a8 | b8 d8 b8 a8 g8 fis8 | g8 fis8 e8 d4. |
}
}
} % score

