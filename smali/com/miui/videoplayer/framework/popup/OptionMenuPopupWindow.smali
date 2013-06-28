.class public Lcom/miui/videoplayer/framework/popup/OptionMenuPopupWindow;
.super Lcom/miui/videoplayer/framework/popup/MenuPopupWindow;
.source "OptionMenuPopupWindow.java"


# instance fields
.field private mAboutPopupWindow:Lcom/miui/videoplayer/framework/popup/AboutPopupWindow;

.field private mActivity:Landroid/app/Activity;

.field private mAnchor:Landroid/view/View;

.field private mCaptureScreenshotResultBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mDuokanCodecValues:[Ljava/lang/String;

.field private mHandler:Landroid/os/Handler;

.field private mMediaController:Lcom/miui/videoplayer/framework/views/OriginMediaController;

.field private mOptionSubMenuPopupWindow:Lcom/miui/videoplayer/framework/popup/OptionSubMenuPopupWindow;

.field private mOriginCodecValues:[Ljava/lang/String;

.field private mSizeAdjustable:Lcom/miui/videoplayer/framework/ui/LocalVideoPlaySizeAdjustable;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/view/View;)V
    .locals 2
    .parameter "activity"
    .parameter "anchor"

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/miui/videoplayer/framework/popup/MenuPopupWindow;-><init>(Landroid/content/Context;)V

    .line 188
    new-instance v1, Lcom/miui/videoplayer/framework/popup/OptionMenuPopupWindow$3;

    invoke-direct {v1, p0}, Lcom/miui/videoplayer/framework/popup/OptionMenuPopupWindow$3;-><init>(Lcom/miui/videoplayer/framework/popup/OptionMenuPopupWindow;)V

    iput-object v1, p0, Lcom/miui/videoplayer/framework/popup/OptionMenuPopupWindow;->mCaptureScreenshotResultBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 47
    iput-object p2, p0, Lcom/miui/videoplayer/framework/popup/OptionMenuPopupWindow;->mAnchor:Landroid/view/View;

    .line 48
    iput-object p1, p0, Lcom/miui/videoplayer/framework/popup/OptionMenuPopupWindow;->mActivity:Landroid/app/Activity;

    .line 49
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/miui/videoplayer/framework/popup/OptionMenuPopupWindow;->mHandler:Landroid/os/Handler;

    .line 52
    invoke-virtual {p0}, Lcom/miui/videoplayer/framework/popup/OptionMenuPopupWindow;->getContentView()Landroid/view/View;

    move-result-object v0

    .line 53
    .local v0, contentView:Landroid/view/View;
    const v1, 0x7f020054

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 56
    invoke-direct {p0}, Lcom/miui/videoplayer/framework/popup/OptionMenuPopupWindow;->setupViews()V

    .line 57
    return-void
.end method

.method static synthetic access$000(Lcom/miui/videoplayer/framework/popup/OptionMenuPopupWindow;Landroid/view/View;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/miui/videoplayer/framework/popup/OptionMenuPopupWindow;->onMediaInfoClick(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$100(Lcom/miui/videoplayer/framework/popup/OptionMenuPopupWindow;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/miui/videoplayer/framework/popup/OptionMenuPopupWindow;->onOrientationSelectClicked()V

    return-void
.end method

.method static synthetic access$200(Lcom/miui/videoplayer/framework/popup/OptionMenuPopupWindow;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/miui/videoplayer/framework/popup/OptionMenuPopupWindow;->onScreenShotClicked()V

    return-void
.end method

.method static synthetic access$300(Lcom/miui/videoplayer/framework/popup/OptionMenuPopupWindow;)Lcom/miui/videoplayer/framework/ui/LocalVideoPlaySizeAdjustable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/miui/videoplayer/framework/popup/OptionMenuPopupWindow;->mSizeAdjustable:Lcom/miui/videoplayer/framework/ui/LocalVideoPlaySizeAdjustable;

    return-object v0
.end method

.method static synthetic access$400(Lcom/miui/videoplayer/framework/popup/OptionMenuPopupWindow;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/miui/videoplayer/framework/popup/OptionMenuPopupWindow;->onSwitchVideoWhClicked()V

    return-void
.end method

.method static synthetic access$500(Lcom/miui/videoplayer/framework/popup/OptionMenuPopupWindow;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/miui/videoplayer/framework/popup/OptionMenuPopupWindow;->onAboutClicked()V

    return-void
.end method

.method static synthetic access$600(Lcom/miui/videoplayer/framework/popup/OptionMenuPopupWindow;)Landroid/content/BroadcastReceiver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/miui/videoplayer/framework/popup/OptionMenuPopupWindow;->mCaptureScreenshotResultBroadcastReceiver:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method static synthetic access$700(Lcom/miui/videoplayer/framework/popup/OptionMenuPopupWindow;)Landroid/app/Activity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/miui/videoplayer/framework/popup/OptionMenuPopupWindow;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$800(Lcom/miui/videoplayer/framework/popup/OptionMenuPopupWindow;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/miui/videoplayer/framework/popup/OptionMenuPopupWindow;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private onAboutClicked()V
    .locals 3

    .prologue
    .line 137
    iget-object v0, p0, Lcom/miui/videoplayer/framework/popup/OptionMenuPopupWindow;->mAboutPopupWindow:Lcom/miui/videoplayer/framework/popup/AboutPopupWindow;

    if-nez v0, :cond_0

    .line 138
    new-instance v0, Lcom/miui/videoplayer/framework/popup/AboutPopupWindow;

    iget-object v1, p0, Lcom/miui/videoplayer/framework/popup/OptionMenuPopupWindow;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/miui/videoplayer/framework/popup/AboutPopupWindow;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/miui/videoplayer/framework/popup/OptionMenuPopupWindow;->mAboutPopupWindow:Lcom/miui/videoplayer/framework/popup/AboutPopupWindow;

    .line 140
    :cond_0
    iget-object v0, p0, Lcom/miui/videoplayer/framework/popup/OptionMenuPopupWindow;->mAboutPopupWindow:Lcom/miui/videoplayer/framework/popup/AboutPopupWindow;

    iget-object v1, p0, Lcom/miui/videoplayer/framework/popup/OptionMenuPopupWindow;->mAnchor:Landroid/view/View;

    invoke-virtual {p0}, Lcom/miui/videoplayer/framework/popup/OptionMenuPopupWindow;->getLocalMediaPlayerControl()Lcom/miui/videoplayer/framework/ui/LocalMediaPlayerControl;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/miui/videoplayer/framework/popup/AboutPopupWindow;->show(Landroid/view/View;Lcom/miui/videoplayer/framework/ui/MediaPlayerControl;)V

    .line 141
    return-void
.end method

.method private onMediaInfoClick(Landroid/view/View;)V
    .locals 5
    .parameter "view"

    .prologue
    const/4 v4, 0x0

    .line 264
    iget-object v1, p0, Lcom/miui/videoplayer/framework/popup/OptionMenuPopupWindow;->mActivity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/miui/videoplayer/framework/popup/MediaInfoPopupWindow;->getInstance(Landroid/content/Context;)Lcom/miui/videoplayer/framework/popup/MediaInfoPopupWindow;

    move-result-object v0

    .line 265
    .local v0, mediaInfoPopupWindow:Lcom/miui/videoplayer/framework/popup/MediaInfoPopupWindow;
    invoke-virtual {p0}, Lcom/miui/videoplayer/framework/popup/OptionMenuPopupWindow;->getLocalMediaPlayerControl()Lcom/miui/videoplayer/framework/ui/LocalMediaPlayerControl;

    move-result-object v1

    invoke-interface {v1}, Lcom/miui/videoplayer/framework/ui/LocalMediaPlayerControl;->getMediaInfo()Lcom/duokan/MediaPlayer$MediaInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/videoplayer/framework/popup/MediaInfoPopupWindow;->updateValues(Lcom/duokan/MediaPlayer$MediaInfo;)V

    .line 266
    invoke-virtual {v0}, Lcom/miui/videoplayer/framework/popup/MediaInfoPopupWindow;->isShowing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 267
    iget-object v1, p0, Lcom/miui/videoplayer/framework/popup/OptionMenuPopupWindow;->mAnchor:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/miui/videoplayer/framework/popup/MediaInfoPopupWindow;->show(Landroid/view/View;)V

    .line 268
    iget-object v1, p0, Lcom/miui/videoplayer/framework/popup/OptionMenuPopupWindow;->mDuokanCodecValues:[Ljava/lang/String;

    iget-object v2, p0, Lcom/miui/videoplayer/framework/popup/OptionMenuPopupWindow;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f050007

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    .line 274
    :goto_0
    invoke-direct {p0}, Lcom/miui/videoplayer/framework/popup/OptionMenuPopupWindow;->updateListView()V

    .line 275
    return-void

    .line 270
    :cond_0
    invoke-virtual {v0}, Lcom/miui/videoplayer/framework/popup/MediaInfoPopupWindow;->dismiss()V

    .line 271
    iget-object v1, p0, Lcom/miui/videoplayer/framework/popup/OptionMenuPopupWindow;->mDuokanCodecValues:[Ljava/lang/String;

    iget-object v2, p0, Lcom/miui/videoplayer/framework/popup/OptionMenuPopupWindow;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f050006

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    goto :goto_0
.end method

.method private onOrientationSelectClicked()V
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 207
    iget-object v6, p0, Lcom/miui/videoplayer/framework/popup/OptionMenuPopupWindow;->mActivity:Landroid/app/Activity;

    invoke-virtual {v6, v2}, Landroid/app/Activity;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 208
    .local v3, sp:Landroid/content/SharedPreferences;
    const-string v6, "shared_pereference_key_orientation_sensor"

    invoke-interface {v3, v6, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 210
    .local v1, isOrientationSensor:Z
    if-nez v1, :cond_0

    const/4 v2, 0x1

    .line 211
    .local v2, newValue:Z
    :cond_0
    invoke-direct {p0, v2}, Lcom/miui/videoplayer/framework/popup/OptionMenuPopupWindow;->updateOrientationShow(Z)V

    .line 212
    invoke-direct {p0}, Lcom/miui/videoplayer/framework/popup/OptionMenuPopupWindow;->updateListView()V

    .line 214
    if-eqz v2, :cond_2

    .line 215
    iget-object v6, p0, Lcom/miui/videoplayer/framework/popup/OptionMenuPopupWindow;->mActivity:Landroid/app/Activity;

    const/16 v7, 0xa

    invoke-virtual {v6, v7}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 226
    :cond_1
    :goto_0
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 227
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v6, "shared_pereference_key_orientation_sensor"

    invoke-interface {v0, v6, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 228
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 229
    return-void

    .line 216
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_2
    iget-object v6, p0, Lcom/miui/videoplayer/framework/popup/OptionMenuPopupWindow;->mSizeAdjustable:Lcom/miui/videoplayer/framework/ui/LocalVideoPlaySizeAdjustable;

    if-eqz v6, :cond_1

    .line 217
    iget-object v6, p0, Lcom/miui/videoplayer/framework/popup/OptionMenuPopupWindow;->mSizeAdjustable:Lcom/miui/videoplayer/framework/ui/LocalVideoPlaySizeAdjustable;

    invoke-interface {v6}, Lcom/miui/videoplayer/framework/ui/LocalVideoPlaySizeAdjustable;->getVideoWidth()I

    move-result v5

    .line 218
    .local v5, videoWidth:I
    iget-object v6, p0, Lcom/miui/videoplayer/framework/popup/OptionMenuPopupWindow;->mSizeAdjustable:Lcom/miui/videoplayer/framework/ui/LocalVideoPlaySizeAdjustable;

    invoke-interface {v6}, Lcom/miui/videoplayer/framework/ui/LocalVideoPlaySizeAdjustable;->getVideoHeight()I

    move-result v4

    .line 219
    .local v4, videoHeight:I
    if-ge v5, v4, :cond_3

    .line 220
    iget-object v6, p0, Lcom/miui/videoplayer/framework/popup/OptionMenuPopupWindow;->mActivity:Landroid/app/Activity;

    const/4 v7, 0x7

    invoke-virtual {v6, v7}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto :goto_0

    .line 222
    :cond_3
    iget-object v6, p0, Lcom/miui/videoplayer/framework/popup/OptionMenuPopupWindow;->mActivity:Landroid/app/Activity;

    const/4 v7, 0x6

    invoke-virtual {v6, v7}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto :goto_0
.end method

.method private onScreenShotClicked()V
    .locals 6

    .prologue
    .line 156
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/miui/videoplayer/framework/popup/OptionMenuPopupWindow;->setMenuDismissed(Z)V

    .line 157
    invoke-super {p0}, Lcom/miui/videoplayer/framework/popup/MenuPopupWindow;->dismiss()V

    .line 158
    invoke-virtual {p0}, Lcom/miui/videoplayer/framework/popup/OptionMenuPopupWindow;->getFullScreenPopupWindow()Lcom/miui/videoplayer/framework/popup/FullScreenPopupWindow;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/miui/videoplayer/framework/popup/OptionMenuPopupWindow;->getFullScreenPopupWindow()Lcom/miui/videoplayer/framework/popup/FullScreenPopupWindow;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/videoplayer/framework/popup/FullScreenPopupWindow;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 159
    invoke-virtual {p0}, Lcom/miui/videoplayer/framework/popup/OptionMenuPopupWindow;->getFullScreenPopupWindow()Lcom/miui/videoplayer/framework/popup/FullScreenPopupWindow;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/videoplayer/framework/popup/FullScreenPopupWindow;->dismiss()V

    .line 161
    :cond_0
    iget-object v2, p0, Lcom/miui/videoplayer/framework/popup/OptionMenuPopupWindow;->mMediaController:Lcom/miui/videoplayer/framework/views/OriginMediaController;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/miui/videoplayer/framework/popup/OptionMenuPopupWindow;->mMediaController:Lcom/miui/videoplayer/framework/views/OriginMediaController;

    invoke-virtual {v2}, Lcom/miui/videoplayer/framework/views/OriginMediaController;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 162
    iget-object v2, p0, Lcom/miui/videoplayer/framework/popup/OptionMenuPopupWindow;->mMediaController:Lcom/miui/videoplayer/framework/views/OriginMediaController;

    invoke-virtual {v2}, Lcom/miui/videoplayer/framework/views/OriginMediaController;->hide()V

    .line 164
    :cond_1
    iget-object v2, p0, Lcom/miui/videoplayer/framework/popup/OptionMenuPopupWindow;->mActivity:Landroid/app/Activity;

    invoke-static {v2}, Lcom/miui/videoplayer/framework/popup/MediaInfoPopupWindow;->getInstance(Landroid/content/Context;)Lcom/miui/videoplayer/framework/popup/MediaInfoPopupWindow;

    move-result-object v0

    .line 165
    .local v0, mediaInfoPopupWindow:Lcom/miui/videoplayer/framework/popup/MediaInfoPopupWindow;
    const/4 v1, 0x0

    .line 166
    .local v1, showMediaInfo:Z
    invoke-virtual {v0}, Lcom/miui/videoplayer/framework/popup/MediaInfoPopupWindow;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 169
    const/4 v1, 0x1

    .line 171
    :cond_2
    invoke-static {}, Lcom/miui/videoplayer/framework/popup/PopupWindowManager;->getInstance()Lcom/miui/videoplayer/framework/popup/PopupWindowManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/videoplayer/framework/popup/PopupWindowManager;->dimissAllManagedPopupWindow()V

    .line 172
    if-eqz v1, :cond_3

    .line 173
    iget-object v2, p0, Lcom/miui/videoplayer/framework/popup/OptionMenuPopupWindow;->mAnchor:Landroid/view/View;

    invoke-virtual {v0, v2}, Lcom/miui/videoplayer/framework/popup/MediaInfoPopupWindow;->show(Landroid/view/View;)V

    .line 176
    :cond_3
    iget-object v2, p0, Lcom/miui/videoplayer/framework/popup/OptionMenuPopupWindow;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/miui/videoplayer/framework/popup/OptionMenuPopupWindow$2;

    invoke-direct {v3, p0}, Lcom/miui/videoplayer/framework/popup/OptionMenuPopupWindow$2;-><init>(Lcom/miui/videoplayer/framework/popup/OptionMenuPopupWindow;)V

    const-wide/16 v4, 0x1f4

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 186
    return-void
.end method

.method private onSubTitleClicked()V
    .locals 5

    .prologue
    .line 144
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 145
    .local v2, testList:Ljava/util/List;,"Ljava/util/List<Lcom/miui/videoplayer/framework/history/PlayHistoryManager$PlayHistoryEntry;>;"
    new-instance v0, Lcom/miui/videoplayer/framework/history/PlayHistoryManager$PlayHistoryEntry;

    const-string v3, "/file/test1"

    invoke-direct {v0, v3}, Lcom/miui/videoplayer/framework/history/PlayHistoryManager$PlayHistoryEntry;-><init>(Ljava/lang/String;)V

    .line 146
    .local v0, entry1:Lcom/miui/videoplayer/framework/history/PlayHistoryManager$PlayHistoryEntry;
    const/16 v3, 0x14

    invoke-virtual {v0, v3}, Lcom/miui/videoplayer/framework/history/PlayHistoryManager$PlayHistoryEntry;->setPosition(I)V

    .line 147
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lcom/miui/videoplayer/framework/history/PlayHistoryManager$PlayHistoryEntry;->setTimeStamp(J)V

    .line 148
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 149
    new-instance v1, Lcom/miui/videoplayer/framework/history/PlayHistoryManager$PlayHistoryEntry;

    const-string v3, "http://eeee"

    invoke-direct {v1, v3}, Lcom/miui/videoplayer/framework/history/PlayHistoryManager$PlayHistoryEntry;-><init>(Ljava/lang/String;)V

    .line 150
    .local v1, entry2:Lcom/miui/videoplayer/framework/history/PlayHistoryManager$PlayHistoryEntry;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Lcom/miui/videoplayer/framework/history/PlayHistoryManager$PlayHistoryEntry;->setTimeStamp(J)V

    .line 151
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 153
    return-void
.end method

.method private onSwitchVideoWhClicked()V
    .locals 2

    .prologue
    .line 244
    iget-object v0, p0, Lcom/miui/videoplayer/framework/popup/OptionMenuPopupWindow;->mOptionSubMenuPopupWindow:Lcom/miui/videoplayer/framework/popup/OptionSubMenuPopupWindow;

    if-nez v0, :cond_1

    .line 254
    :cond_0
    :goto_0
    return-void

    .line 247
    :cond_1
    iget-object v0, p0, Lcom/miui/videoplayer/framework/popup/OptionMenuPopupWindow;->mOptionSubMenuPopupWindow:Lcom/miui/videoplayer/framework/popup/OptionSubMenuPopupWindow;

    invoke-virtual {p0}, Lcom/miui/videoplayer/framework/popup/OptionMenuPopupWindow;->getFullScreenPopupWindow()Lcom/miui/videoplayer/framework/popup/FullScreenPopupWindow;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/videoplayer/framework/popup/OptionSubMenuPopupWindow;->setFullScreenPopupWindow(Lcom/miui/videoplayer/framework/popup/FullScreenPopupWindow;)V

    .line 249
    iget-object v0, p0, Lcom/miui/videoplayer/framework/popup/OptionMenuPopupWindow;->mOptionSubMenuPopupWindow:Lcom/miui/videoplayer/framework/popup/OptionSubMenuPopupWindow;

    invoke-virtual {p0}, Lcom/miui/videoplayer/framework/popup/OptionMenuPopupWindow;->getLocalMediaPlayerControl()Lcom/miui/videoplayer/framework/ui/LocalMediaPlayerControl;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/videoplayer/framework/popup/OptionSubMenuPopupWindow;->setLocalMediaPlayerControl(Lcom/miui/videoplayer/framework/ui/LocalMediaPlayerControl;)V

    .line 250
    iget-object v0, p0, Lcom/miui/videoplayer/framework/popup/OptionMenuPopupWindow;->mOptionSubMenuPopupWindow:Lcom/miui/videoplayer/framework/popup/OptionSubMenuPopupWindow;

    invoke-virtual {v0}, Lcom/miui/videoplayer/framework/popup/OptionSubMenuPopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 251
    invoke-virtual {p0}, Lcom/miui/videoplayer/framework/popup/OptionMenuPopupWindow;->dismiss()V

    .line 252
    iget-object v0, p0, Lcom/miui/videoplayer/framework/popup/OptionMenuPopupWindow;->mOptionSubMenuPopupWindow:Lcom/miui/videoplayer/framework/popup/OptionSubMenuPopupWindow;

    iget-object v1, p0, Lcom/miui/videoplayer/framework/popup/OptionMenuPopupWindow;->mAnchor:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/miui/videoplayer/framework/popup/OptionSubMenuPopupWindow;->show(Landroid/view/View;)V

    goto :goto_0
.end method

.method private setupViews()V
    .locals 10

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 60
    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/String;

    iget-object v3, p0, Lcom/miui/videoplayer/framework/popup/OptionMenuPopupWindow;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f050006

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    iget-object v3, p0, Lcom/miui/videoplayer/framework/popup/OptionMenuPopupWindow;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f050024

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    iget-object v3, p0, Lcom/miui/videoplayer/framework/popup/OptionMenuPopupWindow;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f050025

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v7

    iget-object v3, p0, Lcom/miui/videoplayer/framework/popup/OptionMenuPopupWindow;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f050008

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v8

    iget-object v3, p0, Lcom/miui/videoplayer/framework/popup/OptionMenuPopupWindow;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f050009

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v9

    iput-object v2, p0, Lcom/miui/videoplayer/framework/popup/OptionMenuPopupWindow;->mDuokanCodecValues:[Ljava/lang/String;

    .line 68
    new-array v2, v9, [Ljava/lang/String;

    iget-object v3, p0, Lcom/miui/videoplayer/framework/popup/OptionMenuPopupWindow;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f050024

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    iget-object v3, p0, Lcom/miui/videoplayer/framework/popup/OptionMenuPopupWindow;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f050025

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    iget-object v3, p0, Lcom/miui/videoplayer/framework/popup/OptionMenuPopupWindow;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f050008

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v7

    iget-object v3, p0, Lcom/miui/videoplayer/framework/popup/OptionMenuPopupWindow;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f050009

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v8

    iput-object v2, p0, Lcom/miui/videoplayer/framework/popup/OptionMenuPopupWindow;->mOriginCodecValues:[Ljava/lang/String;

    .line 75
    iget-object v2, p0, Lcom/miui/videoplayer/framework/popup/OptionMenuPopupWindow;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2, v5}, Landroid/app/Activity;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 76
    .local v1, sp:Landroid/content/SharedPreferences;
    const-string v2, "shared_pereference_key_orientation_sensor"

    invoke-interface {v1, v2, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 78
    .local v0, isOrientationSensor:Z
    invoke-direct {p0, v0}, Lcom/miui/videoplayer/framework/popup/OptionMenuPopupWindow;->updateOrientationShow(Z)V

    .line 80
    invoke-direct {p0}, Lcom/miui/videoplayer/framework/popup/OptionMenuPopupWindow;->updateListView()V

    .line 82
    invoke-virtual {p0}, Lcom/miui/videoplayer/framework/popup/OptionMenuPopupWindow;->getOptionMenuListView()Landroid/widget/ListView;

    move-result-object v2

    new-instance v3, Lcom/miui/videoplayer/framework/popup/OptionMenuPopupWindow$1;

    invoke-direct {v3, p0}, Lcom/miui/videoplayer/framework/popup/OptionMenuPopupWindow$1;-><init>(Lcom/miui/videoplayer/framework/popup/OptionMenuPopupWindow;)V

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 134
    return-void
.end method

.method private updateListView()V
    .locals 7

    .prologue
    .line 278
    const/4 v3, 0x0

    .line 279
    .local v3, showValues:[Ljava/lang/String;
    sget-boolean v4, Lcom/miui/videoplayer/framework/DuoKanCodecConstants;->sUseDuokanCodec:Z

    if-eqz v4, :cond_0

    .line 280
    iget-object v3, p0, Lcom/miui/videoplayer/framework/popup/OptionMenuPopupWindow;->mDuokanCodecValues:[Ljava/lang/String;

    .line 285
    :goto_0
    sget-boolean v4, Lcom/miui/videoplayer/framework/DuoKanConstants;->IS_INTERNATIONAL_VERSION:Z

    if-nez v4, :cond_2

    .line 286
    array-length v4, v3

    add-int/lit8 v4, v4, -0x1

    new-array v2, v4, [Ljava/lang/String;

    .line 287
    .local v2, newValues:[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    array-length v4, v2

    if-ge v1, v4, :cond_1

    .line 288
    aget-object v4, v3, v1

    aput-object v4, v2, v1

    .line 287
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 282
    .end local v1           #i:I
    .end local v2           #newValues:[Ljava/lang/String;
    :cond_0
    iget-object v3, p0, Lcom/miui/videoplayer/framework/popup/OptionMenuPopupWindow;->mOriginCodecValues:[Ljava/lang/String;

    goto :goto_0

    .line 290
    .restart local v1       #i:I
    .restart local v2       #newValues:[Ljava/lang/String;
    :cond_1
    move-object v3, v2

    .line 293
    .end local v1           #i:I
    .end local v2           #newValues:[Ljava/lang/String;
    :cond_2
    const/4 v0, 0x0

    .line 295
    .local v0, adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    new-instance v0, Landroid/widget/ArrayAdapter;

    .end local v0           #adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    iget-object v4, p0, Lcom/miui/videoplayer/framework/popup/OptionMenuPopupWindow;->mActivity:Landroid/app/Activity;

    const v5, 0x7f03000b

    const v6, 0x7f09000e

    invoke-direct {v0, v4, v5, v6, v3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;II[Ljava/lang/Object;)V

    .line 299
    .restart local v0       #adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/miui/videoplayer/framework/popup/OptionMenuPopupWindow;->getOptionMenuListView()Landroid/widget/ListView;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 300
    return-void
.end method

.method private updateOrientationShow(Z)V
    .locals 6
    .parameter "isOrientationSensor"

    .prologue
    const v5, 0x7f050024

    const v4, 0x7f050023

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 233
    if-eqz p1, :cond_0

    .line 234
    iget-object v0, p0, Lcom/miui/videoplayer/framework/popup/OptionMenuPopupWindow;->mDuokanCodecValues:[Ljava/lang/String;

    iget-object v1, p0, Lcom/miui/videoplayer/framework/popup/OptionMenuPopupWindow;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    .line 235
    iget-object v0, p0, Lcom/miui/videoplayer/framework/popup/OptionMenuPopupWindow;->mOriginCodecValues:[Ljava/lang/String;

    iget-object v1, p0, Lcom/miui/videoplayer/framework/popup/OptionMenuPopupWindow;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    .line 241
    :goto_0
    return-void

    .line 237
    :cond_0
    iget-object v0, p0, Lcom/miui/videoplayer/framework/popup/OptionMenuPopupWindow;->mDuokanCodecValues:[Ljava/lang/String;

    iget-object v1, p0, Lcom/miui/videoplayer/framework/popup/OptionMenuPopupWindow;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    .line 238
    iget-object v0, p0, Lcom/miui/videoplayer/framework/popup/OptionMenuPopupWindow;->mOriginCodecValues:[Ljava/lang/String;

    iget-object v1, p0, Lcom/miui/videoplayer/framework/popup/OptionMenuPopupWindow;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    goto :goto_0
.end method


# virtual methods
.method protected getBackgroundResId(I)I
    .locals 1
    .parameter "orientation"

    .prologue
    .line 340
    if-nez p1, :cond_0

    .line 341
    const v0, 0x7f020054

    .line 343
    :goto_0
    return v0

    :cond_0
    const v0, 0x7f020055

    goto :goto_0
.end method

.method protected getMenuHeightForPortScreen()I
    .locals 7

    .prologue
    .line 316
    iget-object v5, p0, Lcom/miui/videoplayer/framework/popup/OptionMenuPopupWindow;->mActivity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f07000c

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v2, v5

    .line 318
    .local v2, itemHeight:I
    iget-object v5, p0, Lcom/miui/videoplayer/framework/popup/OptionMenuPopupWindow;->mActivity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f07004a

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v2, v5

    .line 320
    iget-object v5, p0, Lcom/miui/videoplayer/framework/popup/OptionMenuPopupWindow;->mActivity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f07000f

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v1, v5

    .line 321
    .local v1, divideHeight:I
    const/4 v3, 0x5

    .line 323
    .local v3, space:I
    iget-object v5, p0, Lcom/miui/videoplayer/framework/popup/OptionMenuPopupWindow;->mActivity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f070056

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v4, v5

    .line 324
    .local v4, verticalSpace:I
    add-int/2addr v3, v4

    .line 326
    const/4 v0, 0x0

    .line 327
    .local v0, count:I
    sget-boolean v5, Lcom/miui/videoplayer/framework/DuoKanCodecConstants;->sUseDuokanCodec:Z

    if-eqz v5, :cond_1

    .line 328
    const/4 v0, 0x4

    .line 332
    :goto_0
    sget-boolean v5, Lcom/miui/videoplayer/framework/DuoKanConstants;->IS_INTERNATIONAL_VERSION:Z

    if-eqz v5, :cond_0

    .line 333
    add-int/lit8 v0, v0, 0x1

    .line 335
    :cond_0
    add-int v5, v2, v1

    mul-int/2addr v5, v0

    add-int/2addr v5, v3

    return v5

    .line 330
    :cond_1
    const/4 v0, 0x3

    goto :goto_0
.end method

.method protected getMenuWidthForLandScreen()I
    .locals 3

    .prologue
    .line 349
    iget-object v1, p0, Lcom/miui/videoplayer/framework/popup/OptionMenuPopupWindow;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070021

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v0, v1

    .line 351
    .local v0, width:I
    iget-object v1, p0, Lcom/miui/videoplayer/framework/popup/OptionMenuPopupWindow;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070051

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v0, v1

    .line 353
    return v0
.end method

.method public setMediaController(Lcom/miui/videoplayer/framework/views/OriginMediaController;)V
    .locals 0
    .parameter "mediaController"

    .prologue
    .line 311
    iput-object p1, p0, Lcom/miui/videoplayer/framework/popup/OptionMenuPopupWindow;->mMediaController:Lcom/miui/videoplayer/framework/views/OriginMediaController;

    .line 312
    return-void
.end method

.method public setOptionSubMenuPopupWindow(Lcom/miui/videoplayer/framework/popup/OptionSubMenuPopupWindow;)V
    .locals 0
    .parameter "optionSubMenuPopupWindow"

    .prologue
    .line 307
    iput-object p1, p0, Lcom/miui/videoplayer/framework/popup/OptionMenuPopupWindow;->mOptionSubMenuPopupWindow:Lcom/miui/videoplayer/framework/popup/OptionSubMenuPopupWindow;

    .line 308
    return-void
.end method

.method public setSizeAdjustable(Lcom/miui/videoplayer/framework/ui/LocalVideoPlaySizeAdjustable;)V
    .locals 0
    .parameter "sizeAdjustable"

    .prologue
    .line 303
    iput-object p1, p0, Lcom/miui/videoplayer/framework/popup/OptionMenuPopupWindow;->mSizeAdjustable:Lcom/miui/videoplayer/framework/ui/LocalVideoPlaySizeAdjustable;

    .line 304
    return-void
.end method
