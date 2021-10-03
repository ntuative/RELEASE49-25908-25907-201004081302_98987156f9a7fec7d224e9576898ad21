package com.sulake.habbo.avatar.pets
{
   public class Breed extends PetEditorInfo implements IBreed
   {
       
      
      private var var_754:String;
      
      private var _id:int;
      
      private var var_1911:String = "";
      
      private var var_1910:int;
      
      private var var_1912:String;
      
      private var var_1697:Boolean;
      
      public function Breed(param1:XML)
      {
         super(param1);
         _id = parseInt(param1.@id);
         var_1910 = parseInt(param1.@pattern);
         var_754 = String(param1.@gender);
         var_1697 = Boolean(parseInt(param1.@colorable));
         var_1911 = String(param1.@localizationKey);
      }
      
      public function get id() : int
      {
         return _id;
      }
      
      public function get localizationKey() : String
      {
         return var_1911;
      }
      
      public function get isColorable() : Boolean
      {
         return var_1697;
      }
      
      public function get gender() : String
      {
         return var_754;
      }
      
      public function get patternId() : int
      {
         return var_1910;
      }
      
      public function get avatarFigureString() : String
      {
         return var_1912;
      }
      
      public function set avatarFigureString(param1:String) : void
      {
         var_1912 = param1;
      }
   }
}
