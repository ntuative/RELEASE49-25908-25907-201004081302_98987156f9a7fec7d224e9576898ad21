package com.sulake.habbo.navigator.domain
{
   import com.sulake.habbo.communication.messages.incoming.navigator.FlatCategory;
   import com.sulake.habbo.communication.messages.incoming.navigator.GuestRoomData;
   import com.sulake.habbo.communication.messages.incoming.navigator.GuestRoomSearchResultData;
   import com.sulake.habbo.communication.messages.incoming.navigator.MsgWithRequestId;
   import com.sulake.habbo.communication.messages.incoming.navigator.OfficialRoomsData;
   import com.sulake.habbo.communication.messages.incoming.navigator.PopularRoomTagsData;
   import com.sulake.habbo.communication.messages.incoming.navigator.PublicRoomShortData;
   import com.sulake.habbo.communication.messages.incoming.navigator.RoomEventData;
   import com.sulake.habbo.communication.messages.parser.navigator.FavouritesMessageParser;
   import com.sulake.habbo.communication.messages.parser.navigator.NavigatorSettingsMessageParser;
   import com.sulake.habbo.communication.messages.parser.room.engine.RoomEntryInfoMessageParser;
   import com.sulake.habbo.navigator.HabboNavigator;
   import flash.utils.Dictionary;
   
   public class NavigatorData
   {
      
      private static const const_1407:int = 10;
       
      
      private var var_1401:NavigatorSettingsMessageParser;
      
      private var var_1124:int;
      
      private var var_1641:int;
      
      private var var_1642:Boolean;
      
      private var var_963:Array;
      
      private var var_775:Dictionary;
      
      private var var_962:Array;
      
      private var var_2300:int;
      
      private var var_1645:int;
      
      private var var_1646:int;
      
      private var var_1644:int;
      
      private var var_554:PublicRoomShortData;
      
      private var var_383:RoomEventData;
      
      private var var_119:MsgWithRequestId;
      
      private var var_1643:Boolean;
      
      private var _navigator:HabboNavigator;
      
      private var var_1640:Boolean;
      
      private var var_184:GuestRoomData;
      
      private var var_645:Boolean;
      
      private var _currentRoomOwner:Boolean;
      
      public function NavigatorData(param1:HabboNavigator)
      {
         var_963 = new Array();
         var_962 = new Array();
         var_775 = new Dictionary();
         super();
         _navigator = param1;
      }
      
      public function get createdFlatId() : int
      {
         return var_1641;
      }
      
      public function get eventMod() : Boolean
      {
         return var_1640;
      }
      
      public function startLoading() : void
      {
         this.var_645 = true;
      }
      
      public function isRoomFavourite(param1:int) : Boolean
      {
         return false;
      }
      
      public function set eventMod(param1:Boolean) : void
      {
         var_1640 = param1;
      }
      
      public function set roomEventData(param1:RoomEventData) : void
      {
         if(var_383 != null)
         {
            var_383.dispose();
         }
         var_383 = param1;
      }
      
      public function get popularTagsArrived() : Boolean
      {
         return var_119 != null && var_119 as PopularRoomTagsData != null;
      }
      
      public function get guestRoomSearchArrived() : Boolean
      {
         return var_119 != null && var_119 as GuestRoomSearchResultData != null;
      }
      
      public function get guestRoomSearchResults() : GuestRoomSearchResultData
      {
         return var_119 as GuestRoomSearchResultData;
      }
      
      public function get enteredGuestRoom() : GuestRoomData
      {
         return var_184;
      }
      
      public function get allCategories() : Array
      {
         return var_963;
      }
      
      public function onRoomExit() : void
      {
         if(var_383 != null)
         {
            var_383.dispose();
            var_383 = null;
         }
         if(var_554 != null)
         {
            var_554.dispose();
            var_554 = null;
         }
         if(var_184 != null)
         {
            var_184.dispose();
            var_184 = null;
         }
         _currentRoomOwner = false;
      }
      
      public function set officialRooms(param1:OfficialRoomsData) : void
      {
         disposeCurrentMsg();
         var_119 = param1;
         var_645 = false;
      }
      
      public function get settings() : NavigatorSettingsMessageParser
      {
         return var_1401;
      }
      
      public function set popularTags(param1:PopularRoomTagsData) : void
      {
         disposeCurrentMsg();
         var_119 = param1;
         var_645 = false;
      }
      
      public function onRoomEnter(param1:RoomEntryInfoMessageParser) : void
      {
         var_554 = null;
         var_184 = null;
         _currentRoomOwner = false;
         if(param1.guestRoom)
         {
            _currentRoomOwner = param1.owner;
         }
         else
         {
            var_554 = param1.publicSpace;
            var_383 = null;
         }
      }
      
      public function get currentRoomOwner() : Boolean
      {
         return _currentRoomOwner;
      }
      
      public function onFavourites(param1:FavouritesMessageParser) : void
      {
         var _loc2_:int = 0;
         this.var_2300 = param1.limit;
         this.var_1124 = param1.favouriteRoomIds.length;
         this.var_775 = new Dictionary();
         for each(_loc2_ in param1.favouriteRoomIds)
         {
            this.var_775[_loc2_] = "yes";
         }
      }
      
      public function get popularTags() : PopularRoomTagsData
      {
         return var_119 as PopularRoomTagsData;
      }
      
      public function get enteredPublicSpace() : PublicRoomShortData
      {
         return var_554;
      }
      
      public function get hotRoomPopupOpen() : Boolean
      {
         return var_1642;
      }
      
      public function set guestRoomSearchResults(param1:GuestRoomSearchResultData) : void
      {
         disposeCurrentMsg();
         var_119 = param1;
         var_645 = false;
      }
      
      public function set avatarId(param1:int) : void
      {
         var_1646 = param1;
      }
      
      public function get canEditRoomSettings() : Boolean
      {
         return var_184 != null && _currentRoomOwner;
      }
      
      public function isLoading() : Boolean
      {
         return this.var_645;
      }
      
      public function get visibleCategories() : Array
      {
         return var_962;
      }
      
      public function set categories(param1:Array) : void
      {
         var _loc2_:* = null;
         var_963 = param1;
         var_962 = new Array();
         for each(_loc2_ in var_963)
         {
            if(_loc2_.visible)
            {
               var_962.push(_loc2_);
            }
         }
      }
      
      public function get currentRoomRating() : int
      {
         return var_1645;
      }
      
      public function get publicSpaceNodeId() : int
      {
         return var_1644;
      }
      
      public function set settings(param1:NavigatorSettingsMessageParser) : void
      {
         var_1401 = param1;
      }
      
      private function disposeCurrentMsg() : void
      {
         if(var_119 == null)
         {
            return;
         }
         var_119.dispose();
         var_119 = null;
      }
      
      public function get roomEventData() : RoomEventData
      {
         return var_383;
      }
      
      public function favouriteChanged(param1:int, param2:Boolean) : void
      {
         var_775[param1] = !!param2 ? "yes" : null;
         var_1124 += !!param2 ? 1 : -1;
      }
      
      public function get officialRooms() : OfficialRoomsData
      {
         return var_119 as OfficialRoomsData;
      }
      
      public function get avatarId() : int
      {
         return var_1646;
      }
      
      public function isCurrentRoomFavourite() : Boolean
      {
         var _loc1_:int = 0;
         return false;
      }
      
      public function get officialRoomsArrived() : Boolean
      {
         return var_119 != null && var_119 as OfficialRoomsData != null;
      }
      
      public function set hotRoomPopupOpen(param1:Boolean) : void
      {
         var_1642 = param1;
      }
      
      public function set currentRoomRating(param1:int) : void
      {
         var_1645 = param1;
      }
      
      public function set hcMember(param1:Boolean) : void
      {
         var_1643 = param1;
      }
      
      public function set enteredRoom(param1:GuestRoomData) : void
      {
         if(var_184 != null)
         {
            var_184.dispose();
         }
         var_184 = param1;
      }
      
      public function isCurrentRoomHome() : Boolean
      {
         if(var_184 == null)
         {
            return false;
         }
         var _loc1_:int = 0;
         return this.var_1401.homeRoomId == _loc1_;
      }
      
      public function isFavouritesFull() : Boolean
      {
         return var_1124 >= var_2300;
      }
      
      public function set publicSpaceNodeId(param1:int) : void
      {
         var_1644 = param1;
      }
      
      public function get hcMember() : Boolean
      {
         return var_1643;
      }
      
      public function get canAddFavourite() : Boolean
      {
         return var_184 != null && !_currentRoomOwner;
      }
      
      public function set createdFlatId(param1:int) : void
      {
         var_1641 = param1;
      }
   }
}
