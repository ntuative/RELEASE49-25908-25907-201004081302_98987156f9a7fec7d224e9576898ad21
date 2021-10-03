package com.sulake.habbo.messenger.domain
{
   public class Message
   {
      
      public static const const_511:int = 2;
      
      public static const const_810:int = 6;
      
      public static const const_622:int = 1;
      
      public static const const_500:int = 3;
      
      public static const const_1019:int = 4;
      
      public static const const_588:int = 5;
       
      
      private var var_1924:String;
      
      private var var_1013:int;
      
      private var var_1758:String;
      
      private var _type:int;
      
      public function Message(param1:int, param2:int, param3:String, param4:String)
      {
         super();
         _type = param1;
         var_1013 = param2;
         var_1758 = param3;
         var_1924 = param4;
      }
      
      public function get time() : String
      {
         return var_1924;
      }
      
      public function get senderId() : int
      {
         return var_1013;
      }
      
      public function get messageText() : String
      {
         return var_1758;
      }
      
      public function get type() : int
      {
         return _type;
      }
   }
}
