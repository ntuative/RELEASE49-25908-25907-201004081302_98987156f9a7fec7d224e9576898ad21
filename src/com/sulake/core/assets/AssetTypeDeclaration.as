package com.sulake.core.assets
{
   public class AssetTypeDeclaration
   {
       
      
      private var var_1634:Class;
      
      private var var_1633:Class;
      
      private var var_1635:String;
      
      private var var_1122:Array;
      
      public function AssetTypeDeclaration(param1:String, param2:Class, param3:Class, ... rest)
      {
         super();
         var_1635 = param1;
         var_1633 = param2;
         var_1634 = param3;
         if(rest == null)
         {
            var_1122 = new Array();
         }
         else
         {
            var_1122 = rest;
         }
      }
      
      public function get loaderClass() : Class
      {
         return var_1634;
      }
      
      public function get assetClass() : Class
      {
         return var_1633;
      }
      
      public function get mimeType() : String
      {
         return var_1635;
      }
      
      public function get fileTypes() : Array
      {
         return var_1122;
      }
   }
}
