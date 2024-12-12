Fruit: Food
  desc = "Looks like a fruit. "
  tasteDesc = "It's distinctly fruit-flavoured. "
  smellDesc = "It has a kind of faint, fruity smell. "
  feelDesc = "The fruit skin feels firm but smooth. "
  soundDesc = "The fruit is strangely silent. "
;

/* */

fruitBox: OpenableContainer, Heavy
  'wooden box'
  'wooden box'
  "A huge wooden box with a sticker on the lid. "
  isListed = true
  location = startingRoom
;

+ Decoration 'lid' 'lid'
  "The lid is made of wood and decorated with a sticker. "
;

+ Decoration 'sticker' 'sticker'
  "It's just a sticker with a silly face. "
;

+ apple: Fruit 'apple' 'apple';
+ mango: Fruit 'mango' 'mango';
+ orange: Fruit 'orange' 'orange';
+ banana: Fruit
  'banana'
  'banana'
  "It's yellow, about six inches long, and slightly curved.\n
  This banana looks reasonably fresh. "
  tasteDesc = "It's distinctly banana-flavoured. "
;
