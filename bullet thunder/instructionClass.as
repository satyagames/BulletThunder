class instructionClass extends MovieClip {
	private var speed:Number;
	private var c:Number;
	private var name:Object;
	private var starBurst:Object;
	function onLoad():Void {
		if (_root.instrtSeen == true) {
			this._visible = false;
		}
	}
	function onEnterFrame():Void {
		if (_root.instrtSeen == undefined) {
			if (_root.gameState == "flying") {
				_root.instrtSeen = true;
			}
		}
		if (_root.instrtSeen == true) {
			this._visible = false;
		}
	}
}
