package com.sulake.habbo.session.furniture
{
   public class FurnitureData implements IFurnitureData
   {
      
      public static const const_1485:String = "e";
      
      public static const const_1461:String = "i";
      
      public static const const_1478:String = "s";
       
      
      private var _id:int;
      
      private var _title:String;
      
      private var _type:String;
      
      private var var_1894:int;
      
      private var var_1357:Array;
      
      private var var_1895:int;
      
      private var var_1896:int;
      
      private var var_1892:int;
      
      private var _name:String;
      
      private var var_1893:int;
      
      private var var_1178:String;
      
      public function FurnitureData(param1:String, param2:int, param3:String, param4:int, param5:int, param6:int, param7:int, param8:int, param9:Array, param10:String, param11:String)
      {
         super();
         _type = param1;
         _id = param2;
         _name = param3;
         var_1894 = param4;
         var_1893 = param5;
         var_1895 = param6;
         var_1896 = param7;
         var_1892 = param8;
         var_1357 = param9;
         _title = param10;
         var_1178 = param11;
      }
      
      public function get tileSizeY() : int
      {
         return var_1896;
      }
      
      public function get tileSizeZ() : int
      {
         return var_1892;
      }
      
      public function get name() : String
      {
         return _name;
      }
      
      public function get type() : String
      {
         return _type;
      }
      
      public function get title() : String
      {
         return _title;
      }
      
      public function get revision() : int
      {
         return var_1893;
      }
      
      public function get id() : int
      {
         return _id;
      }
      
      public function get colourIndex() : int
      {
         return var_1894;
      }
      
      public function get tileSizeX() : int
      {
         return var_1895;
      }
      
      public function get colours() : Array
      {
         return var_1357;
      }
      
      public function get description() : String
      {
         return var_1178;
      }
   }
}
