\include "includes/header.ly"
\score {

\context Voice = voiceone {
\include "includes/staffheader.ly"
\time 6/8 \key g \major
\partial 8 d'8 | \mark "A 2"
\repeat volta 2 { 
d'8 g'8 g'8 g'8 fis'8 g'8 | a'8 c''8 b'8 a'8 g'8
 fis'8 | g'8 a'8 b'8 d''8 c''8 b'8 | a'8
 c''8 b'8 a'8 g'8 fis'8 | g'4. e'4. |
}
\alternative {{d'8 e'8 fis'8 g'4 d'8} {d'8 e'8 fis'8 g'4 b'8}}

\repeat volta 2 {
| \mark "B 2" d''4 d''8 d''4 d''8 | e''8 d''8 e''8 d''4 c''8 |
b'8 d''8 d''8 d''4 d''8 | e''8 d''8 e''8 d''4
 c''8 | b'4 b'8 b'8 a'8 g'8 | a'8
c''8 b'8 a'8 g'8 fis'8 | g'8 a'8 b'8 d''8
c''8 b'8 | a'8 c''8 b'8 a'8 g'8 fis'8 |
 g'4. e'4. 
}
\alternative {{d'8 e'8 fis'8 g'4 b'8}{d'8 e'8 fis'8 g'4 d'8}}
}

} % score
