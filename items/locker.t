locker: LockableContainer, Fixture
  'locker'
  'locker'
  "A standard metal locker stands in the corner, slightly worn but sturdy.
  Its surface is a matte, muted gray with faint scratches and small dents,
  evidence of years of use. You could see an attached keypad.\n "
  location = thirdRoom
  isListed = true
  initiallyLocked = true
;

+ Wearable
  'pair/sock*socks'
  'pair of socks'
  "A pair of white socks. "
  dobjFor (Wear) {
    verify () {
      illogical('It turned out that the socks are the wrong size for you.');
    }
  }
;

/* */

modify VerbRule(SetTo)
  ('press' | 'input') singleLiteral ('on' | 'with') singleDobj
  : /* empty */
;

numpad: Dial, Component
  'electronic locking device/numpad/keyboard/keypad'
  'numpad keyboard'
  "An electronic device with a numeric keypad and a small 4-digit display.\n
  Apparently, you can type a passcode on this keyboard to open the locker. "
  location = thirdRoom

  makeSetting(val) {
    curSetting = val is in (secondRoom.wallCode)
      ? val
      : '0';
  }

  dobjFor (TypeLiteralOn) remapTo(SetTo, self, OtherObject)

  dobjFor (SetTo) {
    action () {
      inherited;
      if (curSetting == secondRoom.wallCode) {
        locker.makeLocked(nil);
        locker.makeOpen(true);
        "The locker opened with a click. ";
      } else {
        "You heard an annoying sound and a red light flashed on the keypad. ";
      }
    }
  }
;
