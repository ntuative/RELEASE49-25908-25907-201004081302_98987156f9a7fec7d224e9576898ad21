package com.sulake.habbo.navigator.events
{
   import flash.events.Event;
   
   public class HabboNavigatorOpenedEvent extends Event
   {
      
      public static const const_1145:String = "HN_OPENED";
       
      
      public function HabboNavigatorOpenedEvent(param1:Boolean = false, param2:Boolean = false)
      {
         super(const_1145,param1,param2);
      }
   }
}
