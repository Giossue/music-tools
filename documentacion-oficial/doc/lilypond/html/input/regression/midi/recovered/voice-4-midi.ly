% Lily was here -- automatically converted by midi2ly.py from out-www/voice-4.midi
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

% included from ./out-www/voice-4.header
\header {
texidoc="midi2ly maps four voices nicely on one staff as \voiceOne, \voiceTwo, \voiceThree, \voiceFour"
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
  
  \set Staff.instrumentName = "trackB:voiceD"
  \skip 1 
  | % 2
  
}

trackBchannelC = {
  
  \set Staff.instrumentName = "trackB:voiceC"
  \skip 1 
  | % 2
  
}

trackBchannelD = {
  
  \set Staff.instrumentName = "trackB:voiceB"
  \skip 1 
  | % 2
  
}

trackBchannelE = \relative c {
  \voiceOne
  <c''' a >2 b 
  | % 2
  
}

trackBchannelF = \relative c {
  \voiceThree
  c''4. d8 e4 f 
  | % 2
  
}

trackBchannelG = \relative c {
  \voiceFour
  d'1 
  | % 2
  
}

trackBchannelH = \relative c {
  \voiceTwo
  c'4 c2 c4 
  | % 2
  
}

trackB = <<
  \context Voice = voiceA \trackBchannelA
  \context Voice = voiceB \trackBchannelB
  \context Voice = voiceC \trackBchannelC
  \context Voice = voiceD \trackBchannelD
  \context Voice = voiceE \trackBchannelE
  \context Voice = voiceF \trackBchannelF
  \context Voice = voiceG \trackBchannelG
  \context Voice = voiceH \trackBchannelH
>>


\score {
  <<
    \context Staff=trackB \trackA
    \context Staff=trackB \trackB
  >>
  \layout {}
  \midi {}
}
