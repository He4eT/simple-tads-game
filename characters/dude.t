dude: Person
  'dude'
  'dude'
  "Just a guy with a beard. "
  location = thirdRoom
  isHim = true
 ;

+ DefaultAnyTopic, ShuffledEventList [
  '<q>Yeah! That\'s cool, man!</q>',
  '<q>OMG! That\'s awesome! By the way, have you tried Zig?</q>',
  '<q>Sure! It\'s remind me about pointers!</q>'
];

+ DefaultAskTellTopic, ShuffledEventList [
  '<q>Blah-blah-blah... Did someone say pointers? Blah-blah-blah-blah...</q>',
  '<q>Blah-blah-blah-blah... Have you heard about Zig? Blah-blah-blah...</q>',
  '<q>Blah-blah... What do you think about this game? Blah-blah...</q>'
];

+ HelloTopic, ShuffledEventList [
  ' <q>Hello there,</q> you say.\n
    <q>How\'s it going, man?</q> the guy answered.'
][
  ' <q>Er...</q> you start.\b
    <q>What\'s up, man?</q> he asks. ',
  ' <q>How are you doing, dude?</q>',
  ' <q>Hey, how\'s everything, bro?</q>',
  ' <q>How\'s it going, dude?</q>',
  ' <q>What\'s going on, man?</q>',
  ' <q>How are things, buddy?</q>',
  ' <q>Hey, how\'s life, man?</q>'
];

+ AskTopic [me]
  "<q>Don't worry, man! You look great!</q>"
;

+ AskTopic [dude]
  "I really love Zig, pointers, and video games, man!"
;

+ AskTopic [banana, mango, orange, apple]
  "Yeah, man! Fruits are cool!"
;

+ AskTopic [tZig]
  "<q>Zig mentioned!</q>"
;

+ AskTopic [tPointers]
  "<q>Pointers are cool!</q>"
;

+ AskTopic [tGames]
  "<q>I will later show you one of my games, dude!</q>"
;

+ AskTopic [tPotion]
  topicResponse() {
    if (potion.location == dude) {
      potion.moveInto(me);
      "<q>Sure, dude! Take it.</q>\n
      Now you have a potion in your inventory.";
    } else {
      "<q>I only had one potion. There's no more, man.</q>";
    }
  }
;
