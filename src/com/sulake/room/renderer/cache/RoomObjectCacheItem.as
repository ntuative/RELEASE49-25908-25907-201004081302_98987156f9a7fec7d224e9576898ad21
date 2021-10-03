package com.sulake.room.renderer.cache
{
   public class RoomObjectCacheItem
   {
       
      
      private var var_610:RoomObjectLocationCacheItem = null;
      
      private var var_164:RoomObjectSortableSpriteCacheItem = null;
      
      public function RoomObjectCacheItem(param1:String)
      {
         super();
         var_610 = new RoomObjectLocationCacheItem(param1);
         var_164 = new RoomObjectSortableSpriteCacheItem();
      }
      
      public function get location() : RoomObjectLocationCacheItem
      {
         return var_610;
      }
      
      public function dispose() : void
      {
         if(var_610 != null)
         {
            var_610.dispose();
            var_610 = null;
         }
         if(var_164 != null)
         {
            var_164.dispose();
            var_164 = null;
         }
      }
      
      public function get sprites() : RoomObjectSortableSpriteCacheItem
      {
         return var_164;
      }
   }
}
