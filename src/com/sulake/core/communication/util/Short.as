package com.sulake.core.communication.util
{
   import flash.utils.ByteArray;
   
   public class Short
   {
       
      
      private var var_718:ByteArray;
      
      public function Short(param1:int)
      {
         super();
         var_718 = new ByteArray();
         var_718.writeShort(param1);
         var_718.position = 0;
      }
      
      public function get value() : int
      {
         var _loc1_:int = 0;
         var_718.position = 0;
         if(false)
         {
            _loc1_ = var_718.readShort();
            var_718.position = 0;
         }
         return _loc1_;
      }
   }
}
