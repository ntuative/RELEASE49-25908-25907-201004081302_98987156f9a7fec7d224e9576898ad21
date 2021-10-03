package com.sulake.habbo.communication.messages.outgoing.tracking
{
   import com.sulake.core.communication.messages.IMessageComposer;
   
   public class PerformanceLogMessageComposer implements IMessageComposer
   {
       
      
      private var var_1067:int = 0;
      
      private var var_1199:int = 0;
      
      private var var_1858:String = "";
      
      private var var_1066:int = 0;
      
      private var var_1854:String = "";
      
      private var var_1853:int = 0;
      
      private var var_1539:String = "";
      
      private var var_1856:int = 0;
      
      private var var_1852:int = 0;
      
      private var var_1855:String = "";
      
      private var var_1857:int = 0;
      
      public function PerformanceLogMessageComposer(param1:int, param2:String, param3:String, param4:String, param5:String, param6:Boolean, param7:int, param8:int, param9:int, param10:int, param11:int)
      {
         super();
         var_1856 = param1;
         var_1855 = param2;
         var_1539 = param3;
         var_1858 = param4;
         var_1854 = param5;
         if(param6)
         {
            var_1199 = 1;
         }
         else
         {
            var_1199 = 0;
         }
         var_1853 = param7;
         var_1852 = param8;
         var_1066 = param9;
         var_1857 = param10;
         var_1067 = param11;
      }
      
      public function getMessageArray() : Array
      {
         return [var_1856,var_1855,var_1539,var_1858,var_1854,var_1199,var_1853,var_1852,var_1066,var_1857,var_1067];
      }
      
      public function dispose() : void
      {
      }
   }
}
