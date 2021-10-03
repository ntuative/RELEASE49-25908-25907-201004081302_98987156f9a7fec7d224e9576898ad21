package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class PopularTagData
   {
       
      
      private var var_1953:int;
      
      private var var_2196:String;
      
      public function PopularTagData(param1:IMessageDataWrapper)
      {
         super();
         var_2196 = param1.readString();
         var_1953 = param1.readInteger();
      }
      
      public function get tagName() : String
      {
         return var_2196;
      }
      
      public function get userCount() : int
      {
         return var_1953;
      }
   }
}
