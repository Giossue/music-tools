# Contexto del repositorio

Repositorio de composición de beats y partituras con LilyPond. Cada pieza tiene
un `.ly` editable, una partitura `.pdf` y un `.mp3` para escucharla.

`documentacion-oficial/` contiene el paquete oficial completo de **LilyPond 2.26.0**:
manuales HTML y PDF, ejemplos, imágenes, traducciones y manuales Info para consulta
sin conexión. Los documentos originales conservan su contenido.

- Entrada y ruta de consulta para beats: `documentacion-oficial/index.html`.
- Base de los manuales: `documentacion-oficial/doc/lilypond/html/Documentation/`.
- `learning/`: sintaxis, notas, silencios y estructura básica.
- `notation/`: ritmos, percusión, acordes, voces, repeticiones, dinámicas y MIDI.
- `usage/`: compilación y herramientas de LilyPond.
- `snippets/`: ejemplos oficiales reutilizables.

Dentro de `notation/`, los capítulos clave para beats son
`writing-rhythms.es.html`, `basic-percussion-notation.es.html`,
`chord-mode.es.html`, `repeats.es.html`, `using-midi-instruments.es.html`,
`creating-midi-output.es.html` y `using-repeats-with-midi.es.html`.

Consulta estos manuales por tema antes de crear o modificar una composición.
Prioriza las páginas `.es.html`; la versión inglesa usa `.html`.
Mantén los manuales originales intactos y trabaja en los `.ly` del repositorio.
LilyPond genera PDF y MIDI; el MP3 se obtiene renderizando el MIDI con un
sintetizador y convirtiendo el audio.
