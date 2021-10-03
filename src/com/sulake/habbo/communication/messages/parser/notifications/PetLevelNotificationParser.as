package com.sulake.habbo.communication.messages.parser.notifications
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class PetLevelNotificationParser implements IMessageParser
   {
       
      
      private var var_308:String;
      
      private var var_1650:int;
      
      private var var_1901:String;
      
      private var var_1042:int;
      
      private var var_1224:int;
      
      public function PetLevelNotificationParser()
      {
         super();
      }
      
      public function get petId() : int
      {
         return var_1224;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var_1224 = param1.readInteger();
         var_1901 = param1.readString();
         var_1650 = param1.readInteger();
         var_308 = param1.readString();
         var_1042 = param1.readInteger();
         return true;
      }
      
      public function get petName() : String
      {
         return var_1901;
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function get figure() : String
      {
         return var_308;
      }
      
      public function get petType() : int
      {
         return var_1042;
      }
      
      public function get level() : int
      {
         return var_1650;
      }
   }
}
