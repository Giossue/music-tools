% Lily was here -- automatically converted by midi2ly.py from out-www/lyrics-addlyrics.midi
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

% included from ./out-www/lyrics-addlyrics.header
\header {
texidoc="Lyrics are preserved"
options=""
}
% end

trackAchannelA = {


  \key g \major
    
  % [TEXT_EVENT] creator: 
  
  % [TEXT_EVENT] LilyPond 2.26.0               
  
  \time 6/8
  
  \tempo 4 = 60
  \skip 8*11 
}

trackA = <<
  \context Voice = voiceA \trackAchannelA
>>


trackBchannelA = {
  
  \set Staff.instrumentName = ":uniqueContext0"
  \skip 8*11 
}

trackBchannelB = \relative c {
  d''4 b8 c4 a8 
  | % 2
  d4 b8 g4 
}

trackB = <<
  \context Voice = voiceA \trackBchannelA
  \context Voice = voiceB \trackBchannelB
>>


trackCchannelA = {
  

  \key g \major
  \skip 8*11 
}

trackC = <<
  \context Voice = voiceA \trackCchannelA
>>


trackDchannelA = \lyricmode {
  "Girls" "and"8 "boys"4 "come"8 
  | % 2
  "out"4 "to"8 "play,"4 
}

trackD = <<
  \context Lyrics = voiceA \trackDchannelA
>>


\score {
  <<
    \context Staff=trackB \trackA
    \context Staff=trackB \trackB
    \context Lyrics=trackD \trackD
  >>
  \layout {}
  \midi {}
}
