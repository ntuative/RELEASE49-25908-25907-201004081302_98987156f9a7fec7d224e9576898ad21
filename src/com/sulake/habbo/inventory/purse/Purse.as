package com.sulake.habbo.inventory.purse
{
   public class Purse
   {
       
      
      private var var_2260:Boolean = false;
      
      private var var_2259:int = 0;
      
      private var var_1449:int = 0;
      
      private var var_2261:int = 0;
      
      private var var_1873:Boolean = false;
      
      private var var_1422:int = 0;
      
      private var var_1448:int = 0;
      
      public function Purse()
      {
         super();
      }
      
      public function set creditBalance(param1:int) : void
      {
         var_1422 = Math.max(0,param1);
      }
      
      public function get method_6() : int
      {
         return var_2259;
      }
      
      public function get clubHasEverBeenMember() : Boolean
      {
         return var_2260;
      }
      
      public function set clubHasEverBeenMember(param1:Boolean) : void
      {
         var_2260 = param1;
      }
      
      public function get isVIP() : Boolean
      {
         return var_1873;
      }
      
      public function set method_6(param1:int) : void
      {
         var_2259 = Math.max(0,param1);
      }
      
      public function set clubDays(param1:int) : void
      {
         var_1449 = Math.max(0,param1);
      }
      
      public function get creditBalance() : int
      {
         return var_1422;
      }
      
      public function set isVIP(param1:Boolean) : void
      {
         var_1873 = param1;
      }
      
      public function set pixelBalance(param1:int) : void
      {
         var_2261 = Math.max(0,param1);
      }
      
      public function get clubDays() : int
      {
         return var_1449;
      }
      
      public function get pixelBalance() : int
      {
         return var_2261;
      }
      
      public function set clubPeriods(param1:int) : void
      {
         var_1448 = Math.max(0,param1);
      }
      
      public function get clubPeriods() : int
      {
         return var_1448;
      }
   }
}
