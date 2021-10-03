package com.sulake.room.object.visualization
{
   import flash.display.BitmapData;
   import flash.display.BlendMode;
   import flash.geom.Point;
   
   public final class RoomObjectSprite implements IRoomObjectSprite
   {
      
      private static var var_1176:int = 0;
       
      
      private var _updateID:int = 0;
      
      private var var_1783:Boolean = false;
      
      private var var_1175:String;
      
      private var var_1239:String = "";
      
      private var var_1785:int = 0;
      
      private var var_351:Boolean = true;
      
      private var _height:int = 0;
      
      private var var_1784:int = 255;
      
      private var _color:int = 16777215;
      
      private var var_994:Boolean = false;
      
      private var var_993:Boolean = false;
      
      private var var_1782:Boolean = false;
      
      private var _offset:Point;
      
      private var var_1786:Boolean = true;
      
      private var var_1092:Number = 0;
      
      private var _width:int = 0;
      
      private var var_1759:String = "";
      
      private var var_876:BitmapData = null;
      
      public function RoomObjectSprite()
      {
         var_1175 = BlendMode.NORMAL;
         _offset = new Point(0,0);
         super();
         var_1785 = var_1176++;
      }
      
      public function set flipV(param1:Boolean) : void
      {
         var_993 = param1;
         ++_updateID;
      }
      
      public function set clickHandling(param1:Boolean) : void
      {
         var_1782 = param1;
         ++_updateID;
      }
      
      public function dispose() : void
      {
         var_876 = null;
         _width = 0;
         _height = 0;
      }
      
      public function get offsetX() : int
      {
         return _offset.x;
      }
      
      public function get offsetY() : int
      {
         return _offset.y;
      }
      
      public function get height() : int
      {
         return _height;
      }
      
      public function set blendMode(param1:String) : void
      {
         var_1175 = param1;
         ++_updateID;
      }
      
      public function set tag(param1:String) : void
      {
         var_1759 = param1;
         ++_updateID;
      }
      
      public function set assetName(param1:String) : void
      {
         var_1239 = param1;
         ++_updateID;
      }
      
      public function get varyingDepth() : Boolean
      {
         return var_1783;
      }
      
      public function set offsetX(param1:int) : void
      {
         _offset.x = param1;
         ++_updateID;
      }
      
      public function set offsetY(param1:int) : void
      {
         _offset.y = param1;
         ++_updateID;
      }
      
      public function get relativeDepth() : Number
      {
         return var_1092;
      }
      
      public function get color() : int
      {
         return _color;
      }
      
      public function get alpha() : int
      {
         return var_1784;
      }
      
      public function set capturesMouse(param1:Boolean) : void
      {
         var_1786 = param1;
         ++_updateID;
      }
      
      public function get visible() : Boolean
      {
         return var_351;
      }
      
      public function set varyingDepth(param1:Boolean) : void
      {
         var_1783 = param1;
         ++_updateID;
      }
      
      public function get flipH() : Boolean
      {
         return var_994;
      }
      
      public function get flipV() : Boolean
      {
         return var_993;
      }
      
      public function get clickHandling() : Boolean
      {
         return var_1782;
      }
      
      public function get blendMode() : String
      {
         return var_1175;
      }
      
      public function get instanceId() : int
      {
         return var_1785;
      }
      
      public function get tag() : String
      {
         return var_1759;
      }
      
      public function get assetName() : String
      {
         return var_1239;
      }
      
      public function set relativeDepth(param1:Number) : void
      {
         var_1092 = param1;
         ++_updateID;
      }
      
      public function get capturesMouse() : Boolean
      {
         return var_1786;
      }
      
      public function set alpha(param1:int) : void
      {
         param1 &= 255;
         var_1784 = param1;
         ++_updateID;
      }
      
      public function get width() : int
      {
         return _width;
      }
      
      public function get updateId() : int
      {
         return _updateID;
      }
      
      public function set color(param1:int) : void
      {
         param1 &= 16777215;
         _color = param1;
         ++_updateID;
      }
      
      public function set asset(param1:BitmapData) : void
      {
         if(param1 != null)
         {
            _width = param1.width;
            _height = param1.height;
         }
         var_876 = param1;
         ++_updateID;
      }
      
      public function set visible(param1:Boolean) : void
      {
         var_351 = param1;
         ++_updateID;
      }
      
      public function get asset() : BitmapData
      {
         return var_876;
      }
      
      public function set flipH(param1:Boolean) : void
      {
         var_994 = param1;
         ++_updateID;
      }
   }
}
