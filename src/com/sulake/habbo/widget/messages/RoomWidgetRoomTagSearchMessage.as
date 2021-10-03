package com.sulake.habbo.widget.messages
{
   public class RoomWidgetRoomTagSearchMessage extends RoomWidgetMessage
   {
      
      public static const const_567:String = "RWRTSM_ROOM_TAG_SEARCH";
       
      
      private var var_1759:String = "";
      
      public function RoomWidgetRoomTagSearchMessage(param1:String)
      {
         super(const_567);
         var_1759 = param1;
      }
      
      public function get tag() : String
      {
         return var_1759;
      }
   }
}
