package com.sulake.habbo.communication.messages.incoming.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class CfhChatlogData
   {
       
      
      private var var_1647:int;
      
      private var var_1093:int;
      
      private var var_1648:int;
      
      private var var_1402:int;
      
      private var var_113:RoomChatlogData;
      
      public function CfhChatlogData(param1:IMessageDataWrapper)
      {
         super();
         var_1402 = param1.readInteger();
         var_1648 = param1.readInteger();
         var_1093 = param1.readInteger();
         var_1647 = param1.readInteger();
         var_113 = new RoomChatlogData(param1);
         Logger.log("READ CFHCHATLOGDATA: callId: " + var_1402);
      }
      
      public function get chatRecordId() : int
      {
         return var_1647;
      }
      
      public function get reportedUserId() : int
      {
         return var_1093;
      }
      
      public function get callerUserId() : int
      {
         return var_1648;
      }
      
      public function get callId() : int
      {
         return var_1402;
      }
      
      public function get room() : RoomChatlogData
      {
         return var_113;
      }
   }
}
