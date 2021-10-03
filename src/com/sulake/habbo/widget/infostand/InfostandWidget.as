package com.sulake.habbo.widget.infostand
{
   import com.sulake.core.assets.IAssetLibrary;
   import com.sulake.core.window.IWindow;
   import com.sulake.core.window.IWindowContainer;
   import com.sulake.habbo.configuration.IHabboConfigurationManager;
   import com.sulake.habbo.localization.IHabboLocalizationManager;
   import com.sulake.habbo.widget.RoomWidgetBase;
   import com.sulake.habbo.widget.events.RoomWidgetBadgeImageUpdateEvent;
   import com.sulake.habbo.widget.events.RoomWidgetFurniInfoUpdateEvent;
   import com.sulake.habbo.widget.events.RoomWidgetPetCommandsUpdateEvent;
   import com.sulake.habbo.widget.events.RoomWidgetPetInfoUpdateEvent;
   import com.sulake.habbo.widget.events.RoomWidgetRoomObjectUpdateEvent;
   import com.sulake.habbo.widget.events.RoomWidgetUserBadgesUpdateEvent;
   import com.sulake.habbo.widget.events.RoomWidgetUserFigureUpdateEvent;
   import com.sulake.habbo.widget.events.RoomWidgetUserInfoUpdateEvent;
   import com.sulake.habbo.widget.events.RoomWidgetUserTagsUpdateEvent;
   import com.sulake.habbo.widget.messages.RoomWidgetRoomObjectMessage;
   import com.sulake.habbo.widget.messages.RoomWidgetUserActionMessage;
   import com.sulake.habbo.window.IHabboWindowManager;
   import com.sulake.habbo.window.enum.HabboWindowParam;
   import com.sulake.habbo.window.enum.HabboWindowStyle;
   import com.sulake.habbo.window.enum.HabboWindowType;
   import flash.events.IEventDispatcher;
   import flash.events.TimerEvent;
   import flash.geom.Rectangle;
   import flash.utils.Timer;
   
   public class InfostandWidget extends RoomWidgetBase
   {
       
      
      private var var_2256:Array;
      
      private const const_1437:String = "infostand_user_view";
      
      private var var_320:InfoStandPetView;
      
      private var var_1200:InfoStandPetData;
      
      private var var_139:Timer;
      
      private var var_932:InfoStandFurniView;
      
      private var var_429:InfostandFurniData;
      
      private var var_371:InfoStandBotView;
      
      private var _mainContainer:IWindowContainer;
      
      private const const_1436:String = "infostand_bot_view";
      
      private var _config:IHabboConfigurationManager;
      
      private const const_1435:String = "infostand_pet_view";
      
      private const const_1438:String = "infostand_furni_view";
      
      private const const_1660:int = 3000;
      
      private var var_207:InfoStandUserView;
      
      private var var_446:InfostandUserData;
      
      public function InfostandWidget(param1:IHabboWindowManager, param2:IAssetLibrary, param3:IHabboLocalizationManager, param4:IHabboConfigurationManager)
      {
         super(param1,param2,param3);
         _config = param4;
         var_932 = new InfoStandFurniView(this,const_1438);
         var_207 = new InfoStandUserView(this,const_1437);
         var_320 = new InfoStandPetView(this,const_1435);
         var_371 = new InfoStandBotView(this,const_1436);
         var_446 = new InfostandUserData();
         var_429 = new InfostandFurniData();
         var_1200 = new InfoStandPetData();
         var_139 = new Timer(const_1660);
         var_139.addEventListener(TimerEvent.TIMER,onUpdateTimer);
         mainContainer.visible = false;
      }
      
      private function onUserTags(param1:RoomWidgetUserTagsUpdateEvent) : void
      {
         if(param1.isOwnUser)
         {
            var_2256 = param1.tags;
         }
         if(param1.userId != userData.userId)
         {
            return;
         }
         if(param1.isOwnUser)
         {
            var_207.setTags(param1.tags);
         }
         else
         {
            var_207.setTags(param1.tags,var_2256);
         }
      }
      
      override public function registerUpdateEvents(param1:IEventDispatcher) : void
      {
         if(param1 == null)
         {
            return;
         }
         param1.addEventListener(RoomWidgetRoomObjectUpdateEvent.const_335,onRoomObjectSelected);
         param1.addEventListener(RoomWidgetRoomObjectUpdateEvent.const_193,onClose);
         param1.addEventListener(RoomWidgetRoomObjectUpdateEvent.const_269,onRoomObjectRemoved);
         param1.addEventListener(RoomWidgetRoomObjectUpdateEvent.const_110,onRoomObjectRemoved);
         param1.addEventListener(RoomWidgetUserInfoUpdateEvent.const_219,onUserInfo);
         param1.addEventListener(RoomWidgetUserInfoUpdateEvent.const_207,onUserInfo);
         param1.addEventListener(RoomWidgetUserInfoUpdateEvent.BOT,onBotInfo);
         param1.addEventListener(RoomWidgetFurniInfoUpdateEvent.const_724,onFurniInfo);
         param1.addEventListener(RoomWidgetUserTagsUpdateEvent.const_142,onUserTags);
         param1.addEventListener(RoomWidgetUserFigureUpdateEvent.const_137,onUserFigureUpdate);
         param1.addEventListener(RoomWidgetUserBadgesUpdateEvent.const_109,onUserBadges);
         param1.addEventListener(RoomWidgetBadgeImageUpdateEvent.const_617,onBadgeImage);
         param1.addEventListener(RoomWidgetPetInfoUpdateEvent.const_140,onPetInfo);
         param1.addEventListener(RoomWidgetPetCommandsUpdateEvent.PET_COMMANDS,onPetCommands);
         super.registerUpdateEvents(param1);
      }
      
      override public function get mainWindow() : IWindow
      {
         return mainContainer;
      }
      
      private function onPetInfo(param1:RoomWidgetPetInfoUpdateEvent) : void
      {
         petData.method_2(param1);
         userData.petRespectLeft = param1.petRespectLeft;
         var_320.update(petData);
         selectView(const_1435);
         if(var_139)
         {
            var_139.start();
         }
      }
      
      public function get userData() : InfostandUserData
      {
         return var_446;
      }
      
      private function onUserInfo(param1:RoomWidgetUserInfoUpdateEvent) : void
      {
         userData.method_2(param1);
         var_207.update(param1);
         selectView(const_1437);
         if(var_139)
         {
            var_139.stop();
         }
      }
      
      private function onUpdateTimer(param1:TimerEvent) : void
      {
         if(var_320 == null)
         {
            return;
         }
         messageListener.processWidgetMessage(new RoomWidgetUserActionMessage(RoomWidgetUserActionMessage.const_429,var_320.getCurrentPetId()));
      }
      
      override public function unregisterUpdateEvents(param1:IEventDispatcher) : void
      {
         if(param1 == null)
         {
            return;
         }
         param1.removeEventListener(RoomWidgetRoomObjectUpdateEvent.const_335,onRoomObjectSelected);
         param1.removeEventListener(RoomWidgetRoomObjectUpdateEvent.const_193,onClose);
         param1.removeEventListener(RoomWidgetRoomObjectUpdateEvent.const_269,onRoomObjectRemoved);
         param1.removeEventListener(RoomWidgetRoomObjectUpdateEvent.const_110,onRoomObjectRemoved);
         param1.removeEventListener(RoomWidgetUserInfoUpdateEvent.const_219,onUserInfo);
         param1.removeEventListener(RoomWidgetUserInfoUpdateEvent.const_207,onUserInfo);
         param1.removeEventListener(RoomWidgetUserInfoUpdateEvent.BOT,onBotInfo);
         param1.removeEventListener(RoomWidgetFurniInfoUpdateEvent.const_724,onFurniInfo);
         param1.removeEventListener(RoomWidgetUserTagsUpdateEvent.const_142,onUserTags);
         param1.removeEventListener(RoomWidgetUserFigureUpdateEvent.const_137,onUserFigureUpdate);
         param1.removeEventListener(RoomWidgetUserBadgesUpdateEvent.const_109,onUserBadges);
         param1.removeEventListener(RoomWidgetBadgeImageUpdateEvent.const_617,onBadgeImage);
         param1.removeEventListener(RoomWidgetPetInfoUpdateEvent.const_140,onPetInfo);
         param1.removeEventListener(RoomWidgetPetCommandsUpdateEvent.PET_COMMANDS,onPetCommands);
      }
      
      override public function dispose() : void
      {
         if(var_139)
         {
            var_139.stop();
         }
         var_139 = null;
         if(var_207)
         {
            var_207.dispose();
         }
         var_207 = null;
         if(var_932)
         {
            var_932.dispose();
         }
         var_932 = null;
         if(var_371)
         {
            var_371.dispose();
         }
         var_371 = null;
         if(var_320)
         {
            var_320.dispose();
         }
         var_320 = null;
         super.dispose();
      }
      
      private function onUserBadges(param1:RoomWidgetUserBadgesUpdateEvent) : void
      {
         if(param1.userId != userData.userId)
         {
            return;
         }
         userData.badges = param1.badges;
         var_207.clearBadges();
      }
      
      private function onFurniInfo(param1:RoomWidgetFurniInfoUpdateEvent) : void
      {
         furniData.method_2(param1);
         var_932.update(param1);
         selectView(const_1438);
         if(var_139)
         {
            var_139.stop();
         }
      }
      
      private function onBotInfo(param1:RoomWidgetUserInfoUpdateEvent) : void
      {
         userData.method_2(param1);
         var_371.update(param1);
         selectView(const_1436);
         if(var_139)
         {
            var_139.stop();
         }
      }
      
      private function onUserFigureUpdate(param1:RoomWidgetUserFigureUpdateEvent) : void
      {
         if(!param1.isOwnUser)
         {
         }
         if(param1.userId != userData.userId)
         {
            return;
         }
         if(userData.isBot())
         {
            var_371.image = param1.image;
         }
         else
         {
            var_207.image = param1.image;
         }
      }
      
      private function onBadgeImage(param1:RoomWidgetBadgeImageUpdateEvent) : void
      {
         var _loc2_:int = userData.badges.indexOf(param1.badgeID);
         if(_loc2_ >= 0)
         {
            if(userData.isBot())
            {
               var_371.setBadgeImage(_loc2_,param1.badgeImage);
            }
            else
            {
               var_207.setBadgeImage(_loc2_,param1.badgeImage);
            }
            return;
         }
         if(param1.badgeID == userData.groupBadgeId)
         {
            var_207.setGroupBadgeImage(param1.badgeImage);
         }
      }
      
      private function selectView(param1:String) : void
      {
         hideChildren();
         var _loc2_:IWindow = mainContainer.getChildByName(param1) as IWindow;
         if(_loc2_ == null)
         {
            return;
         }
         _loc2_.visible = true;
         mainContainer.visible = true;
         mainContainer.width = _loc2_.width;
         mainContainer.height = _loc2_.height;
      }
      
      public function get mainContainer() : IWindowContainer
      {
         if(_mainContainer == null)
         {
            _mainContainer = windowManager.createWindow("infostand_main_container","",HabboWindowType.const_60,HabboWindowStyle.const_40,HabboWindowParam.const_40,new Rectangle(0,0,50,100)) as IWindowContainer;
            _mainContainer.tags.push("room_widget_infostand");
            _mainContainer.background = true;
            _mainContainer.color = 0;
         }
         return _mainContainer;
      }
      
      public function get furniData() : InfostandFurniData
      {
         return var_429;
      }
      
      private function onClose(param1:RoomWidgetRoomObjectUpdateEvent) : void
      {
         close();
         if(var_139)
         {
            var_139.stop();
         }
      }
      
      public function get config() : IHabboConfigurationManager
      {
         return _config;
      }
      
      private function onRoomObjectRemoved(param1:RoomWidgetRoomObjectUpdateEvent) : void
      {
         var _loc2_:* = false;
         switch(param1.type)
         {
            case RoomWidgetRoomObjectUpdateEvent.const_110:
               _loc2_ = param1.id == var_429.id;
               break;
            case RoomWidgetRoomObjectUpdateEvent.const_269:
               if(var_207 != null && false && var_207.window.visible)
               {
                  _loc2_ = param1.id == var_446.userRoomId;
                  break;
               }
               if(var_320 != null && false && var_320.window.visible)
               {
                  _loc2_ = param1.id == var_1200.roomIndex;
                  break;
               }
               if(var_371 != null && false && var_371.window.visible)
               {
                  _loc2_ = param1.id == var_446.userRoomId;
                  break;
               }
         }
         if(_loc2_)
         {
            close();
         }
      }
      
      public function get petData() : InfoStandPetData
      {
         return var_1200;
      }
      
      public function refreshContainer() : void
      {
         var _loc1_:* = null;
         var _loc2_:int = 0;
         while(_loc2_ < mainContainer.numChildren)
         {
            _loc1_ = mainContainer.getChildAt(_loc2_);
            if(_loc1_.visible)
            {
               mainContainer.width = _loc1_.width;
               mainContainer.height = _loc1_.height;
            }
            _loc2_++;
         }
      }
      
      private function hideChildren() : void
      {
         var _loc1_:int = 0;
         if(_mainContainer != null)
         {
            _loc1_ = 0;
            while(_loc1_ < _mainContainer.numChildren)
            {
               _mainContainer.getChildAt(_loc1_).visible = false;
               _loc1_++;
            }
         }
      }
      
      private function onPetCommands(param1:RoomWidgetPetCommandsUpdateEvent) : void
      {
         var_320.updateEnabledTrainingCommands(param1.id,param1.enabledCommands);
      }
      
      public function close() : void
      {
         hideChildren();
         if(var_139)
         {
            var_139.stop();
         }
      }
      
      private function onRoomObjectSelected(param1:RoomWidgetRoomObjectUpdateEvent) : void
      {
         var _loc2_:RoomWidgetRoomObjectMessage = new RoomWidgetRoomObjectMessage(RoomWidgetRoomObjectMessage.const_311,param1.id,param1.category);
         messageListener.processWidgetMessage(_loc2_);
      }
   }
}
