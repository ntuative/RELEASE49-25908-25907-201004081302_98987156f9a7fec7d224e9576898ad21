package com.sulake.core.assets
{
   import com.sulake.core.assets.loaders.IAssetLoader;
   import com.sulake.core.runtime.IDisposable;
   import com.sulake.core.runtime.events.EventDispatcher;
   
   public class AssetLoaderStruct extends EventDispatcher implements IDisposable
   {
       
      
      private var var_715:IAssetLoader;
      
      private var var_1239:String;
      
      public function AssetLoaderStruct(param1:String, param2:IAssetLoader)
      {
         super();
         var_1239 = param1;
         var_715 = param2;
      }
      
      public function get assetLoader() : IAssetLoader
      {
         return var_715;
      }
      
      override public function dispose() : void
      {
         if(!disposed)
         {
            if(var_715 != null)
            {
               if(true)
               {
                  var_715.dispose();
                  var_715 = null;
               }
            }
            super.dispose();
         }
      }
      
      public function get assetName() : String
      {
         return var_1239;
      }
   }
}
