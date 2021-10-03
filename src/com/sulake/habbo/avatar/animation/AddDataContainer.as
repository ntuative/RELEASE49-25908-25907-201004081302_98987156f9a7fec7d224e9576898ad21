package com.sulake.habbo.avatar.animation
{
   public class AddDataContainer
   {
       
      
      private var var_1481:String;
      
      private var var_1522:String;
      
      private var var_1090:String;
      
      private var var_390:Number = 1;
      
      private var _id:String;
      
      public function AddDataContainer(param1:XML)
      {
         super();
         _id = String(param1.@id);
         var_1481 = String(param1.@align);
         var_1090 = String(param1.@base);
         var_1522 = String(param1.@ink);
         var _loc2_:String = String(param1.@blend);
         if(_loc2_.length > 0)
         {
            var_390 = Number(_loc2_);
            if(var_390 > 1)
            {
               var_390 /= 100;
            }
         }
      }
      
      public function get align() : String
      {
         return var_1481;
      }
      
      public function get ink() : String
      {
         return var_1522;
      }
      
      public function get base() : String
      {
         return var_1090;
      }
      
      public function get isBlended() : Boolean
      {
         return var_390 != 1;
      }
      
      public function get blend() : Number
      {
         return var_390;
      }
      
      public function get id() : String
      {
         return _id;
      }
   }
}
