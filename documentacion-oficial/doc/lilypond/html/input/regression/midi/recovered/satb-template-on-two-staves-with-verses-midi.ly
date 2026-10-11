% Lily was here -- automatically converted by midi2ly.py from out-www/satb-template-on-two-staves-with-verses.midi
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

% included from ./out-www/satb-template-on-two-staves-with-verses.header
\header {
texidoc="The printed output should have a one-measure SATB score on two
staves with five verses and piano accompaniment.

The MIDI output should include an extra beat of silence where the printed output
has a caesura mark."
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
  
  \set Staff.instrumentName = "SopranoVoice:SopranoVoice"
  
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


trackCchannelA = {
  
  \set Staff.instrumentName = "AltoVoice:AltoVoice"
  
  % [INSTRUMENT_NAME] clarinet
  \skip 4*5 
}

trackCchannelB = \relative c {
  g'' g r4 g 
  | % 2
  g 
}

trackC = <<
  \context Voice = voiceA \trackCchannelA
  \context Voice = voiceB \trackCchannelB
>>


trackDchannelA = \lyricmode {
  
  % [SEQUENCE_TRACK_NAME] SopranoVerseOne:
  "First" " "2 "stan"4 
  | % 2
  "za" 
}

trackD = <<
  \context Lyrics = voiceA \trackDchannelA
>>


trackEchannelA = \lyricmode {
  
  % [SEQUENCE_TRACK_NAME] SopranoVerseTwo:
  "Se" "cond"2 "stan"4 
  | % 2
  "za" 
}

trackE = <<
  \context Lyrics = voiceA \trackEchannelA
>>


trackFchannelA = \lyricmode {
  
  % [SEQUENCE_TRACK_NAME] SopranoVerseThree:
  "Third" " "2 "stan"4 
  | % 2
  "za" 
}

trackF = <<
  \context Lyrics = voiceA \trackFchannelA
>>


trackGchannelA = \lyricmode {
  
  % [SEQUENCE_TRACK_NAME] SopranoVerseFour:
  "Fourth" " "2 "stan"4 
  | % 2
  "za" 
}

trackG = <<
  \context Lyrics = voiceA \trackGchannelA
>>


trackHchannelA = \lyricmode {
  
  % [SEQUENCE_TRACK_NAME] SopranoVerseFive:
  "Fifth" " "2 "stan"4 
  | % 2
  "za" 
}

trackH = <<
  \context Lyrics = voiceA \trackHchannelA
>>


trackIchannelA = {
  
  \set Staff.instrumentName = "TenorVoice:TenorVoice"
  
  % [INSTRUMENT_NAME] clarinet
  \skip 4*5 
}

trackIchannelB = \relative c {
  c' c r4 c 
  | % 2
  c 
}

trackI = <<

  \clef bass
  
  \context Voice = voiceA \trackIchannelA
  \context Voice = voiceB \trackIchannelB
>>


trackJchannelA = {
  
  \set Staff.instrumentName = "BassVoice:BassVoice"
  
  % [INSTRUMENT_NAME] clarinet
  \skip 4*5 
}

trackJchannelB = \relative c {
  g'2 r4 g 
  | % 2
  g 
}

trackJ = <<

  \clef bass
  
  \context Voice = voiceA \trackJchannelA
  \context Voice = voiceB \trackJchannelB
>>


trackKchannelA = {
  
  \set Staff.instrumentName = "PianoRHStaff:PianoRHVoice"
  
  % [INSTRUMENT_NAME] acoustic grand
  \skip 4*5 
}

trackKchannelB = \relative c {
  c'' c r4 c 
  | % 2
  c 
}

trackK = <<
  \context Voice = voiceA \trackKchannelA
  \context Voice = voiceB \trackKchannelB
>>


trackLchannelA = {
  
  \set Staff.instrumentName = "PianoLHStaff:PianoLHVoice"
  
  % [INSTRUMENT_NAME] acoustic grand
  \skip 4*5 
}

trackLchannelB = \relative c {
  c2 r4 c2 
}

trackL = <<

  \clef bass
  
  \context Voice = voiceA \trackLchannelA
  \context Voice = voiceB \trackLchannelB
>>


\score {
  <<
    \context Staff=trackB \trackA
    \context Staff=trackB \trackB
    \context Staff=trackC \trackA
    \context Staff=trackC \trackC
    \context Lyrics=trackD \trackD
    \context Lyrics=trackE \trackE
    \context Lyrics=trackF \trackF
    \context Lyrics=trackG \trackG
    \context Lyrics=trackH \trackH
    \context Staff=trackI \trackA
    \context Staff=trackI \trackI
    \context Staff=trackJ \trackA
    \context Staff=trackJ \trackJ
    \context Staff=trackK \trackA
    \context Staff=trackK \trackK
    \context Staff=trackL \trackA
    \context Staff=trackL \trackL
  >>
  \layout {}
  \midi {}
}
