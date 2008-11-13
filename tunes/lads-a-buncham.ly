\include "includes/header.ly"

\score {
<<
\context Voice = voiceone {
\include "includes/staffheader.ly"

\time 4/4 \key d \major

fis'4 fis'4 fis'8 g'8 a'8 b'8 | g'4 e'4 e'2 |
a'4 a'4 a'8 g'8 fis'8 e'8 | fis'4 d'4 d'2 |
fis'4. fis'8 fis'8( g'8) a'8 b'8 | g'8 g'8 e'8 e'8 e'2 |
a'4 a'4 a'8 g'8 fis'8 e'8 | fis'4 d'4 d'2 |

\mark "A 2"
\repeat volta 2 { 
fis'4 fis'4 fis'8 g'8 a'8 b'8 | g'4 e'4 e'2 |
a'4 a'4 a'8 g'8 fis'8 e'8     |}
\alternative { {fis'4 d'4 d'2 } {fis'4 d'4 d'4 d''8 cis''8}}

\mark "B 1"
b'4 a'4 a'4 d'8 e'8 | fis'4 a'4  a'4 d''8 cis''8 |
b'4 a'4 fis'4 d'4 | fis'4 e'4 e'4 d''8 cis''8 |
b'4 a'4 a'4 d'8 e'8 | fis'4 a'4 a'4 d''8 cis''8 |
b'4 a'4 g'4 fis'4 | e'4 d'4 d'2 | \pageBreak
}

\lyricsto voiceone \new Lyrics \lyricmode { 
\include "includes/staffheader.ly"
Oh dear moth -- er, what a fool Iʼve been,
Six young fel -- lows came a- cour -- ting me.
Five were blind and the oth -- er could -- n't see,
Oh dear moth -- er, what a fool Iʼve been!
}
>>

} % score
