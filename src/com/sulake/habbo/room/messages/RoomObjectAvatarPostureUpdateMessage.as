package com.sulake.habbo.room.messages
{
   public class RoomObjectAvatarPostureUpdateMessage extends RoomObjectUpdateStateMessage
   {
       
      
      private var var_1948:String;
      
      private var var_821:String;
      
      public function RoomObjectAvatarPostureUpdateMessage(param1:String, param2:String = "")
      {
         super();
         var_1948 = param1;
         var_821 = param2;
      }
      
      public function get postureType() : String
      {
         return var_1948;
      }
      
      public function get parameter() : String
      {
         return var_821;
      }
   }
}
