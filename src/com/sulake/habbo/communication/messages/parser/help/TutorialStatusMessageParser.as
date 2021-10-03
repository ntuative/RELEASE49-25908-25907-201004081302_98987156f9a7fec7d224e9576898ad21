package com.sulake.habbo.communication.messages.parser.help
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class TutorialStatusMessageParser implements IMessageParser
   {
       
      
      private var var_1031:Boolean;
      
      private var var_1032:Boolean;
      
      private var var_1033:Boolean;
      
      public function TutorialStatusMessageParser()
      {
         super();
      }
      
      public function get hasCalledGuideBot() : Boolean
      {
         return var_1031;
      }
      
      public function get method_4() : Boolean
      {
         return var_1032;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var_1033 = param1.readBoolean();
         var_1032 = param1.readBoolean();
         var_1031 = param1.readBoolean();
         return true;
      }
      
      public function get hasChangedLooks() : Boolean
      {
         return var_1033;
      }
      
      public function flush() : Boolean
      {
         var_1033 = false;
         var_1032 = false;
         var_1031 = false;
         return true;
      }
   }
}
