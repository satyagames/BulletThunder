class bonusTellClass extends MovieClip {
	private var speed:Number;
	private var name:Object;
	private var starBurst:Object;
	function onLoad():Void {
		speed = .5;
	}
	function onEnterFrame():Void {
		this._x -= speed;
		speed *= 1.1;
		this.starBurst._rotation += speed;
		if (this._x<-20) {
			removeMovieClip(this);
		}
	}
}
