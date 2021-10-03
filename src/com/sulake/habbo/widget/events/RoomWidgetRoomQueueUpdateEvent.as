package com.sulake.habbo.widget.events
{
   public class RoomWidgetRoomQueueUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_432:String = "RWRQUE_SPECTATOR_QUEUE_STATUS";
      
      public static const const_290:String = "RWRQUE_VISITOR_QUEUE_STATUS";
       
      
      private var var_813:int;
      
      private var var_250:Boolean;
      
      private var var_1987:Boolean;
      
      private var var_1523:Boolean;
      
      public function RoomWidgetRoomQueueUpdateEvent(param1:String, param2:int, param3:Boolean, param4:Boolean, param5:Boolean, param6:Boolean = false, param7:Boolean = false)
      {
         super(param1,param6,param7);
         var_813 = param2;
         var_1987 = param3;
         var_250 = param4;
         var_1523 = param5;
      }
      
      public function get position() : int
      {
         return var_813;
      }
      
      public function get isActive() : Boolean
      {
         return var_250;
      }
      
      public function get isClubQueue() : Boolean
      {
         return var_1523;
      }
      
      public function get hasHabboClub() : Boolean
      {
         return var_1987;
      }
   }
}
