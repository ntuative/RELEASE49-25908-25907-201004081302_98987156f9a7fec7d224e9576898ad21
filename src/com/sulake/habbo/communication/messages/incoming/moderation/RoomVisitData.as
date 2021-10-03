package com.sulake.habbo.communication.messages.incoming.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class RoomVisitData
   {
       
      
      private var var_701:String;
      
      private var var_1933:int;
      
      private var var_1538:Boolean;
      
      private var _roomId:int;
      
      private var var_1934:int;
      
      public function RoomVisitData(param1:IMessageDataWrapper)
      {
         super();
         var_1538 = param1.readBoolean();
         _roomId = param1.readInteger();
         var_701 = param1.readString();
         var_1934 = param1.readInteger();
         var_1933 = param1.readInteger();
      }
      
      public function get isPublic() : Boolean
      {
         return var_1538;
      }
      
      public function get roomName() : String
      {
         return var_701;
      }
      
      public function get enterMinute() : int
      {
         return var_1933;
      }
      
      public function get roomId() : int
      {
         return _roomId;
      }
      
      public function get enterHour() : int
      {
         return var_1934;
      }
   }
}
