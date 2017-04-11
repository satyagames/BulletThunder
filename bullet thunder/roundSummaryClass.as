class roundSummaryClass extends MovieClip {
	private var speed:Number;
	private var c:Number;
	private var name:Object;
	private var starBurst:Object;
	function onLoad():Void {
		speed = 1;
		this._x = 320;
		this._y = 240;
		c = 90;
		this._alpha = 10;
	}
	function onEnterFrame():Void {
		c--;
		if (c<1) {
			this._alpha -= 5;
			if (this._alpha<10) {
				removeMovieClip(this);
			}
		} else {
			if (this._alpha<100) {
				speed *= 1.1;
				this._alpha += speed;
				if (this._alpha>100) {
					this._alpha = 100;
				}
			}
		}
	}
}
