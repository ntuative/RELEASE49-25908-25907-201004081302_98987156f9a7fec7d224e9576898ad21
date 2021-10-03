package com.sulake.habbo.navigator.mainview
{
   import com.sulake.core.assets.AssetLoaderStruct;
   import com.sulake.core.assets.loaders.AssetLoaderEvent;
   import com.sulake.core.runtime.IDisposable;
   import com.sulake.core.window.components.IBitmapWrapperWindow;
   import com.sulake.habbo.navigator.HabboNavigator;
   import flash.display.BitmapData;
   import flash.net.URLRequest;
   
   public class OfficialRoomImageLoader implements IDisposable
   {
       
      
      private var _disposed:Boolean;
      
      private var var_650:IBitmapWrapperWindow;
      
      private var var_942:String;
      
      private var var_781:String;
      
      private var _navigator:HabboNavigator;
      
      public function OfficialRoomImageLoader(param1:HabboNavigator, param2:String, param3:IBitmapWrapperWindow)
      {
         super();
         _navigator = param1;
         var_781 = param2;
         var_650 = param3;
         var _loc4_:String = _navigator.configuration.getKey("image.library.url");
         var_942 = _loc4_ + var_781;
         Logger.log("[OFFICIAL ROOM ICON IMAGE DOWNLOADER] : " + var_942);
      }
      
      private function onLoadError(param1:AssetLoaderEvent) : void
      {
         Logger.log("Error loading image: " + var_942 + ", " + param1);
         dispose();
      }
      
      public function dispose() : void
      {
         if(_disposed)
         {
            return;
         }
         _disposed = true;
         var_650 = null;
         _navigator = null;
      }
      
      private function onImageReady(param1:AssetLoaderEvent) : void
      {
         if(_disposed)
         {
            return;
         }
         var _loc2_:AssetLoaderStruct = param1.target as AssetLoaderStruct;
         if(_loc2_ == null)
         {
            Logger.log("Loading pic from url: " + var_942 + " failed. loaderStruct == null");
            return;
         }
         Logger.log("IMAGE READY: " + var_781 + ", " + _loc2_);
         setImage();
      }
      
      public function get disposed() : Boolean
      {
         return _disposed;
      }
      
      public function startLoad() : void
      {
         var _loc1_:* = null;
         var _loc2_:* = null;
         if(_navigator.assets.hasAsset(var_781))
         {
            setImage();
         }
         else
         {
            _loc1_ = new URLRequest(var_942);
            _loc2_ = _navigator.assets.loadAssetFromFile(var_781,_loc1_,"image/gif");
            _loc2_.addEventListener(AssetLoaderEvent.const_34,onImageReady);
            _loc2_.addEventListener(AssetLoaderEvent.const_44,onLoadError);
         }
      }
      
      private function setImage() : void
      {
         var _loc1_:BitmapData = _navigator.getButtonImage(var_781,"");
         var_650.bitmap = _loc1_;
         var_650.width = _loc1_.width;
         var_650.height = _loc1_.height;
         var_650.visible = true;
         dispose();
      }
   }
}
