package;

import flixel.FlxG;
import flixel.FlxSprite;
import flixel.FlxState;
import flixel.text.FlxText;
import flixel.ui.FlxButton;
import flixel.util.FlxMath;
import flixel.util.FlxPath;
import flixel.util.FlxPoint;

/**
 * A FlxState which can be used for the game's menu.
 */
class MenuState extends FlxState
{
	/**
	 * Function that is called up when to state is created to set it up. 
	 */
	override public function create():Void
	{
		// Set a background color
		FlxG.cameras.bgColor = 0xff131c1b;
		// Show the mouse (in case it hasn't been disabled)
		#if !FLX_NO_MOUSE
		FlxG.mouse.show();
		#end

    var x = new FlxSprite(30, 30);
    x.makeGraphic(50, 50, 0xff0000ff);
    add(x);

    var path = FlxPath.start(x, [
      new FlxPoint(40, 40), new FlxPoint(60, 20),
      new FlxPoint(120, 20), new FlxPoint(140, 40),
      new FlxPoint(140, 80), new FlxPoint(120, 100),
      new FlxPoint(60, 100), new FlxPoint(40, 80),],
      40, FlxPath.YOYO, true);


    var y = new FlxSprite(120, 20);
    y.makeGraphic(50, 50, 0xff00ff55);
    add(y);

    var path = FlxPath.start(y, [new FlxPoint(120, 20),
      new FlxPoint(140, 40)],
      40, FlxPath.LOOP_FORWARD, true);

		super.create();
	}
	
	/**
	 * Function that is called when this state is destroyed - you might want to 
	 * consider setting all objects this state uses to null to help garbage collection.
	 */
	override public function destroy():Void
	{
		super.destroy();
	}

	/**
	 * Function that is called once every frame.
	 */
	override public function update():Void
	{
		super.update();
	}	
}
