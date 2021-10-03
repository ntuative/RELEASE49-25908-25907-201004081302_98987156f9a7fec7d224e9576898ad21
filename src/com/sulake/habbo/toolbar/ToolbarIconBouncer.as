package com.sulake.habbo.toolbar
{
   public class ToolbarIconBouncer
   {
       
      
      private var var_2113:Number;
      
      private var var_610:Number = 0;
      
      private var var_2114:Number;
      
      private var var_609:Number;
      
      public function ToolbarIconBouncer(param1:Number, param2:Number)
      {
         super();
         var_2113 = param1;
         var_2114 = param2;
      }
      
      public function update() : void
      {
         var_609 += var_2114;
         var_610 += var_609;
         if(var_610 > 0)
         {
            var_610 = 0;
            var_609 = var_2113 * -1 * var_609;
         }
      }
      
      public function reset(param1:int) : void
      {
         var_609 = param1;
         var_610 = 0;
      }
      
      public function get location() : Number
      {
         return var_610;
      }
   }
}
