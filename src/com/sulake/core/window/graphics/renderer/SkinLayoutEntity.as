package com.sulake.core.window.graphics.renderer
{
   import flash.geom.Rectangle;
   
   public class SkinLayoutEntity implements ISkinLayoutEntity
   {
      
      public static const const_250:uint = 1;
      
      public static const const_390:uint = 0;
      
      public static const const_968:uint = 8;
      
      public static const const_268:uint = 4;
      
      public static const const_473:uint = 2;
       
      
      private var var_390:uint;
      
      private var var_1770:uint;
      
      private var _color:uint;
      
      private var _name:String;
      
      private var var_1771:uint;
      
      private var var_94:Rectangle;
      
      private var var_636:Array;
      
      private var _id:uint;
      
      public function SkinLayoutEntity(param1:uint, param2:String, param3:Rectangle, param4:uint = 4.294967295E9, param5:uint = 100, param6:uint = 0, param7:uint = 0)
      {
         super();
         _id = param1;
         _name = param2;
         var_94 = param3;
         _color = param4;
         var_390 = param5;
         var_1770 = param6;
         var_1771 = param7;
         var_636 = new Array();
      }
      
      public function get scaleH() : uint
      {
         return var_1770;
      }
      
      public function get name() : String
      {
         return _name;
      }
      
      public function get blend() : uint
      {
         return var_390;
      }
      
      public function get scaleV() : uint
      {
         return var_1771;
      }
      
      public function get tags() : Array
      {
         return var_636;
      }
      
      public function get id() : uint
      {
         return _id;
      }
      
      public function dispose() : void
      {
         var_94 = null;
         var_636 = null;
      }
      
      public function get color() : uint
      {
         return _color;
      }
      
      public function get region() : Rectangle
      {
         return var_94;
      }
   }
}
