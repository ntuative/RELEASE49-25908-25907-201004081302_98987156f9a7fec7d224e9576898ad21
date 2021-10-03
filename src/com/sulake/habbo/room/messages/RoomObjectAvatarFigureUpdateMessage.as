package com.sulake.habbo.room.messages
{
   public class RoomObjectAvatarFigureUpdateMessage extends RoomObjectUpdateStateMessage
   {
       
      
      private var var_1787:String;
      
      private var var_308:String;
      
      private var var_754:String;
      
      public function RoomObjectAvatarFigureUpdateMessage(param1:String, param2:String = null, param3:String = null)
      {
         super();
         var_308 = param1;
         var_754 = param2;
         var_1787 = param3;
      }
      
      public function get race() : String
      {
         return var_1787;
      }
      
      public function get figure() : String
      {
         return var_308;
      }
      
      public function get gender() : String
      {
         return var_754;
      }
   }
}
