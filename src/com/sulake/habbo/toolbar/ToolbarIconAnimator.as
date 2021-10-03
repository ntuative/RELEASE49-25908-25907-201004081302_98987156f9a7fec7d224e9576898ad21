package com.sulake.habbo.toolbar
{
   import com.sulake.core.assets.BitmapDataAsset;
   import com.sulake.core.assets.IAssetLibrary;
   import com.sulake.core.window.components.IBitmapWrapperWindow;
   import flash.display.BitmapData;
   import flash.geom.Point;
   
   public class ToolbarIconAnimator
   {
       
      
      private var var_1206:Boolean;
      
      private var var_833:BitmapData;
      
      private var var_31:String;
      
      private var var_1252:String;
      
      private var var_834:Array;
      
      private var var_51:int;
      
      private var var_832:Array;
      
      private var var_2312:Number;
      
      private var var_2313:Number;
      
      private var var_694:int;
      
      public function ToolbarIconAnimator(param1:StateItem, param2:IAssetLibrary, param3:IBitmapWrapperWindow, param4:Number, param5:Number, param6:BitmapData = null)
      {
         var _loc7_:* = null;
         var _loc8_:* = null;
         var _loc10_:int = 0;
         var _loc11_:* = null;
         super();
         if(param1 == null || param2 == null || param3 == null)
         {
            return;
         }
         var_2312 = param4;
         var_2313 = param5;
         var_51 = 0;
         var_694 = 0;
         var_834 = new Array();
         var_832 = new Array();
         var_31 = param1.id;
         var_1252 = param1.nextState;
         var_1206 = param1.loop;
         if(param1.background != null)
         {
            var_833 = getBitmapDataFromAsset(param1.background,param2);
         }
         var _loc9_:XMLList = param1.frames;
         if(_loc9_.length() > 0)
         {
            _loc10_ = 0;
            while(_loc10_ < _loc9_.length())
            {
               _loc11_ = _loc9_[_loc10_];
               _loc7_ = "icon_" + param1.nameBase + "_" + _loc11_.@id;
               _loc11_.@assetName = _loc7_;
               _loc8_ = getBitmapDataFromAsset(_loc7_,param2);
               if(_loc8_ != null)
               {
                  var_834.push(_loc11_);
                  var_832.push(_loc8_);
               }
               _loc10_++;
            }
         }
         else
         {
            _loc7_ = "icon_" + param1.nameBase + "_0";
            _loc8_ = getBitmapDataFromAsset(_loc7_,param2);
            if(_loc8_ != null)
            {
               var_834.push(new XML());
               var_832.push(_loc8_);
            }
         }
         if(param6 != null)
         {
            var_832[var_51] = param6.clone();
         }
         updateAssetInWindow(param3);
      }
      
      public function update(param1:IBitmapWrapperWindow) : void
      {
         if(var_1206 == true || var_694 == 0)
         {
            if(false)
            {
               ++var_51;
               if(var_51 >= var_834.length)
               {
                  var_51 = 0;
                  ++var_694;
               }
            }
            if(var_1206 == true || var_694 == 0)
            {
               updateAssetInWindow(param1);
            }
         }
      }
      
      public function get nextState() : String
      {
         return var_1252;
      }
      
      public function get frameCount() : int
      {
         return var_834.length;
      }
      
      public function hasNextState() : Boolean
      {
         return var_1206 == false && var_694 == 1 && var_1252 != var_31;
      }
      
      private function setAsset(param1:IBitmapWrapperWindow, param2:BitmapData) : void
      {
         var _loc3_:* = null;
         if(var_833 != null)
         {
            _loc3_ = new BitmapData(Math.max(param2.width,var_833.width),Math.max(param2.height,var_833.height));
            _loc3_.copyPixels(var_833,var_833.rect,new Point(0,0));
            _loc3_.copyPixels(param2,param2.rect,new Point((_loc3_.width - param2.width) / 2,(_loc3_.height - param2.height) / 2),null,null,true);
         }
         else
         {
            _loc3_ = param2.clone();
         }
         param1.width = _loc3_.width;
         param1.height = _loc3_.height;
         param1.bitmap = _loc3_;
      }
      
      private function getBitmapDataFromAsset(param1:String, param2:IAssetLibrary) : BitmapData
      {
         var _loc3_:* = null;
         var _loc4_:* = null;
         if(param2.hasAsset(param1))
         {
            _loc3_ = param2.getAssetByName(param1) as BitmapDataAsset;
            if(_loc3_ != null)
            {
               return (_loc3_.content as BitmapData).clone();
            }
         }
         return null;
      }
      
      private function updateAssetInWindow(param1:IBitmapWrapperWindow) : void
      {
         var _loc2_:* = null;
         if(var_51 <= var_832.length)
         {
            _loc2_ = var_832[var_51];
            if(_loc2_ != null && param1 != null && _loc2_ is BitmapData)
            {
               setAsset(param1,_loc2_);
            }
         }
      }
   }
}
