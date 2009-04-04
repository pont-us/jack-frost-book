\include "includes/header.ly"

\score {
<<
\context Voice = voiceone {
\include "includes/staffheader.ly"

\time 4/4 \key g \major

d'4 g'4 g'4. a'8 | b'4 g'4  g'4. fis'8 |
e'4 a'4 a'4. g'8 | fis'4 d'4 d'2 |
d'4 g'4 g'4. a'8 | b'4 g'4  g'4. fis'8 |
e'4 a'4 fis'4 d'4 | g'1  |

\mark "A *"
\repeat volta 2 {
d'4 g'4 g'4. a'8 | b'4 g'4  g'4. fis'8 |
e'4 a'4 a'4. g'8 | fis'4 d'4 d'2 |
d'4 g'4 g'4. a'8 | b'4 g'4  g'4. fis'8 |
e'4 a'4 fis'4 d'4 | g'1  |
}

\mark "B 2"
\repeat volta 2 {
d''2 d''4. c''8 | b'4 g'4 g'4. fis'8 |
e'4 a'4 a'4. g'8 | fis'4 d'4 d'2  |
d''2 d''4. c''8 | b'4 g'4 g'4. fis'8 |
e'4 a'4 fis'4 d'4 | g'1 | 
}
}

\lyricsto voiceone \new Lyrics \lyricmode { 
\include "includes/staffheader.ly"
Do you know the muff -- in man, the muff -- in man, the muff -- in man, 
Do you know the muff -- in man who lives in Dru -- ry Lane?  
}
>>

} % score
