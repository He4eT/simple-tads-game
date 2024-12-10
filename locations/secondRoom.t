secondRoom: Room 'Second Room'
  "This is another boring room with a few balloons and a painting on the wall. "
  roomParts = (inherited() - [defaultEastWall] + [secondRoomEastWall])
  north = startingRoom
;

+ Decoration
  'red balloon*balloons'
  'red balloon'
  "Glossy spherical object made of rubber and filled with air. "
;

+ Decoration
  'green balloon*balloons'
  'green balloon'
  "Just a green balloon in the shape of a cucumber. "
;

+ Decoration
  'blue balloon*balloons'
  'blue balloon'
  "Bright inflatable object often used for decorations and celebrations. "
;

+ secondRoomEastWall: defaultEastWall
  desc = "The same wall as the others, but with a picture. "
;

++ Component
  'painting/image/picture/drawing*drawings'
  'picture on the wall'
  "Unframed reproduction of a famous painting glued to the wall.\n
  In the corner, someone wrote four digits with a pink marker: 3339.
  "
;
