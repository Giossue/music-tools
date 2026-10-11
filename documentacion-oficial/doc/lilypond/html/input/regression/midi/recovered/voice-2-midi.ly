% Lily was here -- automatically converted by midi2ly.py from out-www/voice-2.midi
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

% included from ./out-www/voice-2.header
\header {
texidoc="midi2ly maps two voices nicely on one staff as \voiceOne, \voiceTwo"
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
  
}

trackA = <<
  \context Voice = voiceA \trackAchannelA
>>


trackBchannelA = {
  
  \set Staff.instrumentName = "trackB:voiceA"
  \skip 1 
  | % 2
  
}

trackBchannelB = {
  
  \set Staff.instrumentName = "trackB:voiceB"
  \skip 1 
  | % 2
  
}

trackBchannelC = \relative c {
  \voiceOne
  e''4 e e e 
  | % 2
  
}

trackBchannelD = \relative c {
  \voiceTwo
  f' f f f 
  | % 2
  
}

trackB = <<
  \context Voice = voiceA \trackBchannelA
  \context Voice = voiceB \trackBchannelB
  \context Voice = voiceC \trackBchannelC
  \context Voice = voiceD \trackBchannelD
>>


\score {
  <<
    \context Staff=trackB \trackA
    \context Staff=trackB \trackB
  >>
  \layout {}
  \midi {}
}
