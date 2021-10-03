package com.sulake.habbo.navigator.inroom
{
   import com.sulake.core.window.IWindow;
   import com.sulake.core.window.IWindowContainer;
   import com.sulake.core.window.components.IButtonWindow;
   import com.sulake.core.window.components.IContainerButtonWindow;
   import com.sulake.core.window.components.ITextFieldWindow;
   import com.sulake.core.window.components.ITextWindow;
   import com.sulake.core.window.events.WindowEvent;
   import com.sulake.core.window.events.WindowMouseEvent;
   import com.sulake.habbo.communication.messages.incoming.navigator.GuestRoomData;
   import com.sulake.habbo.communication.messages.incoming.navigator.PublicRoomShortData;
   import com.sulake.habbo.communication.messages.incoming.navigator.RoomEventData;
   import com.sulake.habbo.communication.messages.outgoing.navigator.AddFavouriteRoomMessageComposer;
   import com.sulake.habbo.communication.messages.outgoing.navigator.CanCreateEventMessageComposer;
   import com.sulake.habbo.communication.messages.outgoing.navigator.DeleteFavouriteRoomMessageComposer;
   import com.sulake.habbo.communication.messages.outgoing.navigator.RateFlatMessageComposer;
   import com.sulake.habbo.communication.messages.outgoing.navigator.UpdateNavigatorSettingsMessageComposer;
   import com.sulake.habbo.navigator.HabboNavigator;
   import com.sulake.habbo.navigator.SimpleAlertView;
   import com.sulake.habbo.navigator.TagRenderer;
   import com.sulake.habbo.navigator.Util;
   import com.sulake.habbo.navigator.events.HabboRoomSettingsTrackingEvent;
   import com.sulake.habbo.navigator.roomsettings.IRoomSettingsCtrlOwner;
   import com.sulake.habbo.navigator.roomsettings.RoomSettingsCtrl;
   import com.sulake.habbo.navigator.roomthumbnails.RoomThumbnailCtrl;
   import com.sulake.habbo.toolbar.HabboToolbarIconEnum;
   import com.sulake.habbo.toolbar.events.HabboToolbarShowMenuEvent;
   import com.sulake.habbo.window.enum.HabboWindowParam;
   import flash.events.Event;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   
   public class RoomInfoViewCtrl implements IRoomSettingsCtrlOwner
   {
       
      
      private var var_732:IWindowContainer;
      
      private var var_1068:ITextWindow;
      
      private var var_200:RoomSettingsCtrl;
      
      private var var_1307:IContainerButtonWindow;
      
      private var _window:IWindowContainer;
      
      private var _hideInfoTimer:Timer;
      
      private var var_1304:ITextWindow;
      
      private var var_362:IWindowContainer;
      
      private var var_2107:IWindowContainer;
      
      private var var_2108:ITextWindow;
      
      private var var_891:IWindowContainer;
      
      private var var_1544:IButtonWindow;
      
      private var _ownerName:ITextWindow;
      
      private var var_701:ITextWindow;
      
      private var var_1545:IWindowContainer;
      
      private var var_1309:IWindowContainer;
      
      private var var_888:ITextWindow;
      
      private var var_1069:ITextFieldWindow;
      
      private var var_312:IWindowContainer;
      
      private var var_889:ITextWindow;
      
      private var var_1547:IButtonWindow;
      
      private var var_1070:ITextWindow;
      
      private var var_2331:int;
      
      private var var_1305:IContainerButtonWindow;
      
      private var var_890:IWindowContainer;
      
      private var var_1310:ITextWindow;
      
      private var var_1306:IContainerButtonWindow;
      
      private var var_1546:ITextWindow;
      
      private var var_1543:IButtonWindow;
      
      private var var_799:TagRenderer;
      
      private var var_1625:ITextWindow;
      
      private var var_363:RoomEventViewCtrl;
      
      private var _navigator:HabboNavigator;
      
      private var var_731:ITextWindow;
      
      private var var_261:RoomThumbnailCtrl;
      
      private var var_1308:IContainerButtonWindow;
      
      private var var_2106:IWindowContainer;
      
      private var var_262:IWindowContainer;
      
      public function RoomInfoViewCtrl(param1:HabboNavigator)
      {
         super();
         _navigator = param1;
         var_363 = new RoomEventViewCtrl(_navigator);
         var_200 = new RoomSettingsCtrl(_navigator,this,true);
         var_261 = new RoomThumbnailCtrl(_navigator);
         var_799 = new TagRenderer(_navigator);
         _navigator.roomSettingsCtrls.push(this.var_200);
         _hideInfoTimer = new Timer(6000,1);
         _hideInfoTimer.addEventListener(TimerEvent.TIMER,hideInfo);
      }
      
      public function backToRoomSettings() : void
      {
         this.var_200.active = true;
         this.var_363.active = false;
         this.var_261.active = false;
         this.reload();
         _navigator.events.dispatchEvent(new Event(HabboRoomSettingsTrackingEvent.HABBO_ROOM_SETTINGS_TRACKING_EVENT_DEFAULT));
      }
      
      private function refreshEventButtons(param1:RoomEventData) : void
      {
         if(false)
         {
            return;
         }
         var_1544.visible = param1 == null && _navigator.data.currentRoomOwner;
         var_1543.visible = param1 != null && (_navigator.data.currentRoomOwner || _navigator.data.eventMod);
         var_1545.visible = Util.hasVisibleChildren(var_1545);
      }
      
      private function refreshRoomDetails(param1:GuestRoomData, param2:Boolean) : void
      {
         if(param1 == null || false || false)
         {
            return;
         }
         var_701.text = param1.roomName;
         var_701.height = NaN;
         _ownerName.text = param1.ownerName;
         var_888.text = param1.description;
         var_799.refreshTags(var_362,param1.tags);
         var_888.visible = false;
         if(param1.description != "")
         {
            var_888.height = NaN;
            var_888.visible = true;
         }
         var _loc3_:* = _navigator.data.currentRoomRating == -1;
         _navigator.refreshButton(var_362,"thumb_up",_loc3_,onThumbUp,0);
         _navigator.refreshButton(var_362,"thumb_down",_loc3_,onThumbDown,0);
         var_2108.visible = _loc3_;
         var_889.visible = !_loc3_;
         var_1546.visible = !_loc3_;
         var_1546.text = "" + _navigator.data.currentRoomRating;
         _navigator.refreshButton(var_362,"home",param2,null,0);
         _navigator.refreshButton(var_362,"favourite",!param2 && _navigator.data.isCurrentRoomFavourite(),null,0);
         Util.moveChildrenToColumn(var_362,["room_name","owner_name_cont","tags","room_desc","rating_cont"],var_701.y,0);
         var_362.visible = true;
         var_362.height = Util.getLowestPoint(var_362);
      }
      
      private function getButtonsMinHeight() : int
      {
         return !!_navigator.data.currentRoomOwner ? 0 : 21;
      }
      
      public function dispose() : void
      {
         if(_hideInfoTimer)
         {
            _hideInfoTimer.removeEventListener(TimerEvent.TIMER,hideInfo);
            _hideInfoTimer.reset();
            _hideInfoTimer = null;
         }
      }
      
      private function onThumbUp(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         _navigator.send(new RateFlatMessageComposer(1));
      }
      
      private function hideInfo(param1:Event) : void
      {
         _navigator.toolbar.events.dispatchEvent(new HabboToolbarShowMenuEvent(HabboToolbarShowMenuEvent.const_408,HabboToolbarIconEnum.ROOMINFO,_window,false));
      }
      
      private function getRoomInfoMinHeight() : int
      {
         return 37;
      }
      
      public function onAddFavouriteClick(param1:WindowEvent, param2:IWindow) : void
      {
         var _loc3_:* = null;
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         if(_navigator.data.enteredGuestRoom == null)
         {
            return;
         }
         if(_navigator.data.isFavouritesFull())
         {
            _loc3_ = new SimpleAlertView(_navigator,"${navigator.favouritesfull.title}","${navigator.favouritesfull.body}");
            _loc3_.show();
         }
         else
         {
            _navigator.send(new AddFavouriteRoomMessageComposer(_navigator.data.enteredGuestRoom.flatId));
         }
      }
      
      private function refreshRoomButtons(param1:Boolean) : void
      {
         if(_navigator.data.enteredGuestRoom == null || false || false)
         {
            return;
         }
         var_1547.visible = _navigator.data.canEditRoomSettings;
         var _loc2_:Boolean = _navigator.data.isCurrentRoomFavourite();
         var_1307.visible = _navigator.data.canAddFavourite && !_loc2_;
         var_1308.visible = _navigator.data.canAddFavourite && _loc2_;
         var_1305.visible = _navigator.data.canEditRoomSettings && !param1;
         var_1306.visible = _navigator.data.canEditRoomSettings && param1;
         var_1309.visible = Util.hasVisibleChildren(var_1309);
      }
      
      public function open(param1:Boolean) : void
      {
         this._hideInfoTimer.reset();
         this.var_363.active = false;
         this.var_200.active = false;
         this.var_261.active = false;
         if(param1)
         {
            this.startRoomSettingsEdit(_navigator.data.enteredGuestRoom.flatId);
         }
         refresh();
         _window.visible = true;
         _navigator.toolbar.events.dispatchEvent(new HabboToolbarShowMenuEvent(HabboToolbarShowMenuEvent.const_48,HabboToolbarIconEnum.ROOMINFO,_window,false));
         _window.parent.activate();
         _window.activate();
         if(!param1)
         {
            this._hideInfoTimer.start();
         }
      }
      
      public function toggle() : void
      {
         this._hideInfoTimer.reset();
         this.var_363.active = false;
         this.var_200.active = false;
         this.var_261.active = false;
         refresh();
         if(true)
         {
            _navigator.toolbar.events.dispatchEvent(new HabboToolbarShowMenuEvent(HabboToolbarShowMenuEvent.const_48,HabboToolbarIconEnum.ROOMINFO,_window,false));
            _window.parent.activate();
         }
         else
         {
            _navigator.toolbar.events.dispatchEvent(new HabboToolbarShowMenuEvent(HabboToolbarShowMenuEvent.const_408,HabboToolbarIconEnum.ROOMINFO,_window,false));
         }
      }
      
      private function refreshRoom() : void
      {
         Util.hideChildren(var_312);
         var_312.findChildByName("close").visible = true;
         var _loc1_:GuestRoomData = _navigator.data.enteredGuestRoom;
         var _loc2_:Boolean = _navigator.data.settings != null && _loc1_ != null && _loc1_.flatId == _navigator.data.settings.homeRoomId;
         refreshRoomDetails(_loc1_,_loc2_);
         refreshPublicSpaceDetails(_navigator.data.enteredPublicSpace);
         refreshRoomButtons(_loc2_);
         this.var_200.refresh(var_312);
         this.var_261.refresh(var_312);
         Util.moveChildrenToColumn(var_312,["room_details","room_buttons"],0,2);
         var_312.height = Util.getLowestPoint(var_312);
         var_312.visible = true;
         Logger.log("XORP: undefined, undefined, undefined, undefined, undefined");
      }
      
      private function onCloseButtonClick(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         hideInfo(null);
      }
      
      private function onEmbedSrcClick(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         var_1069.setSelection(0,var_1069.text.length);
      }
      
      private function getEmbedData() : String
      {
         var _loc1_:* = null;
         var _loc2_:* = null;
         if(_navigator.data.enteredGuestRoom != null)
         {
            _loc1_ = "private";
            _loc2_ = "" + _navigator.data.enteredGuestRoom.flatId;
         }
         else
         {
            _loc1_ = "public";
            _loc2_ = "" + _navigator.data.publicSpaceNodeId;
            Logger.log("Node id is: " + _loc2_);
         }
         var _loc3_:String = _navigator.configuration.getKey("user.hash","");
         _navigator.registerParameter("navigator.embed.src","roomType",_loc1_);
         _navigator.registerParameter("navigator.embed.src","embedCode",_loc3_);
         _navigator.registerParameter("navigator.embed.src","roomId",_loc2_);
         return _navigator.getText("navigator.embed.src");
      }
      
      private function onThumbDown(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         _navigator.send(new RateFlatMessageComposer(-1));
      }
      
      private function refreshEvent() : void
      {
         Util.hideChildren(var_262);
         var _loc1_:RoomEventData = _navigator.data.roomEventData;
         refreshEventDetails(_loc1_);
         refreshEventButtons(_loc1_);
         this.var_363.refresh(var_262);
         if(Util.hasVisibleChildren(var_262) && !this.var_261.active)
         {
            Util.moveChildrenToColumn(var_262,["event_details","event_buttons"],0,2);
            var_262.height = Util.getLowestPoint(var_262);
            var_262.visible = true;
         }
         else
         {
            var_262.visible = false;
         }
         Logger.log("EVENT: undefined, undefined");
      }
      
      public function startEventEdit() : void
      {
         this._hideInfoTimer.reset();
         this.var_363.active = true;
         this.var_200.active = false;
         this.var_261.active = false;
         this.reload();
      }
      
      private function getEventInfoMinHeight() : int
      {
         return 18;
      }
      
      public function onRemoveFavouriteClick(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         if(_navigator.data.enteredGuestRoom == null)
         {
            return;
         }
         _navigator.send(new DeleteFavouriteRoomMessageComposer(_navigator.data.enteredGuestRoom.flatId));
      }
      
      private function onHover(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_OVER)
         {
            return;
         }
         _hideInfoTimer.reset();
      }
      
      private function refreshPublicSpaceDetails(param1:PublicRoomShortData) : void
      {
         if(param1 == null || false || false)
         {
            return;
         }
         var_1068.text = _navigator.getPublicSpaceName(param1.unitPropertySet,param1.worldId);
         var_1068.height = NaN;
         var_1304.text = _navigator.getPublicSpaceDesc(param1.unitPropertySet,param1.worldId);
         var_1304.height = NaN;
         Util.moveChildrenToColumn(var_732,["public_space_name","public_space_desc"],var_1068.y,0);
         var_732.visible = true;
         var_732.height = Math.max(86,Util.getLowestPoint(var_732));
      }
      
      public function reload() : void
      {
         if(_window != null && false)
         {
            refresh();
         }
      }
      
      private function find(param1:String) : IWindow
      {
         var _loc2_:IWindow = _window.findChildByName(param1);
         if(_loc2_ == null)
         {
            throw new Error("Window element with name: " + param1 + " cannot be found!");
         }
         return _loc2_;
      }
      
      private function refreshEmbed() : void
      {
         var _loc1_:* = _navigator.configuration.getKey("embed.showInRoomInfo","false") == "true";
         if(_loc1_ && true && true && true)
         {
            var_890.visible = true;
            var_1069.text = this.getEmbedData();
         }
         else
         {
            var_890.visible = false;
         }
      }
      
      public function startRoomSettingsEdit(param1:int) : void
      {
         this._hideInfoTimer.reset();
         this.var_200.load(param1);
         this.var_200.active = true;
         this.var_363.active = false;
         this.var_261.active = false;
         _navigator.events.dispatchEvent(new Event(HabboRoomSettingsTrackingEvent.HABBO_ROOM_SETTINGS_TRACKING_EVENT_DEFAULT));
      }
      
      public function startThumbnailEdit() : void
      {
         this._hideInfoTimer.reset();
         this.var_200.active = false;
         this.var_363.active = false;
         this.var_261.active = true;
         this.reload();
         _navigator.events.dispatchEvent(new Event(HabboRoomSettingsTrackingEvent.HABBO_ROOM_SETTINGS_TRACKING_EVENT_THUMBS));
      }
      
      private function prepareWindow() : void
      {
         if(_window != null)
         {
            return;
         }
         _window = IWindowContainer(_navigator.getXmlWindow("iro_room_details"));
         _window.setParamFlag(HabboWindowParam.const_70,false);
         _window.setParamFlag(HabboWindowParam.const_1206,true);
         _window.visible = false;
         var_312 = IWindowContainer(find("room_info"));
         var_362 = IWindowContainer(find("room_details"));
         var_732 = IWindowContainer(find("public_space_details"));
         var_2106 = IWindowContainer(find("owner_name_cont"));
         var_2107 = IWindowContainer(find("rating_cont"));
         var_1309 = IWindowContainer(find("room_buttons"));
         var_701 = ITextWindow(find("room_name"));
         var_1068 = ITextWindow(find("public_space_name"));
         _ownerName = ITextWindow(find("owner_name"));
         var_888 = ITextWindow(find("room_desc"));
         var_1304 = ITextWindow(find("public_space_desc"));
         var_1070 = ITextWindow(find("owner_caption"));
         var_889 = ITextWindow(find("rating_caption"));
         var_2108 = ITextWindow(find("rate_caption"));
         var_1546 = ITextWindow(find("rating_txt"));
         var_262 = IWindowContainer(find("event_info"));
         var_891 = IWindowContainer(find("event_details"));
         var_1545 = IWindowContainer(find("event_buttons"));
         var_1625 = ITextWindow(find("event_name"));
         var_731 = ITextWindow(find("event_desc"));
         var_1307 = IContainerButtonWindow(find("add_favourite_button"));
         var_1308 = IContainerButtonWindow(find("rem_favourite_button"));
         var_1305 = IContainerButtonWindow(find("make_home_button"));
         var_1306 = IContainerButtonWindow(find("unmake_home_button"));
         var_1547 = IButtonWindow(find("room_settings_button"));
         var_1544 = IButtonWindow(find("create_event_button"));
         var_1543 = IButtonWindow(find("edit_event_button"));
         var_890 = IWindowContainer(find("embed_info"));
         var_1310 = ITextWindow(find("embed_info_txt"));
         var_1069 = ITextFieldWindow(find("embed_src_txt"));
         Util.setProcDirectly(var_1307,onAddFavouriteClick);
         Util.setProcDirectly(var_1308,onRemoveFavouriteClick);
         Util.setProcDirectly(var_1547,onRoomSettingsClick);
         Util.setProcDirectly(var_1305,onMakeHomeClick);
         Util.setProcDirectly(var_1306,onUnmakeHomeClick);
         Util.setProcDirectly(var_1544,onEventSettingsClick);
         Util.setProcDirectly(var_1543,onEventSettingsClick);
         Util.setProcDirectly(var_1069,onEmbedSrcClick);
         _navigator.refreshButton(var_1307,"favourite",true,null,0);
         _navigator.refreshButton(var_1308,"favourite",true,null,0);
         _navigator.refreshButton(var_1305,"home",true,null,0);
         _navigator.refreshButton(var_1306,"home",true,null,0);
         _window.findChildByName("close").procedure = onCloseButtonClick;
         Util.setProcDirectly(var_312,onHover);
         Util.setProcDirectly(var_262,onHover);
         var_1070.width = var_1070.textWidth;
         Util.moveChildrenToRow(var_2106,["owner_caption","owner_name"],var_1070.x,var_1070.y,3);
         var_889.width = var_889.textWidth;
         Util.moveChildrenToRow(var_2107,["rating_caption","rating_txt"],var_889.x,var_889.y,3);
         var_1310.height = NaN;
         Util.moveChildrenToColumn(var_890,["embed_info_txt","embed_src_txt"],var_1310.y,2);
         var_890.height = Util.getLowestPoint(var_890) + 5;
         var_2331 = NaN;
      }
      
      private function refreshEventDetails(param1:RoomEventData) : void
      {
         if(param1 == null || false)
         {
            return;
         }
         var_1625.text = param1.eventName;
         var_731.text = param1.eventDescription;
         var_799.refreshTags(var_891,[_navigator.getText("roomevent_type_" + param1.eventType),param1.tags[0],param1.tags[1]]);
         var_731.visible = false;
         if(param1.eventDescription != "")
         {
            var_731.height = NaN;
            var_731.y = Util.getLowestPoint(var_891) + 2;
            var_731.visible = true;
         }
         var_891.visible = true;
         var_891.height = Util.getLowestPoint(var_891);
      }
      
      private function refresh() : void
      {
         prepareWindow();
         refreshRoom();
         refreshEvent();
         refreshEmbed();
         Util.moveChildrenToColumn(this._window,["room_info","event_info","embed_info"],0,2);
         _window.height = Util.getLowestPoint(_window);
         _window.y = _window.desktop.height - 0 - 5;
         Logger.log("MAIN: undefined, undefined, undefined");
      }
      
      private function onRoomSettingsClick(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         var _loc3_:GuestRoomData = _navigator.data.enteredGuestRoom;
         if(_loc3_ == null)
         {
            Logger.log("No entered room data?!");
            return;
         }
         startRoomSettingsEdit(_loc3_.flatId);
      }
      
      private function onUnmakeHomeClick(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         Logger.log("CLEARING HOME ROOM:");
         _navigator.send(new UpdateNavigatorSettingsMessageComposer(0));
      }
      
      private function onEventSettingsClick(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         if(_navigator.data.roomEventData == null)
         {
            if(_navigator.data.currentRoomOwner)
            {
               _navigator.send(new CanCreateEventMessageComposer());
            }
         }
         else
         {
            startEventEdit();
         }
      }
      
      public function roomSettingsRefreshNeeded() : void
      {
         refresh();
      }
      
      public function close() : void
      {
         _navigator.toolbar.events.dispatchEvent(new HabboToolbarShowMenuEvent(HabboToolbarShowMenuEvent.const_956,HabboToolbarIconEnum.ROOMINFO,_window,false));
         if(_window == null)
         {
            return;
         }
         this._window.visible = false;
         _navigator.events.dispatchEvent(new Event(HabboRoomSettingsTrackingEvent.HABBO_ROOM_SETTINGS_TRACKING_EVENT_CLOSED));
      }
      
      private function onMakeHomeClick(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         var _loc3_:GuestRoomData = _navigator.data.enteredGuestRoom;
         if(_loc3_ == null)
         {
            Logger.log("No entered room data?!");
            return;
         }
         Logger.log("SETTING HOME ROOM TO: " + _loc3_.flatId);
         _navigator.send(new UpdateNavigatorSettingsMessageComposer(_loc3_.flatId));
      }
   }
}
