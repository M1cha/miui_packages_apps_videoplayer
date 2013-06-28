.class public Lcom/miui/videoplayer/framework/airkan/AirkanManager;
.super Ljava/lang/Object;
.source "AirkanManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/videoplayer/framework/airkan/AirkanManager$AirkanExistDeviceInfo;,
        Lcom/miui/videoplayer/framework/airkan/AirkanManager$AirkanChangedEvent;,
        Lcom/miui/videoplayer/framework/airkan/AirkanManager$AirkanOnChangedListener;,
        Lcom/miui/videoplayer/framework/airkan/AirkanManager$AirKanOnVideoEventListener;,
        Lcom/miui/videoplayer/framework/airkan/AirkanManager$AirKanOnDeviceChangeListener;
    }
.end annotation


# static fields
.field public static final AIRKAN_DEVICE_XIAOMI_PHONE:Ljava/lang/String; = "airkan_device_xiaomi_phone"

.field private static final AIRKAN_VOLUME_DELTA:F = 0.083f

.field private static final MESSAGE_WHAT_DEVICES_EMPTY:I = 0x2

.field private static final MESSAGE_WHAT_DEVICES_NOT_EMPTY:I = 0x3

.field private static final MESSAGE_WHAT_DIRECT_PLAY_TO_EXIST_DEVICE:I = 0x0

.field private static final MESSAGE_WHAT_FADE_OUT_VOLUME_POPUP_WINDOW:I = 0x1

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAirkanOnChangedListener:Lcom/miui/videoplayer/framework/airkan/AirkanManager$AirkanOnChangedListener;

.field private mContext:Landroid/content/Context;

.field private mDeviceChangedListenerList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/duokan/airkan/phone/api/DeviceManager$OnDeviceChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private mDeviceManager:Lcom/duokan/airkan/phone/api/DeviceManager;

.field private mDirectAirkan:Z

.field private mDirectAirkanUri:Landroid/net/Uri;

.field private mDuokanMediaController:Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;

.field private mExistDeviceName:Ljava/lang/String;

.field private mHandler:Landroid/os/Handler;

.field private mLocalPhoneMediaControl:Lcom/miui/videoplayer/framework/ui/LocalMediaPlayerControl;

.field private mMediaController:Lcom/miui/videoplayer/framework/views/OriginMediaController;

.field private mPlayHistoryManager:Lcom/miui/videoplayer/framework/history/PlayHistoryManager;

.field private mPlayingDeviceName:Ljava/lang/String;

.field private mRemoteTVMediaControl:Lcom/miui/videoplayer/framework/airkan/RemoteTVMediaPlayerControl;

.field private mVolumePopupWindow:Lcom/miui/videoplayer/framework/popup/VolumePopupWindow;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const-class v0, Lcom/miui/videoplayer/framework/airkan/AirkanManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/videoplayer/framework/airkan/AirkanManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/miui/videoplayer/framework/ui/LocalMediaPlayerControl;Lcom/miui/videoplayer/framework/views/OriginMediaController;Landroid/content/Context;)V
    .locals 3
    .parameter "localPhoneMediaControl"
    .parameter "mediaController"
    .parameter "context"

    .prologue
    .line 81
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 57
    const-string v1, "airkan_device_xiaomi_phone"

    iput-object v1, p0, Lcom/miui/videoplayer/framework/airkan/AirkanManager;->mPlayingDeviceName:Ljava/lang/String;

    .line 61
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/miui/videoplayer/framework/airkan/AirkanManager;->mDirectAirkan:Z

    .line 67
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/miui/videoplayer/framework/airkan/AirkanManager;->mDeviceChangedListenerList:Ljava/util/List;

    .line 128
    new-instance v1, Lcom/miui/videoplayer/framework/airkan/AirkanManager$1;

    invoke-direct {v1, p0}, Lcom/miui/videoplayer/framework/airkan/AirkanManager$1;-><init>(Lcom/miui/videoplayer/framework/airkan/AirkanManager;)V

    iput-object v1, p0, Lcom/miui/videoplayer/framework/airkan/AirkanManager;->mHandler:Landroid/os/Handler;

    .line 82
    iput-object p1, p0, Lcom/miui/videoplayer/framework/airkan/AirkanManager;->mLocalPhoneMediaControl:Lcom/miui/videoplayer/framework/ui/LocalMediaPlayerControl;

    .line 83
    iput-object p3, p0, Lcom/miui/videoplayer/framework/airkan/AirkanManager;->mContext:Landroid/content/Context;

    .line 84
    iput-object p2, p0, Lcom/miui/videoplayer/framework/airkan/AirkanManager;->mMediaController:Lcom/miui/videoplayer/framework/views/OriginMediaController;

    .line 85
    new-instance v1, Lcom/miui/videoplayer/framework/history/PlayHistoryManager;

    invoke-direct {v1, p3}, Lcom/miui/videoplayer/framework/history/PlayHistoryManager;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/miui/videoplayer/framework/airkan/AirkanManager;->mPlayHistoryManager:Lcom/miui/videoplayer/framework/history/PlayHistoryManager;

    .line 87
    new-instance v0, Lcom/miui/videoplayer/framework/airkan/AirkanManager$AirKanOnDeviceChangeListener;

    invoke-direct {v0, p0}, Lcom/miui/videoplayer/framework/airkan/AirkanManager$AirKanOnDeviceChangeListener;-><init>(Lcom/miui/videoplayer/framework/airkan/AirkanManager;)V

    .line 88
    .local v0, mOnDeviceChangeListener:Lcom/duokan/airkan/phone/api/DeviceManager$OnDeviceChangeListener;
    new-instance v1, Lcom/duokan/airkan/phone/api/DeviceManager;

    iget-object v2, p0, Lcom/miui/videoplayer/framework/airkan/AirkanManager;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, v0}, Lcom/duokan/airkan/phone/api/DeviceManager;-><init>(Landroid/content/Context;Lcom/duokan/airkan/phone/api/DeviceManager$OnDeviceChangeListener;)V

    iput-object v1, p0, Lcom/miui/videoplayer/framework/airkan/AirkanManager;->mDeviceManager:Lcom/duokan/airkan/phone/api/DeviceManager;

    .line 90
    invoke-direct {p0}, Lcom/miui/videoplayer/framework/airkan/AirkanManager;->initAirkan()V

    .line 91
    return-void
