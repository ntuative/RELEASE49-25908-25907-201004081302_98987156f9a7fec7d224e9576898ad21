package com.sulake.room.renderer.utils
{
   public class ObjectMouseData
   {
       
      
      private var var_1673:String = "";
      
      private var var_149:String = "";
      
      public function ObjectMouseData()
      {
         super();
      }
      
      public function set spriteTag(param1:String) : void
      {
         var_1673 = param1;
      }
      
      public function set objectId(param1:String) : void
      {
         var_149 = param1;
      }
      
      public function get spriteTag() : String
      {
         return var_1673;
      }
      
      public function get objectId() : String
      {
         return var_149;
      }
   }
}
