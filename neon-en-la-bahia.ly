\version "2.24.3"
\language "nederlands"

#(set-global-staff-size 16)

\header {
  title = "Neón en la bahía"
  subtitle = "Japanese City Pop · Instrumental original"
  composer = "Composición original"
  instrument = "Saxo, piano eléctrico, guitarra, bajo y batería · Sonido real"
  meter = "La mayor · 4/4 · Corcheas rectas"
  tagline = ##f
}

\paper {
  #(set-paper-size "a4")
  top-margin = 12\mm
  bottom-margin = 12\mm
  left-margin = 15\mm
  right-margin = 12\mm
  indent = 23\mm
  short-indent = 10\mm
  ragged-last-bottom = ##f
}

global = {
  \key a \major
  \time 4/4
}

bandDynamics = {
  s1\mp s1*7
  s1\mf s1*15
  s1\f s1*15
  s1\mp s1*7
  s1\mf s1*7
  s1\f s1*15
  s1\mf s1*3
  s1\> s1*2 s1\pp
}

drumDynamics = {
  s1\mp s1*7
  s1\mf s1*15
  s1\f s1*15
  s1\mp s1*7
  s1\mf s1*7
  s1\f s1*15
  s1\mf s1*3
  s1\mp s1*2 s1\pp
}