.end method

.method public constructor <init>(Lcom/miui/videoplayer/framework/ui/LocalMediaPlayerControl;Lcom/miui/videoplayer/framework/views/OriginMediaController;Landroid/content/Context;Lcom/miui/videoplayer/framework/airkan/AirkanManager$AirkanExistDeviceInfo;)V
    .locals 3
    .parameter "localPhoneMediaControl"
    .parameter "mediaController"
    .parameter "context"
    .parameter "airkanExistDeviceInfo"

    .prologue
    .line 93
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 57
    const-string v1, "airkan_device_xiaomi_phone"

    iput-object v1, p0, Lcom/miui/videoplayer/framework/airkan/AirkanManager;->mPlayingDeviceName:Ljava/lang/String;

    .line 61
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/miui/videoplayer/framework/airkan/AirkanManager;->mDirectAirkan:Z

    .line 67
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/miui/videoplayer/framework/airkan/AirkanManager;->mDeviceChangedListenerList:Ljava/util/List;

    .line 128
    new-instance v1, Lcom/miui/videoplayer/framework/airkan/AirkanManager$1;

    invoke-direct {v1, p0}, Lcom/miui/videoplayer/framework/airkan/AirkanManager$1;-><init>(Lcom/miui/videoplayer/framework/airkan/AirkanManager;)V

    iput-object v1, p0, Lcom/miui/videoplayer/framework/airkan/AirkanManager;->mHandler:Landroid/os/Handler;

    .line 94
    iput-object p1, p0, Lcom/miui/videoplayer/framework/airkan/AirkanManager;->mLocalPhoneMediaControl:Lcom/miui/videoplayer/framework/ui/LocalMediaPlayerControl;

    .line 95
    iput-object p3, p0, Lcom/miui/videoplayer/framework/airkan/AirkanManager;->mContext:Landroid/content/Context;

    .line 96
    iput-object p2, p0, Lcom/miui/videoplayer/framework/airkan/AirkanManager;->mMediaController:Lcom/miui/videoplayer/framework/views/OriginMediaController;

    .line 97
    new-instance v1, Lcom/miui/videoplayer/framework/history/PlayHistoryManager;

    invoke-direct {v1, p3}, Lcom/miui/videoplayer/framework/history/PlayHistoryManager;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/miui/videoplayer/framework/airkan/AirkanManager;->mPlayHistoryManager:Lcom/miui/videoplayer/framework/history/PlayHistoryManager;

    .line 99
    new-instance v0, Lcom/miui/videoplayer/framework/airkan/AirkanManager$AirKanOnDeviceChangeListener;

    invoke-direct {v0, p0}, Lcom/miui/videoplayer/framework/airkan/AirkanManager$AirKanOnDeviceChangeListener;-><init>(Lcom/miui/videoplayer/framework/airkan/AirkanManager;)V

    .line 100
    .local v0, mOnDeviceChangeListener:Lcom/duokan/airkan/phone/api/DeviceManager$OnDeviceChangeListener;
    new-instance v1, Lcom/duokan/airkan/phone/api/DeviceManager;

    iget-object v2, p0, Lcom/miui/videoplayer/framework/airkan/AirkanManager;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, v0}, Lcom/duokan/airkan/phone/api/DeviceManager;-><init>(Landroid/content/Context;Lcom/duokan/airkan/phone/api/DeviceManager$OnDeviceChangeListener;)V

    iput-object v1, p0, Lcom/miui/videoplayer/framework/airkan/AirkanManager;->mDeviceManager:Lcom/duokan/airkan/phone/api/DeviceManager;

    .line 101
    invoke-virtual {p4}, Lcom/miui/videoplayer/framework/airkan/AirkanManager$AirkanExistDeviceInfo;->getExistDeviceName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/videoplayer/framework/airkan/AirkanManager;->mExistDeviceName:Ljava/lang/String;

    .line 102
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/miui/videoplayer/framework/airkan/AirkanManager;->mDirectAirkan:Z

    .line 104
    invoke-direct {p0}, Lcom/miui/videoplayer/framework/airkan/AirkanManager;->initAirkan()V

    .line 105
    return-void
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lcom/miui/videoplayer/framework/airkan/AirkanManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/miui/videoplayer/framework/airkan/AirkanManager;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/miui/videoplayer/framework/airkan/AirkanManager;->mExistDeviceName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/miui/videoplayer/framework/airkan/AirkanManager;)Landroid/net/Uri;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/miui/videoplayer/framework/airkan/AirkanManager;->mDirectAirkanUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$400(Lcom/miui/videoplayer/framework/airkan/AirkanManager;)Lcom/miui/videoplayer/framework/popup/VolumePopupWindow;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/miui/videoplayer/framework/airkan/AirkanManager;->mVolumePopupWindow:Lcom/miui/videoplayer/framework/popup/VolumePopupWindow;

    return-object v0
.end method

