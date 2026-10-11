% Lily was here -- automatically converted by midi2ly.py from out-www/articulate-trill.midi
\version "2.14.0"

\layout {
  \context {
    \Voice
    \remove Note_heads_engraver
    \consists Completion_heads_engraver
    \remove Rest_engraver
    \consists Completion_rest_engraver
  }
}

% included from ./out-www/articulate-trill.header
\header {
texidoc=""
options=""
}
% end

trackAchannelA = {
  
  % [TEXT_EVENT] creator: 
  
  % [TEXT_EVENT] LilyPond 2.26.0               
  
  \time 4/4
  
  \tempo 4 = 60
  \skip \longa 
}

trackA = <<
  \context Voice = voiceA \trackAchannelA
>>


trackBchannelA = {
  
  \set Staff.instrumentName = "\new:"
  \skip \longa 
}

trackBchannelB = \relative c {
  c'64 b c b c b c b c b c b c b c b c b c b c b c b c b c b c 
  b c b c b c b c b c b c b c b c b c b c b c b c b c b c b c b 
  c b c b 
  | % 2
  r1 
  | % 3
  b16*7 r16*9 
  | % 4
  b8*7 
}

trackB = <<

  \clef bass
  
  \context Voice = voiceA \trackBchannelA
  \context Voice = voiceB \trackBchannelB
>>


\score {
  <<
    \context Staff=trackB \trackA
    \context Staff=trackB \trackB
  >>
  \layout {}
  \midi {}
}
