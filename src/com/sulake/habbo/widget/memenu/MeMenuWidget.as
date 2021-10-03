package com.sulake.habbo.widget.memenu
{
   import com.sulake.core.assets.IAssetLibrary;
   import com.sulake.core.window.IWindow;
   import com.sulake.core.window.IWindowContainer;
   import com.sulake.habbo.configuration.IHabboConfigurationManager;
   import com.sulake.habbo.localization.IHabboLocalizationManager;
   import com.sulake.habbo.widget.RoomWidgetBase;
   import com.sulake.habbo.widget.events.RoomWidgetAvatarActionUpdateEvent;
   import com.sulake.habbo.widget.events.RoomWidgetAvatarEditorUpdateEvent;
   import com.sulake.habbo.widget.events.RoomWidgetCreditBalanceUpdateEvent;
   import com.sulake.habbo.widget.events.RoomWidgetDanceUpdateEvent;
   import com.sulake.habbo.widget.events.RoomWidgetFrameUpdateEvent;
   import com.sulake.habbo.widget.events.RoomWidgetHabboClubUpdateEvent;
   import com.sulake.habbo.widget.events.RoomWidgetRoomObjectUpdateEvent;
   import com.sulake.habbo.widget.events.RoomWidgetSettingsUpdateEvent;
   import com.sulake.habbo.widget.events.RoomWidgetToolbarClickedUpdateEvent;
   import com.sulake.habbo.widget.events.RoomWidgetTutorialEvent;
   import com.sulake.habbo.widget.events.RoomWidgetUpdateEffectsUpdateEvent;
   import com.sulake.habbo.widget.events.RoomWidgetUserInfoUpdateEvent;
   import com.sulake.habbo.widget.events.RoomWidgetWaveUpdateEvent;
   import com.sulake.habbo.widget.memenu.enum.HabboMeMenuTrackingEvent;
   import com.sulake.habbo.widget.messages.RoomWidgetRequestWidgetMessage;
   import com.sulake.habbo.widget.messages.RoomWidgetSelectOutfitMessage;
   import com.sulake.habbo.widget.messages.RoomWidgetToolbarMessage;
   import com.sulake.habbo.window.IHabboWindowManager;
   import com.sulake.habbo.window.enum.HabboWindowParam;
   import com.sulake.habbo.window.enum.HabboWindowStyle;
   import com.sulake.habbo.window.enum.HabboWindowType;
   import flash.events.Event;
   import flash.events.IEventDispatcher;
   import flash.external.ExternalInterface;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class MeMenuWidget extends RoomWidgetBase
   {
      
      public static const const_551:String = "me_menu_settings_view";
      
      public static const const_554:String = "me_menu_effects_view";
      
      public static const const_125:String = "me_menu_top_view";
      
      public static const const_1335:String = "me_menu_rooms_view";
      
      public static const const_837:String = "me_menu_dance_moves_view";
      
      public static const const_331:String = "me_menu_my_clothes_view";
       
      
      private var var_1744:Boolean = false;
      
      private var var_420:Boolean = false;
      
      private var var_1421:int = 0;
      
      private var _eventDispatcher:IEventDispatcher;
      
      private var var_1422:int = 0;
      
      private var var_1746:int = 0;
      
      private var var_1747:Boolean = false;
      
      private var var_250:Boolean = false;
      
      private var var_1745:int = 0;
      
      private var var_1660:Number = 0;
      
      private var _mainContainer:IWindowContainer;
      
      private var var_564:Boolean = false;
      
      private var _config:IHabboConfigurationManager;
      
      private var var_1157:int = 0;
      
      private var var_1743:Boolean = false;
      
      private var var_980:Point;
      
      private var var_35:IMeMenuView;
      
      public function MeMenuWidget(param1:IHabboWindowManager, param2:IAssetLibrary, param3:IHabboLocalizationManager, param4:IEventDispatcher, param5:IHabboConfigurationManager)
      {
         super(param1,param2,param3);
         _config = param5;
         var_980 = new Point(0,0);
         _eventDispatcher = param4;
         if(param5 != null && false)
         {
            var_1743 = param5.getKey("client.news.embed.enabled","false") == "true";
         }
         changeView(const_125);
         hide();
      }
      
      override public function registerUpdateEvents(param1:IEventDispatcher) : void
      {
         if(param1 == null)
         {
            return;
         }
         param1.addEventListener(RoomWidgetWaveUpdateEvent.const_581,onWaveEvent);
         param1.addEventListener(RoomWidgetDanceUpdateEvent.const_704,onDanceEvent);
         param1.addEventListener(RoomWidgetUpdateEffectsUpdateEvent.const_531,onUpdateEffects);
         param1.addEventListener(RoomWidgetToolbarClickedUpdateEvent.const_540,onToolbarClicked);
         param1.addEventListener(RoomWidgetFrameUpdateEvent.const_323,onUpdate);
         param1.addEventListener(RoomWidgetAvatarEditorUpdateEvent.const_570,onAvatarEditorClosed);
         param1.addEventListener(RoomWidgetRoomObjectUpdateEvent.const_193,onAvatarDeselected);
         param1.addEventListener(RoomWidgetHabboClubUpdateEvent.const_206,onHabboClubEvent);
         param1.addEventListener(RoomWidgetAvatarActionUpdateEvent.const_661,onAvatarActionEvent);
         param1.addEventListener(RoomWidgetUserInfoUpdateEvent.const_219,onUserInfo);
         param1.addEventListener(RoomWidgetSettingsUpdateEvent.const_289,onSettingsUpdate);
         param1.addEventListener(RoomWidgetTutorialEvent.const_102,onTutorialEvent);
         param1.addEventListener(RoomWidgetTutorialEvent.const_449,onTutorialEvent);
         param1.addEventListener(RoomWidgetCreditBalanceUpdateEvent.const_172,onCreditBalance);
         super.registerUpdateEvents(param1);
      }
      
      private function onUpdate(param1:Event = null) : void
      {
         if(!var_420)
         {
            return;
         }
      }
      
      override public function get mainWindow() : IWindow
      {
         return _mainContainer;
      }
      
      public function get hasEffectOn() : Boolean
      {
         return var_564;
      }
      
      private function onSettingsUpdate(param1:RoomWidgetSettingsUpdateEvent) : void
      {
         if(!var_250)
         {
            return;
         }
         if(var_35.window.name == const_551)
         {
            (var_35 as MeMenuSettingsView).updateSettings(param1);
         }
      }
      
      public function get isHabboClubActive() : Boolean
      {
         return var_1157 > 0;
      }
      
      private function onWaveEvent(param1:RoomWidgetWaveUpdateEvent) : void
      {
         Logger.log("[MeMenuWidget] Wave Event received");
      }
      
      private function onCreditBalance(param1:RoomWidgetCreditBalanceUpdateEvent) : void
      {
         if(param1 == null)
         {
            return;
         }
         var_1422 = param1.balance;
         localizations.registerParameter("widget.memenu.credits","credits",var_1422.toString());
      }
      
      private function onUserInfo(param1:RoomWidgetUserInfoUpdateEvent) : void
      {
         var _loc2_:* = null;
         if(!(var_250 && var_35.window.name == const_331))
         {
            _loc2_ = new RoomWidgetRequestWidgetMessage(RoomWidgetRequestWidgetMessage.const_555);
            if(messageListener != null)
            {
               messageListener.processWidgetMessage(_loc2_);
            }
         }
      }
      
      override public function unregisterUpdateEvents(param1:IEventDispatcher) : void
      {
         if(param1 == null)
         {
            return;
         }
         param1.removeEventListener(RoomWidgetWaveUpdateEvent.const_581,onWaveEvent);
         param1.removeEventListener(RoomWidgetDanceUpdateEvent.const_704,onDanceEvent);
         param1.removeEventListener(RoomWidgetUpdateEffectsUpdateEvent.const_531,onUpdateEffects);
         param1.removeEventListener(RoomWidgetToolbarClickedUpdateEvent.const_540,onToolbarClicked);
         param1.removeEventListener(RoomWidgetFrameUpdateEvent.const_323,onUpdate);
         param1.removeEventListener(RoomWidgetRoomObjectUpdateEvent.const_193,onAvatarDeselected);
         param1.removeEventListener(RoomWidgetHabboClubUpdateEvent.const_206,onHabboClubEvent);
         param1.removeEventListener(RoomWidgetAvatarActionUpdateEvent.const_661,onAvatarActionEvent);
         param1.removeEventListener(RoomWidgetAvatarEditorUpdateEvent.const_570,onAvatarEditorClosed);
         param1.removeEventListener(RoomWidgetUserInfoUpdateEvent.const_219,onUserInfo);
         param1.removeEventListener(RoomWidgetSettingsUpdateEvent.const_289,onSettingsUpdate);
         param1.removeEventListener(RoomWidgetTutorialEvent.const_449,onTutorialEvent);
         param1.removeEventListener(RoomWidgetTutorialEvent.const_102,onTutorialEvent);
         param1.removeEventListener(RoomWidgetCreditBalanceUpdateEvent.const_172,onCreditBalance);
      }
      
      override public function dispose() : void
      {
         hide();
         _eventDispatcher = null;
         if(var_35 != null)
         {
            var_35.dispose();
            var_35 = null;
         }
         super.dispose();
      }
      
      public function get allowHabboClubDances() : Boolean
      {
         return var_1744;
      }
      
      public function get creditBalance() : int
      {
         return var_1422;
      }
      
      public function changeToOutfit(param1:int) : void
      {
         var_1660 = new Date().valueOf();
         this.messageListener.processWidgetMessage(new RoomWidgetSelectOutfitMessage(param1));
      }
      
      private function onTutorialEvent(param1:RoomWidgetTutorialEvent) : void
      {
         switch(param1.type)
         {
            case RoomWidgetTutorialEvent.const_449:
               Logger.log("* MeMenuWidget: onHighlightClothesIcon " + var_250 + " view: " + var_35.window.name);
               if(var_250 != true || var_35.window.name != const_125)
               {
                  return;
               }
               (var_35 as MeMenuMainView).setIconAssets("clothes_icon",const_125,"clothes_highlighter_blue");
               break;
            case RoomWidgetTutorialEvent.const_102:
               hide();
         }
      }
      
      public function get isDancing() : Boolean
      {
         return var_1747;
      }
      
      public function canChangeOutfit() : Boolean
      {
         var _loc1_:Number = new Date().valueOf();
         return _loc1_ - var_1660 > 5000;
      }
      
      public function get habboClubPeriods() : int
      {
         return var_1746;
      }
      
      private function onAvatarActionEvent(param1:RoomWidgetAvatarActionUpdateEvent) : void
      {
         switch(param1.actionType)
         {
            case RoomWidgetAvatarActionUpdateEvent.EFFECT_ACTIVE:
               var_564 = true;
               break;
            case RoomWidgetAvatarActionUpdateEvent.EFFECT_INACTIVE:
               var_564 = false;
               break;
            default:
               trace("MeMenuWidget: unknown avatar action event: " + param1.actionType);
         }
      }
      
      private function onHabboClubEvent(param1:RoomWidgetHabboClubUpdateEvent) : void
      {
         var _loc2_:* = param1.daysLeft != var_1157;
         var_1157 = param1.daysLeft;
         var_1746 = param1.periodsLeft;
         var_1745 = param1.pastPeriods;
         var_1744 = param1.allowClubDances;
         _loc2_ = Boolean(_loc2_ || param1.clubLevel != var_1421);
         var_1421 = param1.clubLevel;
         if(_loc2_)
         {
            if(var_35 != null)
            {
               changeView(var_35.window.name);
            }
         }
      }
      
      public function set isDancing(param1:Boolean) : void
      {
         var_1747 = param1;
      }
      
      private function onAvatarDeselected(param1:Event) : void
      {
         if(var_35 != null && var_35.window.name != const_331)
         {
            hide();
         }
      }
      
      public function get mainContainer() : IWindowContainer
      {
         if(_mainContainer == null)
         {
            _mainContainer = windowManager.createWindow("me_menu_main_container","",HabboWindowType.const_1365,HabboWindowStyle.const_857,HabboWindowParam.const_40,new Rectangle(0,0,170,260)) as IWindowContainer;
            _mainContainer.tags.push("room_widget_me_menu");
         }
         return _mainContainer;
      }
      
      private function onUpdateEffects(param1:RoomWidgetUpdateEffectsUpdateEvent) : void
      {
         var _loc2_:* = null;
         var_564 = false;
         for each(_loc2_ in param1.effects)
         {
            if(_loc2_.isInUse)
            {
               var_564 = true;
            }
         }
         if(var_35 != null && var_35.window.name == const_554)
         {
            (var_35 as MeMenuEffectsView).updateEffects(param1.effects);
         }
      }
      
      public function get habboClubPastPeriods() : int
      {
         return var_1745;
      }
      
      public function get habboClubDays() : int
      {
         return var_1157;
      }
      
      public function updateSize() : void
      {
         if(var_35 != null)
         {
            var_980.x = var_35.window.width + 10;
            var_980.y = var_35.window.height;
            var_35.window.x = 5;
            var_35.window.y = 0;
            _mainContainer.width = var_980.x;
            _mainContainer.height = var_980.y;
         }
      }
      
      private function onToolbarClicked(param1:RoomWidgetToolbarClickedUpdateEvent) : void
      {
         switch(param1.iconType)
         {
            case RoomWidgetToolbarClickedUpdateEvent.ICON_TYPE_ME_MENU:
               var_250 = !var_250;
               break;
            case RoomWidgetToolbarClickedUpdateEvent.ICON_TYPE_ROOM_INFO:
               var_250 = false;
               break;
            default:
               return;
         }
         if(var_250)
         {
            show();
         }
         else
         {
            hide();
         }
      }
      
      private function onDanceEvent(param1:RoomWidgetDanceUpdateEvent) : void
      {
         Logger.log("[MeMenuWidget] Dance Event received, style: " + param1.style);
      }
      
      public function hide(param1:RoomWidgetRoomObjectUpdateEvent = null) : void
      {
         var _loc2_:RoomWidgetToolbarMessage = new RoomWidgetToolbarMessage(RoomWidgetToolbarMessage.const_692);
         _loc2_.window = _mainContainer.parent as IWindowContainer;
         if(messageListener != null)
         {
            messageListener.processWidgetMessage(_loc2_);
         }
         if(var_35 != null)
         {
            _mainContainer.removeChild(var_35.window);
            var_35.dispose();
            var_35 = null;
         }
         var_250 = false;
         _eventDispatcher.dispatchEvent(new Event(HabboMeMenuTrackingEvent.HABBO_MEMENU_TRACKING_EVENT_CLOSE));
      }
      
      private function onAvatarEditorClosed(param1:RoomWidgetAvatarEditorUpdateEvent) : void
      {
         if(var_35 != null && var_35.window.name == const_331)
         {
            changeView(const_125);
         }
      }
      
      public function get isNewsEnabled() : Boolean
      {
         return var_1743;
      }
      
      public function changeView(param1:String) : void
      {
         var _loc2_:* = null;
         switch(param1)
         {
            case const_125:
               _loc2_ = new MeMenuMainView();
               _eventDispatcher.dispatchEvent(new Event(HabboMeMenuTrackingEvent.HABBO_MEMENU_TRACKING_EVENT_DEFAULT));
               break;
            case const_554:
               _loc2_ = new MeMenuEffectsView();
               _eventDispatcher.dispatchEvent(new Event(HabboMeMenuTrackingEvent.HABBO_MEMENU_TRACKING_EVENT_EFFECTS));
               break;
            case const_837:
               _loc2_ = new MeMenuDanceView();
               _eventDispatcher.dispatchEvent(new Event(HabboMeMenuTrackingEvent.HABBO_MEMENU_TRACKING_EVENT_DANCE));
               break;
            case const_331:
               _loc2_ = new MeMenuClothesView();
               break;
            case const_1335:
               _loc2_ = new MeMenuRoomsView();
               break;
            case const_551:
               _loc2_ = new MeMenuSettingsView();
               break;
            default:
               Logger.log("Me Menu Change view: unknown view: " + param1);
         }
         if(_loc2_ != null)
         {
            if(var_35 != null)
            {
               _mainContainer.removeChild(var_35.window);
               var_35.dispose();
               var_35 = null;
            }
            var_35 = _loc2_;
            var_35.init(this,param1);
         }
         updateSize();
      }
      
      public function get habboClubLevel() : int
      {
         return var_1421;
      }
      
      public function get config() : IHabboConfigurationManager
      {
         return _config;
      }
      
      private function show() : void
      {
         if(!_mainContainer || true)
         {
            return;
         }
         changeView(const_125);
         var _loc1_:RoomWidgetToolbarMessage = new RoomWidgetToolbarMessage(RoomWidgetToolbarMessage.const_579);
         _loc1_.window = _mainContainer.parent as IWindowContainer;
         if(messageListener != null)
         {
            messageListener.processWidgetMessage(_loc1_);
         }
         var_250 = true;
      }
   }
}
