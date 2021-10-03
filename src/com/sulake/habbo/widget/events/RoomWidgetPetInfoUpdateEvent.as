package com.sulake.habbo.widget.events
{
   import flash.display.BitmapData;
   
   public class RoomWidgetPetInfoUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_140:String = "RWPIUE_PET_INFO";
       
      
      private var var_1650:int;
      
      private var var_1773:int;
      
      private var var_1781:int;
      
      private var _nutrition:int;
      
      private var var_1776:int;
      
      private var var_1778:int;
      
      private var _energy:int;
      
      private var var_1042:int;
      
      private var var_1780:int;
      
      private var var_1774:int;
      
      private var var_1775:int;
      
      private var _id:int;
      
      private var _petRespect:int;
      
      private var _canOwnerBeKicked:Boolean;
      
      private var var_1777:int;
      
      private var _image:BitmapData;
      
      private var _ownerName:String;
      
      private var var_1772:Boolean;
      
      private var _name:String;
      
      private var var_477:int;
      
      private var var_1779:int;
      
      public function RoomWidgetPetInfoUpdateEvent(param1:int, param2:int, param3:String, param4:int, param5:BitmapData, param6:Boolean, param7:int, param8:String, param9:int, param10:Boolean = false, param11:Boolean = false)
      {
         super(RoomWidgetPetInfoUpdateEvent.const_140,param10,param11);
         var_1042 = param1;
         var_1777 = param2;
         _name = param3;
         _id = param4;
         _image = param5;
         var_1772 = param6;
         var_1779 = param7;
         _ownerName = param8;
         var_1774 = param9;
      }
      
      public function get isOwnPet() : Boolean
      {
         return var_1772;
      }
      
      public function get level() : int
      {
         return var_1650;
      }
      
      public function set levelMax(param1:int) : void
      {
         var_1778 = param1;
      }
      
      public function get energy() : int
      {
         return _energy;
      }
      
      public function set level(param1:int) : void
      {
         var_1650 = param1;
      }
      
      public function get petRace() : int
      {
         return var_1777;
      }
      
      public function set energy(param1:int) : void
      {
         _energy = param1;
      }
      
      public function get nutrition() : int
      {
         return _nutrition;
      }
      
      public function get name() : String
      {
         return _name;
      }
      
      public function set petRespectLeft(param1:int) : void
      {
         var_477 = param1;
      }
      
      public function get experienceMax() : int
      {
         return var_1776;
      }
      
      public function get id() : int
      {
         return _id;
      }
      
      public function get nutritionMax() : int
      {
         return var_1781;
      }
      
      public function get ownerId() : int
      {
         return var_1779;
      }
      
      public function set nutrition(param1:int) : void
      {
         _nutrition = param1;
      }
      
      public function set experienceMax(param1:int) : void
      {
         var_1776 = param1;
      }
      
      public function get roomIndex() : int
      {
         return var_1774;
      }
      
      public function get energyMax() : int
      {
         return var_1780;
      }
      
      public function get levelMax() : int
      {
         return var_1778;
      }
      
      public function get petRespect() : int
      {
         return _petRespect;
      }
      
      public function get petRespectLeft() : int
      {
         return var_477;
      }
      
      public function set canOwnerBeKicked(param1:Boolean) : void
      {
         _canOwnerBeKicked = param1;
      }
      
      public function set nutritionMax(param1:int) : void
      {
         var_1781 = param1;
      }
      
      public function get image() : BitmapData
      {
         return _image;
      }
      
      public function set petRespect(param1:int) : void
      {
         _petRespect = param1;
      }
      
      public function set experience(param1:int) : void
      {
         var_1773 = param1;
      }
      
      public function get ownerName() : String
      {
         return _ownerName;
      }
      
      public function get canOwnerBeKicked() : Boolean
      {
         return _canOwnerBeKicked;
      }
      
      public function get experience() : int
      {
         return var_1773;
      }
      
      public function set energyMax(param1:int) : void
      {
         var_1780 = param1;
      }
      
      public function get petType() : int
      {
         return var_1042;
      }
      
      public function set age(param1:int) : void
      {
         var_1775 = param1;
      }
      
      public function get age() : int
      {
         return var_1775;
      }
   }
}
