% Lily was here -- automatically converted by midi2ly.py from out-www/key-initial.midi
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

% included from ./out-www/key-initial.header
\header {
texidoc="keys work in MIDI, this is d-minor"
options=""
}
% end

trackAchannelA = {


  \key d \minor
    
  % [TEXT_EVENT] creator: 
  
  % [TEXT_EVENT] LilyPond 2.26.0               
  
  \time 4/4
  
  \tempo 4 = 60
  \skip \breve 
}

trackA = <<
  \context Voice = voiceA \trackAchannelA
>>


trackBchannelA = {
  
  \set Staff.instrumentName = "trackB:voiceA"
  \skip \breve 
}

trackBchannelB = {
  
  \set Staff.instrumentName = "trackB:"
  

  \key d \minor
  \skip \breve 
}

trackBchannelC = \relative c {
  d'4 e f g 
  | % 2
  a bes cis d 
  | % 3
  
}

trackB = <<
  \context Voice = voiceA \trackBchannelA
  \context Voice = voiceB \trackBchannelB
  \context Voice = voiceC \trackBchannelC
>>


\score {
  <<
    \context Staff=trackB \trackA
    \context Staff=trackB \trackB
  >>
  \layout {}
  \midi {}
}
