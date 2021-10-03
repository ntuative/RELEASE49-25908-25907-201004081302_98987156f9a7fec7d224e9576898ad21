package com.sulake.habbo.communication.messages.incoming.sound
{
   public class PlayListEntry
   {
       
      
      private var var_1707:int;
      
      private var var_1978:int = 0;
      
      private var var_1977:String;
      
      private var var_1975:int;
      
      private var var_1976:String;
      
      public function PlayListEntry(param1:int, param2:int, param3:String, param4:String)
      {
         super();
         var_1707 = param1;
         var_1975 = param2;
         var_1976 = param3;
         var_1977 = param4;
      }
      
      public function get length() : int
      {
         return var_1975;
      }
      
      public function get name() : String
      {
         return var_1976;
      }
      
      public function get creator() : String
      {
         return var_1977;
      }
      
      public function get startPlayHeadPos() : int
      {
         return var_1978;
      }
      
      public function get id() : int
      {
         return var_1707;
      }
      
      public function set startPlayHeadPos(param1:int) : void
      {
         var_1978 = param1;
      }
   }
}
