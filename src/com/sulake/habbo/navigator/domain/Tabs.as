package com.sulake.habbo.navigator.domain
{
   import com.sulake.habbo.navigator.HabboNavigator;
   import com.sulake.habbo.navigator.mainview.MainViewCtrl;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.EventsTabPageDecorator;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.MyRoomsTabPageDecorator;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.OfficialTabPageDecorator;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.RoomsTabPageDecorator;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.SearchTabPageDecorator;
   
   public class Tabs
   {
      
      public static const const_702:int = 6;
      
      public static const const_201:int = 5;
      
      public static const const_740:int = 2;
      
      public static const const_325:int = 9;
      
      public static const const_321:int = 4;
      
      public static const const_255:int = 2;
      
      public static const const_605:int = 4;
      
      public static const const_217:int = 8;
      
      public static const const_532:int = 7;
      
      public static const const_271:int = 3;
      
      public static const const_327:int = 1;
      
      public static const const_192:int = 5;
      
      public static const const_372:int = 12;
      
      public static const const_333:int = 1;
      
      public static const const_499:int = 11;
      
      public static const const_578:int = 3;
      
      public static const const_1502:int = 10;
       
      
      private var _navigator:HabboNavigator;
      
      private var var_445:Array;
      
      public function Tabs(param1:HabboNavigator)
      {
         super();
         _navigator = param1;
         var_445 = new Array();
         var_445.push(new Tab(_navigator,const_327,const_372,new EventsTabPageDecorator(_navigator),MainViewCtrl.const_369));
         var_445.push(new Tab(_navigator,const_255,const_333,new RoomsTabPageDecorator(_navigator),MainViewCtrl.const_369));
         var_445.push(new Tab(_navigator,const_321,const_499,new OfficialTabPageDecorator(_navigator),MainViewCtrl.const_813));
         var_445.push(new Tab(_navigator,const_271,const_201,new MyRoomsTabPageDecorator(_navigator),MainViewCtrl.const_369));
         var_445.push(new Tab(_navigator,const_192,const_217,new SearchTabPageDecorator(_navigator),MainViewCtrl.const_498));
         setSelectedTab(const_327);
      }
      
      public function getSelected() : Tab
      {
         var _loc1_:* = null;
         for each(_loc1_ in var_445)
         {
            if(_loc1_.selected)
            {
               return _loc1_;
            }
         }
         return null;
      }
      
      public function getTab(param1:int) : Tab
      {
         var _loc2_:* = null;
         for each(_loc2_ in var_445)
         {
            if(_loc2_.id == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      private function clearSelected() : void
      {
         var _loc1_:* = null;
         for each(_loc1_ in var_445)
         {
            _loc1_.selected = false;
         }
      }
      
      public function onFrontPage() : Boolean
      {
         return this.getSelected().id == const_321;
      }
      
      public function get tabs() : Array
      {
         return var_445;
      }
      
      public function setSelectedTab(param1:int) : void
      {
         this.clearSelected();
         getTab(param1).selected = true;
      }
   }
}
