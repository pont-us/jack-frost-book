\include "includes/header.ly"
\score {
\context Voice = voiceone {
\include "includes/staffheader.ly"
\time 6/8 \key d \major
\mark A
fis'4 a'8 g'4 b'8 | a'8 b'8 cis''8 d''4. |
fis'4 a'8 g'4 b'8 | a'8 fis'8 d'8 e'4. |
fis'4 a'8 g'4 b'8 | a'8 b'8 cis''8 d''4 e''8 |
fis''4 d''8 g''4 fis''8 | e''8 d''8 cis''8 d''4.
\mark B
\repeat volta 2 {
fis''4 a''8 fis''4 d''8 | g''4 b''8 g''4. |
fis''4 a''8 fis''4 d''8 | e''4 cis''8 a'4. |
fis''4 a''8 fis''4 d''8 | g''4 b''8 g''4. |
fis''4 d''8 g''4 fis''8 | e''8 d''8 cis''8 d''4. | \pageBreak
}
}
} % score
