package com.sulake.habbo.communication.messages.incoming.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class ChatlineData
   {
       
      
      private var var_1444:String;
      
      private var var_2110:int;
      
      private var var_2112:int;
      
      private var var_2109:int;
      
      private var var_2111:String;
      
      public function ChatlineData(param1:IMessageDataWrapper)
      {
         super();
         var_2110 = param1.readInteger();
         var_2109 = param1.readInteger();
         var_2112 = param1.readInteger();
         var_2111 = param1.readString();
         var_1444 = param1.readString();
      }
      
      public function get msg() : String
      {
         return var_1444;
      }
      
      public function get hour() : int
      {
         return var_2110;
      }
      
      public function get minute() : int
      {
         return var_2109;
      }
      
      public function get chatterName() : String
      {
         return var_2111;
      }
      
      public function get chatterId() : int
      {
         return var_2112;
      }
   }
}
