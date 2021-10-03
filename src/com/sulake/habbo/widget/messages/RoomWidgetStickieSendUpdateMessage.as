package com.sulake.habbo.widget.messages
{
   public class RoomWidgetStickieSendUpdateMessage extends RoomWidgetMessage
   {
      
      public static const const_440:String = "RWSUM_STICKIE_SEND_UPDATE";
      
      public static const const_732:String = "RWSUM_STICKIE_SEND_DELETE";
       
      
      private var var_682:String;
      
      private var var_149:int;
      
      private var var_194:String;
      
      public function RoomWidgetStickieSendUpdateMessage(param1:String, param2:int, param3:String = "", param4:String = "")
      {
         super(param1);
         var_149 = param2;
         var_194 = param3;
         var_682 = param4;
      }
      
      public function get objectId() : int
      {
         return var_149;
      }
      
      public function get text() : String
      {
         return var_194;
      }
      
      public function get colorHex() : String
      {
         return var_682;
      }
   }
}
