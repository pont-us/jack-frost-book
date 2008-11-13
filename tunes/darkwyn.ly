\include "includes/header.ly"
\score {

<<

% \new ChordNames { 
% g1 d1 g1 d1 g1 d1 g2 d2 g1 
% g1 d1 g1 d1 g1 d1 g2 d2 g1 
% g1 d1 g1 d1 g1 d1 g2 d2 g1 
% g1
% }

\context Voice = voiceone {
\include "includes/staffheader.ly"
\clef treble
\key g \major
\time 4/4

 r4 r4 r8 r8 r8 r8   | r4 r4 r8 r8 r8 r8 |
 r8 r8 r8 r8 r4 r4 | r2. r4 |
 r8 r8 r8 r8 r4 r4   | r8 r8 r8 r8 r4 r4 |
 r8 r8 r8 r8 r4 r4 | r1 

\bar "||"\mark "A 1"  r4 r4 r4 r4   | r4 r4 r4 r4 |
 r4 r4 r4 r4   | r4   r4 r2 |
 r4 r4 r4 r4   | r4  r4 r4 r4 |
 r4 r4 r4 r4 | r4   r4 r2

\mark "B 3"
\repeat volta 3 {
 r4. r8 r4 r4 | r2 r2 |
 r4. r8 r4 r4 | r4 r4 r2 |
 r4. r8 r4 r4 | r2 r2 |
 r4 r4 r4 r4  }

\alternative {
{
\set Score.repeatCommands = #'(\text (volta "1.-3."))
r4 r4 r2
}
{ 
\override Staff.VoltaBracket #'font-name = "dummy value"
\set Score.repeatCommands = #'(\text (volta "FINAL") end-repeat)
r4 r4 r2-> 
% \set Score.repeatCommands = #'(end-repeat)
}
}
}

% \lyricsto voiceone \new Lyrics \lyricmode { 
% \include "includes/staffheader.ly"
% My friend Bil -- lyʼs got a ten foot wil -- ly
% and he showed it to the girl next door.
% She thought it was a snake, and hit it with a rake,
% and now itʼs on -- ly five foot four!
% }

>>

\header {
 piece = "Dilwyn (dark morris version)"
}


}
