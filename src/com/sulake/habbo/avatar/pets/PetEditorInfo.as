package com.sulake.habbo.avatar.pets
{
   public class PetEditorInfo
   {
       
      
      private var var_1618:Boolean;
      
      private var var_1619:Boolean;
      
      public function PetEditorInfo(param1:XML)
      {
         super();
         var_1618 = Boolean(parseInt(param1.@club));
         var_1619 = Boolean(parseInt(param1.@selectable));
      }
      
      public function get isClub() : Boolean
      {
         return var_1618;
      }
      
      public function get isSelectable() : Boolean
      {
         return var_1619;
      }
   }
}
