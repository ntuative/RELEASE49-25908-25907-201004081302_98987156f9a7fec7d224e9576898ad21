package com.sulake.core.assets
{
   import flash.media.Sound;
   import flash.utils.ByteArray;
   
   public class SoundAsset implements IAsset
   {
       
      
      private var var_19:Sound = null;
      
      private var _disposed:Boolean = false;
      
      private var var_1185:AssetTypeDeclaration;
      
      private var var_942:String;
      
      public function SoundAsset(param1:AssetTypeDeclaration, param2:String = null)
      {
         super();
         var_1185 = param1;
         var_942 = param2;
      }
      
      public function get declaration() : AssetTypeDeclaration
      {
         return var_1185;
      }
      
      public function get disposed() : Boolean
      {
         return _disposed;
      }
      
      public function setParamsDesc(param1:XMLList) : void
      {
      }
      
      public function get url() : String
      {
         return var_942;
      }
      
      public function setUnknownContent(param1:Object) : void
      {
         if(param1 is Sound)
         {
            if(var_19)
            {
               var_19.close();
            }
            var_19 = param1 as Sound;
            return;
         }
         if(param1 is ByteArray)
         {
         }
         if(param1 is Class)
         {
            if(var_19)
            {
               var_19.close();
            }
            var_19 = new param1() as Sound;
            return;
         }
         if(param1 is SoundAsset)
         {
            if(var_19)
            {
               var_19.close();
            }
            var_19 = SoundAsset(param1).var_19;
            return;
         }
      }
      
      public function get content() : Object
      {
         return var_19 as Object;
      }
      
      public function setFromOtherAsset(param1:IAsset) : void
      {
         if(param1 is SoundAsset)
         {
            var_19 = SoundAsset(param1).var_19;
         }
      }
      
      public function dispose() : void
      {
         if(!_disposed)
         {
            _disposed = true;
            var_19 = null;
            var_1185 = null;
            var_942 = null;
         }
      }
   }
}
