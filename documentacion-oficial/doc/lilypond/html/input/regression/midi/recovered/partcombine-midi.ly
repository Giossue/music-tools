% Lily was here -- automatically converted by midi2ly.py from out-www/partcombine.midi
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

% included from ./out-www/partcombine.header
\header {
texidoc="PartCombined music is preserved"
options="--skip"
}
% end

trackAchannelA = {
  
  % [TEXT_EVENT] creator: 
  
  % [TEXT_EVENT] LilyPond 2.26.0               
  
  \time 4/4
  
  \tempo 4 = 60
  \skip 1*5 
}

trackA = <<
  \context Voice = voiceA \trackAchannelA
>>


trackBchannelA = {
  
  \set Staff.instrumentName = "staff:one"
  \skip 1*5 
}

trackBchannelB = {
  
  \set Staff.instrumentName = "staff:solo"
  \skip 1*5 
}

trackBchannelC = {
  
  \set Staff.instrumentName = "staff:shared"
  \skip 1*5 
}

trackBchannelD = {
  
  \set Staff.instrumentName = "staff:two"
  \skip 1*5 
}

trackBchannelE = \relative c {
  \voiceThree
  s4*13 g''2 
}

trackBchannelF = \relative c {
  \voiceTwo
  s4*13 f'4 e 
}

trackBchannelG = \relative c {
  \voiceOne
  s\breve d''4 c b a 
  | % 4
  <b g > s2 <f d >4 
  | % 5
  e1 
  | % 6
  
}

trackBchannelH = \relative c {
  \voiceFour
  c'4 d e f 
  | % 2
  g a b c 
  | % 3
  
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
