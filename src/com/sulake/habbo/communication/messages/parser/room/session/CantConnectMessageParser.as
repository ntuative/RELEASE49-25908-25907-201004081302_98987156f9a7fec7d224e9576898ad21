package com.sulake.habbo.communication.messages.parser.room.session
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class CantConnectMessageParser implements IMessageParser
   {
      
      public static const const_1612:int = 2;
      
      public static const const_1139:int = 4;
      
      public static const const_1358:int = 1;
      
      public static const const_1272:int = 3;
       
      
      private var var_997:int = 0;
      
      private var var_821:String = "";
      
      public function CantConnectMessageParser()
      {
         super();
      }
      
      public function get reason() : int
      {
         return var_997;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var_997 = param1.readInteger();
         if(var_997 == 3)
         {
            var_821 = param1.readString();
         }
         else
         {
            var_821 = "";
         }
         return true;
      }
      
      public function flush() : Boolean
      {
         var_997 = 0;
         var_821 = "";
         return true;
      }
      
      public function get parameter() : String
      {
         return var_821;
      }
   }
}
