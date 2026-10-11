% Lily was here -- automatically converted by midi2ly.py from out-www/sequence-name-scoping.midi
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

% included from ./out-www/sequence-name-scoping.header
\header {
texidoc="If a score has a @code{\header} block which defines a title,
  this title should override any title defined in a @code{\header} block
  of the score's enclosing @code{\bookpart} or @code{\book} (or a title
  defined in a top-level @code{\header} block) when naming the MIDI
  sequence generated from the score.  Otherwise, if the score has no title
  defined, the MIDI sequence generated from the score should get named
  using the title defined in the @code{\header} block of the nearest
  enclosing @code{\bookpart}, @code{\book}, or top-level scope that
  contains a title definition."
options=""
}
% end

trackAchannelA = {
  
  \set Staff.instrumentName = "Book"
  
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
  \skip 1 
  | % 2
  
}

trackBchannelB = \relative c {
  c1 
  | % 2
  
}

trackB = <<

  \clef bass
  
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
