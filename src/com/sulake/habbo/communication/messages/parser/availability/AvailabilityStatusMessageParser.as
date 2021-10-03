package com.sulake.habbo.communication.messages.parser.availability
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class AvailabilityStatusMessageParser implements IMessageParser
   {
       
      
      private var var_1051:Boolean;
      
      private var var_1360:Boolean;
      
      public function AvailabilityStatusMessageParser()
      {
         super();
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var_1051 = param1.readInteger() > 0;
         var_1360 = param1.readInteger() > 0;
         return true;
      }
      
      public function get isOpen() : Boolean
      {
         return var_1051;
      }
      
      public function get onShutDown() : Boolean
      {
         return var_1360;
      }
      
      public function flush() : Boolean
      {
         var_1051 = false;
         var_1360 = false;
         return true;
      }
   }
}
