package com.sulake.habbo.widget.messages
{
   public class RoomWidgetChatMessage extends RoomWidgetMessage
   {
      
      public static const const_130:int = 0;
      
      public static const const_118:int = 1;
      
      public static const const_104:int = 2;
      
      public static const const_518:String = "RWCM_MESSAGE_CHAT";
       
      
      private var var_1209:int = 0;
      
      private var var_1620:String = "";
      
      private var var_194:String = "";
      
      public function RoomWidgetChatMessage(param1:String, param2:String, param3:int = 0, param4:String = "")
      {
         super(param1);
         var_194 = param2;
         var_1209 = param3;
         var_1620 = param4;
      }
      
      public function get recipientName() : String
      {
         return var_1620;
      }
      
      public function get chatType() : int
      {
         return var_1209;
      }
      
      public function get text() : String
      {
         return var_194;
      }
   }
}
