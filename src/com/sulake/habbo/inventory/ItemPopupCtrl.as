package com.sulake.habbo.inventory
{
   import com.sulake.core.assets.BitmapDataAsset;
   import com.sulake.core.assets.IAssetLibrary;
   import com.sulake.core.window.IWindowContainer;
   import com.sulake.core.window.components.IBitmapWrapperWindow;
   import com.sulake.core.window.components.ITextWindow;
   import flash.display.BitmapData;
   import flash.events.TimerEvent;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.utils.Timer;
   
   public class ItemPopupCtrl
   {
      
      private static const const_1064:int = 100;
      
      private static const const_1066:int = 200;
      
      private static const const_1067:int = 180;
      
      public static const const_906:int = 1;
      
      public static const const_387:int = 2;
      
      private static const const_1065:int = 250;
      
      private static const const_759:int = 5;
       
      
      private var var_581:BitmapData;
      
      private var var_297:Timer;
      
      private var var_8:IWindowContainer;
      
      private var var_691:BitmapData;
      
      private var var_296:Timer;
      
      private var var_68:IWindowContainer;
      
      private var var_1447:int = 2;
      
      private var _assets:IAssetLibrary;
      
      public function ItemPopupCtrl(param1:IWindowContainer, param2:IAssetLibrary)
      {
         var_296 = new Timer(const_1065,1);
         var_297 = new Timer(const_1064,1);
         super();
         if(param1 == null)
         {
            return;
         }
         if(param2 == null)
         {
            return;
         }
         var_68 = param1;
         var_68.visible = false;
         _assets = param2;
         var_296.addEventListener(TimerEvent.TIMER,onDisplayTimer);
         var_297.addEventListener(TimerEvent.TIMER,onHideTimer);
         var _loc3_:BitmapDataAsset = _assets.getAssetByName("popup_arrow_right_png") as BitmapDataAsset;
         if(_loc3_ != null && _loc3_.content != null)
         {
            var_691 = _loc3_.content as BitmapData;
         }
         _loc3_ = _assets.getAssetByName("popup_arrow_left_png") as BitmapDataAsset;
         if(_loc3_ != null && _loc3_.content != null)
         {
            var_581 = _loc3_.content as BitmapData;
         }
      }
      
      public function hide() : void
      {
         var_68.visible = false;
         var_297.reset();
         var_296.reset();
         if(var_8 != null)
         {
            var_8.removeChild(var_68);
         }
      }
      
      public function hideDelayed() : void
      {
         var_297.reset();
         var_296.reset();
         var_297.start();
      }
      
      private function onHideTimer(param1:TimerEvent) : void
      {
         hide();
      }
      
      public function dispose() : void
      {
         if(var_296 != null)
         {
            var_296.removeEventListener(TimerEvent.TIMER,onDisplayTimer);
            var_296.stop();
            var_296 = null;
         }
         if(var_297 != null)
         {
            var_297.removeEventListener(TimerEvent.TIMER,onHideTimer);
            var_297.stop();
            var_297 = null;
         }
         _assets = null;
         var_68 = null;
         var_8 = null;
         var_581 = null;
         var_691 = null;
      }
      
      public function showDelayed() : void
      {
         var_297.reset();
         var_296.reset();
         var_296.start();
      }
      
      private function onDisplayTimer(param1:TimerEvent) : void
      {
         show();
      }
      
      public function updateContent(param1:IWindowContainer, param2:String, param3:BitmapData, param4:int = 2) : void
      {
         var _loc7_:* = null;
         if(var_68 == null)
         {
            return;
         }
         if(param1 == null)
         {
            return;
         }
         if(param3 == null)
         {
            param3 = new BitmapData(1,1,true,16777215);
         }
         if(var_8 != null)
         {
            var_8.removeChild(var_68);
         }
         var_8 = param1;
         var_1447 = param4;
         var _loc5_:ITextWindow = ITextWindow(var_68.findChildByName("item_name_text"));
         if(_loc5_)
         {
            _loc5_.text = param2;
         }
         var _loc6_:IBitmapWrapperWindow = var_68.findChildByName("item_image") as IBitmapWrapperWindow;
         if(_loc6_)
         {
            _loc7_ = new BitmapData(Math.min(const_1067,param3.width),Math.min(const_1066,param3.height),true,16777215);
            _loc7_.copyPixels(param3,new Rectangle(0,0,_loc7_.width,_loc7_.height),new Point(0,0),null,null,true);
            _loc6_.bitmap = _loc7_;
            _loc6_.width = _loc6_.bitmap.width;
            _loc6_.height = _loc6_.bitmap.height;
            _loc6_.x = (0 - _loc6_.width) / 2;
            var_68.height = _loc6_.rectangle.bottom + 10;
         }
      }
      
      private function refreshArrow(param1:int = 2) : void
      {
         if(var_68 == null || false)
         {
            return;
         }
         var _loc2_:IBitmapWrapperWindow = IBitmapWrapperWindow(var_68.findChildByName("arrow_pointer"));
         if(!_loc2_)
         {
            return;
         }
         switch(param1)
         {
            case const_906:
               _loc2_.bitmap = var_691.clone();
               _loc2_.width = var_691.width;
               _loc2_.height = var_691.height;
               _loc2_.y = (0 - 0) / 2;
               _loc2_.x = -1;
               break;
            case const_387:
               _loc2_.bitmap = var_581.clone();
               _loc2_.width = var_581.width;
               _loc2_.height = var_581.height;
               _loc2_.y = (0 - 0) / 2;
               _loc2_.x = 1;
         }
         _loc2_.invalidate();
      }
      
      public function show() : void
      {
         var_297.reset();
         var_296.reset();
         if(var_8 == null)
         {
            return;
         }
         var_68.visible = true;
         var_8.addChild(var_68);
         refreshArrow(var_1447);
         switch(var_1447)
         {
            case const_906:
               var_68.x = 0 - const_759;
               break;
            case const_387:
               var_68.x = var_8.width + const_759;
         }
         var_68.y = (0 - 0) / 2;
      }
   }
}
