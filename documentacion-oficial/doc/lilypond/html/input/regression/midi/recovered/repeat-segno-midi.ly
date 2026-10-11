% Lily was here -- automatically converted by midi2ly.py from out-www/repeat-segno.midi
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

% included from ./out-www/repeat-segno.header
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
  \skip 1 
  | % 2
  
  % [MARKER] ~~~~
  \skip 1 
  | % 3
  
  % [MARKER] ~~~~
  \skip \breve. 
  % [MARKER] ~~~~~~~~
  \skip 1 
  | % 7
  
  % [MARKER] ~~~~~~~~
  \skip \breve. 
  % [MARKER] ~~~~~~~3~~~~~~~
  \skip 1 
  | % 11
  
  % [MARKER] ~~~~~~~3~~~~~~~
  \skip \breve 
}

trackA = <<
  \context Voice = voiceA \trackAchannelA
>>


trackBchannelA = {
  
  \set Staff.instrumentName = "\new:"
  \skip \maxima. 
}

trackBchannelB = \relative c {
  c'1 
  | % 2
  d 
  | % 3
  e 
  | % 4
  f 
  | % 5
  c 
  | % 6
  d 
  | % 7
  e 
  | % 8
  f 
  | % 9
  c 
  | % 10
  d 
  | % 11
  e 
  | % 12
  f 
  | % 13
  
}

trackB = <<
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
