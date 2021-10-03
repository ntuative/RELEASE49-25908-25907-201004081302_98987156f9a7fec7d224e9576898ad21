package com.sulake.habbo.communication.messages.parser.moderation
{
   import flash.utils.getTimer;
   
   public class IssueMessageData
   {
      
      public static const const_144:int = 1;
      
      public static const const_1216:int = 3;
      
      public static const const_420:int = 2;
       
      
      private var var_1939:int;
      
      private var var_1943:int;
      
      private var var_1935:int;
      
      private var var_1940:int;
      
      private var var_31:int;
      
      private var var_410:int;
      
      private var var_1133:int;
      
      private var var_1850:int;
      
      private var var_1093:int;
      
      private var _roomResources:String;
      
      private var var_1647:int;
      
      private var var_1937:int;
      
      private var var_1941:String;
      
      private var var_1944:String;
      
      private var var_1942:int = 0;
      
      private var var_1364:String;
      
      private var _message:String;
      
      private var var_1938:int;
      
      private var var_1945:String;
      
      private var var_1125:int;
      
      private var var_701:String;
      
      private var var_1936:String;
      
      private var var_1418:int;
      
      public function IssueMessageData()
      {
         super();
      }
      
      public function set reportedUserId(param1:int) : void
      {
         var_1093 = param1;
      }
      
      public function set temporalPriority(param1:int) : void
      {
         var_1942 = param1;
      }
      
      public function get reporterUserId() : int
      {
         return var_1937;
      }
      
      public function set roomName(param1:String) : void
      {
         var_701 = param1;
      }
      
      public function set chatRecordId(param1:int) : void
      {
         var_1647 = param1;
      }
      
      public function get state() : int
      {
         return var_31;
      }
      
      public function get roomResources() : String
      {
         return _roomResources;
      }
      
      public function set roomResources(param1:String) : void
      {
         _roomResources = param1;
      }
      
      public function get roomName() : String
      {
         return var_701;
      }
      
      public function get message() : String
      {
         return _message;
      }
      
      public function set worldId(param1:int) : void
      {
         var_1940 = param1;
      }
      
      public function set state(param1:int) : void
      {
         var_31 = param1;
      }
      
      public function get unitPort() : int
      {
         return var_1943;
      }
      
      public function get priority() : int
      {
         return var_1939 + var_1942;
      }
      
      public function set issueId(param1:int) : void
      {
         var_1850 = param1;
      }
      
      public function get pickerUserName() : String
      {
         return var_1944;
      }
      
      public function getOpenTime() : String
      {
         var _loc1_:int = (getTimer() - var_1418) / 1000;
         var _loc2_:int = _loc1_ % 60;
         var _loc3_:int = _loc1_ / 60;
         var _loc4_:int = _loc3_ % 60;
         var _loc5_:int = _loc3_ / 60;
         var _loc6_:String = _loc2_ < 10 ? "0" + _loc2_ : "" + _loc2_;
         var _loc7_:String = _loc4_ < 10 ? "0" + _loc4_ : "" + _loc4_;
         var _loc8_:String = _loc5_ < 10 ? "0" + _loc5_ : "" + _loc5_;
         return _loc8_ + ":" + _loc7_ + ":" + _loc6_;
      }
      
      public function get categoryId() : int
      {
         return var_1125;
      }
      
      public function set reporterUserId(param1:int) : void
      {
         var_1937 = param1;
      }
      
      public function get roomType() : int
      {
         return var_1133;
      }
      
      public function set flatType(param1:String) : void
      {
         var_1941 = param1;
      }
      
      public function get chatRecordId() : int
      {
         return var_1647;
      }
      
      public function set message(param1:String) : void
      {
         _message = param1;
      }
      
      public function get worldId() : int
      {
         return var_1940;
      }
      
      public function set flatOwnerName(param1:String) : void
      {
         var_1936 = param1;
      }
      
      public function set reportedUserName(param1:String) : void
      {
         var_1364 = param1;
      }
      
      public function get issueId() : int
      {
         return var_1850;
      }
      
      public function set priority(param1:int) : void
      {
         var_1939 = param1;
      }
      
      public function set unitPort(param1:int) : void
      {
         var_1943 = param1;
      }
      
      public function get flatType() : String
      {
         return var_1941;
      }
      
      public function set reportedCategoryId(param1:int) : void
      {
         var_1935 = param1;
      }
      
      public function set pickerUserName(param1:String) : void
      {
         var_1944 = param1;
      }
      
      public function set pickerUserId(param1:int) : void
      {
         var_1938 = param1;
      }
      
      public function get reportedUserName() : String
      {
         return var_1364;
      }
      
      public function set roomType(param1:int) : void
      {
         var_1133 = param1;
      }
      
      public function get reportedCategoryId() : int
      {
         return var_1935;
      }
      
      public function set flatId(param1:int) : void
      {
         var_410 = param1;
      }
      
      public function set categoryId(param1:int) : void
      {
         var_1125 = param1;
      }
      
      public function set timeStamp(param1:int) : void
      {
         var_1418 = param1;
      }
      
      public function get pickerUserId() : int
      {
         return var_1938;
      }
      
      public function set reporterUserName(param1:String) : void
      {
         var_1945 = param1;
      }
      
      public function get timeStamp() : int
      {
         return var_1418;
      }
      
      public function get reportedUserId() : int
      {
         return var_1093;
      }
      
      public function get flatId() : int
      {
         return var_410;
      }
      
      public function get flatOwnerName() : String
      {
         return var_1936;
      }
      
      public function get reporterUserName() : String
      {
         return var_1945;
      }
   }
}
