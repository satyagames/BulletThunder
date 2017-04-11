class itemClass extends MovieClip {
	// test if hit player, if so, then apply effect to player settings
	// if a trampoline then bounce the player up and increase his speed
	// if a points then add points
	// only test if in the player area
	// if a brick wall then suddenly stop player
	//if a tree then seriously slow the player down, and show leaves or make sound of leaves moving
	//if a cactus then make playewr stick into it when he hits
	private var x:Number;
	private var y:Number;
	private var inumber:Number;
	private var itemType:Number;
	private var hitState:Boolean;
	private var name:Object;
	private var HOTspot:Object;
	function onLoad():Void {
		this.HOTspot._visible = false;
				//this.HOTspot._alpha = 50
		this._name += String(random(10000));
		x = this._x;
		y = this._y;
		hitState = false;
		trace(this._name);
		//this.gotoAndStop((_root.level-1)*10+(random(10)+1));
		//this.gotoAndStop(random(10)+1);
		if (this._name == "points") {
			this._rotation = random(360);
		}
	}
	function onEnterFrame():Void {
		// test if hit player        
		if (!hitState) {
			//trace(this.name);
			_root.testHit(this, this._name);
		}
	}
}
