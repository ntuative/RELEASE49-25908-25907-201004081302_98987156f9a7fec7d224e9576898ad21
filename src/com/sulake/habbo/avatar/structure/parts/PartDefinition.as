package com.sulake.habbo.avatar.structure.parts
{
   public class PartDefinition
   {
       
      
      private var _removeSetType:String;
      
      private var var_1512:int = -1;
      
      private var var_1275:Boolean;
      
      private var var_1274:String;
      
      private var var_2053:String;
      
      public function PartDefinition(param1:XML)
      {
         super();
         var_2053 = String(param1["set-type"]);
         var_1274 = String(param1["flipped-set-type"]);
         _removeSetType = String(param1["remove-set-type"]);
         var_1275 = false;
      }
      
      public function hasStaticId() : Boolean
      {
         return var_1512 >= 0;
      }
      
      public function get flippedSetType() : String
      {
         return var_1274;
      }
      
      public function get staticId() : int
      {
         return var_1512;
      }
      
      public function set staticId(param1:int) : void
      {
         var_1512 = param1;
      }
      
      public function get appendToFigure() : Boolean
      {
         return var_1275;
      }
      
      public function set appendToFigure(param1:Boolean) : void
      {
         var_1275 = param1;
      }
      
      public function set flippedSetType(param1:String) : void
      {
         var_1274 = param1;
      }
      
      public function get setType() : String
      {
         return var_2053;
      }
      
      public function get removeSetType() : String
      {
         return _removeSetType;
      }
   }
}
