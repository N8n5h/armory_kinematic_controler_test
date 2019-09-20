package arm;

import iron.math.Vec4;
import iron.system.Input;
import iron.system.Time;
import iron.system.Audio;
import armory.trait.physics.KinematicCharacterController;

class Character extends KinematicCharacterController {
#if (!arm_physics)
	public function new() { super(); }
#else
	public function new() {
		super();
		notifyOnInit(function() {
			notifyOnUpdate(update);
		});	
	}

	function update() {
		setWalkDirection(new Vec4(0,100,0));
        trace(onGround());
	}

}
#end
