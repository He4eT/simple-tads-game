thirdRoom: Room 'Third Room'
  "This is just another boring room."
  north = oldDoor
;

+ oldDoor: LockableWithKey, Door, RoomPartItem
  'old wooden door*doors'
  'old door'
  "An old wooden door worn by time. "
  keyList = [ goldKey ]
  knownKeyList = [ goldKey ]
  specialNominalRoomPartLocation = defaultNorthWall
;
