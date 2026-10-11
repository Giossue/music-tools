% Lily was here -- automatically converted by midi2ly.py from out-www/key-option.midi
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

% included from ./out-www/key-option.header
\header {
texidoc="@code{midi2ly}'s option @option{--key} works, this is F major."
options="--key=-1"
}
% end

trackAchannelA = {


  \key f \major
    
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

trackBchannelB = \relative c {
  f'4 g a bes 
  | % 2
  c d e f 
  | % 3
  
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
