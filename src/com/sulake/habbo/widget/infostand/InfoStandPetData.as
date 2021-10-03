package com.sulake.habbo.widget.infostand
{
   import com.sulake.habbo.widget.events.RoomWidgetPetInfoUpdateEvent;
   import flash.display.BitmapData;
   
   public class InfoStandPetData
   {
       
      
      private var var_1650:int;
      
      private var var_1773:int;
      
      private var var_1781:int;
      
      private var _type:int;
      
      private var var_1224:int = -1;
      
      private var var_1778:int;
      
      private var _nutrition:int;
      
      private var var_1776:int;
      
      private var _energy:int;
      
      private var var_1787:int;
      
      private var var_1780:int;
      
      private var var_1774:int;
      
      private var var_1775:int;
      
      private var _petRespect:int;
      
      private var _canOwnerBeKicked:Boolean;
      
      private var _image:BitmapData;
      
      private var _ownerName:String;
      
      private var var_1772:Boolean;
      
      private var _name:String = "";
      
      private var var_1779:int;
      
      public function InfoStandPetData()
      {
         super();
      }
      
      public function get isOwnPet() : Boolean
      {
         return var_1772;
      }
      
      public function get level() : int
      {
         return var_1650;
      }
      
      public function get energy() : int
      {
         return _energy;
      }
      
      public function get nutrition() : int
      {
         return _nutrition;
      }
      
      public function get name() : String
      {
         return _name;
      }
      
      public function get experienceMax() : int
      {
         return var_1776;
      }
      
      public function get id() : int
      {
         return var_1224;
      }
      
      public function get nutritionMax() : int
      {
         return var_1781;
      }
      
      public function get ownerId() : int
      {
         return var_1779;
      }
      
      public function method_2(param1:RoomWidgetPetInfoUpdateEvent) : void
      {
         _name = param1.name;
         var_1224 = param1.id;
         _type = param1.petType;
         var_1787 = param1.petRace;
         _image = param1.image;
         var_1772 = param1.isOwnPet;
         var_1779 = param1.ownerId;
         _ownerName = param1.ownerName;
         _canOwnerBeKicked = param1.canOwnerBeKicked;
         var_1650 = param1.level;
         var_1778 = param1.levelMax;
         var_1773 = param1.experience;
         var_1776 = param1.experienceMax;
         _energy = param1.energy;
         var_1780 = param1.energyMax;
         _nutrition = param1.nutrition;
         var_1781 = param1.nutritionMax;
         _petRespect = param1.petRespect;
         var_1774 = param1.roomIndex;
         var_1775 = param1.age;
      }
      
      public function get roomIndex() : int
      {
         return var_1774;
      }
      
      public function get type() : int
      {
         return _type;
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
      
      public function get race() : int
      {
         return var_1787;
      }
      
      public function get image() : BitmapData
      {
         return _image;
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
      
      public function get age() : int
      {
         return var_1775;
      }
   }
}
