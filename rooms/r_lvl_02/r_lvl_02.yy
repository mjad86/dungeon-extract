{
  "resourceType": "GMRoom",
  "resourceVersion": "1.0",
  "name": "r_lvl_02",
  "creationCodeFile": "",
  "inheritCode": true,
  "inheritCreationOrder": true,
  "inheritLayers": true,
  "instanceCreationOrder": [
    {"name":"inst_4279BB73","path":"rooms/r_lvl_02/r_lvl_02.yy",},
    {"name":"inst_4D02F8D9","path":"rooms/r_lvl_02/r_lvl_02.yy",},
    {"name":"inst_42D72B75","path":"rooms/r_lvl_02/r_lvl_02.yy",},
    {"name":"inst_4B74E5D5","path":"rooms/r_lvl_02/r_lvl_02.yy",},
    {"name":"inst_4BE063CC","path":"rooms/r_lvl_02/r_lvl_02.yy",},
    {"name":"inst_90736A3","path":"rooms/r_lvl_02/r_lvl_02.yy",},
    {"name":"inst_461882B4","path":"rooms/r_lvl_02/r_lvl_02.yy",},
    {"name":"inst_357FF9FE","path":"rooms/r_lvl_02/r_lvl_02.yy",},
    {"name":"inst_33EC2A53","path":"rooms/r_lvl_02/r_lvl_02.yy",},
    {"name":"inst_608C1D9E","path":"rooms/r_lvl_02/r_lvl_02.yy",},
  ],
  "isDnd": false,
  "layers": [
    {"resourceType":"GMRTileLayer","resourceVersion":"1.1","name":"Deco_front","depth":0,"effectEnabled":true,"effectType":null,"gridX":32,"gridY":32,"hierarchyFrozen":false,"inheritLayerDepth":false,"inheritLayerSettings":true,"inheritSubLayers":true,"inheritVisibility":false,"layers":[],"properties":[],"tiles":{"SerialiseHeight":12,"SerialiseWidth":20,"TileCompressedData":[
-9,0,-11,-2147483648,-9,0,-11,-2147483648,-9,0,-11,-2147483648,-9,0,-11,-2147483648,-9,0,-11,-2147483648,
-9,0,-131,-2147483648,],"TileDataFormat":1,},"tilesetId":{"name":"ts_caves","path":"tilesets/ts_caves/ts_caves.yy",},"userdefinedDepth":false,"visible":true,"x":0,"y":0,},
    {"resourceType":"GMRInstanceLayer","resourceVersion":"1.0","name":"Misc","depth":100,"effectEnabled":true,"effectType":null,"gridX":32,"gridY":32,"hierarchyFrozen":false,"inheritLayerDepth":true,"inheritLayerSettings":true,"inheritSubLayers":true,"inheritVisibility":false,"instances":[
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"inst_42D72B75","colour":4294967295,"frozen":false,"hasCreationCode":false,"ignore":false,"imageIndex":0,"imageSpeed":1.0,"inheritCode":true,"inheritedItemId":{"name":"inst_42D72B75","path":"rooms/r_parent/r_parent.yy",},"inheritItemSettings":true,"isDnd":false,"objectId":{"name":"o_secrets","path":"objects/o_secrets/o_secrets.yy",},"properties":[],"rotation":0.0,"scaleX":1.0,"scaleY":1.0,"x":0.0,"y":0.0,},
      ],"layers":[],"properties":[],"userdefinedDepth":false,"visible":true,},
    {"resourceType":"GMRInstanceLayer","resourceVersion":"1.0","name":"Transition","depth":200,"effectEnabled":true,"effectType":null,"gridX":32,"gridY":32,"hierarchyFrozen":false,"inheritLayerDepth":true,"inheritLayerSettings":true,"inheritSubLayers":true,"inheritVisibility":true,"instances":[
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"inst_4D02F8D9","colour":4294967295,"frozen":false,"hasCreationCode":false,"ignore":false,"imageIndex":0,"imageSpeed":1.0,"inheritCode":false,"inheritedItemId":null,"inheritItemSettings":false,"isDnd":false,"objectId":{"name":"o_transition","path":"objects/o_transition/o_transition.yy",},"properties":[
            {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","objectId":{"name":"o_transition","path":"objects/o_transition/o_transition.yy",},"propertyId":{"name":"targetRoom","path":"objects/o_transition/o_transition.yy",},"value":"r_start",},
            {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","objectId":{"name":"o_transition","path":"objects/o_transition/o_transition.yy",},"propertyId":{"name":"targetY","path":"objects/o_transition/o_transition.yy",},"value":"320",},
            {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","objectId":{"name":"o_transition","path":"objects/o_transition/o_transition.yy",},"propertyId":{"name":"targetX","path":"objects/o_transition/o_transition.yy",},"value":"576",},
          ],"rotation":0.0,"scaleX":1.28125,"scaleY":2.0,"x":-32.0,"y":256.0,},
      ],"layers":[],"properties":[],"userdefinedDepth":false,"visible":true,},
    {"resourceType":"GMRInstanceLayer","resourceVersion":"1.0","name":"Col","depth":300,"effectEnabled":true,"effectType":null,"gridX":32,"gridY":32,"hierarchyFrozen":false,"inheritLayerDepth":true,"inheritLayerSettings":true,"inheritSubLayers":true,"inheritVisibility":false,"instances":[
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"inst_90736A3","colour":4294967295,"frozen":false,"hasCreationCode":false,"ignore":false,"imageIndex":0,"imageSpeed":1.0,"inheritCode":false,"inheritedItemId":null,"inheritItemSettings":false,"isDnd":false,"objectId":{"name":"o_wall","path":"objects/o_wall/o_wall.yy",},"properties":[],"rotation":0.0,"scaleX":22.000002,"scaleY":1.0,"x":-32.0,"y":320.0,},
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"inst_461882B4","colour":4294967295,"frozen":false,"hasCreationCode":false,"ignore":false,"imageIndex":0,"imageSpeed":1.0,"inheritCode":false,"inheritedItemId":null,"inheritItemSettings":false,"isDnd":false,"objectId":{"name":"o_wall","path":"objects/o_wall/o_wall.yy",},"properties":[],"rotation":0.0,"scaleX":1.0,"scaleY":4.0,"x":-64.0,"y":224.0,},
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"inst_357FF9FE","colour":4294967295,"frozen":false,"hasCreationCode":false,"ignore":false,"imageIndex":0,"imageSpeed":1.0,"inheritCode":false,"inheritedItemId":null,"inheritItemSettings":false,"isDnd":false,"objectId":{"name":"o_wall","path":"objects/o_wall/o_wall.yy",},"properties":[],"rotation":0.0,"scaleX":1.0,"scaleY":8.0,"x":-32.0,"y":0.0,},
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"inst_33EC2A53","colour":4294967295,"frozen":false,"hasCreationCode":false,"ignore":false,"imageIndex":0,"imageSpeed":1.0,"inheritCode":false,"inheritedItemId":null,"inheritItemSettings":false,"isDnd":false,"objectId":{"name":"o_wall","path":"objects/o_wall/o_wall.yy",},"properties":[],"rotation":0.0,"scaleX":1.0,"scaleY":10.0,"x":640.0,"y":0.0,},
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"inst_608C1D9E","colour":4294967295,"frozen":false,"hasCreationCode":false,"ignore":false,"imageIndex":0,"imageSpeed":1.0,"inheritCode":false,"inheritedItemId":null,"inheritItemSettings":false,"isDnd":false,"objectId":{"name":"o_wall","path":"objects/o_wall/o_wall.yy",},"properties":[],"rotation":0.0,"scaleX":20.0,"scaleY":1.0,"x":0.0,"y":0.0,},
      ],"layers":[],"properties":[],"userdefinedDepth":false,"visible":true,},
    {"resourceType":"GMRInstanceLayer","resourceVersion":"1.0","name":"Player","depth":400,"effectEnabled":true,"effectType":null,"gridX":8,"gridY":8,"hierarchyFrozen":false,"inheritLayerDepth":true,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"instances":[
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"inst_4279BB73","colour":4294967295,"frozen":false,"hasCreationCode":false,"ignore":false,"imageIndex":0,"imageSpeed":1.0,"inheritCode":true,"inheritedItemId":{"name":"inst_4279BB73","path":"rooms/r_parent/r_parent.yy",},"inheritItemSettings":false,"isDnd":false,"objectId":{"name":"o_player","path":"objects/o_player/o_player.yy",},"properties":[],"rotation":0.0,"scaleX":1.0,"scaleY":1.0,"x":72.0,"y":320.0,},
      ],"layers":[],"properties":[],"userdefinedDepth":false,"visible":true,},
    {"resourceType":"GMRInstanceLayer","resourceVersion":"1.0","name":"Enemy","depth":500,"effectEnabled":true,"effectType":null,"gridX":32,"gridY":32,"hierarchyFrozen":false,"inheritLayerDepth":true,"inheritLayerSettings":true,"inheritSubLayers":true,"inheritVisibility":true,"instances":[],"layers":[],"properties":[],"userdefinedDepth":false,"visible":true,},
    {"resourceType":"GMRInstanceLayer","resourceVersion":"1.0","name":"Interactables","depth":600,"effectEnabled":true,"effectType":null,"gridX":32,"gridY":32,"hierarchyFrozen":false,"inheritLayerDepth":false,"inheritLayerSettings":true,"inheritSubLayers":true,"inheritVisibility":false,"instances":[
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"inst_4B74E5D5","colour":4294967295,"frozen":false,"hasCreationCode":false,"ignore":false,"imageIndex":0,"imageSpeed":1.0,"inheritCode":false,"inheritedItemId":null,"inheritItemSettings":false,"isDnd":false,"objectId":{"name":"o_pc","path":"objects/o_pc/o_pc.yy",},"properties":[],"rotation":0.0,"scaleX":1.0,"scaleY":1.0,"x":-64.0,"y":128.0,},
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"inst_4BE063CC","colour":4294967295,"frozen":false,"hasCreationCode":false,"ignore":false,"imageIndex":0,"imageSpeed":1.0,"inheritCode":false,"inheritedItemId":null,"inheritItemSettings":false,"isDnd":false,"objectId":{"name":"o_door_vertical","path":"objects/o_door_vertical/o_door_vertical.yy",},"properties":[],"rotation":0.0,"scaleX":1.0,"scaleY":1.0,"x":-64.0,"y":160.0,},
      ],"layers":[],"properties":[],"userdefinedDepth":false,"visible":true,},
    {"resourceType":"GMRTileLayer","resourceVersion":"1.1","name":"Secrets","depth":700,"effectEnabled":true,"effectType":null,"gridX":32,"gridY":32,"hierarchyFrozen":false,"inheritLayerDepth":false,"inheritLayerSettings":true,"inheritSubLayers":true,"inheritVisibility":false,"layers":[],"properties":[],"tiles":{"SerialiseHeight":12,"SerialiseWidth":20,"TileCompressedData":[
-9,0,-11,-2147483648,-9,0,-11,-2147483648,-9,0,-11,-2147483648,-9,0,-11,-2147483648,-9,0,-11,-2147483648,
-9,0,-10,-2147483648,-10,0,-11,-2147483648,-9,0,-11,-2147483648,-9,0,-11,-2147483648,-9,0,-11,-2147483648,
-9,0,-11,-2147483648,-9,0,-11,-2147483648,],"TileDataFormat":1,},"tilesetId":{"name":"ts_caves","path":"tilesets/ts_caves/ts_caves.yy",},"userdefinedDepth":false,"visible":true,"x":0,"y":0,},
    {"resourceType":"GMRTileLayer","resourceVersion":"1.1","name":"Deco_back","depth":800,"effectEnabled":true,"effectType":null,"gridX":32,"gridY":32,"hierarchyFrozen":false,"inheritLayerDepth":false,"inheritLayerSettings":true,"inheritSubLayers":true,"inheritVisibility":true,"layers":[],"properties":[],"tiles":{"SerialiseHeight":12,"SerialiseWidth":20,"TileCompressedData":[
-240,-2147483648,],"TileDataFormat":1,},"tilesetId":{"name":"ts_caves","path":"tilesets/ts_caves/ts_caves.yy",},"userdefinedDepth":false,"visible":true,"x":0,"y":0,},
    {"resourceType":"GMRTileLayer","resourceVersion":"1.1","name":"Level_main","depth":900,"effectEnabled":true,"effectType":null,"gridX":32,"gridY":32,"hierarchyFrozen":false,"inheritLayerDepth":true,"inheritLayerSettings":true,"inheritSubLayers":true,"inheritVisibility":false,"layers":[],"properties":[],"tiles":{"SerialiseHeight":12,"SerialiseWidth":20,"TileCompressedData":[
-20,48,-10,0,-10,-2147483648,-10,0,-10,-2147483648,-10,0,-10,-2147483648,-10,0,-10,-2147483648,-10,0,
-90,-2147483648,-7,14,-3,15,-4,14,-3,15,-2,14,1,16,-20,-2147483648,],"TileDataFormat":1,},"tilesetId":{"name":"ts_caves","path":"tilesets/ts_caves/ts_caves.yy",},"userdefinedDepth":false,"visible":true,"x":0,"y":0,},
    {"resourceType":"GMRTileLayer","resourceVersion":"1.1","name":"Tile_bg","depth":1000,"effectEnabled":true,"effectType":null,"gridX":32,"gridY":32,"hierarchyFrozen":false,"inheritLayerDepth":false,"inheritLayerSettings":true,"inheritSubLayers":true,"inheritVisibility":false,"layers":[],"properties":[],"tiles":{"SerialiseHeight":12,"SerialiseWidth":20,"TileCompressedData":[
-240,174,],"TileDataFormat":1,},"tilesetId":{"name":"ts_caves","path":"tilesets/ts_caves/ts_caves.yy",},"userdefinedDepth":false,"visible":true,"x":0,"y":0,},
    {"resourceType":"GMRBackgroundLayer","resourceVersion":"1.0","name":"Background","animationFPS":15.0,"animationSpeedType":0,"colour":4286542425,"depth":1100,"effectEnabled":true,"effectType":null,"gridX":8,"gridY":8,"hierarchyFrozen":false,"hspeed":0.0,"htiled":false,"inheritLayerDepth":true,"inheritLayerSettings":true,"inheritSubLayers":true,"inheritVisibility":true,"layers":[],"properties":[],"spriteId":null,"stretch":false,"userdefinedAnimFPS":false,"userdefinedDepth":false,"visible":true,"vspeed":0.0,"vtiled":false,"x":0,"y":0,},
  ],
  "parent": {
    "name": "Rooms",
    "path": "folders/Rooms.yy",
  },
  "parentRoom": {
    "name": "r_parent",
    "path": "rooms/r_parent/r_parent.yy",
  },
  "physicsSettings": {
    "inheritPhysicsSettings": true,
    "PhysicsWorld": false,
    "PhysicsWorldGravityX": 0.0,
    "PhysicsWorldGravityY": 10.0,
    "PhysicsWorldPixToMetres": 0.1,
  },
  "roomSettings": {
    "Height": 360,
    "inheritRoomSettings": true,
    "persistent": false,
    "Width": 640,
  },
  "sequenceId": null,
  "views": [
    {"hborder":32,"hport":720,"hspeed":-1,"hview":360,"inherit":true,"objectId":null,"vborder":32,"visible":true,"vspeed":-1,"wport":1280,"wview":640,"xport":0,"xview":0,"yport":0,"yview":0,},
    {"hborder":32,"hport":768,"hspeed":-1,"hview":768,"inherit":true,"objectId":null,"vborder":32,"visible":false,"vspeed":-1,"wport":1366,"wview":1366,"xport":0,"xview":0,"yport":0,"yview":0,},
    {"hborder":32,"hport":768,"hspeed":-1,"hview":768,"inherit":true,"objectId":null,"vborder":32,"visible":false,"vspeed":-1,"wport":1366,"wview":1366,"xport":0,"xview":0,"yport":0,"yview":0,},
    {"hborder":32,"hport":768,"hspeed":-1,"hview":768,"inherit":true,"objectId":null,"vborder":32,"visible":false,"vspeed":-1,"wport":1366,"wview":1366,"xport":0,"xview":0,"yport":0,"yview":0,},
    {"hborder":32,"hport":768,"hspeed":-1,"hview":768,"inherit":true,"objectId":null,"vborder":32,"visible":false,"vspeed":-1,"wport":1366,"wview":1366,"xport":0,"xview":0,"yport":0,"yview":0,},
    {"hborder":32,"hport":768,"hspeed":-1,"hview":768,"inherit":true,"objectId":null,"vborder":32,"visible":false,"vspeed":-1,"wport":1366,"wview":1366,"xport":0,"xview":0,"yport":0,"yview":0,},
    {"hborder":32,"hport":768,"hspeed":-1,"hview":768,"inherit":true,"objectId":null,"vborder":32,"visible":false,"vspeed":-1,"wport":1366,"wview":1366,"xport":0,"xview":0,"yport":0,"yview":0,},
    {"hborder":32,"hport":768,"hspeed":-1,"hview":768,"inherit":true,"objectId":null,"vborder":32,"visible":false,"vspeed":-1,"wport":1366,"wview":1366,"xport":0,"xview":0,"yport":0,"yview":0,},
  ],
  "viewSettings": {
    "clearDisplayBuffer": true,
    "clearViewBackground": false,
    "enableViews": true,
    "inheritViewSettings": true,
  },
  "volume": 1.0,
}