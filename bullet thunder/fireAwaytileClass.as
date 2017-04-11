class fireAwaytileClass extends MovieClip {
	private var tileState:String;
	private var x:Number;
	private var speed:Number;
	function onLoad():Void {
		x = this._x;
		this.gotoAndStop((_root.level-1)*10+(random(10)+1));
		//this.gotoAndStop(random(10)+1);
	}
	function onEnterFrame():Void {
		// display    
		if (_root.gameState == "playing") {
			//x -= _global.tileSpeed;
			if (x<-480) {
				x += 960;
				this.gotoAndStop((_root.level-1)*10+(random(10)+1));
			}
			this._x = x;
		}
	}
}
