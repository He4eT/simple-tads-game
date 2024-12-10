island: OutdoorRoom 'Strange Island'
  "The Strange Island in the Middle of Nowhere in cyberspace was a solitary,
  jagged patch of stone-like ground suspended in an endless digital void.
  Surrounded by a sea of shifting neon colors and data fragments,
  it glowed with faint, pulsing symbols.\b
  The air hummed with an electric tension,
  as if the island held an ancient secret waiting to be discovered. "
;

+ Button, Immovable
  'green button*buttons'
  'green button'
  "Win Button"
  dobjFor(Push) {
    action() {
      finishGameMsg(ftVictory, [finishOptionUndo]);
    }
  }
  isListed = true
;

+ Button, Immovable
  'red button*buttons'
  'red button'
  "Loose Button"
  dobjFor(Push) {
    action() {
      finishGameMsg(ftDeath, [finishOptionUndo]);
    }
  }
  isListed = true
;
