% Lily was here -- automatically converted by midi2ly.py from out-www/quantize-duration-2.midi
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

% included from ./out-www/quantize-duration-2.header
\header {
texidoc="@code{midi2ly}'s option @option{--duration-quant} preserves first note length (16)."
options="--duration-quant=16"
}
% end

trackAchannelA = {


  \key a \major
    
  % [TEXT_EVENT] creator: 
  
  % [TEXT_EVENT] LilyPond 2.26.0               
  
  \time 3/8
  
  \tempo 4 = 120
  \skip 4*1138/384 
}

trackA = <<
  \context Voice = voiceA \trackAchannelA
>>


trackBchannelA = {
  
  \set Staff.instrumentName = "trackB:voiceA"
  \skip 4*1138/384 
}

trackBchannelB = {
  
  \set Staff.instrumentName = "trackB:"
  

  \key a \major
  \skip 4*1138/384 
}

trackBchannelC = \relative c {
  e'''16 d fis,8 gis 
  | % 2
  cis16 b d,8 e 
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
