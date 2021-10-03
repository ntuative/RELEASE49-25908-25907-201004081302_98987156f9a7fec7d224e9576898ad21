package com.sulake.habbo.room.utils
{
   public class RoomInstanceData
   {
       
      
      private var var_844:LegacyWallGeometry = null;
      
      private var var_591:SelectedRoomObjectData = null;
      
      private var _roomCategory:int = 0;
      
      private var var_593:TileHeightMap = null;
      
      private var var_1967:String = null;
      
      private var _roomId:int = 0;
      
      private var var_592:SelectedRoomObjectData = null;
      
      private var var_845:RoomCamera = null;
      
      public function RoomInstanceData(param1:int, param2:int)
      {
         super();
         _roomId = param1;
         _roomCategory = param2;
         var_844 = new LegacyWallGeometry();
         var_845 = new RoomCamera();
      }
      
      public function set selectedObject(param1:SelectedRoomObjectData) : void
      {
         if(var_591 != null)
         {
            var_591.dispose();
         }
         var_591 = param1;
      }
      
      public function set tileHeightMap(param1:TileHeightMap) : void
      {
         if(var_593 != null)
         {
            var_593.dispose();
         }
         var_593 = param1;
      }
      
      public function get roomId() : int
      {
         return _roomId;
      }
      
      public function set worldType(param1:String) : void
      {
         var_1967 = param1;
      }
      
      public function get legacyGeometry() : LegacyWallGeometry
      {
         return var_844;
      }
      
      public function get placedObject() : SelectedRoomObjectData
      {
         return var_592;
      }
      
      public function get roomCamera() : RoomCamera
      {
         return var_845;
      }
      
      public function dispose() : void
      {
         if(var_593 != null)
         {
            var_593.dispose();
            var_593 = null;
         }
         if(var_844 != null)
         {
            var_844.dispose();
            var_844 = null;
         }
         if(var_845 != null)
         {
            var_845.dispose();
            var_845 = null;
         }
         if(var_591 != null)
         {
            var_591.dispose();
            var_591 = null;
         }
         if(var_592 != null)
         {
            var_592.dispose();
            var_592 = null;
         }
      }
      
      public function get tileHeightMap() : TileHeightMap
      {
         return var_593;
      }
      
      public function get worldType() : String
      {
         return var_1967;
      }
      
      public function set placedObject(param1:SelectedRoomObjectData) : void
      {
         if(var_592 != null)
         {
            var_592.dispose();
         }
         var_592 = param1;
      }
      
      public function get roomCategory() : int
      {
         return _roomCategory;
      }
      
      public function get selectedObject() : SelectedRoomObjectData
      {
         return var_591;
      }
   }
}
