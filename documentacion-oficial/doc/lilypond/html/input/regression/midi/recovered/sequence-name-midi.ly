% Lily was here -- automatically converted by midi2ly.py from out-www/sequence-name.midi
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

% included from ./out-www/sequence-name.header
\header {
texidoc="The MIDI sequence generated from a score should get its name
  from the title defined in the score's @code{\header} block (if any).
  The title used for layout can be overridden for MIDI output by
  specifying a separate @code{midititle} in the @code{\header} block.
  If the score does not define a title of its own, and has no enclosing
  @code{\bookpart}, @code{\book}, or top-level scope with a @code{\header}
  block that defines a title, either, the MIDI sequence should get the
  default name."
options=""
}
% end

trackAchannelA = {
  
  \set Staff.instrumentName = "Title shared between layout and MIDI"
  
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
