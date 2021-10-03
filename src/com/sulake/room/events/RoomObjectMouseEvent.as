package com.sulake.room.events
{
   public class RoomObjectMouseEvent extends RoomObjectEvent
   {
      
      public static const const_1509:String = "ROE_MOUSE_LEAVE";
      
      public static const const_1495:String = "ROE_MOUSE_ENTER";
      
      public static const const_355:String = "ROE_MOUSE_MOVE";
      
      public static const const_1444:String = "ROE_MOUSE_DOUBLE_CLICK";
      
      public static const const_213:String = "ROE_MOUSE_CLICK";
      
      public static const ROOM_OBJECT_MOUSE_DOWN:String = "ROE_MOUSE_DOWN";
       
      
      private var var_1631:Boolean;
      
      private var var_1630:Boolean;
      
      private var var_1632:Boolean;
      
      private var var_1629:Boolean;
      
      public function RoomObjectMouseEvent(param1:String, param2:int, param3:String, param4:Boolean = false, param5:Boolean = false, param6:Boolean = false, param7:Boolean = false, param8:Boolean = false, param9:Boolean = false)
      {
         super(param1,param2,param3,param8,param9);
         var_1632 = param4;
         var_1629 = param5;
         var_1631 = param6;
         var_1630 = param7;
      }
      
      public function get buttonDown() : Boolean
      {
         return var_1630;
      }
      
      public function get altKey() : Boolean
      {
         return var_1632;
      }
      
      public function get ctrlKey() : Boolean
      {
         return var_1629;
      }
      
      public function get shiftKey() : Boolean
      {
         return var_1631;
      }
   }
}