form = {
  \tempo "City Pop, luminoso" 4 = 108
  \mark \markup { \box "Intro" }
  s1*4 \break
  s1*4 \bar "||" \break
  \barNumberCheck #9
  \mark \markup { \box "A" \hspace #1 "Avenida" }
  s1*4 \break
  s1*4 \break
  s1*4 \break
  s1*4 \bar "||" \break
  \barNumberCheck #25
  \mark \markup { \box "B" \hspace #1 "Luces de la bahía" }
  s1*4 \break
  s1*4 \break
  s1*4 \break
  s1*4 \bar "||" \break
  \barNumberCheck #41
  \mark \markup { \box "C" \hspace #1 "Puente" }
  s1*4 \break
  s1*4 \bar "||" \break
  \barNumberCheck #49
  \mark \markup { \box "Solo" \hspace #1 "Saxo" }
  s1*4 \break
  s1*4 \bar "||" \break
  \barNumberCheck #57
  \mark \markup { \box "B'" \hspace #1 "Estribillo final" }
  s1*4 \break
  s1*4 \break
  s1*4 \break
  s1*4 \bar "||" \break
  \barNumberCheck #73
  \mark \markup { \box "Coda" }
  s1*4 \break
  s1*4 \bar "|."
  \barNumberCheck #81
}

introHarmony = \chordmode {
  d1:maj9 | cis2:m7 fis2:7.9- | b1:m9 | e1:13 |
  cis1:m7 | fis1:7.9- | b1:m9 | e1:9 |
}

themeHarmony = \chordmode {
  d1:maj9 | cis2:m7 fis2:7.9- | b1:m9 | e1:13 |
  a1:maj9 | cis2:m7 fis2:7.9- | b1:m9 | e1:9 |
  d1:maj9 | cis2:m7 fis2:7.9- | b1:m9 | e1:13 |
  a1:maj9 | fis1:7.9- | b1:m9 | e1:9 |
}

chorusHarmonyCore = \chordmode {
  d1:maj9 | e1:13 | cis1:m7 | fis1:7.9- |
  b1:m9 | e1:9 | a1:maj9 | a1:7 |
  d1:maj9 | d1:m9 | cis1:m7 | fis1:7.9- |
  b1:m9 | e1:13 | a1:maj9 |
}

bridgeHarmony = \chordmode {
  fis1:m9 | b1:9 | e1:maj9 | cis1:7.9- |
  fis1:m9 | b1:9 | b1:m9 | e1:13 |
}

outroHarmony = \chordmode {
  d1:maj9 | cis2:m7 fis2:7.9- | b1:m9 | e1:13 |
  a1:maj9 | d1:m9 | a2:maj9/e e2:9 | a1:maj9 |
}

harmonies = {
  \introHarmony
  \themeHarmony
  \chorusHarmonyCore \chordmode { e1:9 | }
  \bridgeHarmony
  \introHarmony
  \chorusHarmonyCore \chordmode { e2:9 a2:maj9 | }
  \outroHarmony
}

introLead = {
  R1 | R1 | R1 |
  r2 r8 e'8\mp( gis'8 b'8) |
  r8 cis''8( e''4~ e''8 cis''8 b'8 gis'8) |
  ais'4(~ ais'8 cis''8 e''4 cis''8 ais'8) |
  fis'8( a'8 cis''4~ cis''8 b'8 a'4) |
  gis'4 r8 b'8( d''8 cis''8 b'8 gis'8) |
}

themeLead = {
  fis'8\mf( a'8 cis''4~ cis''8 e''8 cis''8 a'8) |
  gis'4( e'8 gis'8 ais'4 cis''8 e''8) |
  d''4(~ d''8 cis''8 b'4 a'8 fis'8) |
  gis'8( b'8 cis''4~ cis''8 b'8 gis'4) |
  e''4( cis''8 b'8 gis'4 b'8 cis''8) |
  gis'8( e'8 gis'4 ais'8 cis''8 e''4) |
  d''8( cis''8 b'4~ b'8 a'8 fis'8 a'8) |
  b'4 gis'4 r8 e'8( gis'8 b'8) |
  fis'8( a'8 cis''4~ cis''8 e''8 fis''8 e''8) |
  gis''4( e''8 cis''8 e''8 cis''8 ais'4) |
  d''4( cis''8 b'8 a'8 fis'8 a'4) |
  gis'8( b'8 cis''4 b'8 gis'8 fis'4) |
  e''4(~ e''8 cis''8 b'8 gis'8 cis''4) |
  ais'8( cis''8 e''4~ e''8 cis''8 ais'8 g'8) |
  fis'8( a'8 b'4 cis''8 d''8 cis''8 b'8) |
  gis'4( b'8 d''8 cis''8 b'8 gis'4) |
}

chorusLeadCore = {
  e''8\f( fis''8 e''4~ e''8 cis''8 a'8 cis''8) |
  b'8( cis''8 e''4~ e''8 fis''8 e''8 b'8) |
  gis''4( fis''8 e''8 cis''4 b'8 gis'8) |
  ais'8( cis''8 e''4 cis''8 ais'8 g'4) |
  fis'8( a'8 cis''4~ cis''8 d''8 cis''8 b'8) |
  gis'4( b'8 cis''8 d''4 b'8 gis'8) |
  b'8( cis''8 e''4~ e''8 cis''8 b'8 gis'8) |
  g'4( a'8 cis''8 e''4 g''8 e''8) |
  fis''4( e''8 cis''8 a'8 cis''8 e''4) |
  f''4( e''8 c''8 a'4 c''8 e''8) |
  gis''8( fis''8 e''4 cis''8 b'8 gis'4) |
  ais'4( cis''8 e''8 g''4 e''8 cis''8) |
  d''4( cis''8 b'8 a'8 fis'8 a'8 cis''8) |
  b'8( cis''8 d''4~ d''8 b'8 gis'4) |
  b'8( cis''8 e''4 cis''8 b'8 gis'8 e'8) |
}

bridgeLead = {
  cis''2\mp( a'4 gis'8 a'8) |
  dis''4( cis''8 b'8 a'4 fis'8 dis'8) |
  e'8( gis'8 b'4 dis''4 fis''8 e''8) |
  eis''4( d''8 b'8 gis'4 b'8 d''8) |
  cis''4( gis'8 a'8 e''2) |
  dis''8( cis''8 b'4 a'8 fis'8 dis'4) |
  d'8( fis'8 a'4 cis''4 b'8 a'8) |
  gis'4( b'8 cis''8 d''4) r8 e''8\< |
}

soloLead = {
  fis''8\f( e''16 cis''16 a'8 fis'8 a'16 cis''16 e''8 fis''4) |
  e''8( gis''8 e''16 cis''16 b'8 ais'8 cis''16 e''16 g''8 e''8) |
  fis''4( e''16 d''16 cis''8 b'8 a'16 fis'16 a'8 cis''8) |
  b'8( cis''8 d''16 e''16 fis''8 e''4 b'8 gis'8) |
  gis''8( e''16 cis''16 b'8 gis'8 e'8 gis'16 b'16 cis''4) |
  ais'16( cis''16 e''8 g''8 e''8 cis''4 ais'8 g'8) |
  fis'8( a'16 b'16 cis''8 d''8 fis''4 e''8 cis''8) |
  b'8( gis'8 fis'16 gis'16 b'8 d''4 cis''8 b'8) |
}

outroLead = {
  r8 fis'8\mf( a'4 cis''8 e''8 cis''4) |
  gis'4( e'8 gis'8 ais'4 cis''8 e''8) |
  d''4( cis''8 b'8 a'4 fis'4) |
  gis'8( b'8 d''4 cis''8 b'8 gis'4) |
  e''2\>( cis''4 b'8 gis'8) |
  f''4( e''8 c''8 a'2) |
  gis'4( b'8 d''8 cis''4 b'4) |
  a'1\pp\fermata |
}

lead = {
  \introLead
  \themeLead
  \chorusLeadCore
  gis'4 r8 b'8( d''8 cis''8 b'8 gis'8) |
  \bridgeLead
  \soloLead
  \chorusLeadCore
  b'4( gis'8 b'8 cis''2) |
  \outroLead
}

pianoD = {
  r8 <fis' a' cis'' e''>8-. r16 q8.-. r8 q8-. q4-. |
}

pianoCis = {
  r8 <e' gis' b' cis''>8-. r16 q8.-. r8 q8-. q4-. |
}

pianoFis = {
  r8 <e' g' ais' cis''>8-. r16 q8.-. r8 q8-. q4-. |
}

pianoCisFis = {
  r8 <e' gis' b' cis''>8-. r16 q8.-.
  r8 <e' g' ais' cis''>8-. q4-. |
}

pianoB = {
  r8 <d' fis' a' cis''>8-. r16 q8.-. r8 q8-. q4-. |
}

pianoE = {
  r8 <d' fis' gis' cis''>8-. r16 q8.-. r8 q8-. q4-. |
}

pianoENine = {
  r8 <d' fis' gis' b'>8-. r16 q8.-. r8 q8-. q4-. |
}

pianoA = {
  r8 <cis' e' gis' b'>8-. r16 q8.-. r8 q8-. q4-. |
}

pianoASeven = {
  r8 <cis' e' g' a'>8-. r16 q8.-. r8 q8-. q4-. |
}

pianoDMinor = {
  r8 <f' a' c'' e''>8-. r16 q8.-. r8 q8-. q4-. |
}

pianoIntro = {
  \pianoD \pianoCisFis \pianoB \pianoE
  \pianoCis \pianoFis \pianoB \pianoENine
}

pianoTheme = {
  \pianoD \pianoCisFis \pianoB \pianoE
  \pianoA \pianoCisFis \pianoB \pianoENine
  \pianoD \pianoCisFis \pianoB \pianoE
  \pianoA \pianoFis \pianoB \pianoENine
}

pianoChorusCore = {
  \pianoD \pianoE \pianoCis \pianoFis
  \pianoB \pianoENine \pianoA \pianoASeven
  \pianoD \pianoDMinor \pianoCis \pianoFis
  \pianoB \pianoE \pianoA
}

pianoBridge = {
  <e' gis' a' cis''>2 <gis' a' cis'' e''>2 |
  <dis' fis' a' cis''>2 <fis' a' cis'' dis''>2 |
  <dis' fis' gis' b'>2 <fis' gis' b' dis''>2 |
  <b d' eis' gis'>2 <d' eis' gis' b'>2 |
  <e' gis' a' cis''>2 <gis' a' cis'' e''>2 |
  <dis' fis' a' cis''>2 <fis' a' cis'' dis''>2 |
  <d' fis' a' cis''>2 <fis' a' cis'' d''>2 |
  <d' fis' gis' cis''>2 r8 q8-. q4-. |
}

pianoOutro = {
  \pianoD \pianoCisFis \pianoB \pianoE
  <cis' e' gis' b'>2 q2 |
  <f' a' c'' e''>2 q2 |
  <cis' e' gis' b'>2 <d' fis' gis' b'>2 |
  <a cis' e' gis' b'>1\arpeggio\fermata |
}

piano = {
  \pianoIntro
  \pianoTheme
  \pianoChorusCore \pianoENine
  \pianoBridge
  \pianoIntro
  \pianoChorusCore
  r8 <d' fis' gis' b'>8-. r16 q8.-.
  <cis' e' gis' b'>4 q4-. |
  \pianoOutro
}

guitarD = {
  r8 <a' cis'' e''>8-. r4 r8 q8-. r8 q8-. |
}

guitarCis = {
  r8 <gis' b' e''>8-. r4 r8 q8-. r8 q8-. |
}

guitarFis = {
  r8 <ais' cis'' e''>8-. r4 r8 q8-. r8 q8-. |
}

guitarCisFis = {
  r8 <gis' b' e''>8-. r4
  r8 <ais' cis'' e''>8-. r8 q8-. |
}

guitarB = {
  r8 <a' cis'' d''>8-. r4 r8 q8-. r8 q8-. |
}

guitarE = {
  r8 <gis' b' d''>8-. r4 r8 q8-. r8 q8-. |
}

guitarA = {
  r8 <gis' b' cis''>8-. r4 r8 q8-. r8 q8-. |
}

guitarASeven = {
  r8 <g' a' cis''>8-. r4 r8 q8-. r8 q8-. |
}

guitarDMinor = {
  r8 <a' c'' f''>8-. r4 r8 q8-. r8 q8-. |
}

guitarIntro = {
  \guitarD \guitarCisFis \guitarB \guitarE
  \guitarCis \guitarFis \guitarB \guitarE
}

guitarTheme = {
  \guitarD \guitarCisFis \guitarB \guitarE
  \guitarA \guitarCisFis \guitarB \guitarE
  \guitarD \guitarCisFis \guitarB \guitarE
  \guitarA \guitarFis \guitarB \guitarE
}

guitarChorusCore = {
  \guitarD \guitarE \guitarCis \guitarFis
  \guitarB \guitarE \guitarA \guitarASeven
  \guitarD \guitarDMinor \guitarCis \guitarFis
  \guitarB \guitarE \guitarA
}

guitarBridge = {
  r4 <a' cis'' e''>4-. r4 q4-. |
  r4 <a' cis'' dis''>4-. r4 q4-. |
  r4 <gis' b' dis''>4-. r4 q4-. |
  r4 <gis' b' eis''>4-. r4 q4-. |
  r4 <a' cis'' e''>4-. r4 q4-. |
  r4 <a' cis'' dis''>4-. r4 q4-. |
  r4 <a' cis'' d''>4-. r4 q4-. |
  \guitarE
}

guitar = {
  \guitarIntro
  \guitarTheme
  \guitarChorusCore \guitarE
  \guitarBridge
  \guitarIntro
  \guitarChorusCore
  r8 <gis' b' d''>8-. r4 <gis' b' cis''>4-. r4 |
  \guitarD \guitarCisFis \guitarB \guitarE
  <gis' b' cis''>4-. r4 q4-. r4 |
  <a' c'' f''>4-. r4 q4-. r4 |
  <gis' b' cis''>4-. r4 <gis' b' d''>4-. r4 |
  <gis' b' cis'' e''>1\fermata |
}

bassD = {
  d,8-. d16 a,16 r8 d,8 a,8 cis8 d8 cis8 |
}

bassCis = {
  cis,8-. cis16 gis,16 r8 cis,8 gis,8 b,8 cis8 e8 |
}

bassFis = {
  fis,8-. fis16 cis16 r8 fis,8 cis8 e8 fis8 ais,8 |
}

bassCisFis = {
  cis,8-. cis16 gis,16 b,8 cis8
  fis,8-. cis8 e8 ais,8 |
}

bassB = {
  b,,8-. b,16 fis,16 r8 b,,8 fis,8 a,8 b,8 cis8 |
}

bassE = {
  e,8-. e16 b,16 r8 e,8 b,8 d8 e8 gis,8 |
}

bassA = {
  a,8-. a16 e16 r8 a,8 e8 gis,8 a,8 cis8 |
}

bassASeven = {
  a,8-. a16 e16 r8 a,8 e8 g,8 a,8 cis8 |
}

bassDMinor = {
  d,8-. d16 a,16 r8 d,8 a,8 c8 d8 f8 |
}

bassIntro = {
  \bassD \bassCisFis \bassB \bassE
  \bassCis \bassFis \bassB \bassE
}

bassTheme = {
  \bassD \bassCisFis \bassB \bassE
  \bassA \bassCisFis \bassB \bassE
  \bassD \bassCisFis \bassB \bassE
  \bassA \bassFis \bassB \bassE
}

bassChorusCore = {
  \bassD \bassE \bassCis \bassFis
  \bassB \bassE \bassA \bassASeven
  \bassD \bassDMinor \bassCis \bassFis
  \bassB \bassE \bassA
}

bassBridge = {
  fis,4 cis8 e8 fis4 a,8 cis8 |
  b,,4 fis,8 a,8 b,4 cis8 dis8 |
  e,4 b,8 dis8 e4 gis,8 b,8 |
  cis,4 gis,8 b,8 cis4 eis8 gis,8 |
  fis,4 cis8 e8 fis4 a,8 gis,8 |
  b,,4 fis,8 a,8 b,4 dis8 cis8 |
  b,,4 fis,8 a,8 b,4 d8 cis8 |
  e,8 e16 b,16 d8 e8 gis8 fis8 e8 cis8 |
}

bass = {
  \bassIntro
  \bassTheme
  \bassChorusCore \bassE
  \bassBridge
  \bassIntro
  \bassChorusCore
  e,8 b,8 d8 gis,8 a,4 e8 gis,8 |
  \bassD \bassCisFis \bassB \bassE
  a,4 e8 gis,8 a,4 cis8 e8 |
  d,4 a,8 c8 d4 f8 e8 |
  e,4 a,8 cis8 e,4 gis,8 b,8 |
  a,1\fermata |
}

drumSoft = \drummode {
  <<
    { hh8 hh hh hh hh hh hh hh }
    \\
    { bd4 ss4 bd8 r8 ss4 }
  >> |
}

drumGroove = \drummode {
  <<
    { hh8 hh hh hh hh hh hh hho }
    \\
    { bd4 sn8 bd8 r8 bd8 sn4 }
  >> |
}

drumBusy = \drummode {
  <<
    { hh8 hh16 hh16 hh8 hh8 hh8 hh16 hh16 hh8 hho8 }
    \\
    { bd8 r8 sn4 bd8 bd8 sn8 bd8 }
  >> |
}

drumCrash = \drummode {
  <<
    { cymc8 hh hh hh hh hh hh hho }
    \\
    { bd4 sn8 bd8 r8 bd8 sn4 }
  >> |
}

drumFill = \drummode {
  <<
    { hh8 hh hh hh hh4 r4 }
    \\
    { bd4 sn4 bd8 tommh8 tomml8 tomfh8 }
  >> |
}

drumBigFill = \drummode {
  <<
    { hh8 hh hh hh r2 }
    \\
    { bd4 sn8 bd8 sn16 sn16 tommh16 tommh16 tomml8 tomfh8 }
  >> |
}

drumHalf = \drummode {
  <<
    { hh8 hh hh hh hh hh hh hh }
    \\
    { bd4 r4 ss4 bd8 r8 }
  >> |
}

drumChorus = {
  \drumCrash \repeat unfold 6 { \drumBusy } \drumFill
  \drumCrash \repeat unfold 6 { \drumBusy } \drumBigFill
}

drumsMusic = \drummode {
  \repeat unfold 7 { \drumSoft } \drumFill
  \repeat unfold 7 { \drumGroove } \drumFill
  \repeat unfold 7 { \drumGroove } \drumBigFill
  \drumChorus
  \repeat unfold 7 { \drumHalf } \drumFill
  \drumCrash \repeat unfold 6 { \drumBusy } \drumBigFill
  \drumChorus
  \repeat unfold 4 { \drumGroove }
  \drumSoft \drumSoft \drumFill
  <bd cymc>1\fermata |
}

ensemble = <<
  \new ChordNames {
    \set chordChanges = ##t
    \harmonies
  }
  \new StaffGroup <<
    \new Staff = "sax" \with {
      instrumentName = "Saxo (do)"
      shortInstrumentName = "Sx."
      midiInstrument = "alto sax"
      midiMinimumVolume = #0.65
      midiMaximumVolume = #0.95
    } {
      \global
      << \form \lead >>
    }
    \new Staff = "electricPiano" \with {
      instrumentName = "Piano eléctrico"
      shortInstrumentName = "P. el."
      midiInstrument = "electric piano 1"
      midiMinimumVolume = #0.40
      midiMaximumVolume = #0.70
    } {
      \global
      << \piano \bandDynamics >>
    }
    \new Staff = "guitar" \with {
      instrumentName = "Guitarra limpia"
      shortInstrumentName = "Gt."
      midiInstrument = "electric guitar (clean)"
      midiMinimumVolume = #0.30
      midiMaximumVolume = #0.55
    } {
      \global
      << \guitar \bandDynamics >>
    }
    \new Staff = "bass" \with {
      instrumentName = \markup \center-column { "Bajo eléctrico" "(5 cuerdas)" }
      shortInstrumentName = "Bj."
      midiInstrument = "electric bass (finger)"
      midiMinimumVolume = #0.55
      midiMaximumVolume = #0.85
    } {
      \global
      \clef bass
      << \bass \bandDynamics >>
    }
    \new DrumStaff = "drums" \with {
      instrumentName = "Batería"
      shortInstrumentName = "Bat."
      midiMinimumVolume = #0.40
      midiMaximumVolume = #0.75
    } {
      \time 4/4
      << \drumsMusic \drumDynamics >>
    }
  >>
>>

\score {
  \ensemble
  \layout {
    \context {
      \Score
      \override BarNumber.break-visibility = ##(#f #f #t)
    }
  }
}

\score {
  \unfoldRepeats \ensemble
  \midi {
    \tempo 4 = 108
    \context {
      \ChordNames
      \remove "Note_performer"
    }
  }
}
