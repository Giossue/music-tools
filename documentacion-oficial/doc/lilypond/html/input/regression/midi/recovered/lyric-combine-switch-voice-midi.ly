% Lily was here -- automatically converted by midi2ly.py from out-www/lyric-combine-switch-voice.midi
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

% included from ./out-www/lyric-combine-switch-voice.header
\header {
texidoc="It is possible to switch the voice that @code{\lyricsto}
follows."
options=""
}
% end

trackAchannelA = {
  
  % [TEXT_EVENT] creator: 
  
  % [TEXT_EVENT] LilyPond 2.26.0               
  
  \time 4/4
  
  \tempo 4 = 60
  \skip 2 
}

trackA = <<
  \context Voice = voiceA \trackAchannelA
>>


trackBchannelA = {
  
  \set Staff.instrumentName = ":Va"
  \skip 2 
}

trackBchannelB = \relative c {
  f'4 e' 
}

trackB = <<
  \context Voice = voiceA \trackBchannelA
  \context Voice = voiceB \trackBchannelB
>>


trackCchannelA = \lyricmode {
  "Hoo" "hah." 
}

trackC = <<
  \context Lyrics = voiceA \trackCchannelA
>>


\score {
  <<
    \context Staff=trackB \trackA
    \context Staff=trackB \trackB
    \context Lyrics=trackC \trackC
  >>
  \layout {}
  \midi {}
}
