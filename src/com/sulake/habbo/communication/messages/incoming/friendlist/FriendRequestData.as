package com.sulake.habbo.communication.messages.incoming.friendlist
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class FriendRequestData
   {
       
      
      private var var_2026:int;
      
      private var var_2025:String;
      
      private var var_983:int;
      
      public function FriendRequestData(param1:IMessageDataWrapper)
      {
         super();
         this.var_983 = param1.readInteger();
         this.var_2025 = param1.readString();
         this.var_2026 = int(param1.readString());
      }
      
      public function get requestId() : int
      {
         return this.var_983;
      }
      
      public function get requesterUserId() : int
      {
         return this.var_2026;
      }
      
      public function get requesterName() : String
      {
         return this.var_2025;
      }
   }
}
