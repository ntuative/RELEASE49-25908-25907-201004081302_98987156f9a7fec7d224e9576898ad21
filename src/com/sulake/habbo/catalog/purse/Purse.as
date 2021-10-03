package com.sulake.habbo.catalog.purse
{
   public class Purse implements IPurse
   {
       
      
      private var var_1449:int = 0;
      
      private var var_1872:int = 0;
      
      private var var_1873:Boolean = false;
      
      private var var_1871:int = 0;
      
      private var var_1448:int = 0;
      
      public function Purse()
      {
         super();
      }
      
      public function get clubPeriods() : int
      {
         return var_1448;
      }
      
      public function get clubDays() : int
      {
         return var_1449;
      }
      
      public function set pixels(param1:int) : void
      {
         var_1872 = param1;
      }
      
      public function get pixels() : int
      {
         return var_1872;
      }
      
      public function get hasClubLeft() : Boolean
      {
         return var_1449 > 0 || var_1448 > 0;
      }
      
      public function set clubDays(param1:int) : void
      {
         var_1449 = param1;
      }
      
      public function get credits() : int
      {
         return var_1871;
      }
      
      public function get isVIP() : Boolean
      {
         return var_1873;
      }
      
      public function set isVIP(param1:Boolean) : void
      {
         var_1873 = param1;
      }
      
      public function set credits(param1:int) : void
      {
         var_1871 = param1;
      }
      
      public function set clubPeriods(param1:int) : void
      {
         var_1448 = param1;
      }
   }
}