.method static synthetic access$500(Lcom/miui/videoplayer/framework/airkan/AirkanManager;)Lcom/miui/videoplayer/framework/views/OriginMediaController;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/miui/videoplayer/framework/airkan/AirkanManager;->mMediaController:Lcom/miui/videoplayer/framework/views/OriginMediaController;

    return-object v0
.end method

.method static synthetic access$600(Lcom/miui/videoplayer/framework/airkan/AirkanManager;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/miui/videoplayer/framework/airkan/AirkanManager;->mDeviceChangedListenerList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$700(Lcom/miui/videoplayer/framework/airkan/AirkanManager;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/miui/videoplayer/framework/airkan/AirkanManager;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$800(Lcom/miui/videoplayer/framework/airkan/AirkanManager;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-boolean v0, p0, Lcom/miui/videoplayer/framework/airkan/AirkanManager;->mDirectAirkan:Z

    return v0
.end method

.method private controlLocalPlay()V
    .locals 2

    .prologue
    .line 450
    iget-object v0, p0, Lcom/miui/videoplayer/framework/airkan/AirkanManager;->mMediaController:Lcom/miui/videoplayer/framework/views/OriginMediaController;

    iget-object v1, p0, Lcom/miui/videoplayer/framework/airkan/AirkanManager;->mLocalPhoneMediaControl:Lcom/miui/videoplayer/framework/ui/LocalMediaPlayerControl;

    invoke-virtual {v0, v1}, Lcom/miui/videoplayer/framework/views/OriginMediaController;->setMediaPlayer(Lcom/miui/videoplayer/framework/ui/MediaPlayerControl;)V

    .line 451
    iget-object v0, p0, Lcom/miui/videoplayer/framework/airkan/AirkanManager;->mRemoteTVMediaControl:Lcom/miui/videoplayer/framework/airkan/RemoteTVMediaPlayerControl;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/videoplayer/framework/airkan/RemoteTVMediaPlayerControl;->setMediaController(Lcom/miui/videoplayer/framework/views/OriginMediaController;)V

    .line 452
    return-void
.end method

.method private controlRemotePlay()V
    .locals 2

    .prologue
    .line 455
    iget-object v0, p0, Lcom/miui/videoplayer/framework/airkan/AirkanManager;->mRemoteTVMediaControl:Lcom/miui/videoplayer/framework/airkan/RemoteTVMediaPlayerControl;

    iget-object v1, p0, Lcom/miui/videoplayer/framework/airkan/AirkanManager;->mMediaController:Lcom/miui/videoplayer/framework/views/OriginMediaController;

    invoke-virtual {v0, v1}, Lcom/miui/videoplayer/framework/airkan/RemoteTVMediaPlayerControl;->setMediaController(Lcom/miui/videoplayer/framework/views/OriginMediaController;)V

    .line 456
    return-void
.end method

.method private decreaseDeviceVolume()V
    .locals 5

    .prologue
    .line 484
    iget-object v2, p0, Lcom/miui/videoplayer/framework/airkan/AirkanManager;->mRemoteTVMediaControl:Lcom/miui/videoplayer/framework/airkan/RemoteTVMediaPlayerControl;

    invoke-virtual {v2}, Lcom/miui/videoplayer/framework/airkan/RemoteTVMediaPlayerControl;->getVolume()F

    move-result v0

    .line 485
    .local v0, current:F
    sget-object v2, Lcom/miui/videoplayer/framework/airkan/AirkanManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "current airkan volume:  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 486
    const v2, 0x3da9fbe7

    sub-float v1, v0, v2

    .line 487
    .local v1, newvol:F
    const/4 v2, 0x0

    cmpg-float v2, v1, v2

    if-gez v2, :cond_0

    .line 488
    const/4 v1, 0x0

    .line 490
    :cond_0
    sget-object v2, Lcom/miui/videoplayer/framework/airkan/AirkanManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "decrease airkan volume to:  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 491
    iget-object v2, p0, Lcom/miui/videoplayer/framework/airkan/AirkanManager;->mRemoteTVMediaControl:Lcom/miui/videoplayer/framework/airkan/RemoteTVMediaPlayerControl;

    invoke-virtual {v2, v1}, Lcom/miui/videoplayer/framework/airkan/RemoteTVMediaPlayerControl;->setVolume(F)V

    .line 492
    invoke-virtual {p0, v1}, Lcom/miui/videoplayer/framework/airkan/AirkanManager;->showVolumePopupWindow(F)V

    .line 493
    return-void
.end method

.method private getLocalVideoControlDate()Lcom/duokan/airkan/common/video/VideoControlData;
    .locals 2

    .prologue
    .line 378
    new-instance v0, Lcom/duokan/airkan/common/video/VideoControlData;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/duokan/airkan/common/video/VideoControlData;-><init>(B)V

    .line 379
    .local v0, result:Lcom/duokan/airkan/common/video/VideoControlData;
    iget-object v1, p0, Lcom/miui/videoplayer/framework/airkan/AirkanManager;->mLocalPhoneMediaControl:Lcom/miui/videoplayer/framework/ui/LocalMediaPlayerControl;

    invoke-interface {v1}, Lcom/miui/videoplayer/framework/ui/LocalMediaPlayerControl;->getCurrentPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/duokan/airkan/common/video/VideoControlData;->setPosition(I)V

    .line 380
    iget-object v1, p0, Lcom/miui/videoplayer/framework/airkan/AirkanManager;->mLocalPhoneMediaControl:Lcom/miui/videoplayer/framework/ui/LocalMediaPlayerControl;

    invoke-interface {v1}, Lcom/miui/videoplayer/framework/ui/LocalMediaPlayerControl;->isPlaying()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/duokan/airkan/common/video/VideoControlData;->setPlaying(Z)V

    .line 381
    return-object v0
.end method

.method private getRemoteVideoControlDate()Lcom/duokan/airkan/common/video/VideoControlData;
    .locals 2

    .prologue
    .line 385
    new-instance v0, Lcom/duokan/airkan/common/video/VideoControlData;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/duokan/airkan/common/video/VideoControlData;-><init>(B)V

    .line 386
    .local v0, result:Lcom/duokan/airkan/common/video/VideoControlData;
    iget-object v1, p0, Lcom/miui/videoplayer/framework/airkan/AirkanManager;->mRemoteTVMediaControl:Lcom/miui/videoplayer/framework/airkan/RemoteTVMediaPlayerControl;

    invoke-virtual {v1}, Lcom/miui/videoplayer/framework/airkan/RemoteTVMediaPlayerControl;->getCurrentPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/duokan/airkan/common/video/VideoControlData;->setPosition(I)V

    .line 387
    iget-object v1, p0, Lcom/miui/videoplayer/framework/airkan/AirkanManager;->mRemoteTVMediaControl:Lcom/miui/videoplayer/framework/airkan/RemoteTVMediaPlayerControl;

    invoke-virtual {v1}, Lcom/miui/videoplayer/framework/airkan/RemoteTVMediaPlayerControl;->isPlaying()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/duokan/airkan/common/video/VideoControlData;->setPlaying(Z)V

    .line 388
    iget-object v1, p0, Lcom/miui/videoplayer/framework/airkan/AirkanManager;->mRemoteTVMediaControl:Lcom/miui/videoplayer/framework/airkan/RemoteTVMediaPlayerControl;

    invoke-virtual {v1}, Lcom/miui/videoplayer/framework/airkan/RemoteTVMediaPlayerControl;->getUri()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/duokan/airkan/common/video/VideoControlData;->setURL(Ljava/lang/String;)V

    .line 389
    return-object v0
.end method

.method private increaseDeviceVolume()V
    .locals 5

    .prologue
    .line 472
    iget-object v2, p0, Lcom/miui/videoplayer/framework/airkan/AirkanManager;->mRemoteTVMediaControl:Lcom/miui/videoplayer/framework/airkan/RemoteTVMediaPlayerControl;

    invoke-virtual {v2}, Lcom/miui/videoplayer/framework/airkan/RemoteTVMediaPlayerControl;->getVolume()F

    move-result v0

    .line 473
    .local v0, current:F
    sget-object v2, Lcom/miui/videoplayer/framework/airkan/AirkanManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "current airkan volume:  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 474
    const v2, 0x3da9fbe7

    add-float v1, v0, v2

    .line 475
    .local v1, newvol:F
    const/high16 v2, 0x3f80

    cmpl-float v2, v1, v2

    if-lez v2, :cond_0

    .line 476
    const/high16 v1, 0x3f80

    .line 478
    :cond_0
    sget-object v2, Lcom/miui/videoplayer/framework/airkan/AirkanManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "increase airkan volume to:  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 479
    iget-object v2, p0, Lcom/miui/videoplayer/framework/airkan/AirkanManager;->mRemoteTVMediaControl:Lcom/miui/videoplayer/framework/airkan/RemoteTVMediaPlayerControl;

    invoke-virtual {v2, v1}, Lcom/miui/videoplayer/framework/airkan/RemoteTVMediaPlayerControl;->setVolume(F)V

    .line 480
    invoke-virtual {p0, v1}, Lcom/miui/videoplayer/framework/airkan/AirkanManager;->showVolumePopupWindow(F)V

    .line 481
    return-void
.end method

.method private initAirkan()V
    .locals 5

    .prologue
    .line 116
    new-instance v0, Lcom/duokan/airkan/phone/api/VideoManager;

    iget-object v1, p0, Lcom/miui/videoplayer/framework/airkan/AirkanManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/videoplayer/framework/airkan/AirkanManager;->mDeviceManager:Lcom/duokan/airkan/phone/api/DeviceManager;

    new-instance v3, Lcom/miui/videoplayer/framework/airkan/AirkanManager$AirKanOnVideoEventListener;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/miui/videoplayer/framework/airkan/AirkanManager$AirKanOnVideoEventListener;-><init>(Lcom/miui/videoplayer/framework/airkan/AirkanManager;Lcom/miui/videoplayer/framework/airkan/AirkanManager$1;)V

    invoke-direct {v0, v1, v2, v3}, Lcom/duokan/airkan/phone/api/VideoManager;-><init>(Ljava/lang/String;Lcom/duokan/airkan/phone/api/DeviceManager;Lcom/duokan/airkan/phone/api/VideoManager$OnVideoEventListener;)V

    .line 117
    .local v0, videoManager:Lcom/duokan/airkan/phone/api/VideoManager;
    new-instance v1, Lcom/miui/videoplayer/framework/airkan/RemoteTVMediaPlayerControl;

    iget-object v2, p0, Lcom/miui/videoplayer/framework/airkan/AirkanManager;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/miui/videoplayer/framework/airkan/RemoteTVMediaPlayerControl;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/miui/videoplayer/framework/airkan/AirkanManager;->mRemoteTVMediaControl:Lcom/miui/videoplayer/framework/airkan/RemoteTVMediaPlayerControl;

    .line 118
    iget-object v1, p0, Lcom/miui/videoplayer/framework/airkan/AirkanManager;->mRemoteTVMediaControl:Lcom/miui/videoplayer/framework/airkan/RemoteTVMediaPlayerControl;

    invoke-virtual {v1, v0}, Lcom/miui/videoplayer/framework/airkan/RemoteTVMediaPlayerControl;->setVideoManager(Lcom/duokan/airkan/phone/api/VideoManager;)V

    .line 119
    return-void
.end method

.method private playInLocal(Lcom/duokan/airkan/common/video/VideoControlData;)V
    .locals 4
    .parameter "remoteControlData"

    .prologue
    .line 359
    invoke-virtual {p1}, Lcom/duokan/airkan/common/video/VideoControlData;->getPosition()I

    move-result v0

    .line 360
    .local v0, position:I
    invoke-virtual {p1}, Lcom/duokan/airkan/common/video/VideoControlData;->getURL()Ljava/lang/String;

    move-result-object v1

    .line 361
    .local v1, uri:Ljava/lang/String;
    iget-object v2, p0, Lcom/miui/videoplayer/framework/airkan/AirkanManager;->mLocalPhoneMediaControl:Lcom/miui/videoplayer/framework/ui/LocalMediaPlayerControl;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/miui/videoplayer/framework/ui/LocalMediaPlayerControl;->startLocalPlayForAirkan(Landroid/net/Uri;)V

    .line 362
    iget-object v2, p0, Lcom/miui/videoplayer/framework/airkan/AirkanManager;->mLocalPhoneMediaControl:Lcom/miui/videoplayer/framework/ui/LocalMediaPlayerControl;

    invoke-interface {v2, v0}, Lcom/miui/videoplayer/framework/ui/LocalMediaPlayerControl;->seekTo(I)V

    .line 363
    iget-boolean v2, p0, Lcom/miui/videoplayer/framework/airkan/AirkanManager;->mDirectAirkan:Z

    if-nez v2, :cond_0

    .line 364
    iget-object v2, p0, Lcom/miui/videoplayer/framework/airkan/AirkanManager;->mMediaController:Lcom/miui/videoplayer/framework/views/OriginMediaController;

    invoke-virtual {v2}, Lcom/miui/videoplayer/framework/views/OriginMediaController;->changeToLocalPlaySize()V

    .line 366
    :cond_0
    iget-object v2, p0, Lcom/miui/videoplayer/framework/airkan/AirkanManager;->mDuokanMediaController:Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;

    if-eqz v2, :cond_1

    .line 367
    iget-object v2, p0, Lcom/miui/videoplayer/framework/airkan/AirkanManager;->mDuokanMediaController:Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->checkNetwork(Landroid/net/Uri;)V

    .line 369
    :cond_1
    return-void
.end method

.method private playInRemoteTV(Ljava/lang/String;Landroid/net/Uri;)V
    .locals 5
    .parameter "deviceName"
    .parameter "videoUri"

    .prologue
    .line 393
    invoke-direct {p0}, Lcom/miui/videoplayer/framework/airkan/AirkanManager;->getLocalVideoControlDate()Lcom/duokan/airkan/common/video/VideoControlData;

    move-result-object v0

    .line 394
    .local v0, localControlData:Lcom/duokan/airkan/common/video/VideoControlData;
    invoke-virtual {v0}, Lcom/duokan/airkan/common/video/VideoControlData;->getPosition()I

    move-result v1

    .line 430
    .local v1, localPosition:I
    sget-object v2, Lcom/miui/videoplayer/framework/airkan/AirkanManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "air play url: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 431
    iget-object v2, p0, Lcom/miui/videoplayer/framework/airkan/AirkanManager;->mRemoteTVMediaControl:Lcom/miui/videoplayer/framework/airkan/RemoteTVMediaPlayerControl;

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v2, v3, v4, v1}, Lcom/miui/videoplayer/framework/airkan/RemoteTVMediaPlayerControl;->setVideoURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 432
    iget-object v2, p0, Lcom/miui/videoplayer/framework/airkan/AirkanManager;->mRemoteTVMediaControl:Lcom/miui/videoplayer/framework/airkan/RemoteTVMediaPlayerControl;

    invoke-virtual {v2, p1}, Lcom/miui/videoplayer/framework/airkan/RemoteTVMediaPlayerControl;->playTo(Ljava/lang/String;)V

    .line 433
    iget-object v2, p0, Lcom/miui/videoplayer/framework/airkan/AirkanManager;->mMediaController:Lcom/miui/videoplayer/framework/views/OriginMediaController;

    invoke-virtual {v2}, Lcom/miui/videoplayer/framework/views/OriginMediaController;->changeToAirkanSize()V

    .line 434
    return-void
.end method

.method private stopLocalPlay()V
    .locals 1

    .prologue
    .line 446
    iget-object v0, p0, Lcom/miui/videoplayer/framework/airkan/AirkanManager;->mLocalPhoneMediaControl:Lcom/miui/videoplayer/framework/ui/LocalMediaPlayerControl;

    invoke-interface {v0}, Lcom/miui/videoplayer/framework/ui/LocalMediaPlayerControl;->stopLocalPlayForAirkan()V

    .line 447
    return-void
.end method


# virtual methods
.method public closeDeviceManager()V
    .locals 2

    .prologue
    .line 162
    iget-object v0, p0, Lcom/miui/videoplayer/framework/airkan/AirkanManager;->mDeviceManager:Lcom/duokan/airkan/phone/api/DeviceManager;

    if-eqz v0, :cond_0

    .line 163
    sget-object v0, Lcom/miui/videoplayer/framework/airkan/AirkanManager;->TAG:Ljava/lang/String;

    const-string v1, "Start Unbind Phone Service!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    iget-object v0, p0, Lcom/miui/videoplayer/framework/airkan/AirkanManager;->mDeviceManager:Lcom/duokan/airkan/phone/api/DeviceManager;

    invoke-virtual {v0}, Lcom/duokan/airkan/phone/api/DeviceManager;->close()V

    .line 165
    sget-object v0, Lcom/miui/videoplayer/framework/airkan/AirkanManager;->TAG:Ljava/lang/String;

    const-string v1, "End Unbind Phone Service!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    :cond_0
    return-void
.end method

.method public getCurrentPosition()I
    .locals 1

    .prologue
    .line 544
    iget-object v0, p0, Lcom/miui/videoplayer/framework/airkan/AirkanManager;->mRemoteTVMediaControl:Lcom/miui/videoplayer/framework/airkan/RemoteTVMediaPlayerControl;

    if-eqz v0, :cond_0

    .line 545
    iget-object v0, p0, Lcom/miui/videoplayer/framework/airkan/AirkanManager;->mRemoteTVMediaControl:Lcom/miui/videoplayer/framework/airkan/RemoteTVMediaPlayerControl;

    invoke-virtual {v0}, Lcom/miui/videoplayer/framework/airkan/RemoteTVMediaPlayerControl;->getCurrentPosition()I

    move-result v0

    .line 547
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDuration()I
    .locals 1

    .prologue
    .line 551
    iget-object v0, p0, Lcom/miui/videoplayer/framework/airkan/AirkanManager;->mRemoteTVMediaControl:Lcom/miui/videoplayer/framework/airkan/RemoteTVMediaPlayerControl;

    if-eqz v0, :cond_0

    .line 552
    iget-object v0, p0, Lcom/miui/videoplayer/framework/airkan/AirkanManager;->mRemoteTVMediaControl:Lcom/miui/videoplayer/framework/airkan/RemoteTVMediaPlayerControl;

    invoke-virtual {v0}, Lcom/miui/videoplayer/framework/airkan/RemoteTVMediaPlayerControl;->getDuration()I

    move-result v0

    .line 554
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPlayingDeviceName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 532
    iget-object v0, p0, Lcom/miui/videoplayer/framework/airkan/AirkanManager;->mPlayingDeviceName:Ljava/lang/String;

    return-object v0
.end method

.method public isPlayingInLocal()Z
    .locals 2

    .prologue
    .line 112
    const-string v0, "airkan_device_xiaomi_phone"

    iget-object v1, p0, Lcom/miui/videoplayer/framework/airkan/AirkanManager;->mPlayingDeviceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public onActivityCreate()V
    .locals 0

    .prologue
    .line 516
    return-void
.end method

.method public onActivityDestroy()V
    .locals 0

    .prologue
    .line 529
    return-void
.end method

.method public onActivityStart()V
    .locals 0

    .prologue
    .line 519
    return-void
.end method

.method public onActivityStop()V
    .locals 0

    .prologue
    .line 522
    return-void
.end method

.method public onAirkanChanged(Lcom/miui/videoplayer/framework/airkan/AirkanManager$AirkanChangedEvent;)V
    .locals 1
    .parameter "event"

    .prologue
    .line 327
    iget-object v0, p0, Lcom/miui/videoplayer/framework/airkan/AirkanManager;->mAirkanOnChangedListener:Lcom/miui/videoplayer/framework/airkan/AirkanManager$AirkanOnChangedListener;

    if-eqz v0, :cond_0

    .line 328
    iget-object v0, p0, Lcom/miui/videoplayer/framework/airkan/AirkanManager;->mAirkanOnChangedListener:Lcom/miui/videoplayer/framework/airkan/AirkanManager$AirkanOnChangedListener;

    invoke-interface {v0, p1}, Lcom/miui/videoplayer/framework/airkan/AirkanManager$AirkanOnChangedListener;->onAirKanChanged(Lcom/miui/videoplayer/framework/airkan/AirkanManager$AirkanChangedEvent;)V

    .line 330
    :cond_0
    return-void
.end method

.method public onVolumeKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2
    .parameter "event"

    .prologue
    .line 459
    invoke-virtual {p0}, Lcom/miui/videoplayer/framework/airkan/AirkanManager;->isPlayingInLocal()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 460
    const/4 v0, 0x0

    .line 468
    :goto_0
    return v0

    .line 462
    :cond_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x19

    if-ne v0, v1, :cond_1

    .line 463
    invoke-direct {p0}, Lcom/miui/videoplayer/framework/airkan/AirkanManager;->decreaseDeviceVolume()V

    .line 468
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 465
    :cond_1
    invoke-direct {p0}, Lcom/miui/videoplayer/framework/airkan/AirkanManager;->increaseDeviceVolume()V

    goto :goto_1
.end method

.method public openDeviceManager()V
    .locals 2

    .prologue
    .line 122
    iget-object v0, p0, Lcom/miui/videoplayer/framework/airkan/AirkanManager;->mDeviceManager:Lcom/duokan/airkan/phone/api/DeviceManager;

    if-eqz v0, :cond_0

    .line 123
    sget-object v0, Lcom/miui/videoplayer/framework/airkan/AirkanManager;->TAG:Ljava/lang/String;

    const-string v1, "Bind Phone Service!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    iget-object v0, p0, Lcom/miui/videoplayer/framework/airkan/AirkanManager;->mDeviceManager:Lcom/duokan/airkan/phone/api/DeviceManager;

    invoke-virtual {v0}, Lcom/duokan/airkan/phone/api/DeviceManager;->open()Z

    .line 126
    :cond_0
    return-void
.end method

.method public playToDevice(Ljava/lang/String;Landroid/net/Uri;)V
    .locals 4
    .parameter "deviceName"
    .parameter "videoUri"

    .prologue
    .line 345
    sget-object v1, Lcom/miui/videoplayer/framework/airkan/AirkanManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Play to device: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " uri:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    iput-object p1, p0, Lcom/miui/videoplayer/framework/airkan/AirkanManager;->mPlayingDeviceName:Ljava/lang/String;

    .line 350
    new-instance v0, Lcom/miui/videoplayer/framework/airkan/AirkanManager$AirkanChangedEvent;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/miui/videoplayer/framework/airkan/AirkanManager$AirkanChangedEvent;-><init>(I)V

    .line 351
    .local v0, event:Lcom/miui/videoplayer/framework/airkan/AirkanManager$AirkanChangedEvent;
    invoke-virtual {p0, v0}, Lcom/miui/videoplayer/framework/airkan/AirkanManager;->onAirkanChanged(Lcom/miui/videoplayer/framework/airkan/AirkanManager$AirkanChangedEvent;)V

    .line 353
    invoke-direct {p0}, Lcom/miui/videoplayer/framework/airkan/AirkanManager;->controlRemotePlay()V

    .line 354
    invoke-direct {p0, p1, p2}, Lcom/miui/videoplayer/framework/airkan/AirkanManager;->playInRemoteTV(Ljava/lang/String;Landroid/net/Uri;)V

    .line 355
    invoke-direct {p0}, Lcom/miui/videoplayer/framework/airkan/AirkanManager;->stopLocalPlay()V

    .line 356
    return-void
.end method

.method public queryAirkanDevices()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 311
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 312
    .local v3, result:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 314
    .local v2, parcelDeviceDataList:Ljava/util/List;,"Ljava/util/List<Lcom/duokan/airkan/common/aidl/ParcelDeviceData;>;"
    :try_start_0
    iget-object v4, p0, Lcom/miui/videoplayer/framework/airkan/AirkanManager;->mDeviceManager:Lcom/duokan/airkan/phone/api/DeviceManager;

    invoke-virtual {v4, v2}, Lcom/duokan/airkan/phone/api/DeviceManager;->queryDevices(Ljava/util/List;)V
    :try_end_0
    .catch Lcom/duokan/airkan/common/AirkanException; {:try_start_0 .. :try_end_0} :catch_0

    .line 319
    :goto_0
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_0

    .line 321
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/duokan/airkan/common/aidl/ParcelDeviceData;

    iget-object v4, v4, Lcom/duokan/airkan/common/aidl/ParcelDeviceData;->mName:Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 319
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 315
    .end local v1           #i:I
    :catch_0
    move-exception v0

    .line 316
    .local v0, e:Lcom/duokan/airkan/common/AirkanException;
    invoke-virtual {v0}, Lcom/duokan/airkan/common/AirkanException;->printStackTrace()V

    goto :goto_0

    .line 323
    .end local v0           #e:Lcom/duokan/airkan/common/AirkanException;
    .restart local v1       #i:I
    :cond_0
    return-object v3
.end method

.method public registeOnDeviceChangeListener(Lcom/duokan/airkan/phone/api/DeviceManager$OnDeviceChangeListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/miui/videoplayer/framework/airkan/AirkanManager;->mDeviceChangedListenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 71
    iget-object v0, p0, Lcom/miui/videoplayer/framework/airkan/AirkanManager;->mDeviceChangedListenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 73
    :cond_0
    return-void
.end method

.method public setAirkanOnChangedListener(Lcom/miui/videoplayer/framework/airkan/AirkanManager$AirkanOnChangedListener;)V
    .locals 0
    .parameter "airkanOnChangedListener"

    .prologue
    .line 108
    iput-object p1, p0, Lcom/miui/videoplayer/framework/airkan/AirkanManager;->mAirkanOnChangedListener:Lcom/miui/videoplayer/framework/airkan/AirkanManager$AirkanOnChangedListener;

    .line 109
    return-void
.end method

.method public setDirectAirkanUri(Landroid/net/Uri;)V
    .locals 0
    .parameter "uri"

    .prologue
    .line 536
    iput-object p1, p0, Lcom/miui/videoplayer/framework/airkan/AirkanManager;->mDirectAirkanUri:Landroid/net/Uri;

    .line 537
    return-void
.end method

.method public setDuokanMediaController(Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;)V
    .locals 0
    .parameter "duokanMediaController"

    .prologue
    .line 540
    iput-object p1, p0, Lcom/miui/videoplayer/framework/airkan/AirkanManager;->mDuokanMediaController:Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;

    .line 541
    return-void
.end method

.method public showVolumePopupWindow(F)V
    .locals 4
    .parameter "newVolume"

    .prologue
    const/4 v3, 0x1

    .line 496
    iget-object v0, p0, Lcom/miui/videoplayer/framework/airkan/AirkanManager;->mVolumePopupWindow:Lcom/miui/videoplayer/framework/popup/VolumePopupWindow;

    if-nez v0, :cond_0

    .line 497
    new-instance v0, Lcom/miui/videoplayer/framework/popup/VolumePopupWindow;

    iget-object v1, p0, Lcom/miui/videoplayer/framework/airkan/AirkanManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/miui/videoplayer/framework/popup/VolumePopupWindow;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/videoplayer/framework/airkan/AirkanManager;->mVolumePopupWindow:Lcom/miui/videoplayer/framework/popup/VolumePopupWindow;

    .line 499
    new-instance v0, Lcom/miui/videoplayer/framework/popup/VolumePopupWindow;

    iget-object v1, p0, Lcom/miui/videoplayer/framework/airkan/AirkanManager;->mContext:Landroid/content/Context;

    const v2, 0x7f03001e

    invoke-direct {v0, v1, v2}, Lcom/miui/videoplayer/framework/popup/VolumePopupWindow;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/miui/videoplayer/framework/airkan/AirkanManager;->mVolumePopupWindow:Lcom/miui/videoplayer/framework/popup/VolumePopupWindow;

    .line 503
    :cond_0
    iget-object v0, p0, Lcom/miui/videoplayer/framework/airkan/AirkanManager;->mVolumePopupWindow:Lcom/miui/videoplayer/framework/popup/VolumePopupWindow;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Lcom/miui/videoplayer/framework/popup/VolumePopupWindow;->setMaxSeekbarValue(I)V

    .line 504
    iget-object v0, p0, Lcom/miui/videoplayer/framework/airkan/AirkanManager;->mVolumePopupWindow:Lcom/miui/videoplayer/framework/popup/VolumePopupWindow;

    invoke-virtual {v0}, Lcom/miui/videoplayer/framework/popup/VolumePopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 505
    iget-object v0, p0, Lcom/miui/videoplayer/framework/airkan/AirkanManager;->mVolumePopupWindow:Lcom/miui/videoplayer/framework/popup/VolumePopupWindow;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/videoplayer/framework/popup/VolumePopupWindow;->setShowProgressNumber(Z)V

    .line 506
    iget-object v0, p0, Lcom/miui/videoplayer/framework/airkan/AirkanManager;->mVolumePopupWindow:Lcom/miui/videoplayer/framework/popup/VolumePopupWindow;

    iget-object v1, p0, Lcom/miui/videoplayer/framework/airkan/AirkanManager;->mMediaController:Lcom/miui/videoplayer/framework/views/OriginMediaController;

    invoke-virtual {v1}, Lcom/miui/videoplayer/framework/views/OriginMediaController;->getAnchor()Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/videoplayer/framework/airkan/AirkanManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, v2}, Lcom/miui/videoplayer/framework/popup/VolumePopupWindow;->show(Landroid/view/View;Landroid/content/Context;)V

    .line 508
    :cond_1
    iget-object v0, p0, Lcom/miui/videoplayer/framework/airkan/AirkanManager;->mVolumePopupWindow:Lcom/miui/videoplayer/framework/popup/VolumePopupWindow;

    const/high16 v1, 0x42c8

    mul-float/2addr v1, p1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Lcom/miui/videoplayer/framework/popup/VolumePopupWindow;->updateSeekbarValue(I)V

    .line 510
    iget-object v0, p0, Lcom/miui/videoplayer/framework/airkan/AirkanManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 511
    iget-object v0, p0, Lcom/miui/videoplayer/framework/airkan/AirkanManager;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 512
    return-void
.end method

.method public stopRemotePlay()V
    .locals 2

    .prologue
    .line 372
    sget-object v0, Lcom/miui/videoplayer/framework/airkan/AirkanManager;->TAG:Ljava/lang/String;

    const-string v1, "call stop and tackback"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    iget-object v0, p0, Lcom/miui/videoplayer/framework/airkan/AirkanManager;->mRemoteTVMediaControl:Lcom/miui/videoplayer/framework/airkan/RemoteTVMediaPlayerControl;

    invoke-virtual {v0}, Lcom/miui/videoplayer/framework/airkan/RemoteTVMediaPlayerControl;->stop()V

    .line 374
    iget-object v0, p0, Lcom/miui/videoplayer/framework/airkan/AirkanManager;->mRemoteTVMediaControl:Lcom/miui/videoplayer/framework/airkan/RemoteTVMediaPlayerControl;

    invoke-virtual {v0}, Lcom/miui/videoplayer/framework/airkan/RemoteTVMediaPlayerControl;->takeBack()V

    .line 375
    return-void
.end method

.method public takebackToPhone()V
    .locals 3

    .prologue
    .line 333
    const-string v2, "airkan_device_xiaomi_phone"

    iput-object v2, p0, Lcom/miui/videoplayer/framework/airkan/AirkanManager;->mPlayingDeviceName:Ljava/lang/String;

    .line 335
    new-instance v0, Lcom/miui/videoplayer/framework/airkan/AirkanManager$AirkanChangedEvent;

    const/4 v2, 0x1

    invoke-direct {v0, v2}, Lcom/miui/videoplayer/framework/airkan/AirkanManager$AirkanChangedEvent;-><init>(I)V

    .line 336
    .local v0, event:Lcom/miui/videoplayer/framework/airkan/AirkanManager$AirkanChangedEvent;
    invoke-virtual {p0, v0}, Lcom/miui/videoplayer/framework/airkan/AirkanManager;->onAirkanChanged(Lcom/miui/videoplayer/framework/airkan/AirkanManager$AirkanChangedEvent;)V

    .line 338
    invoke-direct {p0}, Lcom/miui/videoplayer/framework/airkan/AirkanManager;->getRemoteVideoControlDate()Lcom/duokan/airkan/common/video/VideoControlData;

    move-result-object v1

    .line 339
    .local v1, remoteControlData:Lcom/duokan/airkan/common/video/VideoControlData;
    invoke-virtual {p0}, Lcom/miui/videoplayer/framework/airkan/AirkanManager;->stopRemotePlay()V

    .line 340
    invoke-direct {p0}, Lcom/miui/videoplayer/framework/airkan/AirkanManager;->controlLocalPlay()V

    .line 341
    invoke-direct {p0, v1}, Lcom/miui/videoplayer/framework/airkan/AirkanManager;->playInLocal(Lcom/duokan/airkan/common/video/VideoControlData;)V

    .line 342
    return-void
.end method

.method public unregisteOnDeviceChangeListener(Lcom/duokan/airkan/phone/api/DeviceManager$OnDeviceChangeListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/miui/videoplayer/framework/airkan/AirkanManager;->mDeviceChangedListenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 77
    iget-object v0, p0, Lcom/miui/videoplayer/framework/airkan/AirkanManager;->mDeviceChangedListenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 79
    :cond_0
    return-void
.end method
