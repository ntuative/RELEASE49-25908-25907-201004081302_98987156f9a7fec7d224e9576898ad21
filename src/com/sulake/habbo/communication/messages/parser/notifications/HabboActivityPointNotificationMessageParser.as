package com.sulake.habbo.communication.messages.parser.notifications
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class HabboActivityPointNotificationMessageParser implements IMessageParser
   {
       
      
      private var var_1802:int = 0;
      
      private var var_1803:int = 0;
      
      public function HabboActivityPointNotificationMessageParser()
      {
         super();
      }
      
      public function get change() : int
      {
         return var_1803;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var_1802 = param1.readInteger();
         var_1803 = param1.readInteger();
         return true;
      }
      
      public function get amount() : int
      {
         return var_1802;
      }
      
      public function flush() : Boolean
      {
         return true;
      }
   }
}
