% Lily was here -- automatically converted by midi2ly.py from out-www/pan-position.midi
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

% included from ./out-www/pan-position.header
\header {
texidoc=""
options=""
}
% end

trackAchannelA = {
  
  % [TEXT_EVENT] creator: 
  
  % [TEXT_EVENT] LilyPond 2.26.0               
  
  \time 4/4
  
  \tempo 4 = 30
  \skip 1 
  | % 2
  
}

trackA = <<
  \context Voice = voiceA \trackAchannelA
>>


trackBchannelA = {
  
  \set Staff.instrumentName = "\new:"
  
}

trackB = <<
  \context Voice = voiceA \trackBchannelA
>>


trackCchannelA = {
  
  % [INSTRUMENT_NAME] oboe
  \skip 1 
  | % 2
  
}

trackCchannelB = \relative c {
  a''1 
  | % 2
  
}

trackC = <<
  \context Voice = voiceA \trackCchannelA
  \context Voice = voiceB \trackCchannelB
>>


trackDchannelA = {
  
  % [INSTRUMENT_NAME] bassoon
  \skip 1 
  | % 2
  
}

trackDchannelB = \relative c {
  f, 
  | % 2
  
}

trackD = <<

  \clef bass
  
  \context Voice = voiceA \trackDchannelA
  \context Voice = voiceB \trackDchannelB
>>


\score {
  <<
    \context Staff \trackA
    \context Staff=trackC \trackA
    \context Staff=trackC \trackC
    \context Staff=trackD \trackA
    \context Staff=trackD \trackD
  >>
  \layout {}
  \midi {}
}
