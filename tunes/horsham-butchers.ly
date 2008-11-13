\include "includes/header.ly"
\score {
<<
\context Voice = voiceone \transpose d g, {
\include "includes/staffheader.ly"

\time 4/4 \key d \major

a'4 d''4 d''4 cis''8( d''8)  | e''4 e''4 b'4. b'8 |
cis''8( d''8) e''4 cis''4  d''8 e''8 | fis''4 fis''4 d''2 |
a'4 d''4 d''4 cis''8( d''8) | e''4 e''4 b'4. b'8 |
cis''8 d''8 e''4 a'4 b'8( cis''8) | d''2 r2

\mark "A 2"
\repeat volta 2 {
a'4 d''4 d''4 cis''8 d''8  | e''4 e''4 b'2 |
cis''8 d''8 e''4 cis''8  d''8 e''4 | fis''4 fis''4 d''2 |
a'4 d''4 d''4 cis''8 d''8 | e''4 e''4 b'2 |
cis''8 d''8 e''4 a'4 b'8 cis''8 | d''2 d''2
}

\mark "B 1"
e''4 e''4 fis''4 fis''4 | e''4 e''4 cis''2 |
e''4 e''4 b'2 |  e''4 e''4 cis''2 |
e''4 e''4 fis''4 fis''4 | e''4 e''4 cis''2 |
e''4 d''4 cis''4 b'4 | a'4 cis''4 a'2 | 

}

\lyricsto voiceone \new Lyrics \lyricmode { 
\include "includes/staffheader.ly"
When the hor -- ses old they grow,
Their hooves they drag and their heads hang low,
When the hor -- ses get too slow,
a -- but -- cher -- ing we will go!
}
>>

} % score
