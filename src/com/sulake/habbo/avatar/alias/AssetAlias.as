package com.sulake.habbo.avatar.alias
{
   public class AssetAlias
   {
       
      
      private var var_993:Boolean;
      
      private var _name:String;
      
      private var var_2019:String;
      
      private var var_994:Boolean;
      
      public function AssetAlias(param1:XML)
      {
         super();
         _name = String(param1.@name);
         var_2019 = String(param1.@link);
         var_994 = Boolean(parseInt(param1.@fliph));
         var_993 = Boolean(parseInt(param1.@flipv));
      }
      
      public function get flipH() : Boolean
      {
         return var_994;
      }
      
      public function get flipV() : Boolean
      {
         return var_993;
      }
      
      public function get name() : String
      {
         return _name;
      }
      
      public function get link() : String
      {
         return var_2019;
      }
   }
}
