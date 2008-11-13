\include "includes/header.ly"
% \paper { annotate-spacing = ##t }
\score {  

<<
\new Staff = mainstaff {
\new Voice = voiceone {
\include "includes/staffheader.ly"
\time 6/8 \key g \major
\partial 8 b'8 | b'8 a'8 g'8 d'8 d'8 d'8 |
 e'8 fis'8 g'8 fis'8( e'8) d'8 |
 b'8 a'8 g'8 d'4 d'8 |
 e'4 fis'8 g'4. |
 b'8 a'8 g'8 d'4 d'8 |
 e'8 fis'8 g'8 fis'8( e'8) d'8 |
 b'8 a'8 g'8 d'8 d'8 d'8 |
 e'4 fis'8 g'4. |

\mark "A 2" \repeat volta 2 {
 b'8 a'8 g'8 d'4 d'8 |
 e'8 fis'8 g'8 fis'8 e'8 d'8 |
 b'8 a'8 g'8 d'4 d'8 |
 e'4 fis'8 g'4. |
}
% reduce space above volta on last line
\overrideProperty #"Score.NonMusicalPaperColumn" #'line-break-system-details #'((next-space . 1))
\mark "B 3" \repeat volta 3 {
 b'4 b'8 a'4 fis'8 |
 g'4 g'8 fis'8 e'8 d'8 |
 g'4 b'8 a'4 fis'8 |
 g'4 b'8 d''4. |
 <<
  \new Staff \with
  {
    \remove "Time_signature_engraver"
    \remove "Clef_engraver"
    fontSize = #-2
  }
  \relative {
    \set Staff.alignAboveContext = #"mainstaff"
    \startStaff
    | R2.^"ossia" | R2. |
    \stopStaff
  }
{
 e''4 e''8 d''4 b'8 |
 c''4 c''8 b'8 a'8 g'8 |
 g'8 a'8 b'8 c''4 b'8 |
 a'8 g'8 fis'8 g'4. | 
}
>>
}
}
}

\lyricsto voiceone \new Lyrics \lyricmode { 
\include "includes/staffheader.ly"
They tell me my bean is the big -- gest theyʼve seen
but it needs a hole where it can grow.
Iʼve got a pole to dib -- ble your hole
So come a- -- bean- -- set -- ting and bring your hoe!
}
>>
}
