\include "includes/header.ly"
\score {
<<

\new ChordNames { 
g1 d1 g1 d1 g1 d1 g2 d2 g1 
g1 d1 g1 d1 g1 d1 g2 d2 g1 
g1 d1 g1 d1 g1 d1 g2 d2 g1 
g1
}

\context Voice = voiceone {
\include "includes/staffheader.ly"
\clef treble
\key g \major
\time 4/4

 d'4 g'4 d'8 d'8 g'8 g'8   | fis'4 e'4 fis'8 fis'8 e'8 e'8 |
 d'8 d'8 g'8 g'8 fis'4 g'4 | a'2. d'4 |
 d'8 d'8 g'8 g'8 d'4 g'4   | fis'8 fis'8 e'8 e'8 fis'4 e'4 |
 d'8 d'8 d'8 d'8 e'4 fis'4 | g'1 

\bar "||"\mark "A 1"  d'4 g'4 d'4 g'4   | fis'4 e'4 fis'4 e'4 |
 d'4 g'4 d'4 g'4   | fis'4   g'4 a'2 |
 d'4 g'4 d'4 g'4   | fis'4  e'4 fis'4 e'4 |
 d'4 d'4 e'4 fis'4 | g'4   g'4 g'2

\mark "B 3"
\repeat volta 3 {
 b'4. a'8 g'4 b'4 | c''2 a'2 |
 b'4. a'8 g'4 b'4 | a'4 fis'4 d'2 |
 b'4. a'8 g'4 b'4 | c''2 a'2 |
 b'4 g'4 a'4 fis'4  }

\alternative {
{
\set Score.repeatCommands = #'(\text (volta "1.-3."))
g'4 g'4 g'2
}
{ 
\override Staff.VoltaBracket #'font-name = "dummy value"
\set Score.repeatCommands = #'(\text (volta "FINAL") end-repeat)
g'4 r4 g''2-> 
% \set Score.repeatCommands = #'(end-repeat)
}
}
}

\lyricsto voiceone \new Lyrics \lyricmode { 
\include "includes/staffheader.ly"
My friend Bil -- lyʼs got a ten foot wil -- ly
and he showed it to the girl next door.
She thought it was a snake, and hit it with a rake,
and now itʼs on -- ly five foot four!
}

>>
}
