package com.sulake.habbo.communication.messages.incoming.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class ModeratorUserInfoData
   {
       
      
      private var var_2123:int;
      
      private var var_2122:int;
      
      private var var_2124:int;
      
      private var _userName:String;
      
      private var var_2126:int;
      
      private var var_2125:int;
      
      private var var_2127:int;
      
      private var _userId:int;
      
      private var var_722:Boolean;
      
      public function ModeratorUserInfoData(param1:IMessageDataWrapper)
      {
         super();
         _userId = param1.readInteger();
         _userName = param1.readString();
         var_2125 = param1.readInteger();
         var_2126 = param1.readInteger();
         var_722 = param1.readBoolean();
         var_2124 = param1.readInteger();
         var_2122 = param1.readInteger();
         var_2123 = param1.readInteger();
         var_2127 = param1.readInteger();
      }
      
      public function get banCount() : int
      {
         return var_2127;
      }
      
      public function get userId() : int
      {
         return _userId;
      }
      
      public function get online() : Boolean
      {
         return var_722;
      }
      
      public function get minutesSinceLastLogin() : int
      {
         return var_2126;
      }
      
      public function get abusiveCfhCount() : int
      {
         return var_2122;
      }
      
      public function get cautionCount() : int
      {
         return var_2123;
      }
      
      public function get cfhCount() : int
      {
         return var_2124;
      }
      
      public function get minutesSinceRegistration() : int
      {
         return var_2125;
      }
      
      public function get userName() : String
      {
         return _userName;
      }
   }
}
