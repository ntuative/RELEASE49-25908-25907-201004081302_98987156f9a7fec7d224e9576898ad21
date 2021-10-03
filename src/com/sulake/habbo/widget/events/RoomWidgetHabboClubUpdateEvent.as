package com.sulake.habbo.widget.events
{
   public class RoomWidgetHabboClubUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_206:String = "RWBIUE_HABBO_CLUB";
       
      
      private var var_1731:Boolean = false;
      
      private var var_1730:int = 0;
      
      private var var_1732:int = 0;
      
      private var var_1729:int;
      
      private var var_1733:int = 0;
      
      public function RoomWidgetHabboClubUpdateEvent(param1:int, param2:int, param3:int, param4:Boolean, param5:int, param6:Boolean = false, param7:Boolean = false)
      {
         super(const_206,param6,param7);
         var_1733 = param1;
         var_1732 = param2;
         var_1730 = param3;
         var_1731 = param4;
         var_1729 = param5;
      }
      
      public function get clubLevel() : int
      {
         return var_1729;
      }
      
      public function get pastPeriods() : int
      {
         return var_1730;
      }
      
      public function get periodsLeft() : int
      {
         return var_1732;
      }
      
      public function get daysLeft() : int
      {
         return var_1733;
      }
      
      public function get allowClubDances() : Boolean
      {
         return var_1731;
      }
   }
}
