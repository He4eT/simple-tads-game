potion: Food
  'potion'
  'potion'
  "A small glass bottle filled with a glowing green potion.\n
  The liquid shimmers with an emerald hue and emits a faint, herbal scent.
  It's sealed with a cork and looks both intriguing and powerful,
  hinting at magical properties within. "
  location = dude
  dobjFor(Eat) {
    action() {
      "It was poisoned. ";
      finishGameMsg(ftDeath, [finishOptionUndo]);
    }
  }
;
