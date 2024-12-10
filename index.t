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
    /* Setting for 'exits' module. */
    exitLister.exitsOnOffExplained = true;
    exitsMode.inStatusLine = true;
    exitsMode.inRoomDesc = nil;
    /* Disable OOPS message */
    libMessages.oopsNote = nil;
    /* */
    cls();
    /* */
    "This is the intro text.\b";
  }
;

#include "characters/pc.t"

#include "locations/startingRoom.t"
#include "locations/secondRoom.t"
#include "locations/thirdRoom.t"

#include "items/note.t"
#include "items/fruitBox.t"
#include "items/table.t"
#include "items/oldDoor.t"
#include "items/brokenDoor.t"
