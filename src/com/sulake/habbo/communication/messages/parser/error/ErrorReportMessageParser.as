package com.sulake.habbo.communication.messages.parser.error
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class ErrorReportMessageParser implements IMessageParser
   {
       
      
      private var var_1370:int;
      
      private var var_1121:int;
      
      private var var_1371:String;
      
      public function ErrorReportMessageParser()
      {
         super();
      }
      
      public function get messageId() : int
      {
         return var_1370;
      }
      
      public function flush() : Boolean
      {
         var_1121 = 0;
         var_1370 = 0;
         var_1371 = null;
         return true;
      }
      
      public function get errorCode() : int
      {
         return var_1121;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var_1370 = param1.readInteger();
         var_1121 = param1.readInteger();
         var_1371 = param1.readString();
         return true;
      }
      
      public function get timestamp() : String
      {
         return var_1371;
      }
   }
}
