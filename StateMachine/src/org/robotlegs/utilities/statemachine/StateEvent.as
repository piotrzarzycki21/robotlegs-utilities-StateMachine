/*
  ADAPTED FOR ROBOTLEGS FROM:
  PureMVC AS3 Utility - StateMachine
  Copyright (c) 2008 Neil Manuell, Cliff Hall
  Your reuse is governed by the Creative Commons Attribution 3.0 License
 */
package org.robotlegs.utilities.statemachine
{
	COMPILE::SWF
	{
		import flash.events.Event;
	}
	
	COMPILE::JS
	{
		import org.apache.royale.events.Event;
	}

	public class StateEvent extends Event
	{
		public static const CHANGED:String = "changed";
		public static const ACTION:String = "action";
		public static const CANCEL:String = "cancel";
		
		public var action:String;
	    public var data:Object;
		
		public function StateEvent(type:String, action:String = null, data:Object = null)
		{
			this.action = action;
			this.data = data;
			super(type, false, false);
		}
		
		COMPILE::SWF
		override public function clone() : Event
		{
			return new StateEvent(type, action, data);
		}
		
		COMPILE::JS
		override public function cloneEvent():Event
		{
			return new StateEvent(type, action, data);
		}
	}
}