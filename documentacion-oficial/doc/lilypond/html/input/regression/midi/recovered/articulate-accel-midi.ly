% Lily was here -- automatically converted by midi2ly.py from out-www/articulate-accel.midi
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

% included from ./out-www/articulate-accel.header
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
  \skip 4 
  \tempo 4 = 100
  \skip 2 
  \tempo 4 = 60
  \skip 2 
  \tempo 4 = 100
  \skip 2 
  \tempo 4 = 60
  \skip 2 
  | % 3
  
  \tempo 4 = 100
  \skip 2 
  \tempo 4 = 60
  \skip 2 
  | % 4
  
  \tempo 4 = #200/3 % ≈66.6667
  \skip 2 
  \tempo 4 = 60
  \skip 2 
  | % 5
  
  \tempo 4 = #30000000/833333 % ≈36
  \skip 2 
  \tempo 4 = 60
  \skip 2 
  | % 6
  
  \tempo 4 = #30000000/833333 % ≈36
  \skip 2 
  \tempo 4 = 60
  \skip 2 
  | % 7
  
  \tempo 4 = #30000000/833333 % ≈36
  \skip 2 
  \tempo 4 = 60
  \skip 2 
  | % 8
  
  \tempo 4 = #30000000/833333 % ≈36
  \skip 2 
  \tempo 4 = 60
  \skip 2 
  | % 9
  
  \tempo 4 = #60000000/1111111 % ≈54
  \skip 2 
  \tempo 4 = 60
  \skip 2 
  | % 10
  
  \tempo 4 = #60000000/1111111 % ≈54
  \skip 2 
  \tempo 4 = 60
  \skip 4 
}

trackA = <<
  \context Voice = voiceA \trackAchannelA
>>


trackBchannelA = {
  
  \set Staff.instrumentName = "\new:"
  \skip \breve*5 
}

trackBchannelB = \relative c {
  c'32*7 r32 d32*7 r32 e32*7 r32 f32*7 r32 
  | % 2
  c32*7 r32 d32*7 r32 e32*7 r32 f32*7 r32 
  | % 3
  c32*7 r32 d32*7 r32 e32*7 r32 f32*7 r32 
  | % 4
  c32*7 r32 d32*7 r32 e32*7 r32 f32*7 r32 
  | % 5
  c32*7 r32 d32*7 r32 e32*7 r32 f32*7 r32 
  | % 6
  c32*7 r32 d32*7 r32 e32*7 r32 f32*7 r32 
  | % 7
  c32*7 r32 d32*7 r32 e32*7 r32 f32*7 r32 
  | % 8
  c32*7 r32 d32*7 r32 e32*7 r32 f32*7 r32 
  | % 9
  c32*7 r32 d32*7 r32 e32*7 r32 f32*7 r32 
  | % 10
  c32*7 r32 d32*7 r32 e32*7 r32 f32*7 
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
