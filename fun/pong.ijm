/*
 * Play pong on the FIJI example images.
 *
 */

var _WIDTH = 800;
var _HEIGHT = 600;
var _X_PADDLE = 50;
var _Y_PADDLE = _HEIGHT / 2;
var _WIDTH_PADDLE = 10;
var _HEIGHT_PADDLE = 40;
var _RADIUS_BALL = 10;
var _X_BALL = _WIDTH / 2;
var _Y_BALL = _HEIGHT / 2;
var _LIVES = 3;
var _DIRECTION_BALL = 0;
var _DELAY = 5;
var _SCORE = 0;
var _E=0, _NE=1, _N=2, _NW=3, _W=4, _SW=5, _S=6, _SE=7;
var _START_SCORING=false;

var _DIR = getDirectory("imagej") + "/" + "samples";
var _NR_OF_IMAGES = 0;
var _IMAGES;
if (File.exists(_DIR)) {
	_IMAGES = getFileList(_DIR);
	_NR_OF_IMAGES = _IMAGES.length;
}
if (!File.exists(_DIR) || _NR_OF_IMAGES==0) run("Cache Sample Images ");
var _IMAGES = getFileList(_DIR); 

var _CURRENT_IMAGE_INDEX = -1;

displayMessage();

while(livesLeft()) {
	initializeGame();
	while(ballInGame()) {
		updatePaddle();
		updateBall();
		draw();
		if (isKeyDown("alt")) {
			gotoNextLevel();
			setKeyDown("none");
		}
	} 
  _LIVES--;
}
_CURRENT_IMAGE_INDEX = -1;
initializeGame();
setColor("red");
setFont("SanSerif", 100);
Overlay.drawString("GAME OVER!\n Your score: " + _SCORE, 10, _HEIGHT/2-10);
Overlay.show();
setOption("DisablePopupMenu", false);

function initializeGame() {
	autoUpdate(false);
	list = getList("image.titles");
	if (list.length>0) close();
	if (_CURRENT_IMAGE_INDEX == -1) newImage("PONG " + _LIVES + " lives remaining", "8-bit white", 800, 600, 1);	
	else open(_DIR + "/" + _IMAGES[_CURRENT_IMAGE_INDEX]);
	_WIDTH = getWidth();
	_HEIGHT = getHeight();
	snapshot();
	setOption("DisablePopupMenu", true);
	setForegroundColor(0, 0, 0);
	setBackgroundColor(255, 255, 255);
	_X_BALL = _WIDTH / 2;
	_Y_BALL = _HEIGHT / 2;
	_DIRECTION_BALL = _W;
	_X_PADDLE = 50;
	_Y_PADDLE = _HEIGHT / 2;
	_START_SCORING = false;
}

function draw() {
	reset();
	fillOval(_X_BALL, _Y_BALL, _RADIUS_BALL*2, _RADIUS_BALL*2);
	fillRect(_X_PADDLE, _Y_PADDLE, _WIDTH_PADDLE, _HEIGHT_PADDLE);
	drawString("score: " + _SCORE, _WIDTH-60, 30);
	updateDisplay();
	wait(_DELAY);
}

function livesLeft() {
	result = (_LIVES>0);
	return result;
}

function ballInGame() {
	result = (_X_BALL > _X_PADDLE-5);
	return result;
}

function updatePaddle() {
	 rightButton=4;
     leftButton=16;
	 getCursorLoc(x, y, z, flags);
     if (flags&leftButton!=0 && _Y_PADDLE>0) _Y_PADDLE-=1;
     if (flags&rightButton!=0 && _Y_PADDLE+_HEIGHT_PADDLE<_HEIGHT) _Y_PADDLE+=1;
}

