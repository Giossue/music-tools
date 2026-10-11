% Lily was here -- automatically converted by midi2ly.py from out-www/satb-template-with-keyboard-reduction.midi
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

% included from ./out-www/satb-template-with-keyboard-reduction.header
\header {
texidoc="The printed output should have a one-measure SATB score on four
staves with lyrics and a keyboard reduction.

The MIDI output should not include the keyboard reduction.  It should include an
extra beat of silence where the printed output has a caesura mark."
options=""
}
% end

trackAchannelA = {
  
  % [TEXT_EVENT] creator: 
  
  % [TEXT_EVENT] LilyPond 2.26.0               
  
  \time 4/4
  
  \tempo 4 = 60
  \skip 4*5 
}

trackA = <<
  \context Voice = voiceA \trackAchannelA
>>


trackBchannelA = {
  
  \set Staff.instrumentName = "SopranoStaff:SopranoVoice"
  
  % [INSTRUMENT_NAME] clarinet
  \skip 4*5 
}

trackBchannelB = \relative c {
  c''4 c r4 c 
  | % 2
  c 
}

trackB = <<
  \context Voice = voiceA \trackBchannelA
  \context Voice = voiceB \trackBchannelB
>>


trackCchannelA = \lyricmode {
  
  % [SEQUENCE_TRACK_NAME] SopranoLyrics:
  "Ah" "ah"2 "ah"4 
  | % 2
  "ah" 
}

trackC = <<
  \context Lyrics = voiceA \trackCchannelA
>>


trackDchannelA = {
  
  \set Staff.instrumentName = "AltoStaff:AltoVoice"
  
  % [INSTRUMENT_NAME] clarinet
  \skip 4*5 
}

trackDchannelB = \relative c {
  g'' g r4 g 
  | % 2
  g 
}

trackD = <<
  \context Voice = voiceA \trackDchannelA
  \context Voice = voiceB \trackDchannelB
>>


trackEchannelA = \lyricmode {
  
  % [SEQUENCE_TRACK_NAME] AltoLyrics:
  "Lah" "lah"2 "lah"4 
  | % 2
  "lah" 
}

trackE = <<
  \context Lyrics = voiceA \trackEchannelA
>>


trackFchannelA = {
  
  \set Staff.instrumentName = "TenorStaff:TenorVoice"
  
  % [INSTRUMENT_NAME] clarinet
  \skip 4*5 
}

trackFchannelB = \relative c {
  c' c r4 c 
  | % 2
  c 
}

trackF = <<

  \clef bass
  
  \context Voice = voiceA \trackFchannelA
  \context Voice = voiceB \trackFchannelB
>>


trackGchannelA = \lyricmode {
  
  % [SEQUENCE_TRACK_NAME] TenorLyrics:
  "Ooo" "ooo"2 "ooo"4 
  | % 2
  "ooo" 
}

trackG = <<
  \context Lyrics = voiceA \trackGchannelA
>>


trackHchannelA = {
  
  \set Staff.instrumentName = "BassStaff:BassVoice"
  
  % [INSTRUMENT_NAME] clarinet
  \skip 4*5 
}

trackHchannelB = \relative c {
  g'2 r4 g 
  | % 2
  g 
}

trackH = <<

  \clef bass
  
  \context Voice = voiceA \trackHchannelA
  \context Voice = voiceB \trackHchannelB
>>


trackIchannelA = \lyricmode {
  
  % [SEQUENCE_TRACK_NAME] BassLyrics:
  "Loo"2. "loo"4 
  | % 2
  "loo" 
}

trackI = <<
  \context Lyrics = voiceA \trackIchannelA
>>


trackJchannelA = {
  
  \set Staff.instrumentName = "PianoRHStaff:PianoRHVoice"
  
  % [INSTRUMENT_NAME] acoustic grand
  \skip 4*5 
}

trackJ = <<
  \context Voice = voiceA \trackJchannelA
>>


trackKchannelA = {
  
  \set Staff.instrumentName = "PianoLHStaff:PianoLHVoice"
  
  % [INSTRUMENT_NAME] acoustic grand
  \skip 4*5 
}

trackK = <<
  \context Voice = voiceA \trackKchannelA
>>


\score {
  <<
    \context Staff=trackB \trackA
    \context Staff=trackB \trackB
    \context Lyrics=trackC \trackC
    \context Staff=trackD \trackA
    \context Staff=trackD \trackD
    \context Lyrics=trackE \trackE
    \context Staff=trackF \trackA
    \context Staff=trackF \trackF
    \context Lyrics=trackG \trackG
    \context Staff=trackH \trackA
    \context Staff=trackH \trackH
    \context Lyrics=trackI \trackI
  >>
  \layout {}
  \midi {}
}
