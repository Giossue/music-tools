\version "2.24.3"
\language "nederlands"

% FUEGO EN LA PISTA — reguetón instrumental original.
% Duración musical: 48 compases x 4 negras x 60 / 96 BPM = 120 segundos.
%
% Fundamentos presentes:
% - Dembow: bombo en 1, 2, 3 y 4; rim/caja en 1a, 2&, 3a y 4&.
%   Rejilla de 16 pasos, contando desde 1: bombo 1/5/9/13;
%   rim/caja 4/7/12/15. El patrón se conserva en versos y estribillos.
% - Bajo subgrave monofónico: raíces, quintas, octavas y anticipaciones.
% - Guitarra/pluck sincopado, colchón armónico y gancho de llamada/respuesta.
% - Hi-hat con acentos, shaker, congas, timbales y redobles de transición.
% - Frases de cuatro compases, contraste verso/estribillo y corte central.
% - Versos con huecos para una voz; este arreglo no contiene voz cantada.
%
% Referencia del patrón rítmico general (la composición es original):
% https://blog.native-instruments.com/reggaeton/
%
% Forma: intro 1–4 (0:00), verso 5–12 (0:10), pre 13–16 (0:30),
% coro 17–24 (0:40), corte 25–28 (1:00), verso 29–36 (1:10),
% coro final 37–44 (1:30), salida 45–48 (1:50). Final: 2:00.
%
% Compilar: lilypond fuego-en-la-pista.ly
% El MIDI usa timbres GM: synth bass 1 para el bajo y kit TR-808 para batería.
% Las pistas se pueden importar en un DAW para elegir otros sonidos.

#(set-global-staff-size 13)

\header {
  title = "Fuego en la pista"
  subtitle = "Reguetón · Instrumental original"
  subsubtitle = "96 BPM · Fa sostenido menor · 48 compases · 2:00"
  composer = "Composición original"
  instrument = "Sinte, guitarra, pad, subgrave y percusión electrónica"
  tagline = ##f
}

\paper {
  #(set-paper-size "a4landscape")
  top-margin = 10\mm
  bottom-margin = 10\mm
  left-margin = 14\mm
  right-margin = 12\mm
  indent = 26\mm
  short-indent = 12\mm
  ragged-last-bottom = ##f
}

global = {
  \key fis \minor
  \time 4/4
}

