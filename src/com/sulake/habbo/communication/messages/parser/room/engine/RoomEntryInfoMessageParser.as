package com.sulake.habbo.communication.messages.parser.room.engine
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   import com.sulake.habbo.communication.messages.incoming.navigator.PublicRoomShortData;
   
   public class RoomEntryInfoMessageParser implements IMessageParser
   {
       
      
      private var var_2065:int;
      
      private var var_409:Boolean;
      
      private var var_2066:Boolean;
      
      private var var_874:PublicRoomShortData;
      
      public function RoomEntryInfoMessageParser()
      {
         super();
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_2066 = param1.readBoolean();
         if(var_2066)
         {
            var_2065 = param1.readInteger();
            var_409 = param1.readBoolean();
         }
         else
         {
            var_874 = new PublicRoomShortData(param1);
         }
         return true;
      }
      
      public function flush() : Boolean
      {
         if(var_874 != null)
         {
            var_874.dispose();
            var_874 = null;
         }
         return true;
      }
      
      public function get guestRoomId() : int
      {
         return var_2065;
      }
      
      public function get owner() : Boolean
      {
         return var_409;
      }
      
      public function get guestRoom() : Boolean
      {
         return var_2066;
      }
      
      public function get publicSpace() : PublicRoomShortData
      {
         return var_874;
      }
   }
}
