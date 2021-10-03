package com.sulake.habbo.communication.messages.parser.users
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class ScrSendUserInfoMessageParser implements IMessageParser
   {
      
      public static const const_1233:int = 2;
      
      public static const const_1516:int = 1;
       
      
      private var var_2001:int;
      
      private var var_1998:int;
      
      private var var_1873:Boolean;
      
      private var var_2000:int;
      
      private var var_1237:String;
      
      private var var_1997:Boolean;
      
      private var var_1999:int;
      
      public function ScrSendUserInfoMessageParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function get daysToPeriodEnd() : int
      {
         return var_1998;
      }
      
      public function get isVIP() : Boolean
      {
         return var_1873;
      }
      
      public function get periodsSubscribedAhead() : int
      {
         return var_1999;
      }
      
      public function get memberPeriods() : int
      {
         return var_2000;
      }
      
      public function get productName() : String
      {
         return var_1237;
      }
      
      public function get hasEverBeenMember() : Boolean
      {
         return var_1997;
      }
      
      public function get responseType() : int
      {
         return var_2001;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var_1237 = param1.readString();
         var_1998 = param1.readInteger();
         var_2000 = param1.readInteger();
         var_1999 = param1.readInteger();
         var_2001 = param1.readInteger();
         var_1997 = param1.readBoolean();
         var_1873 = param1.readBoolean();
         return true;
      }
   }
}