form = {
  \tempo "Dembow, firme y relajado" 4 = 96
  \mark \markup { \box "Intro" \hspace #1 "0:00" }
  s1*4 \bar "||" \break
  \barNumberCheck #5
  \mark \markup { \box "Verso 1" \hspace #1 "0:10" }
  s1*4 \break s1*4 \bar "||" \break
  \barNumberCheck #13
  \mark \markup { \box "Preestribillo" \hspace #1 "0:30" }
  s1*4 \bar "||" \break
  \barNumberCheck #17
  \mark \markup { \box "Estribillo" \hspace #1 "0:40" }
  s1*4 \break s1*4 \bar "||" \break
  \barNumberCheck #25
  \mark \markup { \box "Corte" \hspace #1 "1:00" }
  s1*4 \bar "||" \break
  \barNumberCheck #29
  \mark \markup { \box "Verso 2" \hspace #1 "1:10" }
  s1*4 \break s1*4 \bar "||" \break
  \barNumberCheck #37
  \mark \markup { \box "Estribillo final" \hspace #1 "1:30" }
  s1*4 \break s1*4 \bar "||" \break
  \barNumberCheck #45
  \mark \markup { \box "Salida" \hspace #1 "1:50" }
  s1*4 \bar "|."
  \barNumberCheck #49
}

bandDynamics = {
  s1\p s1*3
  s1\mp s1*7
  s1\mf s1*2 s1\<
  s1\f s1*7
  s1\p s1*2 s1\<
  s1\mf s1*7
  s1\f s1*7
  s1\mf s1\> s1 s1\pp
}

beatDynamics = {
  s1\mp s1*3
  s1\mf s1*7
  s1\mf s1*2 s1\<
  s1\f s1*7
  s1\p s1*2 s1\<
  s1\mf s1*7
  s1\f s1*7
  s1\mf s1\> s1 s1\pp
}

loopHarmony = \chordmode { fis1:m | d1 | a1 | e1 | }
preHarmony = \chordmode { b1:m | d1 | cis1:sus4 | cis1:7 | }
breakHarmony = \chordmode { b1:m | d1 | fis1:m | cis1:7 | }
outroHarmony = \chordmode { fis1:m | d1 | cis1:7 | fis1:m | }

harmonies = {
  \loopHarmony
  \repeat unfold 2 { \loopHarmony }
  \preHarmony
  \repeat unfold 2 { \loopHarmony }
  \breakHarmony
  \repeat unfold 4 { \loopHarmony }
  \outroHarmony
}

% Gancho corto y repetible. El verso deja espacio entre respuestas.
leadIntro = {
  R1 | R1 |
  r2 r8 cis''8( a'8 fis'8) |
  gis'4-. b'8-. r8 r4 r8 eis'8 |
}

leadVerse = {
  R1 |
  r2 a'8-. fis'8-. r4 |
  R1 |
  r2 gis'8-. b'8-. r4 |
  fis'4-. r4 r2 |
  R1 |
  r2 cis''8( b'8 a'4) |
  gis'4-. r2 r8 b'8 |
}

leadPre = {
  b'4 cis''8( d''8) fis''4-. r4 |
  a'8. fis'16 a'8 cis''8 d''4 cis''8 a'8 |
  gis'4 fis'8 gis'8 cis''4 b'8 gis'8 |
  eis''8. gis''16 eis''8 cis''8 b'4 r8 eis'8 |
}

hookFirst = {
  r8 cis''8-. cis''8. b'16 a'8 fis'8 r8 a'8 |
  r8 a'8-. a'8. fis'16 e'8 fis'8 r8 a'8 |
  r8 cis''8-. e''8. cis''16 b'8 a'8 r8 cis''8 |
  b'4 gis'8. fis'16 e'8 gis'8 b'8 r8 |
}

hookAnswer = {
  r8 cis''8-. cis''8. e''16 cis''8 b'8 a'8 fis'8 |
  a'8. fis'16 a'8 b'8 a'4 fis'8 a'8 |
  cis''8. e''16 e''8 fis''8 e''8 cis''8 b'8 a'8 |
  gis'8 b'8~ b'4 gis'8 e'8 r8 eis'8 |
}

leadBreak = {
  b'2( fis'4) r4 |
  a'2( fis'4) r4 |
  cis''2( a'4) r4 |
  gis'4 eis'4 r2 |
}

leadVerseTwo = {
  r2 cis''8-. a'8-. r4 |
  R1 |
  r2 e''8( cis''8 b'4) |
  gis'4-. r2 r8 b'8 |
  fis'8 a'8 cis''4 r2 |
  r2 a'8 fis'8 r4 |
  cis''4-. b'8 a'8 r2 |
  gis'8 b'8 r4 r4 r8 eis'8 |
}

hookFinalAnswer = {
  r8 <a' cis''>8-. cis''8. e''16 cis''8 b'8 a'8 fis'8 |
  a'8. fis'16 a'8 b'8 <fis' a'>4 fis'8 a'8 |
  cis''8. e''16 <cis'' e''>8 fis''8 e''8 cis''8 b'8 a'8 |
  gis'8 b'8~ b'4 gis'8 e'8 r8 eis'8 |
}

leadOutro = {
  cis''4 a'8 fis'8 r2 |
  a'4 fis'8 d'8 r2 |
  gis'4 eis'4 cis'4 r4 |
  fis'2 r2 |
}

lead = {
  \leadIntro \leadVerse \leadPre
  \hookFirst \hookAnswer
  \leadBreak \leadVerseTwo
  \hookFirst \hookFinalAnswer
  \leadOutro
}

% Pluck/guitarra: ataques cortos sobre la síncopa del dembow.
guitarFis = { r8. <fis' a' cis''>16-. r8 q8-. r8. q16-. r8 q8-. | }
guitarD = { r8. <fis' a' d''>16-. r8 q8-. r8. q16-. r8 q8-. | }
guitarA = { r8. <e' a' cis''>16-. r8 q8-. r8. q16-. r8 q8-. | }
guitarE = { r8. <e' gis' b'>16-. r8 q8-. r8. q16-. r8 q8-. | }
guitarB = { r8. <fis' b' d''>16-. r8 q8-. r8. q16-. r8 q8-. | }
guitarCisSus = { r8. <gis' cis'' fis''>16-. r8 q8-. r8. q16-. r8 q8-. | }
guitarCisSeven = { r8. <gis' b' eis''>16-. r8 q8-. r8. q16-. r8 q8-. | }

guitarLoop = { \guitarFis \guitarD \guitarA \guitarE }

guitarHook = {
  r8 <fis' a' cis''>8-. r8 q8-. r4 <a' cis''>8-. <fis' a'>8-. |
  r8 <fis' a' d''>8-. r8 q8-. r4 <a' d''>8-. <fis' a'>8-. |
  r8 <e' a' cis''>8-. r8 q8-. r4 <a' cis''>8-. <e' a'>8-. |
  r8 <e' gis' b'>8-. r8 q8-. r4 <gis' b'>8-. <e' gis'>8-. |
}

guitar = {
  <fis' a' cis''>2\arpeggio r2 |
  <fis' a' d''>2\arpeggio r4 a'8 fis'8 |
  \guitarA \guitarE
  \repeat unfold 2 { \guitarLoop }
  \guitarB \guitarD \guitarCisSus \guitarCisSeven
  \repeat unfold 2 { \guitarHook }
  <fis' b' d''>2\arpeggio r2 |
  <fis' a' d''>2\arpeggio r2 |
  <fis' a' cis''>2 r4 q4-. |
  <gis' b' eis''>4-. r4 q4-. r4 |
  \repeat unfold 2 { \guitarLoop }
  \repeat unfold 2 { \guitarHook }
  \guitarFis \guitarD
  <gis' b' eis''>4-. r4 q4-. r4 |
  <fis' a' cis''>2\arpeggio r2 |
}

% Voicings próximos y discretos: el ritmo y el bajo quedan al frente.
padLoop = {
  <fis a cis'>1 | <fis a d'>1 | <e a cis'>1 | <e gis b>1 |
}
padOpen = {
  <fis cis' a'>1 | <d a fis'>1 | <a e' cis''>1 | <e b gis'>1 |
}
pad = {
  \padLoop
  R1*4 \padLoop
  <fis b d'>1 | <fis a d'>1 | <gis cis' fis'>1 | <gis b cis' eis'>1 |
  \padLoop \padOpen
  <fis b d'>1 | <fis a d'>1 | <fis a cis'>1 | <gis b cis' eis'>1 |
  R1*4 \padLoop
  \padLoop \padOpen
  <fis a cis'>1 | <fis a d'>1 | <gis b cis' eis'>1 |
  <fis a cis'>2 r2 |
}

% Subgrave monofónico; la clave de fa con 8 indica la octava grave.
% Las alturas del MIDI corresponden al sonido real.
% Las pausas separan ataques y dejan respirar el bombo.
bassFis = { fis,,4. r8 fis,,4 cis,8 fis,8 | }
bassD = { d,,4. r8 d,,4 a,,8 cis,8 | }
bassA = { a,,4. r8 a,,4 e,8 a,8 | }
bassE = { e,,4. r8 e,,4 b,,8 cis,8 | }
bassLoop = { \bassFis \bassD \bassA \bassE }

bassHook = {
  fis,,8-. r8 fis,,8. fis,,16 r8 fis,,8 cis,8 fis,8 |
  d,,8-. r8 d,,8. d,,16 r8 d,,8 a,,8 d,8 |
  a,,8-. r8 a,,8. a,,16 r8 a,,8 e,8 a,8 |
  e,,8-. r8 e,,8. e,,16 r8 e,,8 b,,8 cis,8 |
}

bass = {
  R1 | R1 | a,,2 r2 | e,,2 r4 cis,8 eis,8 |
  \repeat unfold 2 { \bassLoop }
  b,,4. r8 b,,4 fis,8 a,8 |
  d,,4. r8 d,,4 a,,8 d,8 |
  cis,,4. r8 cis,,4 gis,,8 fis,8 |
  cis,,4. r8 cis,,4 gis,,8 eis,8 |
  \repeat unfold 2 { \bassHook }
  b,,2 r2 | d,,2 r2 | fis,,2 cis,4 r4 |
  cis,,2 r4 cis,8 eis,8 |
  \repeat unfold 2 { \bassLoop }
  \repeat unfold 2 { \bassHook }
  \bassFis \bassD
  cis,,2 gis,,4 eis,4 |
  fis,,2 r2 |
}

% Dos voces: bombo abajo y rim/caja arriba. El signo > marca acentos.
dembowRim = \drummode {
  << { bd4-> bd4 bd4-> bd4 }
     \\ { r8. ss16-> r8 ss8-> r8. ss16-> r8 ss8-> } >> |
}
dembowClap = \drummode {
  << { bd4-> bd4 bd4-> bd4 }
     \\ { r8. <sn hc>16-> r8 <sn hc>8->
          r8. <sn hc>16-> r8 <sn hc>8-> } >> |
}
dembowDrop = \drummode {
  << { <bd cymc>4-> bd4 bd4-> bd4 }
     \\ { r8. <sn hc>16-> r8 <sn hc>8->
          r8. <sn hc>16-> r8 <sn hc>8-> } >> |
}
dembowTurn = \drummode {
  << { bd4-> bd4 bd4-> r8 bd8 }
     \\ { r8. ss16-> r8 ss8-> r8. ss16-> r8 <ss sn>8-> } >> |
}
dembowFill = \drummode {
  << { bd4-> bd4 bd4 r4 }
     \\ { r8. ss16 r8 ss8 r8. sn16
          tomh16 tommh16 tomml16 tomfl16 } >> |
}
dembowRoll = \drummode {
  << { bd4-> bd4 bd4 r4 }
     \\ { r8. ss16 r8 ss8 r8. sn16 sn16 sn16 sn16 sn16 } >> |
}

dembowMusic = \drummode {
  R1 | R1 | bd4 r4 bd4 r4 | \dembowFill
  \repeat unfold 3 { \dembowRim } \dembowTurn
  \repeat unfold 3 { \dembowRim } \dembowFill
  \repeat unfold 3 { \dembowRim } \dembowRoll
  \dembowDrop \repeat unfold 2 { \dembowClap } \dembowFill
  \dembowDrop \repeat unfold 2 { \dembowClap } \dembowRoll
  R1 | R1 | bd2 ss4 bd4 | \dembowFill
  \repeat unfold 3 { \dembowRim } \dembowTurn
  \repeat unfold 3 { \dembowRim } \dembowFill
  \dembowDrop \repeat unfold 2 { \dembowClap } \dembowFill
  \dembowDrop \repeat unfold 2 { \dembowClap } \dembowRoll
  \dembowRim \dembowRim
  bd4 ss4 bd4 r4 |
  <bd cymc>4 r2. |
}

hatPlain = \drummode { hh8-> hh hh-> hh hh-> hh hh-> hh | }
hatOpen = \drummode { hh8-> hh hh-> hh hh-> hh hh-> hho | }
hatBusy = \drummode { hh8-> hh16 hh hh8-> hh hh8-> hh16 hh hh8-> hho | }
hatTurn = \drummode { hh8-> hh hh-> hh hh8-> hh hh16 hh hh hh | }
hats = \drummode {
  R1 | hh4 hh hh hh | \hatPlain \hatTurn
  \repeat unfold 3 { \hatPlain } \hatOpen
  \repeat unfold 3 { \hatPlain } \hatTurn
  \hatPlain \hatOpen \hatBusy \hatTurn
  \repeat unfold 3 { \hatBusy } \hatTurn
  \repeat unfold 3 { \hatBusy } \hatTurn
  R1 | R1 | hh4 hh hh hh | \hatTurn
  \repeat unfold 3 { \hatOpen } \hatTurn
  \repeat unfold 3 { \hatOpen } \hatTurn
  \repeat unfold 3 { \hatBusy } \hatTurn
  \repeat unfold 3 { \hatBusy } \hatTurn
  \hatPlain \hatPlain
  hh4 hh hh r4 |
  hh4 r2. |
}

% Shaker suave y congas de respuesta; los timbales anuncian cada entrada.
latinLight = \drummode {
  r8 cgh8-. r4 r8 cgl8-. r8 cghm8-. |
}
latinFull = \drummode {
  << { mar8 mar mar mar mar mar mar mar }
     \\ { cgh4-> r8 cghm8 cgl8-> r8 cgh4 } >> |
}
latinTurn = \drummode {
  << { mar8 mar mar mar mar4 r4 }
     \\ { cgh4 r8 cgl8 r4 timh16 timh16 timl8 } >> |
}
latin = \drummode {
  mar8 mar mar mar mar mar mar mar |
  mar8 mar mar mar mar mar mar mar |
  \latinLight \latinTurn
  \repeat unfold 3 { \latinLight } \latinTurn
  \repeat unfold 3 { \latinLight } \latinTurn
  \latinLight \latinFull \latinFull \latinTurn
  \repeat unfold 3 { \latinFull } \latinTurn
  \repeat unfold 3 { \latinFull } \latinTurn
  R1 | r2 cgh4 cgl4 | \latinLight \latinTurn
  \repeat unfold 3 { \latinFull } \latinTurn
  \repeat unfold 3 { \latinFull } \latinTurn
  \repeat unfold 3 { \latinFull } \latinTurn
  \repeat unfold 3 { \latinFull } \latinTurn
  \latinFull \latinLight
  cgh4 r4 cgl4 r4 |
  R1 |
}

#(define hats-style
   (alist->hash-table
    '((hihat cross #f 0) (openhihat cross open 0))))

#(define latin-style
   (alist->hash-table
    '((mutehiconga cross stopped 1)
      (hiconga () #f 1)
      (loconga () #f -1)
      (hitimbale () #f 3)
      (lotimbale () #f -3)
      (maracas cross #f 0))))

ensemble = <<
  \new ChordNames {
    \set chordChanges = ##t
    \harmonies
  }
  \new StaffGroup <<
    \new Staff = "hook" \with {
      instrumentName = \markup \center-column { "Gancho" "(sinte)" }
      shortInstrumentName = "Sinte"
      midiInstrument = "lead 1 (square)"
      midiMinimumVolume = #0.35
      midiMaximumVolume = #0.70
      midiPanPosition = #0
      midiReverbLevel = #0.18
    } { \global << \form \lead \bandDynamics >> }
    \new Staff = "guitar" \with {
      instrumentName = \markup \center-column { "Guitarra" "(pluck)" }
      shortInstrumentName = "Gt."
      midiInstrument = "acoustic guitar (nylon)"
      midiMinimumVolume = #0.40
      midiMaximumVolume = #0.75
      midiPanPosition = #-0.25
      midiReverbLevel = #0.12
    } { \global << \guitar \bandDynamics >> }
    \new Staff = "pad" \with {
      instrumentName = "Pad armónico"
      shortInstrumentName = "Pad"
      midiInstrument = "pad 2 (warm)"
      midiMinimumVolume = #0.15
      midiMaximumVolume = #0.40
      midiPanPosition = #0.25
      midiReverbLevel = #0.22
    } { \global << \pad \bandDynamics >> }
    \new Staff = "subBass" \with {
      instrumentName = "Subgrave"
      shortInstrumentName = "Sub"
      midiInstrument = "synth bass 1"
      midiMinimumVolume = #0.65
      midiMaximumVolume = #0.95
      midiPanPosition = #0
      midiReverbLevel = #0
      midiChorusLevel = #0
    } { \global \clef "bass_8" << \bass \bandDynamics >> }
    \new DrumStaff = "dembow" \with {
      instrumentName = \markup \center-column { "Dembow" "bombo / rim / clap" }
      shortInstrumentName = "Demb."
      midiInstrument = "tr-808 kit"
      midiMinimumVolume = #0.50
      midiMaximumVolume = #0.95
      midiReverbLevel = #0.04
      midiChorusLevel = #0
    } { \time 4/4 << \dembowMusic \beatDynamics >> }
    \new DrumStaff = "hats" \with {
      instrumentName = "Hi-hat"
      shortInstrumentName = "HH"
      drumStyleTable = #hats-style
      \override StaffSymbol.line-count = #1
      midiInstrument = "tr-808 kit"
      midiMinimumVolume = #0.24
      midiMaximumVolume = #0.48
    } { \time 4/4 << \hats \bandDynamics >> }
    \new DrumStaff = "latin" \with {
      instrumentName = \markup \center-column { "Percusión latina" "congas / shaker / timbal" }
      shortInstrumentName = "Perc."
      drumStyleTable = #latin-style
      \override StaffSymbol.line-count = #3
      midiInstrument = "tr-808 kit"
      midiMinimumVolume = #0.25
      midiMaximumVolume = #0.52
    } { \time 4/4 << \latin \bandDynamics >> }
  >>
>>

\score {
  \ensemble
  \layout {
    \context {
      \Score
      \override BarNumber.break-visibility = ##(#f #f #t)
      \override RehearsalMark.self-alignment-X = #LEFT
    }
  }
}

\score {
  \unfoldRepeats \ensemble
  \midi {
    \tempo 4 = 96
    \context {
      \ChordNames
      \remove "Note_performer"
    }
  }
}
