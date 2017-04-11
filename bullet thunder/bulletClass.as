class bulletClass extends MovieClip {
	private var angle:Number;
	private var x:Number;
	private var y:Number;
	private var temp:Number;
	private var bx:Number;
	private var by:Number;
	private var speed:Number;
	private var tmpAngle:Number;
	private var bState:String;
	//private var testAngle:Number;
	private var bulletType:Number;
	private var bricksInARow:Number;
	private var tempPoints:Number;
	private var playersBullet:Boolean;
	function onLoad():Void {
		bState = "normal";
		speed = 10;
		tmpAngle = angle*Math.PI/180;
		bx = speed*Math.cos(tmpAngle);
		by = speed*Math.sin(tmpAngle);
		if (playersBullet) {
			this._x = x=_root.px;
			this._y = y=_root.py-15;
			this.gotoAndStop(1);
		} else {
			this.gotoAndStop(2);
		}
		if (bulletType == undefined) {
			bulletType = 1;
		} else if (bulletType == 5) {
			speed = 4;
		}
	}
	function onMouseDown():Void {
	}
	function onEnterFrame():Void {
		if (_root.gameState == "playing") {
			// display                                      
			this._x = this.x;
			this._y = this.y;
			//if (bState == "normal") {
				if (bulletType == 2) {
					temp = random(30)-15;
					angle += temp;
					tmpAngle = angle*Math.PI/180;
					bx = speed*Math.cos(tmpAngle);
					by = speed*Math.sin(tmpAngle);
				}
				x += bx;
				y += by;
				// remove if bullet leaves screen
				if (y>480 || y<0 || x>500 || x<0) {
					removeMovieClip(this);
				}
				if (angle>360) {
					angle -= 360;
				} else if (angle<0) {
					angle += 360;
				}
				// test hits                                                                                                                                        
				if (_root.testHit(this, playersBullet)) {
					removeMovieClip(this);
				}
			//}
		}
	}
}