function updateBall() {
	if (ballHitRightWall() && _DIRECTION_BALL==_E) _DIRECTION_BALL = _W;
	if (ballHitRightWall() && _DIRECTION_BALL==_SE) _DIRECTION_BALL = _SW;
	if (ballHitRightWall() && _DIRECTION_BALL==_NE) _DIRECTION_BALL = _NW;
	
	if (ballHitUpperWall() && _DIRECTION_BALL==_NE) _DIRECTION_BALL = _SE;
	if (ballHitUpperWall() && _DIRECTION_BALL==_NW) _DIRECTION_BALL = _SW;

	if (ballHitLowerWall() && _DIRECTION_BALL==_SW) _DIRECTION_BALL = _NW;
	if (ballHitLowerWall() && _DIRECTION_BALL==_SE) _DIRECTION_BALL = _NE;
	
	if (ballHitPaddleInMiddle() && _DIRECTION_BALL==_W)  _DIRECTION_BALL = _E;
	if (ballHitPaddleInMiddle() && _DIRECTION_BALL==_SW)  _DIRECTION_BALL = _SE;
	if (ballHitPaddleInMiddle() && _DIRECTION_BALL==_NW)  _DIRECTION_BALL = _NE;

	if (_START_SCORING && ballHitRightWall()) {
		_SCORE++;
		if (_SCORE>0 && _SCORE%3==0) {
			gotoNextLevel();
		}
	}

	if (ballHitPaddleInLowerPart())  {
		if (!_START_SCORING) _START_SCORING=true;
		_DIRECTION_BALL = _SE;
	}
	if (ballHitPaddleInUpperPart())  {
		if (!_START_SCORING) _START_SCORING=true;
		_DIRECTION_BALL = _NE;
	}
	
	dx = 1;
	if (_DIRECTION_BALL==_NW || _DIRECTION_BALL==_SW || _DIRECTION_BALL==_W) dx = -1;
	if (_DIRECTION_BALL==_N || _DIRECTION_BALL==_S) dx = 0;
	dy = 1;
	if (_DIRECTION_BALL==_NE || _DIRECTION_BALL==_N || _DIRECTION_BALL==_NW) dy = -1;
	if (_DIRECTION_BALL==_E || _DIRECTION_BALL==_W) dy = 0;
	_X_BALL = _X_BALL + dx;
	_Y_BALL = _Y_BALL + dy;
}

function ballHitRightWall() {
	if (_X_BALL+_RADIUS_BALL>=_WIDTH) return true;
	return false;
}

function ballHitLowerWall() {
	if (_Y_BALL+_RADIUS_BALL>=_HEIGHT) return true;
	return false;
}

function ballHitUpperWall() {
	if (_Y_BALL-_RADIUS_BALL<=0) return true;
	return false;
}

function ballHitPaddleInUpperPart() {
	result = (_X_BALL<=_X_PADDLE) &&  (_Y_BALL+_RADIUS_BALL>=_Y_PADDLE) && (_Y_BALL+_RADIUS_BALL<_Y_PADDLE+(_HEIGHT_PADDLE/3));
	return result;
}

function ballHitPaddleInLowerPart() {
	result = (_X_BALL<=_X_PADDLE) &&  (_Y_BALL+_RADIUS_BALL<_Y_PADDLE+_HEIGHT_PADDLE) && (_Y_BALL+_RADIUS_BALL>_Y_PADDLE+(2*_HEIGHT_PADDLE/3));
	return result;
}

function ballHitPaddleInMiddle() {
	result = (_X_BALL)<=_X_PADDLE;
	result = result && _Y_BALL+_RADIUS_BALL>=_Y_PADDLE;
	result = result && _Y_BALL+_RADIUS_BALL<=_Y_PADDLE+_HEIGHT_PADDLE;
	result = result && !ballHitPaddleInUpperPart();
	result = result && !ballHitPaddleInLowerPart();
	return result;
}

function gotoNextLevel() {
	_CURRENT_IMAGE_INDEX = (_CURRENT_IMAGE_INDEX + 1) % _NR_OF_IMAGES;
	initializeGame();
}

function displayMessage() {
	showMessage(
	"<html><h1>Pong</h1><h2>How to play<ul>" +
	"<li>Move the mouse pointer into the image window" +
	"<li>Left Mouse Button - paddle up" +
	"<li>Right Mouse Button - paddle down" +
	"<li>Alt Key - skip level" +
	"<li>Esc Key - stop playing" +
	"</ul>"+
	"To start scoring hit the ball with the lower or upper part of the paddle first.<br>You need 3 points to advance to the next level."+
	"</p><p>Run 'File>Open Samples>Cache Sample Images' before playing <br>or put some images into the samples folder.</p></h2><h2>Have fun!!!</h2>");
	setKeyDown("none");
}
