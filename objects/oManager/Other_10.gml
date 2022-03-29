/// @description Create UI
var _width = 420;
var _height = 69;

createButton(40, 40, _width, _height, contButton, onClick);
createButton(40, 40 +_height+40, _width, _height, optButton, onClick);
createButton(40, 40 + (_height + 40)*2, _width, _height, quitButton, onClick);