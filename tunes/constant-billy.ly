\include "includes/header.ly"
\score {

<<
\context Voice = voiceone {
\include "includes/staffheader.ly"
\key d \major \time 6/8
d'4 a'8 fis'8. d'16 fis'8 | g'4 e'8 cis'4 a8 | fis'8. e'16 d'8 b4 b8 | a8 b8 cis'8 d'4. |
d'4 a'8 fis'8 d'8 fis'8  | g'8. fis'16 e'8 cis'4 a8 | fis'8. e'16 d'8 b4 b8 | a8 b8 cis'8 d'4. |

\mark "A 2"
\repeat volta 2 {
d'4 a'8 fis'8. d'16 fis'8 | g'4 e'8 cis'4 a8 | fis'8. e'16 d'8 b4 b8 | a8 b8 cis'8 d'4. |
}


\repeat volta 2 {
\mark "B 2"
fis'8 g'8 a'8 b'4 b'8 | e'8 fis'8 g'8 a'4 a'8 |
fis'8 g'8 a'8  b'8 b'8 b'8 | e'8 fis'8 g'8 a'8 b'8 cis''8 |
d''4 a'8 fis'8 d'8 fis'8 | g'4 e'8 cis'4 a8 |
fis'8. e'16 d'8 b4 b8 | a8 b8 cis'8 d'4.
}
}

\lyricsto voiceone \new Lyrics \lyricmode { 
\include "includes/staffheader.ly"
O my Bil -- ly, my cons -- tant Bil -- ly,
when will I see my Bil -- ly a -- gain? 
When the fish -- es fly o -- ver the moun -- tains, 
thatʼs when I'll see my Bil -- ly a -- gain.
\skip 1 \skip 1 \skip 1 \skip 1 \skip 1 \skip 1 \skip 1 \skip 1
\skip 1 \skip 1 \skip 1 \skip 1 \skip 1 \skip 1 \skip 1 \skip 1
\skip 1 \skip 1
Bil -- ly a -- gain, and Bil -- ly a -- gain,
and Bil -- ly a -- gain and a -- gain and a -- gain
}
>>

} % score
