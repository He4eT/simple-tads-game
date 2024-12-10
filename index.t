#include <adv3.h>
#include <en_us.h>

versionInfo: GameID
  name = 'The Game'
  byline = 'by Author'
  authorEmail = 'Author <author@fake.org>'
  desc = 'This is an example of how to start a new game project. '
  version = '0'
;

gameMain: GameMainDef
  initialPlayerChar = me
  showIntro() {
    cls();
    "This is the intro text.\b";
  }
;

firstRoom: Room 'Starting Room'
  "This is the boring starting room."
;

+me: Actor

;
