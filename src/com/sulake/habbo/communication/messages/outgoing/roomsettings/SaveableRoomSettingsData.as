package com.sulake.habbo.communication.messages.outgoing.roomsettings
{
   public class SaveableRoomSettingsData
   {
       
      
      private var _password:String;
      
      private var var_2052:int;
      
      private var var_1960:int;
      
      private var var_2051:Boolean;
      
      private var var_2050:Boolean;
      
      private var var_2049:Array;
      
      private var var_1959:Boolean;
      
      private var var_1125:int;
      
      private var _name:String;
      
      private var _roomId:int;
      
      private var var_636:Array;
      
      private var var_1178:String;
      
      public function SaveableRoomSettingsData()
      {
         super();
      }
      
      public function get doorMode() : int
      {
         return var_1960;
      }
      
      public function get description() : String
      {
         return var_1178;
      }
      
      public function get allowFoodConsume() : Boolean
      {
         return var_2050;
      }
      
      public function get maximumVisitors() : int
      {
         return var_2052;
      }
      
      public function set description(param1:String) : void
      {
         var_1178 = param1;
      }
      
      public function get password() : String
      {
         return _password;
      }
      
      public function set allowPets(param1:Boolean) : void
      {
         var_1959 = param1;
      }
      
      public function set maximumVisitors(param1:int) : void
      {
         var_2052 = param1;
      }
      
      public function get name() : String
      {
         return _name;
      }
      
      public function get categoryId() : int
      {
         return var_1125;
      }
      
      public function get roomId() : int
      {
         return _roomId;
      }
      
      public function get controllers() : Array
      {
         return var_2049;
      }
      
      public function get tags() : Array
      {
         return var_636;
      }
      
      public function get allowPets() : Boolean
      {
         return var_1959;
      }
      
      public function set doorMode(param1:int) : void
      {
         var_1960 = param1;
      }
      
      public function set name(param1:String) : void
      {
         _name = param1;
      }
      
      public function set allowWalkThrough(param1:Boolean) : void
      {
         var_2051 = param1;
      }
      
      public function set tags(param1:Array) : void
      {
         var_636 = param1;
      }
      
      public function set roomId(param1:int) : void
      {
         _roomId = param1;
      }
      
      public function set controllers(param1:Array) : void
      {
         var_2049 = param1;
      }
      
      public function set categoryId(param1:int) : void
      {
         var_1125 = param1;
      }
      
      public function get allowWalkThrough() : Boolean
      {
         return var_2051;
      }
      
      public function set password(param1:String) : void
      {
         _password = param1;
      }
      
      public function set allowFoodConsume(param1:Boolean) : void
      {
         var_2050 = param1;
      }
   }
}
