table: Heavy, Surface
  'wooden desk/table'
  'wooden desk'
  "Massive wooden table with one drawer. "
  location = secondRoom
  isListed = true
;

+ drawer: Component, OpenableContainer
  'drawer'
  'drawer'
  "Just a drawer. "
;

++ Decoration
  'paper*papers/sheet*sheets/page*pages'
  'sheets of crumpled paper'
  "Just a chaotic pile of torn and crumpled notebook pages. "
  isListed = true
  dobjFor (Search) remapTo(Search, drawer)
;

++ goldKey: Key, Hidden
  'gold golden key*keys'
  'golden key'
  "Long tubular key made of gold. "
;
