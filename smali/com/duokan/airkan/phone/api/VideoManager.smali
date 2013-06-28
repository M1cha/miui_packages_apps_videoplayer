.class public Lcom/duokan/airkan/phone/api/VideoManager;
.super Lcom/duokan/airkan/phone/api/ConnectionManager;
.source "VideoManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/duokan/airkan/phone/api/VideoManager$State;,
        Lcom/duokan/airkan/phone/api/VideoManager$InternalListener;,
        Lcom/duokan/airkan/phone/api/VideoManager$OnVideoEventListener;
    }
.end annotation


# static fields
.field public static final SPNAME_QIYI:Ljava/lang/String; = "qiyi"

.field public static final SPNAME_SOHU:Ljava/lang/String; = "sohu"

.field public static final SPNAME_TENCENT:Ljava/lang/String; = "tencent"

.field private static final TAG:Ljava/lang/String; = "AVM"


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mInitialQueryCount:I

.field private mInitialQueryRunnable:Ljava/lang/Runnable;

.field private mInitialQueryTimes:I

.field private mInternalListener:Lcom/duokan/airkan/phone/api/VideoManager$InternalListener;

.field private mIsCallabackRegistered:Z

.field protected mIsMusic:Z

.field private mIsSeekPost:Z

.field private mIsToPlay:Z

.field protected mOnVideoEventListener:Lcom/duokan/airkan/phone/api/VideoManager$OnVideoEventListener;

.field private mPauseRunnable:Ljava/lang/Runnable;

.field private mPauseWaitCount:I

.field private mSeekPostTimer:Ljava/util/Timer;

.field private mSeekPostTimerTask:Ljava/util/TimerTask;

.field private mSpName:Ljava/lang/String;

.field private mState:Lcom/duokan/airkan/phone/api/VideoManager$State;

.field private mVCDPlayPostCtrl:Lcom/duokan/airkan/common/video/VideoControlData;

.field private mVCDStatRemote:Lcom/duokan/airkan/common/video/VideoControlData;

.field private mVideoCallback:Lcom/duokan/airkan/phone/api/VideoServiceCallback;

.field private mVideoMetaData:Lcom/duokan/airkan/common/video/VideoMetaData;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/duokan/airkan/phone/api/DeviceManager;)V
    .locals 4
    .parameter "appName"
    .parameter "adm"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 70
    invoke-direct {p0, p1, p2}, Lcom/duokan/airkan/phone/api/ConnectionManager;-><init>(Ljava/lang/String;Lcom/duokan/airkan/phone/api/DeviceManager;)V

    .line 43
    iput-object v2, p0, Lcom/duokan/airkan/phone/api/VideoManager;->mVideoMetaData:Lcom/duokan/airkan/common/video/VideoMetaData;

    .line 44
    new-instance v0, Lcom/duokan/airkan/common/video/VideoControlData;

    invoke-direct {v0, v3}, Lcom/duokan/airkan/common/video/VideoControlData;-><init>(B)V

    iput-object v0, p0, Lcom/duokan/airkan/phone/api/VideoManager;->mVCDStatRemote:Lcom/duokan/airkan/common/video/VideoControlData;

    .line 45
    new-instance v0, Lcom/duokan/airkan/common/video/VideoControlData;

    invoke-direct {v0, v3}, Lcom/duokan/airkan/common/video/VideoControlData;-><init>(B)V

    iput-object v0, p0, Lcom/duokan/airkan/phone/api/VideoManager;->mVCDPlayPostCtrl:Lcom/duokan/airkan/common/video/VideoControlData;

    .line 46
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/duokan/airkan/phone/api/VideoManager;->mHandler:Landroid/os/Handler;

    .line 47
    iput-object v2, p0, Lcom/duokan/airkan/phone/api/VideoManager;->mOnVideoEventListener:Lcom/duokan/airkan/phone/api/VideoManager$OnVideoEventListener;

    .line 48
    const/4 v0, 0x3

    iput v0, p0, Lcom/duokan/airkan/phone/api/VideoManager;->mInitialQueryTimes:I

    .line 49
    iput v1, p0, Lcom/duokan/airkan/phone/api/VideoManager;->mInitialQueryCount:I

    .line 50
    iput v1, p0, Lcom/duokan/airkan/phone/api/VideoManager;->mPauseWaitCount:I

    .line 51
    iput-object v2, p0, Lcom/duokan/airkan/phone/api/VideoManager;->mSeekPostTimer:Ljava/util/Timer;

    .line 52
    iput-object v2, p0, Lcom/duokan/airkan/phone/api/VideoManager;->mSeekPostTimerTask:Ljava/util/TimerTask;

    .line 53
    iput-boolean v1, p0, Lcom/duokan/airkan/phone/api/VideoManager;->mIsSeekPost:Z

    .line 54
    iput-boolean v1, p0, Lcom/duokan/airkan/phone/api/VideoManager;->mIsToPlay:Z

    .line 55
    iput-boolean v1, p0, Lcom/duokan/airkan/phone/api/VideoManager;->mIsCallabackRegistered:Z

    .line 56
    iput-boolean v1, p0, Lcom/duokan/airkan/phone/api/VideoManager;->mIsMusic:Z

    .line 57
    new-instance v0, Lcom/duokan/airkan/phone/api/VideoServiceCallback;

    invoke-direct {v0}, Lcom/duokan/airkan/phone/api/VideoServiceCallback;-><init>()V

    iput-object v0, p0, Lcom/duokan/airkan/phone/api/VideoManager;->mVideoCallback:Lcom/duokan/airkan/phone/api/VideoServiceCallback;

    .line 58
    new-instance v0, Lcom/duokan/airkan/phone/api/VideoManager$InternalListener;

    invoke-direct {v0, p0}, Lcom/duokan/airkan/phone/api/VideoManager$InternalListener;-><init>(Lcom/duokan/airkan/phone/api/VideoManager;)V

    iput-object v0, p0, Lcom/duokan/airkan/phone/api/VideoManager;->mInternalListener:Lcom/duokan/airkan/phone/api/VideoManager$InternalListener;

    .line 59
    const-string v0, "duokan"

    iput-object v0, p0, Lcom/duokan/airkan/phone/api/VideoManager;->mSpName:Ljava/lang/String;

    .line 60
    sget-object v0, Lcom/duokan/airkan/phone/api/VideoManager$State;->STATE_IDLE:Lcom/duokan/airkan/phone/api/VideoManager$State;

    iput-object v0, p0, Lcom/duokan/airkan/phone/api/VideoManager;->mState:Lcom/duokan/airkan/phone/api/VideoManager$State;

    .line 61
    iput-object v2, p0, Lcom/duokan/airkan/phone/api/VideoManager;->mInitialQueryRunnable:Ljava/lang/Runnable;

    .line 62
    iput-object v2, p0, Lcom/duokan/airkan/phone/api/VideoManager;->mPauseRunnable:Ljava/lang/Runnable;

    .line 71
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/duokan/airkan/phone/api/DeviceManager;Lcom/duokan/airkan/phone/api/VideoManager$OnVideoEventListener;)V
    .locals 4
    .parameter "appName"
    .parameter "deviceManager"
    .parameter "listener"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 86
    invoke-direct {p0, p1, p2}, Lcom/duokan/airkan/phone/api/ConnectionManager;-><init>(Ljava/lang/String;Lcom/duokan/airkan/phone/api/DeviceManager;)V

    .line 43
    iput-object v2, p0, Lcom/duokan/airkan/phone/api/VideoManager;->mVideoMetaData:Lcom/duokan/airkan/common/video/VideoMetaData;

    .line 44
    new-instance v0, Lcom/duokan/airkan/common/video/VideoControlData;

    invoke-direct {v0, v3}, Lcom/duokan/airkan/common/video/VideoControlData;-><init>(B)V

    iput-object v0, p0, Lcom/duokan/airkan/phone/api/VideoManager;->mVCDStatRemote:Lcom/duokan/airkan/common/video/VideoControlData;

    .line 45
    new-instance v0, Lcom/duokan/airkan/common/video/VideoControlData;

    invoke-direct {v0, v3}, Lcom/duokan/airkan/common/video/VideoControlData;-><init>(B)V

    iput-object v0, p0, Lcom/duokan/airkan/phone/api/VideoManager;->mVCDPlayPostCtrl:Lcom/duokan/airkan/common/video/VideoControlData;

    .line 46
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/duokan/airkan/phone/api/VideoManager;->mHandler:Landroid/os/Handler;

    .line 47
    iput-object v2, p0, Lcom/duokan/airkan/phone/api/VideoManager;->mOnVideoEventListener:Lcom/duokan/airkan/phone/api/VideoManager$OnVideoEventListener;

    .line 48
    const/4 v0, 0x3

    iput v0, p0, Lcom/duokan/airkan/phone/api/VideoManager;->mInitialQueryTimes:I

    .line 49
    iput v1, p0, Lcom/duokan/airkan/phone/api/VideoManager;->mInitialQueryCount:I

    .line 50
    iput v1, p0, Lcom/duokan/airkan/phone/api/VideoManager;->mPauseWaitCount:I

    .line 51
    iput-object v2, p0, Lcom/duokan/airkan/phone/api/VideoManager;->mSeekPostTimer:Ljava/util/Timer;

    .line 52
    iput-object v2, p0, Lcom/duokan/airkan/phone/api/VideoManager;->mSeekPostTimerTask:Ljava/util/TimerTask;

    .line 53
    iput-boolean v1, p0, Lcom/duokan/airkan/phone/api/VideoManager;->mIsSeekPost:Z

    .line 54
    iput-boolean v1, p0, Lcom/duokan/airkan/phone/api/VideoManager;->mIsToPlay:Z

    .line 55
    iput-boolean v1, p0, Lcom/duokan/airkan/phone/api/VideoManager;->mIsCallabackRegistered:Z

    .line 56
    iput-boolean v1, p0, Lcom/duokan/airkan/phone/api/VideoManager;->mIsMusic:Z

    .line 57
    new-instance v0, Lcom/duokan/airkan/phone/api/VideoServiceCallback;

    invoke-direct {v0}, Lcom/duokan/airkan/phone/api/VideoServiceCallback;-><init>()V

    iput-object v0, p0, Lcom/duokan/airkan/phone/api/VideoManager;->mVideoCallback:Lcom/duokan/airkan/phone/api/VideoServiceCallback;

    .line 58
    new-instance v0, Lcom/duokan/airkan/phone/api/VideoManager$InternalListener;

    invoke-direct {v0, p0}, Lcom/duokan/airkan/phone/api/VideoManager$InternalListener;-><init>(Lcom/duokan/airkan/phone/api/VideoManager;)V

    iput-object v0, p0, Lcom/duokan/airkan/phone/api/VideoManager;->mInternalListener:Lcom/duokan/airkan/phone/api/VideoManager$InternalListener;

    .line 59
    const-string v0, "duokan"

    iput-object v0, p0, Lcom/duokan/airkan/phone/api/VideoManager;->mSpName:Ljava/lang/String;

    .line 60
    sget-object v0, Lcom/duokan/airkan/phone/api/VideoManager$State;->STATE_IDLE:Lcom/duokan/airkan/phone/api/VideoManager$State;

    iput-object v0, p0, Lcom/duokan/airkan/phone/api/VideoManager;->mState:Lcom/duokan/airkan/phone/api/VideoManager$State;

    .line 61
    iput-object v2, p0, Lcom/duokan/airkan/phone/api/VideoManager;->mInitialQueryRunnable:Ljava/lang/Runnable;

    .line 62
    iput-object v2, p0, Lcom/duokan/airkan/phone/api/VideoManager;->mPauseRunnable:Ljava/lang/Runnable;

    .line 87
    iput-object p3, p0, Lcom/duokan/airkan/phone/api/VideoManager;->mOnVideoEventListener:Lcom/duokan/airkan/phone/api/VideoManager$OnVideoEventListener;

    .line 88
    iget-object v0, p0, Lcom/duokan/airkan/phone/api/VideoManager;->mInternalListener:Lcom/duokan/airkan/phone/api/VideoManager$InternalListener;

    invoke-virtual {p2, v0}, Lcom/duokan/airkan/phone/api/DeviceManager;->setInternalListener(Lcom/duokan/airkan/phone/api/DeviceManager$IInternalListener;)V

    .line 89
    invoke-direct {p0}, Lcom/duokan/airkan/phone/api/VideoManager;->init()V

    .line 90
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/duokan/airkan/phone/api/DeviceManager;)V
    .locals 4
    .parameter "appName"
    .parameter "svrName"
    .parameter "adm"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 92
    invoke-direct {p0, p1, p2, p3}, Lcom/duokan/airkan/phone/api/ConnectionManager;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/duokan/airkan/phone/api/DeviceManager;)V

    .line 43
    iput-object v2, p0, Lcom/duokan/airkan/phone/api/VideoManager;->mVideoMetaData:Lcom/duokan/airkan/common/video/VideoMetaData;

    .line 44
    new-instance v0, Lcom/duokan/airkan/common/video/VideoControlData;

    invoke-direct {v0, v3}, Lcom/duokan/airkan/common/video/VideoControlData;-><init>(B)V

    iput-object v0, p0, Lcom/duokan/airkan/phone/api/VideoManager;->mVCDStatRemote:Lcom/duokan/airkan/common/video/VideoControlData;

    .line 45
    new-instance v0, Lcom/duokan/airkan/common/video/VideoControlData;

    invoke-direct {v0, v3}, Lcom/duokan/airkan/common/video/VideoControlData;-><init>(B)V

    iput-object v0, p0, Lcom/duokan/airkan/phone/api/VideoManager;->mVCDPlayPostCtrl:Lcom/duokan/airkan/common/video/VideoControlData;

    .line 46
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/duokan/airkan/phone/api/VideoManager;->mHandler:Landroid/os/Handler;

    .line 47
    iput-object v2, p0, Lcom/duokan/airkan/phone/api/VideoManager;->mOnVideoEventListener:Lcom/duokan/airkan/phone/api/VideoManager$OnVideoEventListener;

    .line 48
    const/4 v0, 0x3

    iput v0, p0, Lcom/duokan/airkan/phone/api/VideoManager;->mInitialQueryTimes:I

    .line 49
    iput v1, p0, Lcom/duokan/airkan/phone/api/VideoManager;->mInitialQueryCount:I

    .line 50
    iput v1, p0, Lcom/duokan/airkan/phone/api/VideoManager;->mPauseWaitCount:I

    .line 51
    iput-object v2, p0, Lcom/duokan/airkan/phone/api/VideoManager;->mSeekPostTimer:Ljava/util/Timer;

    .line 52
    iput-object v2, p0, Lcom/duokan/airkan/phone/api/VideoManager;->mSeekPostTimerTask:Ljava/util/TimerTask;

    .line 53
    iput-boolean v1, p0, Lcom/duokan/airkan/phone/api/VideoManager;->mIsSeekPost:Z

    .line 54
    iput-boolean v1, p0, Lcom/duokan/airkan/phone/api/VideoManager;->mIsToPlay:Z

    .line 55
    iput-boolean v1, p0, Lcom/duokan/airkan/phone/api/VideoManager;->mIsCallabackRegistered:Z

    .line 56
    iput-boolean v1, p0, Lcom/duokan/airkan/phone/api/VideoManager;->mIsMusic:Z

    .line 57
    new-instance v0, Lcom/duokan/airkan/phone/api/VideoServiceCallback;

    invoke-direct {v0}, Lcom/duokan/airkan/phone/api/VideoServiceCallback;-><init>()V

    iput-object v0, p0, Lcom/duokan/airkan/phone/api/VideoManager;->mVideoCallback:Lcom/duokan/airkan/phone/api/VideoServiceCallback;

    .line 58
    new-instance v0, Lcom/duokan/airkan/phone/api/VideoManager$InternalListener;

    invoke-direct {v0, p0}, Lcom/duokan/airkan/phone/api/VideoManager$InternalListener;-><init>(Lcom/duokan/airkan/phone/api/VideoManager;)V

    iput-object v0, p0, Lcom/duokan/airkan/phone/api/VideoManager;->mInternalListener:Lcom/duokan/airkan/phone/api/VideoManager$InternalListener;

    .line 59
    const-string v0, "duokan"

    iput-object v0, p0, Lcom/duokan/airkan/phone/api/VideoManager;->mSpName:Ljava/lang/String;

    .line 60
    sget-object v0, Lcom/duokan/airkan/phone/api/VideoManager$State;->STATE_IDLE:Lcom/duokan/airkan/phone/api/VideoManager$State;

    iput-object v0, p0, Lcom/duokan/airkan/phone/api/VideoManager;->mState:Lcom/duokan/airkan/phone/api/VideoManager$State;

    .line 61
    iput-object v2, p0, Lcom/duokan/airkan/phone/api/VideoManager;->mInitialQueryRunnable:Ljava/lang/Runnable;

    .line 62
    iput-object v2, p0, Lcom/duokan/airkan/phone/api/VideoManager;->mPauseRunnable:Ljava/lang/Runnable;

    .line 93
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/duokan/airkan/phone/api/DeviceManager;Lcom/duokan/airkan/phone/api/VideoManager$OnVideoEventListener;)V
    .locals 0
    .parameter "appName"
    .parameter "svrName"
    .parameter "adm"
    .parameter "avc"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/duokan/airkan/common/AirkanException;
        }
    .end annotation

    .prologue
    .line 97
    invoke-direct {p0, p1, p2, p3}, Lcom/duokan/airkan/phone/api/VideoManager;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/duokan/airkan/phone/api/DeviceManager;)V

    .line 98
    iput-object p4, p0, Lcom/duokan/airkan/phone/api/VideoManager;->mOnVideoEventListener:Lcom/duokan/airkan/phone/api/VideoManager$OnVideoEventListener;

    .line 99
    return-void
.end method

.method static synthetic access$002(Lcom/duokan/airkan/phone/api/VideoManager;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41
    iput-object p1, p0, Lcom/duokan/airkan/phone/api/VideoManager;->mInitialQueryRunnable:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$100(Lcom/duokan/airkan/phone/api/VideoManager;)V
    .locals 0
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/duokan/airkan/common/AirkanException;
        }
    .end annotation

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/duokan/airkan/phone/api/VideoManager;->initialQuery()V

    return-void
.end method

.method static synthetic access$200(Lcom/duokan/airkan/phone/api/VideoManager;)Lcom/duokan/airkan/common/video/VideoMetaData;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/duokan/airkan/phone/api/VideoManager;->mVideoMetaData:Lcom/duokan/airkan/common/video/VideoMetaData;

    return-object v0
.end method

.method static synthetic access$300(Lcom/duokan/airkan/phone/api/VideoManager;)Lcom/duokan/airkan/common/video/VideoControlData;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/duokan/airkan/phone/api/VideoManager;->mVCDPlayPostCtrl:Lcom/duokan/airkan/common/video/VideoControlData;

    return-object v0
.end method

.method static synthetic access$402(Lcom/duokan/airkan/phone/api/VideoManager;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41
    iput p1, p0, Lcom/duokan/airkan/phone/api/VideoManager;->mInitialQueryCount:I

    return p1
.end method

.method static synthetic access$500(Lcom/duokan/airkan/phone/api/VideoManager;)Lcom/duokan/airkan/phone/api/VideoManager$State;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/duokan/airkan/phone/api/VideoManager;->mState:Lcom/duokan/airkan/phone/api/VideoManager$State;

    return-object v0
.end method

.method static synthetic access$502(Lcom/duokan/airkan/phone/api/VideoManager;Lcom/duokan/airkan/phone/api/VideoManager$State;)Lcom/duokan/airkan/phone/api/VideoManager$State;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41
    iput-object p1, p0, Lcom/duokan/airkan/phone/api/VideoManager;->mState:Lcom/duokan/airkan/phone/api/VideoManager$State;

    return-object p1
.end method

.method static synthetic access$602(Lcom/duokan/airkan/phone/api/VideoManager;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41
    iput-object p1, p0, Lcom/duokan/airkan/phone/api/VideoManager;->mPauseRunnable:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$700(Lcom/duokan/airkan/phone/api/VideoManager;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/duokan/airkan/phone/api/VideoManager;->postPause()V

    return-void
.end method

.method static synthetic access$802(Lcom/duokan/airkan/phone/api/VideoManager;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41
    iput-boolean p1, p0, Lcom/duokan/airkan/phone/api/VideoManager;->mIsSeekPost:Z

    return p1
.end method

.method static synthetic access$900(Lcom/duokan/airkan/phone/api/VideoManager;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/duokan/airkan/phone/api/VideoManager;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private byteVolumeToFloat(B)F
    .locals 4
    .parameter "bVolume"

    .prologue
    const/high16 v3, 0x3f80

    .line 1303
    const/4 v0, 0x0

    .line 1304
    .local v0, fVolume:F
    int-to-float v1, p1

    mul-float/2addr v1, v3

    const/high16 v2, 0x42c0

    div-float v0, v1, v2

    .line 1305
    cmpl-float v1, v0, v3

    if-lez v1, :cond_0

    .line 1306
    const/high16 v0, 0x3f80

    .line 1308
    :cond_0
    return v0
.end method

.method private floatVolumeToByte(F)B
    .locals 3
    .parameter "fVolume"

    .prologue
    .line 1298
    const/4 v0, 0x0

    .line 1299
    .local v0, bVolume:B
    const/high16 v1, 0x42c0

    mul-float/2addr v1, p1

    const/high16 v2, 0x3f80

    div-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    int-to-byte v0, v1

    .line 1300
    return v0
.end method

.method private init()V
    .locals 1

    .prologue
    .line 65
    const/4 v0, 0x3

    invoke-static {v0}, Lcom/duokan/airkan/common/Log;->setLevel(I)V

    .line 66
    sget-object v0, Lcom/duokan/airkan/phone/api/VideoManager$State;->STATE_IDLE:Lcom/duokan/airkan/phone/api/VideoManager$State;

    iput-object v0, p0, Lcom/duokan/airkan/phone/api/VideoManager;->mState:Lcom/duokan/airkan/phone/api/VideoManager$State;

    .line 67
    return-void
.end method

.method private initialQuery()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/duokan/airkan/common/AirkanException;
        }
    .end annotation

    .prologue
    .line 530
    const-string v3, "AVM"

    const-string v4, "initialQuery enter"

    invoke-static {v3, v4}, Lcom/duokan/airkan/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 531
    iget v3, p0, Lcom/duokan/airkan/phone/api/VideoManager;->mInitialQueryCount:I

    iget v4, p0, Lcom/duokan/airkan/phone/api/VideoManager;->mInitialQueryTimes:I

    if-lt v3, v4, :cond_0

    .line 573
    :goto_0
    return-void

    .line 534
    :cond_0
    iget v3, p0, Lcom/duokan/airkan/phone/api/VideoManager;->mInitialQueryCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/duokan/airkan/phone/api/VideoManager;->mInitialQueryCount:I

    .line 536
    iget-object v3, p0, Lcom/duokan/airkan/phone/api/ConnectionManager;->mAirkanDeviceManager:Lcom/duokan/airkan/phone/api/DeviceManager;

    if-nez v3, :cond_1

    .line 537
    new-instance v3, Lcom/duokan/airkan/common/AirkanException;

    const-string v4, "device manager is null"

    invoke-direct {v3, v4}, Lcom/duokan/airkan/common/AirkanException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 539
    :cond_1
    iget-object v3, p0, Lcom/duokan/airkan/phone/api/ConnectionManager;->mAirkanDeviceManager:Lcom/duokan/airkan/phone/api/DeviceManager;

    invoke-virtual {v3}, Lcom/duokan/airkan/phone/api/DeviceManager;->getService()Lcom/duokan/airkan/phone/aidl/IAirkanClientService;

    move-result-object v1

    .line 540
    .local v1, myService:Lcom/duokan/airkan/phone/aidl/IAirkanClientService;
    if-eqz v1, :cond_2

    .line 542
    :try_start_0
    new-instance v2, Lcom/duokan/airkan/common/aidl/video/ParcelQueryData;

    invoke-direct {v2}, Lcom/duokan/airkan/common/aidl/video/ParcelQueryData;-><init>()V

    .line 543
    .local v2, queryData:Lcom/duokan/airkan/common/aidl/video/ParcelQueryData;
    const/4 v3, 0x1

    iput-byte v3, v2, Lcom/duokan/airkan/common/aidl/video/ParcelQueryData;->queryresolution:B

    .line 544
    const/4 v3, 0x1

    iput-byte v3, v2, Lcom/duokan/airkan/common/aidl/video/ParcelQueryData;->queryplaystatus:B

    .line 545
    const/4 v3, 0x1

    iput-byte v3, v2, Lcom/duokan/airkan/common/aidl/video/ParcelQueryData;->queryvolume:B

    .line 546
    iget v3, p0, Lcom/duokan/airkan/phone/api/ConnectionManager;->mServiceHandle:I

    invoke-interface {v1, v3, v2}, Lcom/duokan/airkan/phone/aidl/IAirkanClientService;->query(ILcom/duokan/airkan/common/aidl/video/ParcelQueryData;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 561
    new-instance v3, Lcom/duokan/airkan/phone/api/VideoManager$1;

    invoke-direct {v3, p0}, Lcom/duokan/airkan/phone/api/VideoManager$1;-><init>(Lcom/duokan/airkan/phone/api/VideoManager;)V

    iput-object v3, p0, Lcom/duokan/airkan/phone/api/VideoManager;->mInitialQueryRunnable:Ljava/lang/Runnable;

    .line 572
    iget-object v3, p0, Lcom/duokan/airkan/phone/api/VideoManager;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/duokan/airkan/phone/api/VideoManager;->mInitialQueryRunnable:Ljava/lang/Runnable;

    const-wide/16 v5, 0x1388

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 547
    .end local v2           #queryData:Lcom/duokan/airkan/common/aidl/video/ParcelQueryData;
    :catch_0
    move-exception v0

    .line 548
    .local v0, e:Landroid/os/RemoteException;
    const-string v3, "AVM"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "query error"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/duokan/airkan/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 549
    new-instance v3, Lcom/duokan/airkan/common/AirkanException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "query error"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/duokan/airkan/common/AirkanException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 550
    .end local v0           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 551
    .local v0, e:Ljava/lang/Exception;
    const-string v3, "AVM"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "query error"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/duokan/airkan/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 552
    new-instance v3, Lcom/duokan/airkan/common/AirkanException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "query error"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/duokan/airkan/common/AirkanException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 555
    .end local v0           #e:Ljava/lang/Exception;
    :cond_2
    const-string v3, "AVM"

    const-string v4, "initialQuery, Service not bounded. call DeviceManager.open() first and wait for onOpened()."

    invoke-static {v3, v4}, Lcom/duokan/airkan/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 557
    new-instance v3, Lcom/duokan/airkan/common/AirkanException;

    const-string v4, "initialQuery, Service not bounded. call DeviceManager.open() first and wait for onOpened()."

    invoke-direct {v3, v4}, Lcom/duokan/airkan/common/AirkanException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private isLocal(Ljava/lang/String;)Z
    .locals 4
    .parameter "url"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/duokan/airkan/common/AirkanException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 1371
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 1372
    .local v0, lower:Ljava/lang/String;
    const-string v2, "http://"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1373
    const-string v2, "AVM"

    const-string v3, "http"

    invoke-static {v2, v3}, Lcom/duokan/airkan/common/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1380
    :goto_0
    return v1

    .line 1375
    :cond_0
    const-string v2, "music://"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1376
    const-string v2, "AVM"

    const-string v3, "music"

    invoke-static {v2, v3}, Lcom/duokan/airkan/common/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1378
    :cond_1
    const-string v1, "/"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1379
    const-string v1, "AVM"

    const-string v2, "local file"

    invoke-static {v1, v2}, Lcom/duokan/airkan/common/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1380
    const/4 v1, 0x1

    goto :goto_0

    .line 1382
    :cond_2
    new-instance v1, Lcom/duokan/airkan/common/AirkanException;

    const-string v2, "not supported url"

    invoke-direct {v1, v2}, Lcom/duokan/airkan/common/AirkanException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private play()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/duokan/airkan/common/AirkanException;
        }
    .end annotation

    .prologue
    .line 610
    const-string v1, "AVM"

    const-string v2, "play enter"

    invoke-static {v1, v2}, Lcom/duokan/airkan/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 611
    iget-object v1, p0, Lcom/duokan/airkan/phone/api/VideoManager;->mVideoMetaData:Lcom/duokan/airkan/common/video/VideoMetaData;

    if-nez v1, :cond_0

    .line 612
    const-string v1, "AVM"

    const-string v2, "no video data"

    invoke-static {v1, v2}, Lcom/duokan/airkan/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 613
    new-instance v1, Lcom/duokan/airkan/common/AirkanException;

    const-string v2, "no video data"

    invoke-direct {v1, v2}, Lcom/duokan/airkan/common/AirkanException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 615
    :cond_0
    iget-object v1, p0, Lcom/duokan/airkan/phone/api/ConnectionManager;->mAirkanDeviceManager:Lcom/duokan/airkan/phone/api/DeviceManager;

    if-nez v1, :cond_1

    .line 616
    new-instance v1, Lcom/duokan/airkan/common/AirkanException;

    const-string v2, "device manager is null"

    invoke-direct {v1, v2}, Lcom/duokan/airkan/common/AirkanException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 618
    :cond_1
    iget-object v1, p0, Lcom/duokan/airkan/phone/api/ConnectionManager;->mAirkanDeviceManager:Lcom/duokan/airkan/phone/api/DeviceManager;

    invoke-virtual {v1}, Lcom/duokan/airkan/phone/api/DeviceManager;->getService()Lcom/duokan/airkan/phone/aidl/IAirkanClientService;

    move-result-object v0

    .line 619
    .local v0, myService:Lcom/duokan/airkan/phone/aidl/IAirkanClientService;
    if-eqz v0, :cond_2

    .line 620
    iget-object v1, p0, Lcom/duokan/airkan/phone/api/VideoManager;->mVCDStatRemote:Lcom/duokan/airkan/common/video/VideoControlData;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/duokan/airkan/common/video/VideoControlData;->setPlaying(Z)V

    .line 621
    iget-object v1, p0, Lcom/duokan/airkan/phone/api/VideoManager;->mVCDStatRemote:Lcom/duokan/airkan/common/video/VideoControlData;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/duokan/airkan/common/video/VideoControlData;->setPausing(Z)V

    .line 623
    iget-object v1, p0, Lcom/duokan/airkan/phone/api/VideoManager;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/duokan/airkan/phone/api/VideoManager$3;

    invoke-direct {v2, p0, v0}, Lcom/duokan/airkan/phone/api/VideoManager$3;-><init>(Lcom/duokan/airkan/phone/api/VideoManager;Lcom/duokan/airkan/phone/aidl/IAirkanClientService;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 684
    return-void

    .line 679
    :cond_2
    const-string v1, "AVM"

    const-string v2, "play, Service not bounded. call DeviceManager.open() first and wait for onOpened()."

    invoke-static {v1, v2}, Lcom/duokan/airkan/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 681
    new-instance v1, Lcom/duokan/airkan/common/AirkanException;

    const-string v2, "play, Service not bounded. call DeviceManager.open() first and wait for onOpened()."

    invoke-direct {v1, v2}, Lcom/duokan/airkan/common/AirkanException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private postPause()V
    .locals 5

    .prologue
    .line 776
    iget-boolean v1, p0, Lcom/duokan/airkan/phone/api/ConnectionManager;->mIsConnecting:Z

    if-nez v1, :cond_1

    .line 778
    :try_start_0
    invoke-virtual {p0}, Lcom/duokan/airkan/phone/api/VideoManager;->pause()V
    :try_end_0
    .catch Lcom/duokan/airkan/common/AirkanException; {:try_start_0 .. :try_end_0} :catch_0

    .line 797
    :cond_0
    :goto_0
    return-void

    .line 779
    :catch_0
    move-exception v0

    .line 780
    .local v0, e:Lcom/duokan/airkan/common/AirkanException;
    invoke-virtual {v0}, Lcom/duokan/airkan/common/AirkanException;->printStackTrace()V

    goto :goto_0

    .line 783
    .end local v0           #e:Lcom/duokan/airkan/common/AirkanException;
    :cond_1
    iget v1, p0, Lcom/duokan/airkan/phone/api/VideoManager;->mPauseWaitCount:I

    iget v2, p0, Lcom/duokan/airkan/phone/api/VideoManager;->mInitialQueryTimes:I

    if-ge v1, v2, :cond_0

    .line 784
    iget v1, p0, Lcom/duokan/airkan/phone/api/VideoManager;->mPauseWaitCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/duokan/airkan/phone/api/VideoManager;->mPauseWaitCount:I

    .line 785
    new-instance v1, Lcom/duokan/airkan/phone/api/VideoManager$6;

    invoke-direct {v1, p0}, Lcom/duokan/airkan/phone/api/VideoManager$6;-><init>(Lcom/duokan/airkan/phone/api/VideoManager;)V

    iput-object v1, p0, Lcom/duokan/airkan/phone/api/VideoManager;->mPauseRunnable:Ljava/lang/Runnable;

    .line 793
    iget-object v1, p0, Lcom/duokan/airkan/phone/api/VideoManager;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/duokan/airkan/phone/api/VideoManager;->mPauseRunnable:Ljava/lang/Runnable;

    const-wide/16 v3, 0x3e8

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method private prepare()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/duokan/airkan/common/AirkanException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 697
    const-string v1, "AVM"

    const-string v2, "prepare enter"

    invoke-static {v1, v2}, Lcom/duokan/airkan/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 698
    invoke-direct {p0}, Lcom/duokan/airkan/phone/api/VideoManager;->play()V

    .line 699
    iget-object v1, p0, Lcom/duokan/airkan/phone/api/ConnectionManager;->mAirkanDeviceManager:Lcom/duokan/airkan/phone/api/DeviceManager;

    if-nez v1, :cond_0

    .line 700
    new-instance v1, Lcom/duokan/airkan/common/AirkanException;

    const-string v2, "device manager is null"

    invoke-direct {v1, v2}, Lcom/duokan/airkan/common/AirkanException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 702
    :cond_0
    iget-object v1, p0, Lcom/duokan/airkan/phone/api/ConnectionManager;->mAirkanDeviceManager:Lcom/duokan/airkan/phone/api/DeviceManager;

    invoke-virtual {v1}, Lcom/duokan/airkan/phone/api/DeviceManager;->getService()Lcom/duokan/airkan/phone/aidl/IAirkanClientService;

    move-result-object v0

    .line 703
    .local v0, myService:Lcom/duokan/airkan/phone/aidl/IAirkanClientService;
    if-eqz v0, :cond_1

    .line 704
    iget-object v1, p0, Lcom/duokan/airkan/phone/api/VideoManager;->mVCDStatRemote:Lcom/duokan/airkan/common/video/VideoControlData;

    invoke-virtual {v1, v3}, Lcom/duokan/airkan/common/video/VideoControlData;->setPlaying(Z)V

    .line 705
    iget-object v1, p0, Lcom/duokan/airkan/phone/api/VideoManager;->mVCDStatRemote:Lcom/duokan/airkan/common/video/VideoControlData;

    invoke-virtual {v1, v3}, Lcom/duokan/airkan/common/video/VideoControlData;->setPausing(Z)V

    .line 707
    iget-object v1, p0, Lcom/duokan/airkan/phone/api/VideoManager;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/duokan/airkan/phone/api/VideoManager$4;

    invoke-direct {v2, p0, v0}, Lcom/duokan/airkan/phone/api/VideoManager$4;-><init>(Lcom/duokan/airkan/phone/api/VideoManager;Lcom/duokan/airkan/phone/aidl/IAirkanClientService;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 726
    return-void

    .line 721
    :cond_1
    const-string v1, "AVM"

    const-string v2, "prepare, Service not bounded. call DeviceManager.open() first and wait for onOpened()."

    invoke-static {v1, v2}, Lcom/duokan/airkan/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 723
    new-instance v1, Lcom/duokan/airkan/common/AirkanException;

    const-string v2, "prepare, Service not bounded. call DeviceManager.open() first and wait for onOpened()."

    invoke-direct {v1, v2}, Lcom/duokan/airkan/common/AirkanException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private registerVideoCallback()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/duokan/airkan/common/AirkanException;
        }
    .end annotation

    .prologue
    .line 102
    const-string v3, "AVM"

    const-string v4, "registerVideoCallback enter"

    invoke-static {v3, v4}, Lcom/duokan/airkan/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    iget-boolean v3, p0, Lcom/duokan/airkan/phone/api/VideoManager;->mIsCallabackRegistered:Z

    if-eqz v3, :cond_0

    .line 104
    const-string v3, "AVM"

    const-string v4, "already registered"

    invoke-static {v3, v4}, Lcom/duokan/airkan/common/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    :goto_0
    return-void

    .line 107
    :cond_0
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/duokan/airkan/phone/api/VideoManager;->mIsCallabackRegistered:Z

    .line 108
    iget-object v3, p0, Lcom/duokan/airkan/phone/api/VideoManager;->mVideoCallback:Lcom/duokan/airkan/phone/api/VideoServiceCallback;

    invoke-virtual {v3, p0}, Lcom/duokan/airkan/phone/api/VideoServiceCallback;->setAirkanVideoManager(Lcom/duokan/airkan/phone/api/VideoManager;)V

    .line 109
    iget-object v3, p0, Lcom/duokan/airkan/phone/api/ConnectionManager;->mAirkanDeviceManager:Lcom/duokan/airkan/phone/api/DeviceManager;

    if-nez v3, :cond_1

    .line 110
    new-instance v3, Lcom/duokan/airkan/common/AirkanException;

    const-string v4, "device manager is null"

    invoke-direct {v3, v4}, Lcom/duokan/airkan/common/AirkanException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 112
    :cond_1
    iget-object v3, p0, Lcom/duokan/airkan/phone/api/ConnectionManager;->mAirkanDeviceManager:Lcom/duokan/airkan/phone/api/DeviceManager;

    invoke-virtual {v3}, Lcom/duokan/airkan/phone/api/DeviceManager;->getService()Lcom/duokan/airkan/phone/aidl/IAirkanClientService;

    move-result-object v2

    .line 113
    .local v2, myService:Lcom/duokan/airkan/phone/aidl/IAirkanClientService;
    if-eqz v2, :cond_2

    .line 115
    :try_start_0
    const-string v3, "AVM"

    const-string v4, "register callback to service"

    invoke-static {v3, v4}, Lcom/duokan/airkan/common/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    iget-object v3, p0, Lcom/duokan/airkan/phone/api/VideoManager;->mVideoCallback:Lcom/duokan/airkan/phone/api/VideoServiceCallback;

    invoke-interface {v2, v3}, Lcom/duokan/airkan/phone/aidl/IAirkanClientService;->registerVideoCallback(Lcom/duokan/airkan/phone/aidl/IVideoServiceCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 117
    :catch_0
    move-exception v0

    .line 118
    .local v0, e:Landroid/os/RemoteException;
    const-string v3, "AVM"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "register callback to service error"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/duokan/airkan/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    new-instance v3, Lcom/duokan/airkan/common/AirkanException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "register callback to service error"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/duokan/airkan/common/AirkanException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 120
    .end local v0           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .line 121
    .local v1, e1:Ljava/lang/Exception;
    const-string v3, "AVM"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "register callback to service error"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/duokan/airkan/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    new-instance v3, Lcom/duokan/airkan/common/AirkanException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "register callback to service error"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/duokan/airkan/common/AirkanException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 125
    .end local v1           #e1:Ljava/lang/Exception;
    :cond_2
    const-string v3, "AVM"

    const-string v4, "service is not available yet"

    invoke-static {v3, v4}, Lcom/duokan/airkan/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    new-instance v3, Lcom/duokan/airkan/common/AirkanException;

    const-string v4, "service is not available yet"

    invoke-direct {v3, v4}, Lcom/duokan/airkan/common/AirkanException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private removePost()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 161
    iget-object v0, p0, Lcom/duokan/airkan/phone/api/VideoManager;->mInitialQueryRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 162
    const-string v0, "AVM"

    const-string v1, "remove query post"

    invoke-static {v0, v1}, Lcom/duokan/airkan/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    iget-object v0, p0, Lcom/duokan/airkan/phone/api/VideoManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/duokan/airkan/phone/api/VideoManager;->mInitialQueryRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 164
    iput-object v2, p0, Lcom/duokan/airkan/phone/api/VideoManager;->mInitialQueryRunnable:Ljava/lang/Runnable;

    .line 166
    :cond_0
    iget-object v0, p0, Lcom/duokan/airkan/phone/api/VideoManager;->mPauseRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    .line 167
    const-string v0, "AVM"

    const-string v1, "remove pause post"

    invoke-static {v0, v1}, Lcom/duokan/airkan/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    iget-object v0, p0, Lcom/duokan/airkan/phone/api/VideoManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/duokan/airkan/phone/api/VideoManager;->mPauseRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 169
    iput-object v2, p0, Lcom/duokan/airkan/phone/api/VideoManager;->mPauseRunnable:Ljava/lang/Runnable;

    .line 171
    :cond_1
    return-void
.end method

.method private removeVideoCallback()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/duokan/airkan/common/AirkanException;
        }
    .end annotation

    .prologue
    .line 131
    const-string v3, "AVM"

    const-string v4, "removeVideoCallback enter"

    invoke-static {v3, v4}, Lcom/duokan/airkan/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    iget-boolean v3, p0, Lcom/duokan/airkan/phone/api/VideoManager;->mIsCallabackRegistered:Z

    if-nez v3, :cond_0

    .line 133
    const-string v3, "AVM"

    const-string v4, "callback already removed"

    invoke-static {v3, v4}, Lcom/duokan/airkan/common/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    :goto_0
    return-void

    .line 136
    :cond_0
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/duokan/airkan/phone/api/VideoManager;->mIsCallabackRegistered:Z

    .line 137
    iget-object v3, p0, Lcom/duokan/airkan/phone/api/ConnectionManager;->mAirkanDeviceManager:Lcom/duokan/airkan/phone/api/DeviceManager;

    if-nez v3, :cond_1

    .line 138
    new-instance v3, Lcom/duokan/airkan/common/AirkanException;

    const-string v4, "device manager is null"

    invoke-direct {v3, v4}, Lcom/duokan/airkan/common/AirkanException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 140
    :cond_1
    invoke-direct {p0}, Lcom/duokan/airkan/phone/api/VideoManager;->removePost()V

    .line 141
    iget-object v3, p0, Lcom/duokan/airkan/phone/api/ConnectionManager;->mAirkanDeviceManager:Lcom/duokan/airkan/phone/api/DeviceManager;

    invoke-virtual {v3}, Lcom/duokan/airkan/phone/api/DeviceManager;->getService()Lcom/duokan/airkan/phone/aidl/IAirkanClientService;

    move-result-object v2

    .line 142
    .local v2, myService:Lcom/duokan/airkan/phone/aidl/IAirkanClientService;
    if-eqz v2, :cond_2

    .line 144
    :try_start_0
    const-string v3, "AVM"

    const-string v4, "remove callback from service"

    invoke-static {v3, v4}, Lcom/duokan/airkan/common/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    invoke-interface {v2}, Lcom/duokan/airkan/phone/aidl/IAirkanClientService;->removeVideoCallback()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 157
    iget-object v3, p0, Lcom/duokan/airkan/phone/api/VideoManager;->mVideoCallback:Lcom/duokan/airkan/phone/api/VideoServiceCallback;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/duokan/airkan/phone/api/VideoServiceCallback;->setAirkanVideoManager(Lcom/duokan/airkan/phone/api/VideoManager;)V

    goto :goto_0

    .line 146
    :catch_0
    move-exception v0

    .line 147
    .local v0, e:Landroid/os/RemoteException;
    const-string v3, "AVM"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "remove callback from service error"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/duokan/airkan/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    new-instance v3, Lcom/duokan/airkan/common/AirkanException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "remove callback from service error"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/duokan/airkan/common/AirkanException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 149
    .end local v0           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .line 150
    .local v1, e1:Ljava/lang/Exception;
    const-string v3, "AVM"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "remove callback from service error"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/duokan/airkan/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    new-instance v3, Lcom/duokan/airkan/common/AirkanException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "remove callback from service error"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/duokan/airkan/common/AirkanException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 154
    .end local v1           #e1:Ljava/lang/Exception;
    :cond_2
    const-string v3, "AVM"

    const-string v4, "service is not available yet"

    invoke-static {v3, v4}, Lcom/duokan/airkan/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    new-instance v3, Lcom/duokan/airkan/common/AirkanException;

    const-string v4, "service is not available yet"

    invoke-direct {v3, v4}, Lcom/duokan/airkan/common/AirkanException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private starSeekPostTimer()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 1235
    const-string v0, "AVM"

    const-string v1, "starSeekPostTimer enter"

    invoke-static {v0, v1}, Lcom/duokan/airkan/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1236
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/duokan/airkan/phone/api/VideoManager;->mIsSeekPost:Z

    .line 1238
    iget-object v0, p0, Lcom/duokan/airkan/phone/api/VideoManager;->mSeekPostTimerTask:Ljava/util/TimerTask;

    if-eqz v0, :cond_0

    .line 1239
    iget-object v0, p0, Lcom/duokan/airkan/phone/api/VideoManager;->mSeekPostTimerTask:Ljava/util/TimerTask;

    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z

    .line 1240
    iput-object v2, p0, Lcom/duokan/airkan/phone/api/VideoManager;->mSeekPostTimerTask:Ljava/util/TimerTask;

    .line 1242
    :cond_0
    iget-object v0, p0, Lcom/duokan/airkan/phone/api/VideoManager;->mSeekPostTimer:Ljava/util/Timer;

    if-eqz v0, :cond_1

    .line 1243
    iget-object v0, p0, Lcom/duokan/airkan/phone/api/VideoManager;->mSeekPostTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 1244
    iget-object v0, p0, Lcom/duokan/airkan/phone/api/VideoManager;->mSeekPostTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    .line 1245
    iput-object v2, p0, Lcom/duokan/airkan/phone/api/VideoManager;->mSeekPostTimer:Ljava/util/Timer;

    .line 1247
    :cond_1
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/duokan/airkan/phone/api/VideoManager;->mSeekPostTimer:Ljava/util/Timer;

    .line 1248
    new-instance v0, Lcom/duokan/airkan/phone/api/VideoManager$11;

    invoke-direct {v0, p0}, Lcom/duokan/airkan/phone/api/VideoManager$11;-><init>(Lcom/duokan/airkan/phone/api/VideoManager;)V

    iput-object v0, p0, Lcom/duokan/airkan/phone/api/VideoManager;->mSeekPostTimerTask:Ljava/util/TimerTask;

    .line 1255
    iget-object v0, p0, Lcom/duokan/airkan/phone/api/VideoManager;->mSeekPostTimer:Ljava/util/Timer;

    iget-object v1, p0, Lcom/duokan/airkan/phone/api/VideoManager;->mSeekPostTimerTask:Ljava/util/TimerTask;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 1256
    return-void
.end method

.method private startHttpd()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/duokan/airkan/common/AirkanException;
        }
    .end annotation

    .prologue
    .line 1312
    iget-object v2, p0, Lcom/duokan/airkan/phone/api/ConnectionManager;->mAirkanDeviceManager:Lcom/duokan/airkan/phone/api/DeviceManager;

    if-nez v2, :cond_0

    .line 1313
    new-instance v2, Lcom/duokan/airkan/common/AirkanException;

    const-string v3, "device manager is null"

    invoke-direct {v2, v3}, Lcom/duokan/airkan/common/AirkanException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1315
    :cond_0
    iget-object v2, p0, Lcom/duokan/airkan/phone/api/ConnectionManager;->mAirkanDeviceManager:Lcom/duokan/airkan/phone/api/DeviceManager;

    invoke-virtual {v2}, Lcom/duokan/airkan/phone/api/DeviceManager;->getHttpService()Lcom/duokan/airkan/http/aidl/IHttpService;

    move-result-object v1

    .line 1316
    .local v1, httpService:Lcom/duokan/airkan/http/aidl/IHttpService;
    if-nez v1, :cond_1

    .line 1317
    new-instance v2, Lcom/duokan/airkan/common/AirkanException;

    const-string v3, "Http Service is not ready."

    invoke-direct {v2, v3}, Lcom/duokan/airkan/common/AirkanException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1320
    :cond_1
    :try_start_0
    invoke-interface {v1}, Lcom/duokan/airkan/http/aidl/IHttpService;->startHttpd()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1324
    :goto_0
    return-void

    .line 1321
    :catch_0
    move-exception v0

    .line 1322
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method private stopHttpd()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/duokan/airkan/common/AirkanException;
        }
    .end annotation

    .prologue
    .line 1326
    iget-object v2, p0, Lcom/duokan/airkan/phone/api/ConnectionManager;->mAirkanDeviceManager:Lcom/duokan/airkan/phone/api/DeviceManager;

    if-nez v2, :cond_0

    .line 1327
    new-instance v2, Lcom/duokan/airkan/common/AirkanException;

    const-string v3, "device manager is null"

    invoke-direct {v2, v3}, Lcom/duokan/airkan/common/AirkanException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1329
    :cond_0
    iget-object v2, p0, Lcom/duokan/airkan/phone/api/ConnectionManager;->mAirkanDeviceManager:Lcom/duokan/airkan/phone/api/DeviceManager;

    invoke-virtual {v2}, Lcom/duokan/airkan/phone/api/DeviceManager;->getHttpService()Lcom/duokan/airkan/http/aidl/IHttpService;

    move-result-object v1

    .line 1330
    .local v1, httpService:Lcom/duokan/airkan/http/aidl/IHttpService;
    if-nez v1, :cond_1

    .line 1331
    new-instance v2, Lcom/duokan/airkan/common/AirkanException;

    const-string v3, "Http Service is not ready."

    invoke-direct {v2, v3}, Lcom/duokan/airkan/common/AirkanException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1334
    :cond_1
    :try_start_0
    invoke-interface {v1}, Lcom/duokan/airkan/http/aidl/IHttpService;->stopHttpd()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1338
    :goto_0
    return-void

    .line 1335
    :catch_0
    move-exception v0

    .line 1336
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method canPause()Z
    .locals 2

    .prologue
    .line 933
    const-string v0, "AVM"

    const-string v1, "canPause"

    invoke-static {v0, v1}, Lcom/duokan/airkan/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 934
    const/4 v0, 0x1

    return v0
.end method

.method canSeekBackward()Z
    .locals 2

    .prologue
    .line 938
    const-string v0, "AVM"

    const-string v1, "canSeekBackward"

    invoke-static {v0, v1}, Lcom/duokan/airkan/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 939
    const/4 v0, 0x1

    return v0
.end method

.method canSeekForward()Z
    .locals 2

    .prologue
    .line 943
    const-string v0, "AVM"

    const-string v1, "canSeekForward"

    invoke-static {v0, v1}, Lcom/duokan/airkan/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 944
    const/4 v0, 0x1

    return v0
.end method

.method closeHttpSession()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/duokan/airkan/common/AirkanException;
        }
    .end annotation

    .prologue
    .line 1340
    iget-object v2, p0, Lcom/duokan/airkan/phone/api/ConnectionManager;->mAirkanDeviceManager:Lcom/duokan/airkan/phone/api/DeviceManager;

    if-nez v2, :cond_0

    .line 1341
    new-instance v2, Lcom/duokan/airkan/common/AirkanException;

    const-string v3, "device manager is null"

    invoke-direct {v2, v3}, Lcom/duokan/airkan/common/AirkanException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1343
    :cond_0
    iget-object v2, p0, Lcom/duokan/airkan/phone/api/ConnectionManager;->mAirkanDeviceManager:Lcom/duokan/airkan/phone/api/DeviceManager;

    invoke-virtual {v2}, Lcom/duokan/airkan/phone/api/DeviceManager;->getHttpService()Lcom/duokan/airkan/http/aidl/IHttpService;

    move-result-object v1

    .line 1344
    .local v1, httpService:Lcom/duokan/airkan/http/aidl/IHttpService;
    if-nez v1, :cond_1

    .line 1345
    new-instance v2, Lcom/duokan/airkan/common/AirkanException;

    const-string v3, "Http Service is not ready."

    invoke-direct {v2, v3}, Lcom/duokan/airkan/common/AirkanException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1348
    :cond_1
    :try_start_0
    invoke-interface {v1}, Lcom/duokan/airkan/http/aidl/IHttpService;->closeHttpSession()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1352
    :goto_0
    return-void

    .line 1349
    :catch_0
    move-exception v0

    .line 1350
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method decreaseVolume(B)V
    .locals 6
    .parameter "percent"

    .prologue
    .line 999
    const-string v4, "AVM"

    const-string v5, "decreaseVolume enter"

    invoke-static {v4, v5}, Lcom/duokan/airkan/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1000
    iget-object v4, p0, Lcom/duokan/airkan/phone/api/VideoManager;->mVCDStatRemote:Lcom/duokan/airkan/common/video/VideoControlData;

    invoke-virtual {v4}, Lcom/duokan/airkan/common/video/VideoControlData;->getVolume()B

    move-result v0

    .line 1001
    .local v0, current:B
    sub-int v4, v0, p1

    int-to-byte v3, v4

    .line 1002
    .local v3, newvol:B
    if-gez v3, :cond_0

    .line 1003
    const/4 v3, 0x0

    .line 1005
    :cond_0
    invoke-direct {p0, v3}, Lcom/duokan/airkan/phone/api/VideoManager;->byteVolumeToFloat(B)F

    move-result v2

    .line 1007
    .local v2, fVolume:F
    :try_start_0
    invoke-virtual {p0, v2}, Lcom/duokan/airkan/phone/api/VideoManager;->setVolume(F)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/duokan/airkan/common/AirkanException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1013
    :goto_0
    return-void

    .line 1008
    :catch_0
    move-exception v1

    .line 1009
    .local v1, e:Ljava/lang/IllegalArgumentException;
    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    .line 1010
    .end local v1           #e:Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v1

    .line 1011
    .local v1, e:Lcom/duokan/airkan/common/AirkanException;
    invoke-virtual {v1}, Lcom/duokan/airkan/common/AirkanException;->printStackTrace()V

    goto :goto_0
.end method

.method error(Ljava/lang/String;)V
    .locals 4
    .parameter "message"

    .prologue
    .line 1188
    const-string v0, "AVM"

    const-string v1, "error enter"

    invoke-static {v0, v1}, Lcom/duokan/airkan/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1189
    iget-object v0, p0, Lcom/duokan/airkan/phone/api/VideoManager;->mOnVideoEventListener:Lcom/duokan/airkan/phone/api/VideoManager$OnVideoEventListener;

    if-nez v0, :cond_0

    .line 1190
    const-string v0, "AVM"

    const-string v1, "video event listener is not available, ignore"

    invoke-static {v0, v1}, Lcom/duokan/airkan/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1198
    :goto_0
    return-void

    .line 1193
    :cond_0
    iget-object v0, p0, Lcom/duokan/airkan/phone/api/VideoManager;->mOnVideoEventListener:Lcom/duokan/airkan/phone/api/VideoManager$OnVideoEventListener;

    invoke-interface {v0, p1}, Lcom/duokan/airkan/phone/api/VideoManager$OnVideoEventListener;->onError(Ljava/lang/String;)V

    .line 1194
    iget-object v1, p0, Lcom/duokan/airkan/phone/api/VideoManager;->mState:Lcom/duokan/airkan/phone/api/VideoManager$State;

    monitor-enter v1

    .line 1195
    :try_start_0
    sget-object v0, Lcom/duokan/airkan/phone/api/VideoManager$State;->STATE_EEEOR:Lcom/duokan/airkan/phone/api/VideoManager$State;

    iput-object v0, p0, Lcom/duokan/airkan/phone/api/VideoManager;->mState:Lcom/duokan/airkan/phone/api/VideoManager$State;

    .line 1196
    const-string v0, "AVM"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "error, State:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/duokan/airkan/phone/api/VideoManager;->mState:Lcom/duokan/airkan/phone/api/VideoManager$State;

    invoke-virtual {v3}, Lcom/duokan/airkan/phone/api/VideoManager$State;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/duokan/airkan/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1197
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method formatUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "url"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/duokan/airkan/common/AirkanException;
        }
    .end annotation

    .prologue
    .line 1355
    iget-object v2, p0, Lcom/duokan/airkan/phone/api/ConnectionManager;->mAirkanDeviceManager:Lcom/duokan/airkan/phone/api/DeviceManager;

    if-nez v2, :cond_0

    .line 1356
    new-instance v2, Lcom/duokan/airkan/common/AirkanException;

    const-string v3, "device manager is null"

    invoke-direct {v2, v3}, Lcom/duokan/airkan/common/AirkanException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1358
    :cond_0
    iget-object v2, p0, Lcom/duokan/airkan/phone/api/ConnectionManager;->mAirkanDeviceManager:Lcom/duokan/airkan/phone/api/DeviceManager;

    invoke-virtual {v2}, Lcom/duokan/airkan/phone/api/DeviceManager;->getHttpService()Lcom/duokan/airkan/http/aidl/IHttpService;

    move-result-object v1

    .line 1359
    .local v1, httpService:Lcom/duokan/airkan/http/aidl/IHttpService;
    if-nez v1, :cond_1

    .line 1360
    new-instance v2, Lcom/duokan/airkan/common/AirkanException;

    const-string v3, "Http Service is not ready."

    invoke-direct {v2, v3}, Lcom/duokan/airkan/common/AirkanException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1363
    :cond_1
    :try_start_0
    invoke-interface {v1, p1}, Lcom/duokan/airkan/http/aidl/IHttpService;->formatUrl(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 1367
    :goto_0
    return-object v2

    .line 1364
    :catch_0
    move-exception v0

    .line 1365
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1367
    const/4 v2, 0x0

    goto :goto_0
.end method

.method getBufferPercentage()I
    .locals 2

    .prologue
    .line 928
    const-string v0, "AVM"

    const-string v1, "getBufferPercentage"

    invoke-static {v0, v1}, Lcom/duokan/airkan/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 929
    const/4 v0, 0x0

    return v0
.end method

.method public getCurrentPosition()I
    .locals 4

    .prologue
    .line 859
    iget-object v1, p0, Lcom/duokan/airkan/phone/api/VideoManager;->mState:Lcom/duokan/airkan/phone/api/VideoManager$State;

    monitor-enter v1

    .line 860
    :try_start_0
    sget-object v0, Lcom/duokan/airkan/phone/api/VideoManager$State;->STATE_IDLE:Lcom/duokan/airkan/phone/api/VideoManager$State;

    iget-object v2, p0, Lcom/duokan/airkan/phone/api/VideoManager;->mState:Lcom/duokan/airkan/phone/api/VideoManager$State;

    if-eq v0, v2, :cond_0

    sget-object v0, Lcom/duokan/airkan/phone/api/VideoManager$State;->STATE_EEEOR:Lcom/duokan/airkan/phone/api/VideoManager$State;

    iget-object v2, p0, Lcom/duokan/airkan/phone/api/VideoManager;->mState:Lcom/duokan/airkan/phone/api/VideoManager$State;

    if-ne v0, v2, :cond_1

    .line 861
    :cond_0
    const-string v0, "AVM"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getCurrentPosition, State:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/duokan/airkan/phone/api/VideoManager;->mState:Lcom/duokan/airkan/phone/api/VideoManager$State;

    invoke-virtual {v3}, Lcom/duokan/airkan/phone/api/VideoManager$State;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/duokan/airkan/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 862
    const/4 v0, -0x1

    monitor-exit v1

    .line 866
    :goto_0
    return v0

    .line 864
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 865
    const-string v0, "AVM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCurrentPosition:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/duokan/airkan/phone/api/VideoManager;->mVCDStatRemote:Lcom/duokan/airkan/common/video/VideoControlData;

    invoke-virtual {v2}, Lcom/duokan/airkan/common/video/VideoControlData;->getPosition()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/duokan/airkan/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 866
    iget-object v0, p0, Lcom/duokan/airkan/phone/api/VideoManager;->mVCDStatRemote:Lcom/duokan/airkan/common/video/VideoControlData;

    invoke-virtual {v0}, Lcom/duokan/airkan/common/video/VideoControlData;->getPosition()I

    move-result v0

    goto :goto_0

    .line 864
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public getDuration()I
    .locals 4

    .prologue
    .line 844
    iget-object v1, p0, Lcom/duokan/airkan/phone/api/VideoManager;->mState:Lcom/duokan/airkan/phone/api/VideoManager$State;

    monitor-enter v1

    .line 845
    :try_start_0
    sget-object v0, Lcom/duokan/airkan/phone/api/VideoManager$State;->STATE_STARTED:Lcom/duokan/airkan/phone/api/VideoManager$State;

    iget-object v2, p0, Lcom/duokan/airkan/phone/api/VideoManager;->mState:Lcom/duokan/airkan/phone/api/VideoManager$State;

    if-eq v0, v2, :cond_0

    sget-object v0, Lcom/duokan/airkan/phone/api/VideoManager$State;->STATE_PAUSED:Lcom/duokan/airkan/phone/api/VideoManager$State;

    iget-object v2, p0, Lcom/duokan/airkan/phone/api/VideoManager;->mState:Lcom/duokan/airkan/phone/api/VideoManager$State;

    if-eq v0, v2, :cond_0

    .line 846
    const-string v0, "AVM"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getDuration, State:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/duokan/airkan/phone/api/VideoManager;->mState:Lcom/duokan/airkan/phone/api/VideoManager$State;

    invoke-virtual {v3}, Lcom/duokan/airkan/phone/api/VideoManager$State;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/duokan/airkan/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 847
    const/4 v0, -0x1

    monitor-exit v1

    .line 851
    :goto_0
    return v0

    .line 849
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 850
    const-string v0, "AVM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getDuration:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/duokan/airkan/phone/api/VideoManager;->mVCDStatRemote:Lcom/duokan/airkan/common/video/VideoControlData;

    invoke-virtual {v2}, Lcom/duokan/airkan/common/video/VideoControlData;->getDuration()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/duokan/airkan/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 851
    iget-object v0, p0, Lcom/duokan/airkan/phone/api/VideoManager;->mVCDStatRemote:Lcom/duokan/airkan/common/video/VideoControlData;

    invoke-virtual {v0}, Lcom/duokan/airkan/common/video/VideoControlData;->getDuration()I

    move-result v0

    goto :goto_0

    .line 849
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method getVcdCtrl()Lcom/duokan/airkan/common/video/VideoControlData;
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lcom/duokan/airkan/phone/api/VideoManager;->mVCDPlayPostCtrl:Lcom/duokan/airkan/common/video/VideoControlData;

    return-object v0
.end method

.method getVcdStat()Lcom/duokan/airkan/common/video/VideoControlData;
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Lcom/duokan/airkan/phone/api/VideoManager;->mVCDStatRemote:Lcom/duokan/airkan/common/video/VideoControlData;

    return-object v0
.end method

.method public getVolume()F
    .locals 4

    .prologue
    .line 1020
    iget-object v1, p0, Lcom/duokan/airkan/phone/api/VideoManager;->mState:Lcom/duokan/airkan/phone/api/VideoManager$State;

    monitor-enter v1

    .line 1021
    :try_start_0
    sget-object v0, Lcom/duokan/airkan/phone/api/VideoManager$State;->STATE_IDLE:Lcom/duokan/airkan/phone/api/VideoManager$State;

    iget-object v2, p0, Lcom/duokan/airkan/phone/api/VideoManager;->mState:Lcom/duokan/airkan/phone/api/VideoManager$State;

    if-eq v0, v2, :cond_0

    sget-object v0, Lcom/duokan/airkan/phone/api/VideoManager$State;->STATE_DATA:Lcom/duokan/airkan/phone/api/VideoManager$State;

    iget-object v2, p0, Lcom/duokan/airkan/phone/api/VideoManager;->mState:Lcom/duokan/airkan/phone/api/VideoManager$State;

    if-ne v0, v2, :cond_1

    .line 1022
    :cond_0
    const-string v0, "AVM"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getVolume, State:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/duokan/airkan/phone/api/VideoManager;->mState:Lcom/duokan/airkan/phone/api/VideoManager$State;

    invoke-virtual {v3}, Lcom/duokan/airkan/phone/api/VideoManager$State;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/duokan/airkan/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1023
    const/high16 v0, -0x4080

    monitor-exit v1

    .line 1026
    :goto_0
    return v0

    .line 1025
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1026
    iget-object v0, p0, Lcom/duokan/airkan/phone/api/VideoManager;->mVCDStatRemote:Lcom/duokan/airkan/common/video/VideoControlData;

    invoke-virtual {v0}, Lcom/duokan/airkan/common/video/VideoControlData;->getVolume()B

    move-result v0

    invoke-direct {p0, v0}, Lcom/duokan/airkan/phone/api/VideoManager;->byteVolumeToFloat(B)F

    move-result v0

    goto :goto_0

    .line 1025
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method handleAuthSuccess()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/duokan/airkan/common/AirkanException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 179
    iput-boolean v2, p0, Lcom/duokan/airkan/phone/api/ConnectionManager;->mIsConnecting:Z

    .line 180
    iget-boolean v1, p0, Lcom/duokan/airkan/phone/api/VideoManager;->mIsToPlay:Z

    if-nez v1, :cond_0

    .line 195
    :goto_0
    return-void

    .line 183
    :cond_0
    iput-boolean v2, p0, Lcom/duokan/airkan/phone/api/VideoManager;->mIsToPlay:Z

    .line 184
    const/4 v0, 0x0

    .line 185
    .local v0, title:Ljava/lang/String;
    iget-object v1, p0, Lcom/duokan/airkan/phone/api/VideoManager;->mVideoMetaData:Lcom/duokan/airkan/common/video/VideoMetaData;

    if-eqz v1, :cond_1

    .line 186
    iget-object v1, p0, Lcom/duokan/airkan/phone/api/VideoManager;->mVideoMetaData:Lcom/duokan/airkan/common/video/VideoMetaData;

    invoke-virtual {v1}, Lcom/duokan/airkan/common/video/VideoMetaData;->getTitle()Ljava/lang/String;

    move-result-object v0

    .line 188
    :cond_1
    iget-object v1, p0, Lcom/duokan/airkan/phone/api/VideoManager;->mVCDPlayPostCtrl:Lcom/duokan/airkan/common/video/VideoControlData;

    invoke-virtual {v1}, Lcom/duokan/airkan/common/video/VideoControlData;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 189
    const-string v1, "AVM"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "to play:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/duokan/airkan/common/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    invoke-direct {p0}, Lcom/duokan/airkan/phone/api/VideoManager;->play()V

    goto :goto_0

    .line 192
    :cond_2
    const-string v1, "AVM"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "to prepare:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/duokan/airkan/common/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    invoke-direct {p0}, Lcom/duokan/airkan/phone/api/VideoManager;->prepare()V

    goto :goto_0
.end method

.method increaseVolume(B)V
    .locals 6
    .parameter "percent"

    .prologue
    .line 983
    const-string v4, "AVM"

    const-string v5, "increaseVolume enter"

    invoke-static {v4, v5}, Lcom/duokan/airkan/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 984
    iget-object v4, p0, Lcom/duokan/airkan/phone/api/VideoManager;->mVCDStatRemote:Lcom/duokan/airkan/common/video/VideoControlData;

    invoke-virtual {v4}, Lcom/duokan/airkan/common/video/VideoControlData;->getVolume()B

    move-result v0

    .line 985
    .local v0, current:B
    add-int v4, v0, p1

    int-to-byte v3, v4

    .line 986
    .local v3, newvol:B
    const/16 v4, 0x64

    if-le v3, v4, :cond_0

    .line 987
    const/16 v3, 0x64

    .line 989
    :cond_0
    invoke-direct {p0, v3}, Lcom/duokan/airkan/phone/api/VideoManager;->byteVolumeToFloat(B)F

    move-result v2

    .line 991
    .local v2, fVolume:F
    :try_start_0
    invoke-virtual {p0, v2}, Lcom/duokan/airkan/phone/api/VideoManager;->setVolume(F)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/duokan/airkan/common/AirkanException; {:try_start_0 .. :try_end_0} :catch_1

    .line 997
    :goto_0
    return-void

    .line 992
    :catch_0
    move-exception v1

    .line 993
    .local v1, e:Ljava/lang/IllegalArgumentException;
    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    .line 994
    .end local v1           #e:Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v1

    .line 995
    .local v1, e:Lcom/duokan/airkan/common/AirkanException;
    invoke-virtual {v1}, Lcom/duokan/airkan/common/AirkanException;->printStackTrace()V

    goto :goto_0
.end method

.method public isPlaying()Z
    .locals 4

    .prologue
    .line 917
    iget-object v1, p0, Lcom/duokan/airkan/phone/api/VideoManager;->mState:Lcom/duokan/airkan/phone/api/VideoManager$State;

    monitor-enter v1

    .line 918
    :try_start_0
    sget-object v0, Lcom/duokan/airkan/phone/api/VideoManager$State;->STATE_IDLE:Lcom/duokan/airkan/phone/api/VideoManager$State;

    iget-object v2, p0, Lcom/duokan/airkan/phone/api/VideoManager;->mState:Lcom/duokan/airkan/phone/api/VideoManager$State;

    if-eq v0, v2, :cond_0

    sget-object v0, Lcom/duokan/airkan/phone/api/VideoManager$State;->STATE_DATA:Lcom/duokan/airkan/phone/api/VideoManager$State;

    iget-object v2, p0, Lcom/duokan/airkan/phone/api/VideoManager;->mState:Lcom/duokan/airkan/phone/api/VideoManager$State;

    if-eq v0, v2, :cond_0

    sget-object v0, Lcom/duokan/airkan/phone/api/VideoManager$State;->STATE_EEEOR:Lcom/duokan/airkan/phone/api/VideoManager$State;

    iget-object v2, p0, Lcom/duokan/airkan/phone/api/VideoManager;->mState:Lcom/duokan/airkan/phone/api/VideoManager$State;

    if-ne v0, v2, :cond_1

    .line 919
    :cond_0
    const-string v0, "AVM"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isPlaying, State:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/duokan/airkan/phone/api/VideoManager;->mState:Lcom/duokan/airkan/phone/api/VideoManager$State;

    invoke-virtual {v3}, Lcom/duokan/airkan/phone/api/VideoManager$State;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/duokan/airkan/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 920
    const/4 v0, 0x0

    monitor-exit v1

    .line 924
    :goto_0
    return v0

    .line 922
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 923
    const-string v0, "AVM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "playing:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/duokan/airkan/phone/api/VideoManager;->mVCDStatRemote:Lcom/duokan/airkan/common/video/VideoControlData;

    invoke-virtual {v2}, Lcom/duokan/airkan/common/video/VideoControlData;->isPlaying()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/duokan/airkan/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 924
    iget-object v0, p0, Lcom/duokan/airkan/phone/api/VideoManager;->mVCDStatRemote:Lcom/duokan/airkan/common/video/VideoControlData;

    invoke-virtual {v0}, Lcom/duokan/airkan/common/video/VideoControlData;->isPlaying()Z

    move-result v0

    goto :goto_0

    .line 922
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method onDisconnected()V
    .locals 5

    .prologue
    .line 1217
    const-string v1, "AVM"

    const-string v2, "network disconnected"

    invoke-static {v1, v2}, Lcom/duokan/airkan/common/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1218
    iget-object v1, p0, Lcom/duokan/airkan/phone/api/VideoManager;->mOnVideoEventListener:Lcom/duokan/airkan/phone/api/VideoManager$OnVideoEventListener;

    if-nez v1, :cond_0

    .line 1219
    const-string v1, "AVM"

    const-string v2, "video event listener is not available, ignore"

    invoke-static {v1, v2}, Lcom/duokan/airkan/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1232
    :goto_0
    return-void

    .line 1222
    :cond_0
    iget-object v1, p0, Lcom/duokan/airkan/phone/api/VideoManager;->mOnVideoEventListener:Lcom/duokan/airkan/phone/api/VideoManager$OnVideoEventListener;

    invoke-interface {v1}, Lcom/duokan/airkan/phone/api/VideoManager$OnVideoEventListener;->onDisconnected()V

    .line 1223
    iget-object v2, p0, Lcom/duokan/airkan/phone/api/VideoManager;->mState:Lcom/duokan/airkan/phone/api/VideoManager$State;

    monitor-enter v2

    .line 1224
    :try_start_0
    sget-object v1, Lcom/duokan/airkan/phone/api/VideoManager$State;->STATE_DATA:Lcom/duokan/airkan/phone/api/VideoManager$State;

    iput-object v1, p0, Lcom/duokan/airkan/phone/api/VideoManager;->mState:Lcom/duokan/airkan/phone/api/VideoManager$State;

    .line 1225
    const-string v1, "AVM"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onDisconnected, State:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/duokan/airkan/phone/api/VideoManager;->mState:Lcom/duokan/airkan/phone/api/VideoManager$State;

    invoke-virtual {v4}, Lcom/duokan/airkan/phone/api/VideoManager$State;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/duokan/airkan/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1226
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1228
    :try_start_1
    invoke-direct {p0}, Lcom/duokan/airkan/phone/api/VideoManager;->stopHttpd()V
    :try_end_1
    .catch Lcom/duokan/airkan/common/AirkanException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1229
    :catch_0
    move-exception v0

    .line 1230
    .local v0, e:Lcom/duokan/airkan/common/AirkanException;
    invoke-virtual {v0}, Lcom/duokan/airkan/common/AirkanException;->printStackTrace()V

    goto :goto_0

    .line 1226
    .end local v0           #e:Lcom/duokan/airkan/common/AirkanException;
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method onPlayToSuccess()V
    .locals 4

    .prologue
    .line 686
    const-string v0, "AVM"

    const-string v1, "onPlayToSuccess enter"

    invoke-static {v0, v1}, Lcom/duokan/airkan/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 687
    iget-object v0, p0, Lcom/duokan/airkan/phone/api/VideoManager;->mOnVideoEventListener:Lcom/duokan/airkan/phone/api/VideoManager$OnVideoEventListener;

    if-eqz v0, :cond_0

    .line 688
    const-string v0, "AVM"

    const-string v1, "inform app playTo success"

    invoke-static {v0, v1}, Lcom/duokan/airkan/common/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 689
    iget-object v0, p0, Lcom/duokan/airkan/phone/api/VideoManager;->mOnVideoEventListener:Lcom/duokan/airkan/phone/api/VideoManager$OnVideoEventListener;

    invoke-interface {v0}, Lcom/duokan/airkan/phone/api/VideoManager$OnVideoEventListener;->onPlayToSuccess()V

    .line 691
    :cond_0
    iget-object v1, p0, Lcom/duokan/airkan/phone/api/VideoManager;->mState:Lcom/duokan/airkan/phone/api/VideoManager$State;

    monitor-enter v1

    .line 692
    :try_start_0
    sget-object v0, Lcom/duokan/airkan/phone/api/VideoManager$State;->STATE_INITIALIZED:Lcom/duokan/airkan/phone/api/VideoManager$State;

    iput-object v0, p0, Lcom/duokan/airkan/phone/api/VideoManager;->mState:Lcom/duokan/airkan/phone/api/VideoManager$State;

    .line 693
    const-string v0, "AVM"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onPlayToSuccess, State:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/duokan/airkan/phone/api/VideoManager;->mState:Lcom/duokan/airkan/phone/api/VideoManager$State;

    invoke-virtual {v3}, Lcom/duokan/airkan/phone/api/VideoManager$State;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/duokan/airkan/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 694
    monitor-exit v1

    .line 695
    return-void

    .line 694
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method onReleased()V
    .locals 4

    .prologue
    .line 1203
    const-string v0, "AVM"

    const-string v1, "tv playing window released"

    invoke-static {v0, v1}, Lcom/duokan/airkan/common/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1204
    iget-object v0, p0, Lcom/duokan/airkan/phone/api/VideoManager;->mOnVideoEventListener:Lcom/duokan/airkan/phone/api/VideoManager$OnVideoEventListener;

    if-nez v0, :cond_0

    .line 1205
    const-string v0, "AVM"

    const-string v1, "video event listener is not available, ignore"

    invoke-static {v0, v1}, Lcom/duokan/airkan/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1213
    :goto_0
    return-void

    .line 1208
    :cond_0
    iget-object v0, p0, Lcom/duokan/airkan/phone/api/VideoManager;->mOnVideoEventListener:Lcom/duokan/airkan/phone/api/VideoManager$OnVideoEventListener;

    invoke-interface {v0}, Lcom/duokan/airkan/phone/api/VideoManager$OnVideoEventListener;->onReleased()V

    .line 1209
    iget-object v1, p0, Lcom/duokan/airkan/phone/api/VideoManager;->mState:Lcom/duokan/airkan/phone/api/VideoManager$State;

    monitor-enter v1

    .line 1210
    :try_start_0
    sget-object v0, Lcom/duokan/airkan/phone/api/VideoManager$State;->STATE_DATA:Lcom/duokan/airkan/phone/api/VideoManager$State;

    iput-object v0, p0, Lcom/duokan/airkan/phone/api/VideoManager;->mState:Lcom/duokan/airkan/phone/api/VideoManager$State;

    .line 1211
    const-string v0, "AVM"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onReleased, State:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/duokan/airkan/phone/api/VideoManager;->mState:Lcom/duokan/airkan/phone/api/VideoManager$State;

    invoke-virtual {v3}, Lcom/duokan/airkan/phone/api/VideoManager$State;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/duokan/airkan/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1212
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected parseUri(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;
    .locals 9
    .parameter "context"
    .parameter "uri"

    .prologue
    const/4 v3, 0x0

    .line 1388
    if-nez p2, :cond_1

    .line 1417
    :cond_0
    :goto_0
    return-object v3

    .line 1391
    :cond_1
    const/4 v8, 0x0

    .line 1392
    .local v8, path:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    .line 1393
    const-string v0, "AVM"

    const-string v1, "no scheme"

    invoke-static {v0, v1}, Lcom/duokan/airkan/common/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1394
    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1416
    :goto_1
    const-string v0, "AVM"

    invoke-static {v0, v8}, Lcom/duokan/airkan/common/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    move-object v3, v8

    .line 1417
    goto :goto_0

    .line 1395
    :cond_2
    invoke-virtual {p2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "content"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1396
    const-string v0, "AVM"

    const-string v1, "content uri"

    invoke-static {v0, v1}, Lcom/duokan/airkan/common/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1397
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_data"

    aput-object v1, v2, v0

    .line 1398
    .local v2, columns:[Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v1, p2

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1399
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_0

    .line 1402
    const-string v0, "_data"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    .line 1403
    .local v7, index:I
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1404
    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 1405
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 1406
    .end local v2           #columns:[Ljava/lang/String;
    .end local v6           #cursor:Landroid/database/Cursor;
    .end local v7           #index:I
    :cond_3
    invoke-virtual {p2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "file"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1407
    const-string v0, "AVM"

    const-string v1, "file uri"

    invoke-static {v0, v1}, Lcom/duokan/airkan/common/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1408
    invoke-virtual {p2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v8

    goto :goto_1

    .line 1409
    :cond_4
    invoke-virtual {p2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "http"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "https"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1410
    :cond_5
    const-string v0, "AVM"

    const-string v1, "file http/https"

    invoke-static {v0, v1}, Lcom/duokan/airkan/common/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1411
    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_1

    .line 1413
    :cond_6
    const-string v0, "AVM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "scheme not match"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/duokan/airkan/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1414
    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_1
.end method

.method public pause()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/duokan/airkan/common/AirkanException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 803
    iget-boolean v1, p0, Lcom/duokan/airkan/phone/api/ConnectionManager;->mIsConnecting:Z

    if-eqz v1, :cond_0

    .line 804
    const-string v1, "AVM"

    const-string v2, "connecting, wait"

    invoke-static {v1, v2}, Lcom/duokan/airkan/common/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 805
    const/4 v1, 0x0

    iput v1, p0, Lcom/duokan/airkan/phone/api/VideoManager;->mPauseWaitCount:I

    .line 806
    invoke-direct {p0}, Lcom/duokan/airkan/phone/api/VideoManager;->postPause()V

    .line 837
    :goto_0
    return-void

    .line 810
    :cond_0
    iget-object v1, p0, Lcom/duokan/airkan/phone/api/ConnectionManager;->mAirkanDeviceManager:Lcom/duokan/airkan/phone/api/DeviceManager;

    if-nez v1, :cond_1

    .line 811
    new-instance v1, Lcom/duokan/airkan/common/AirkanException;

    const-string v2, "device manager is null"

    invoke-direct {v1, v2}, Lcom/duokan/airkan/common/AirkanException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 813
    :cond_1
    iget-object v1, p0, Lcom/duokan/airkan/phone/api/ConnectionManager;->mAirkanDeviceManager:Lcom/duokan/airkan/phone/api/DeviceManager;

    invoke-virtual {v1}, Lcom/duokan/airkan/phone/api/DeviceManager;->getService()Lcom/duokan/airkan/phone/aidl/IAirkanClientService;

    move-result-object v0

    .line 814
    .local v0, myService:Lcom/duokan/airkan/phone/aidl/IAirkanClientService;
    if-eqz v0, :cond_2

    .line 815
    iget-object v1, p0, Lcom/duokan/airkan/phone/api/VideoManager;->mVCDStatRemote:Lcom/duokan/airkan/common/video/VideoControlData;

    invoke-virtual {v1, v2}, Lcom/duokan/airkan/common/video/VideoControlData;->setPlaying(Z)V

    .line 816
    iget-object v1, p0, Lcom/duokan/airkan/phone/api/VideoManager;->mVCDStatRemote:Lcom/duokan/airkan/common/video/VideoControlData;

    invoke-virtual {v1, v2}, Lcom/duokan/airkan/common/video/VideoControlData;->setPausing(Z)V

    .line 818
    iget-object v1, p0, Lcom/duokan/airkan/phone/api/VideoManager;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/duokan/airkan/phone/api/VideoManager$7;

    invoke-direct {v2, p0, v0}, Lcom/duokan/airkan/phone/api/VideoManager$7;-><init>(Lcom/duokan/airkan/phone/api/VideoManager;Lcom/duokan/airkan/phone/aidl/IAirkanClientService;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 832
    :cond_2
    const-string v1, "AVM"

    const-string v2, "pause, Service not bounded. call DeviceManager.open() first and wait for onOpened()."

    invoke-static {v1, v2}, Lcom/duokan/airkan/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 834
    new-instance v1, Lcom/duokan/airkan/common/AirkanException;

    const-string v2, "pause, Service not bounded. call DeviceManager.open() first and wait for onOpened()."

    invoke-direct {v1, v2}, Lcom/duokan/airkan/common/AirkanException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method playStatusChange(ZZ)V
    .locals 6
    .parameter "playing"
    .parameter "pausing"

    .prologue
    .line 1069
    const-string v2, "AVM"

    const-string v3, "playStatusChange enter"

    invoke-static {v2, v3}, Lcom/duokan/airkan/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1070
    iget-object v2, p0, Lcom/duokan/airkan/phone/api/VideoManager;->mVCDStatRemote:Lcom/duokan/airkan/common/video/VideoControlData;

    invoke-virtual {v2}, Lcom/duokan/airkan/common/video/VideoControlData;->playing()Z

    move-result v1

    .line 1071
    .local v1, oldplaying:Z
    iget-object v2, p0, Lcom/duokan/airkan/phone/api/VideoManager;->mVCDStatRemote:Lcom/duokan/airkan/common/video/VideoControlData;

    invoke-virtual {v2}, Lcom/duokan/airkan/common/video/VideoControlData;->pausing()Z

    move-result v0

    .line 1072
    .local v0, oldpausing:Z
    iget-object v2, p0, Lcom/duokan/airkan/phone/api/VideoManager;->mVCDStatRemote:Lcom/duokan/airkan/common/video/VideoControlData;

    invoke-virtual {v2, p1}, Lcom/duokan/airkan/common/video/VideoControlData;->setPlaying(Z)V

    .line 1073
    iget-object v2, p0, Lcom/duokan/airkan/phone/api/VideoManager;->mVCDStatRemote:Lcom/duokan/airkan/common/video/VideoControlData;

    invoke-virtual {v2, p2}, Lcom/duokan/airkan/common/video/VideoControlData;->setPausing(Z)V

    .line 1075
    iget-object v2, p0, Lcom/duokan/airkan/phone/api/VideoManager;->mOnVideoEventListener:Lcom/duokan/airkan/phone/api/VideoManager$OnVideoEventListener;

    if-nez v2, :cond_0

    .line 1076
    const-string v2, "AVM"

    const-string v3, "video event listener is not available, ignore"

    invoke-static {v2, v3}, Lcom/duokan/airkan/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1122
    :goto_0
    return-void

    .line 1079
    :cond_0
    const-string v2, "AVM"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "status change, old playing:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " new playing:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " old pausing:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " new pausing:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/duokan/airkan/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1081
    if-eqz v1, :cond_5

    .line 1082
    if-eqz p1, :cond_4

    .line 1083
    if-eqz v0, :cond_2

    .line 1084
    if-eqz p2, :cond_1

    .line 1085
    const-string v2, "AVM"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "not changed, do nothing. old pausing:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " new pausing:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/duokan/airkan/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1088
    :cond_1
    const-string v2, "AVM"

    const-string v3, "inform on started"

    invoke-static {v2, v3}, Lcom/duokan/airkan/common/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1089
    iget-object v2, p0, Lcom/duokan/airkan/phone/api/VideoManager;->mOnVideoEventListener:Lcom/duokan/airkan/phone/api/VideoManager$OnVideoEventListener;

    invoke-interface {v2}, Lcom/duokan/airkan/phone/api/VideoManager$OnVideoEventListener;->onStarted()V

    goto :goto_0

    .line 1092
    :cond_2
    if-eqz p2, :cond_3

    .line 1093
    const-string v2, "AVM"

    const-string v3, "inform on paused"

    invoke-static {v2, v3}, Lcom/duokan/airkan/common/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1094
    iget-object v2, p0, Lcom/duokan/airkan/phone/api/VideoManager;->mOnVideoEventListener:Lcom/duokan/airkan/phone/api/VideoManager$OnVideoEventListener;

    invoke-interface {v2}, Lcom/duokan/airkan/phone/api/VideoManager$OnVideoEventListener;->onPaused()V

    goto :goto_0

    .line 1096
    :cond_3
    const-string v2, "AVM"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "not changed, do nothing. old pausing:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " new pausing:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/duokan/airkan/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1101
    :cond_4
    const-string v2, "AVM"

    const-string v3, "inform on stopped"

    invoke-static {v2, v3}, Lcom/duokan/airkan/common/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1102
    iget-object v2, p0, Lcom/duokan/airkan/phone/api/VideoManager;->mOnVideoEventListener:Lcom/duokan/airkan/phone/api/VideoManager$OnVideoEventListener;

    invoke-interface {v2}, Lcom/duokan/airkan/phone/api/VideoManager$OnVideoEventListener;->onStopped()V

    .line 1103
    iget-object v3, p0, Lcom/duokan/airkan/phone/api/VideoManager;->mState:Lcom/duokan/airkan/phone/api/VideoManager$State;

    monitor-enter v3

    .line 1104
    :try_start_0
    sget-object v2, Lcom/duokan/airkan/phone/api/VideoManager$State;->STATE_STOPPED:Lcom/duokan/airkan/phone/api/VideoManager$State;

    iput-object v2, p0, Lcom/duokan/airkan/phone/api/VideoManager;->mState:Lcom/duokan/airkan/phone/api/VideoManager$State;

    .line 1105
    const-string v2, "AVM"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onStopped, State:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/duokan/airkan/phone/api/VideoManager;->mState:Lcom/duokan/airkan/phone/api/VideoManager$State;

    invoke-virtual {v5}, Lcom/duokan/airkan/phone/api/VideoManager$State;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/duokan/airkan/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1106
    monitor-exit v3

    goto/16 :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 1109
    :cond_5
    if-eqz p1, :cond_7

    .line 1110
    if-eqz p2, :cond_6

    .line 1111
    const-string v2, "AVM"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "not changed, do nothing. old pausing:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " new pausing:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/duokan/airkan/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1114
    :cond_6
    const-string v2, "AVM"

    const-string v3, "inform on started"

    invoke-static {v2, v3}, Lcom/duokan/airkan/common/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1115
    iget-object v2, p0, Lcom/duokan/airkan/phone/api/VideoManager;->mOnVideoEventListener:Lcom/duokan/airkan/phone/api/VideoManager$OnVideoEventListener;

    invoke-interface {v2}, Lcom/duokan/airkan/phone/api/VideoManager$OnVideoEventListener;->onStarted()V

    goto/16 :goto_0

    .line 1118
    :cond_7
    const-string v2, "AVM"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "not changed, do nothing. old playing:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " new playing:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/duokan/airkan/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public playTo(Ljava/lang/String;)V
    .locals 6
    .parameter "deviceName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/duokan/airkan/common/AirkanException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    .line 482
    invoke-direct {p0}, Lcom/duokan/airkan/phone/api/VideoManager;->registerVideoCallback()V

    .line 484
    iget-object v2, p0, Lcom/duokan/airkan/phone/api/ConnectionManager;->mAirkanDeviceManager:Lcom/duokan/airkan/phone/api/DeviceManager;

    invoke-virtual {v2}, Lcom/duokan/airkan/phone/api/DeviceManager;->getConnectDeviceName()Ljava/lang/String;

    move-result-object v0

    .line 485
    .local v0, currentDevice:Ljava/lang/String;
    const-string v2, "AVM"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "playTo enter deviceName="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", current="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/duokan/airkan/phone/api/ConnectionManager;->mAirkanDeviceManager:Lcom/duokan/airkan/phone/api/DeviceManager;

    invoke-virtual {v4}, Lcom/duokan/airkan/phone/api/DeviceManager;->getConnectDeviceName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/duokan/airkan/common/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 486
    iget-boolean v2, p0, Lcom/duokan/airkan/phone/api/ConnectionManager;->mIsAuthPassed:Z

    if-eqz v2, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 487
    invoke-direct {p0}, Lcom/duokan/airkan/phone/api/VideoManager;->play()V

    .line 516
    :goto_0
    return-void

    .line 491
    :cond_0
    iget-object v2, p0, Lcom/duokan/airkan/phone/api/ConnectionManager;->mAirkanDeviceManager:Lcom/duokan/airkan/phone/api/DeviceManager;

    if-nez v2, :cond_1

    .line 492
    new-instance v2, Lcom/duokan/airkan/common/AirkanException;

    const-string v3, "device manager is null"

    invoke-direct {v2, v3}, Lcom/duokan/airkan/common/AirkanException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 494
    :cond_1
    iget-object v2, p0, Lcom/duokan/airkan/phone/api/ConnectionManager;->mAirkanDeviceManager:Lcom/duokan/airkan/phone/api/DeviceManager;

    invoke-virtual {v2, p1}, Lcom/duokan/airkan/phone/api/DeviceManager;->getType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 495
    .local v1, deviceType:Ljava/lang/String;
    if-nez v1, :cond_2

    .line 496
    new-instance v2, Lcom/duokan/airkan/common/AirkanException;

    const-string v3, "device not found"

    invoke-direct {v2, v3}, Lcom/duokan/airkan/common/AirkanException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 498
    :cond_2
    const-string v2, "_airkan._tcp.local."

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 499
    iget-object v2, p0, Lcom/duokan/airkan/phone/api/VideoManager;->mVideoMetaData:Lcom/duokan/airkan/common/video/VideoMetaData;

    if-nez v2, :cond_3

    .line 500
    new-instance v2, Lcom/duokan/airkan/common/AirkanException;

    const-string v3, "no video data"

    invoke-direct {v2, v3}, Lcom/duokan/airkan/common/AirkanException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 502
    :cond_3
    iput-boolean v5, p0, Lcom/duokan/airkan/phone/api/VideoManager;->mIsToPlay:Z

    .line 503
    iget-object v2, p0, Lcom/duokan/airkan/phone/api/VideoManager;->mVCDPlayPostCtrl:Lcom/duokan/airkan/common/video/VideoControlData;

    invoke-virtual {v2, v5}, Lcom/duokan/airkan/common/video/VideoControlData;->setPlaying(Z)V

    .line 504
    iget-object v2, p0, Lcom/duokan/airkan/phone/api/VideoManager;->mVCDPlayPostCtrl:Lcom/duokan/airkan/common/video/VideoControlData;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/duokan/airkan/common/video/VideoControlData;->setPausing(Z)V

    .line 505
    const-string v2, "AVM"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "connect airkan device:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/duokan/airkan/common/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 506
    invoke-super {p0, p1}, Lcom/duokan/airkan/phone/api/ConnectionManager;->connect(Ljava/lang/String;)V

    .line 510
    iget-object v3, p0, Lcom/duokan/airkan/phone/api/VideoManager;->mState:Lcom/duokan/airkan/phone/api/VideoManager$State;

    monitor-enter v3

    .line 511
    :try_start_0
    sget-object v2, Lcom/duokan/airkan/phone/api/VideoManager$State;->STATE_EEEOR:Lcom/duokan/airkan/phone/api/VideoManager$State;

    iget-object v4, p0, Lcom/duokan/airkan/phone/api/VideoManager;->mState:Lcom/duokan/airkan/phone/api/VideoManager$State;

    if-ne v2, v4, :cond_4

    .line 512
    sget-object v2, Lcom/duokan/airkan/phone/api/VideoManager$State;->STATE_DATA:Lcom/duokan/airkan/phone/api/VideoManager$State;

    iput-object v2, p0, Lcom/duokan/airkan/phone/api/VideoManager;->mState:Lcom/duokan/airkan/phone/api/VideoManager$State;

    .line 513
    const-string v2, "AVM"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "playTo, State:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/duokan/airkan/phone/api/VideoManager;->mState:Lcom/duokan/airkan/phone/api/VideoManager$State;

    invoke-virtual {v5}, Lcom/duokan/airkan/phone/api/VideoManager$State;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/duokan/airkan/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 515
    :cond_4
    monitor-exit v3

    goto/16 :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 508
    :cond_5
    new-instance v2, Lcom/duokan/airkan/common/AirkanException;

    const-string v3, "device type is not valid"

    invoke-direct {v2, v3}, Lcom/duokan/airkan/common/AirkanException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public seekTo(I)V
    .locals 5
    .parameter "pos"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/duokan/airkan/common/AirkanException;
        }
    .end annotation

    .prologue
    .line 875
    const-string v2, "AVM"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "to seek to:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/duokan/airkan/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 876
    iget-object v2, p0, Lcom/duokan/airkan/phone/api/ConnectionManager;->mAirkanDeviceManager:Lcom/duokan/airkan/phone/api/DeviceManager;

    if-nez v2, :cond_0

    .line 877
    new-instance v2, Lcom/duokan/airkan/common/AirkanException;

    const-string v3, "device manager is null"

    invoke-direct {v2, v3}, Lcom/duokan/airkan/common/AirkanException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 879
    :cond_0
    iget-object v2, p0, Lcom/duokan/airkan/phone/api/ConnectionManager;->mAirkanDeviceManager:Lcom/duokan/airkan/phone/api/DeviceManager;

    invoke-virtual {v2}, Lcom/duokan/airkan/phone/api/DeviceManager;->getService()Lcom/duokan/airkan/phone/aidl/IAirkanClientService;

    move-result-object v0

    .line 880
    .local v0, myService:Lcom/duokan/airkan/phone/aidl/IAirkanClientService;
    if-eqz v0, :cond_3

    .line 881
    if-gtz p1, :cond_2

    .line 882
    const/4 p1, 0x0

    .line 886
    :cond_1
    :goto_0
    move v1, p1

    .line 887
    .local v1, position:I
    iget-object v2, p0, Lcom/duokan/airkan/phone/api/VideoManager;->mVCDStatRemote:Lcom/duokan/airkan/common/video/VideoControlData;

    invoke-virtual {v2, p1}, Lcom/duokan/airkan/common/video/VideoControlData;->setPosition(I)V

    .line 888
    invoke-direct {p0}, Lcom/duokan/airkan/phone/api/VideoManager;->starSeekPostTimer()V

    .line 890
    iget-object v2, p0, Lcom/duokan/airkan/phone/api/VideoManager;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/duokan/airkan/phone/api/VideoManager$8;

    invoke-direct {v3, p0, v1, v0}, Lcom/duokan/airkan/phone/api/VideoManager$8;-><init>(Lcom/duokan/airkan/phone/api/VideoManager;ILcom/duokan/airkan/phone/aidl/IAirkanClientService;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 910
    return-void

    .line 883
    .end local v1           #position:I
    :cond_2
    iget-object v2, p0, Lcom/duokan/airkan/phone/api/VideoManager;->mVCDStatRemote:Lcom/duokan/airkan/common/video/VideoControlData;

    invoke-virtual {v2}, Lcom/duokan/airkan/common/video/VideoControlData;->getDuration()I

    move-result v2

    if-le p1, v2, :cond_1

    .line 884
    iget-object v2, p0, Lcom/duokan/airkan/phone/api/VideoManager;->mVCDStatRemote:Lcom/duokan/airkan/common/video/VideoControlData;

    invoke-virtual {v2}, Lcom/duokan/airkan/common/video/VideoControlData;->getDuration()I

    move-result p1

    goto :goto_0

    .line 904
    :cond_3
    const-string v2, "AVM"

    const-string v3, "seekTo, Service not bounded. call DeviceManager.open() first and wait for onOpened()."

    invoke-static {v2, v3}, Lcom/duokan/airkan/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 906
    new-instance v2, Lcom/duokan/airkan/common/AirkanException;

    const-string v3, "seekTo, Service not bounded. call DeviceManager.open() first and wait for onOpened()."

    invoke-direct {v2, v3}, Lcom/duokan/airkan/common/AirkanException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method protected setMusic(Z)V
    .locals 0
    .parameter "isMusic"

    .prologue
    .line 74
    iput-boolean p1, p0, Lcom/duokan/airkan/phone/api/VideoManager;->mIsMusic:Z

    .line 75
    return-void
.end method

.method public setResolution(Lcom/duokan/airkan/common/video/VideoResolution$Resolution;)V
    .locals 4
    .parameter "resolution"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/duokan/airkan/common/AirkanException;
        }
    .end annotation

    .prologue
    .line 953
    iget-object v2, p0, Lcom/duokan/airkan/phone/api/ConnectionManager;->mAirkanDeviceManager:Lcom/duokan/airkan/phone/api/DeviceManager;

    if-nez v2, :cond_0

    .line 954
    new-instance v2, Lcom/duokan/airkan/common/AirkanException;

    const-string v3, "device manager is null"

    invoke-direct {v2, v3}, Lcom/duokan/airkan/common/AirkanException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 956
    :cond_0
    iget-object v2, p0, Lcom/duokan/airkan/phone/api/ConnectionManager;->mAirkanDeviceManager:Lcom/duokan/airkan/phone/api/DeviceManager;

    invoke-virtual {v2}, Lcom/duokan/airkan/phone/api/DeviceManager;->getService()Lcom/duokan/airkan/phone/aidl/IAirkanClientService;

    move-result-object v1

    .line 957
    .local v1, myService:Lcom/duokan/airkan/phone/aidl/IAirkanClientService;
    if-eqz v1, :cond_1

    .line 958
    invoke-static {p1}, Lcom/duokan/airkan/common/video/VideoResolution;->enumResolutionToByte(Lcom/duokan/airkan/common/video/VideoResolution$Resolution;)B

    move-result v0

    .line 959
    .local v0, breso:B
    iget-object v2, p0, Lcom/duokan/airkan/phone/api/VideoManager;->mVCDStatRemote:Lcom/duokan/airkan/common/video/VideoControlData;

    invoke-virtual {v2, v0}, Lcom/duokan/airkan/common/video/VideoControlData;->setResolution(B)V

    .line 961
    iget-object v2, p0, Lcom/duokan/airkan/phone/api/VideoManager;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/duokan/airkan/phone/api/VideoManager$9;

    invoke-direct {v3, p0, v0, v1}, Lcom/duokan/airkan/phone/api/VideoManager$9;-><init>(Lcom/duokan/airkan/phone/api/VideoManager;BLcom/duokan/airkan/phone/aidl/IAirkanClientService;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 980
    return-void

    .line 975
    .end local v0           #breso:B
    :cond_1
    const-string v2, "AVM"

    const-string v3, "setResolution, Service not bounded. call DeviceManager.open() first and wait for onOpened()."

    invoke-static {v2, v3}, Lcom/duokan/airkan/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 977
    new-instance v2, Lcom/duokan/airkan/common/AirkanException;

    const-string v3, "setResolution, Service not bounded. call DeviceManager.open() first and wait for onOpened()."

    invoke-direct {v2, v3}, Lcom/duokan/airkan/common/AirkanException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public setSpName(Ljava/lang/String;)V
    .locals 4
    .parameter "spName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/duokan/airkan/common/AirkanException;
        }
    .end annotation

    .prologue
    .line 206
    if-nez p1, :cond_0

    .line 207
    new-instance v0, Lcom/duokan/airkan/common/AirkanException;

    const-string v1, "not valid sp name"

    invoke-direct {v0, v1}, Lcom/duokan/airkan/common/AirkanException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 209
    :cond_0
    const-string v0, "sohu"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "qiyi"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "tencent"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 212
    const-string v0, "AVM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "not valid sp name:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/duokan/airkan/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    new-instance v0, Lcom/duokan/airkan/common/AirkanException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "not valid sp name:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/duokan/airkan/common/AirkanException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 216
    :cond_1
    iput-object p1, p0, Lcom/duokan/airkan/phone/api/VideoManager;->mSpName:Ljava/lang/String;

    .line 217
    iget-object v1, p0, Lcom/duokan/airkan/phone/api/VideoManager;->mState:Lcom/duokan/airkan/phone/api/VideoManager$State;

    monitor-enter v1

    .line 218
    :try_start_0
    sget-object v0, Lcom/duokan/airkan/phone/api/VideoManager$State;->STATE_IDLE:Lcom/duokan/airkan/phone/api/VideoManager$State;

    iput-object v0, p0, Lcom/duokan/airkan/phone/api/VideoManager;->mState:Lcom/duokan/airkan/phone/api/VideoManager$State;

    .line 219
    const-string v0, "AVM"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setSpName, State:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/duokan/airkan/phone/api/VideoManager;->mState:Lcom/duokan/airkan/phone/api/VideoManager$State;

    invoke-virtual {v3}, Lcom/duokan/airkan/phone/api/VideoManager$State;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/duokan/airkan/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    monitor-exit v1

    .line 221
    return-void

    .line 220
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method setVideoMetaData(Lcom/duokan/airkan/common/video/VideoMetaData;)V
    .locals 0
    .parameter "vmd"

    .prologue
    .line 198
    iput-object p1, p0, Lcom/duokan/airkan/phone/api/VideoManager;->mVideoMetaData:Lcom/duokan/airkan/common/video/VideoMetaData;

    .line 199
    return-void
.end method

.method public setVideoURI(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;I)V
    .locals 3
    .parameter "context"
    .parameter "uri"
    .parameter "title"
    .parameter "position"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/duokan/airkan/common/AirkanException;
        }
    .end annotation

    .prologue
    .line 231
    if-nez p3, :cond_0

    .line 232
    const-string v1, "AVM"

    const-string v2, "title is null"

    invoke-static {v1, v2}, Lcom/duokan/airkan/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    new-instance v1, Lcom/duokan/airkan/common/AirkanException;

    const-string v2, "title is not valid"

    invoke-direct {v1, v2}, Lcom/duokan/airkan/common/AirkanException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 235
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/duokan/airkan/phone/api/VideoManager;->parseUri(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 236
    .local v0, url:Ljava/lang/String;
    if-nez v0, :cond_1

    .line 237
    const-string v1, "AVM"

    const-string v2, "url is null"

    invoke-static {v1, v2}, Lcom/duokan/airkan/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    new-instance v1, Lcom/duokan/airkan/common/AirkanException;

    const-string v2, "url is not valid"

    invoke-direct {v1, v2}, Lcom/duokan/airkan/common/AirkanException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 241
    :cond_1
    invoke-virtual {p0, v0, p3, p4}, Lcom/duokan/airkan/phone/api/VideoManager;->setVideoURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 242
    return-void
.end method

.method public setVideoURI(Ljava/lang/String;IJI)V
    .locals 7
    .parameter "title"
    .parameter "position"
    .parameter "mediaID"
    .parameter "ci"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/duokan/airkan/common/AirkanException;
        }
    .end annotation

    .prologue
    .line 313
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-wide v3, p3

    move v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/duokan/airkan/phone/api/VideoManager;->setVideoURI(Ljava/lang/String;IJII)V

    .line 314
    return-void
.end method

.method public setVideoURI(Ljava/lang/String;IJII)V
    .locals 8
    .parameter "title"
    .parameter "position"
    .parameter "mediaID"
    .parameter "ci"
    .parameter "preferedSource"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/duokan/airkan/common/AirkanException;
        }
    .end annotation

    .prologue
    .line 339
    const-string v7, ""

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-wide v3, p3

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v7}, Lcom/duokan/airkan/phone/api/VideoManager;->setVideoURI(Ljava/lang/String;IJIILjava/lang/String;)V

    .line 340
    return-void
.end method

.method public setVideoURI(Ljava/lang/String;IJIILjava/lang/String;)V
    .locals 7
    .parameter "title"
    .parameter "position"
    .parameter "mediaID"
    .parameter "ci"
    .parameter "preferedSource"
    .parameter "url"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/duokan/airkan/common/AirkanException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 353
    if-nez p1, :cond_0

    .line 354
    const-string v3, "AVM"

    const-string v4, "title is null"

    invoke-static {v3, v4}, Lcom/duokan/airkan/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 355
    new-instance v3, Lcom/duokan/airkan/common/AirkanException;

    const-string v4, "title is not valid"

    invoke-direct {v3, v4}, Lcom/duokan/airkan/common/AirkanException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 358
    :cond_0
    iget-object v3, p0, Lcom/duokan/airkan/phone/api/ConnectionManager;->mAirkanDeviceManager:Lcom/duokan/airkan/phone/api/DeviceManager;

    if-nez v3, :cond_1

    .line 359
    new-instance v3, Lcom/duokan/airkan/common/AirkanException;

    const-string v4, "device manager is null"

    invoke-direct {v3, v4}, Lcom/duokan/airkan/common/AirkanException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 362
    :cond_1
    new-instance v1, Lcom/duokan/airkan/common/video/VideoBasicInfo;

    invoke-direct {v1}, Lcom/duokan/airkan/common/video/VideoBasicInfo;-><init>()V

    .line 363
    .local v1, vbi:Lcom/duokan/airkan/common/video/VideoBasicInfo;
    const-string v3, ""

    iput-object v3, v1, Lcom/duokan/airkan/common/video/VideoBasicInfo;->header:Ljava/lang/String;

    .line 364
    iput-object p1, v1, Lcom/duokan/airkan/common/video/VideoBasicInfo;->title:Ljava/lang/String;

    .line 365
    iput p2, v1, Lcom/duokan/airkan/common/video/VideoBasicInfo;->position:I

    .line 366
    if-nez p7, :cond_4

    .line 367
    const-string v3, ""

    iput-object v3, v1, Lcom/duokan/airkan/common/video/VideoBasicInfo;->url:Ljava/lang/String;

    .line 371
    :goto_0
    iget-object v3, p0, Lcom/duokan/airkan/phone/api/ConnectionManager;->mAirkanDeviceManager:Lcom/duokan/airkan/phone/api/DeviceManager;

    invoke-virtual {v3}, Lcom/duokan/airkan/phone/api/DeviceManager;->getLocalDevicename()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/duokan/airkan/common/video/VideoBasicInfo;->deviceName:Ljava/lang/String;

    .line 372
    new-instance v0, Lcom/duokan/airkan/common/video/DuokanVideoInfo;

    invoke-direct {v0}, Lcom/duokan/airkan/common/video/DuokanVideoInfo;-><init>()V

    .line 373
    .local v0, dvi:Lcom/duokan/airkan/common/video/DuokanVideoInfo;
    iput-wide p3, v0, Lcom/duokan/airkan/common/video/DuokanVideoInfo;->mediaID:J

    .line 374
    iput p5, v0, Lcom/duokan/airkan/common/video/DuokanVideoInfo;->ci:I

    .line 375
    int-to-byte v3, p6

    iput-byte v3, v0, Lcom/duokan/airkan/common/video/DuokanVideoInfo;->preferSource:B

    .line 377
    new-instance v2, Lcom/duokan/airkan/common/video/VideoMetaData;

    invoke-direct {v2, v1, v0}, Lcom/duokan/airkan/common/video/VideoMetaData;-><init>(Lcom/duokan/airkan/common/video/VideoBasicInfo;Lcom/duokan/airkan/common/video/DuokanVideoInfo;)V

    .line 378
    .local v2, vmd:Lcom/duokan/airkan/common/video/VideoMetaData;
    invoke-virtual {p0, v2}, Lcom/duokan/airkan/phone/api/VideoManager;->setVideoMetaData(Lcom/duokan/airkan/common/video/VideoMetaData;)V

    .line 379
    iget-object v3, p0, Lcom/duokan/airkan/phone/api/VideoManager;->mVCDPlayPostCtrl:Lcom/duokan/airkan/common/video/VideoControlData;

    invoke-virtual {v3, p2}, Lcom/duokan/airkan/common/video/VideoControlData;->setPosition(I)V

    .line 380
    iget-object v3, p0, Lcom/duokan/airkan/phone/api/VideoManager;->mVCDPlayPostCtrl:Lcom/duokan/airkan/common/video/VideoControlData;

    invoke-virtual {v3, v4}, Lcom/duokan/airkan/common/video/VideoControlData;->setPlaying(Z)V

    .line 381
    iget-object v3, p0, Lcom/duokan/airkan/phone/api/VideoManager;->mVCDPlayPostCtrl:Lcom/duokan/airkan/common/video/VideoControlData;

    invoke-virtual {v3, v4}, Lcom/duokan/airkan/common/video/VideoControlData;->setPausing(Z)V

    .line 382
    iget-object v3, p0, Lcom/duokan/airkan/phone/api/VideoManager;->mVCDStatRemote:Lcom/duokan/airkan/common/video/VideoControlData;

    invoke-virtual {v3, p2}, Lcom/duokan/airkan/common/video/VideoControlData;->setPosition(I)V

    .line 383
    iget-object v3, p0, Lcom/duokan/airkan/phone/api/VideoManager;->mVCDStatRemote:Lcom/duokan/airkan/common/video/VideoControlData;

    invoke-virtual {v3, v4}, Lcom/duokan/airkan/common/video/VideoControlData;->setPlaying(Z)V

    .line 384
    iget-object v3, p0, Lcom/duokan/airkan/phone/api/VideoManager;->mVCDStatRemote:Lcom/duokan/airkan/common/video/VideoControlData;

    invoke-virtual {v3, v4}, Lcom/duokan/airkan/common/video/VideoControlData;->setPausing(Z)V

    .line 385
    iget-object v4, p0, Lcom/duokan/airkan/phone/api/VideoManager;->mState:Lcom/duokan/airkan/phone/api/VideoManager$State;

    monitor-enter v4

    .line 386
    :try_start_0
    sget-object v3, Lcom/duokan/airkan/phone/api/VideoManager$State;->STATE_IDLE:Lcom/duokan/airkan/phone/api/VideoManager$State;

    iget-object v5, p0, Lcom/duokan/airkan/phone/api/VideoManager;->mState:Lcom/duokan/airkan/phone/api/VideoManager$State;

    if-eq v3, v5, :cond_2

    sget-object v3, Lcom/duokan/airkan/phone/api/VideoManager$State;->STATE_EEEOR:Lcom/duokan/airkan/phone/api/VideoManager$State;

    iget-object v5, p0, Lcom/duokan/airkan/phone/api/VideoManager;->mState:Lcom/duokan/airkan/phone/api/VideoManager$State;

    if-eq v3, v5, :cond_2

    sget-object v3, Lcom/duokan/airkan/phone/api/VideoManager$State;->STATE_STOPPED:Lcom/duokan/airkan/phone/api/VideoManager$State;

    iget-object v5, p0, Lcom/duokan/airkan/phone/api/VideoManager;->mState:Lcom/duokan/airkan/phone/api/VideoManager$State;

    if-ne v3, v5, :cond_3

    .line 387
    :cond_2
    sget-object v3, Lcom/duokan/airkan/phone/api/VideoManager$State;->STATE_DATA:Lcom/duokan/airkan/phone/api/VideoManager$State;

    iput-object v3, p0, Lcom/duokan/airkan/phone/api/VideoManager;->mState:Lcom/duokan/airkan/phone/api/VideoManager$State;

    .line 388
    const-string v3, "AVM"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setVideoURI, State:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/duokan/airkan/phone/api/VideoManager;->mState:Lcom/duokan/airkan/phone/api/VideoManager$State;

    invoke-virtual {v6}, Lcom/duokan/airkan/phone/api/VideoManager$State;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/duokan/airkan/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 390
    :cond_3
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 391
    return-void

    .line 369
    .end local v0           #dvi:Lcom/duokan/airkan/common/video/DuokanVideoInfo;
    .end local v2           #vmd:Lcom/duokan/airkan/common/video/VideoMetaData;
    :cond_4
    iput-object p7, v1, Lcom/duokan/airkan/common/video/VideoBasicInfo;->url:Ljava/lang/String;

    goto :goto_0

    .line 390
    .restart local v0       #dvi:Lcom/duokan/airkan/common/video/DuokanVideoInfo;
    .restart local v2       #vmd:Lcom/duokan/airkan/common/video/VideoMetaData;
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method public setVideoURI(Ljava/lang/String;IJILjava/lang/String;)V
    .locals 8
    .parameter "title"
    .parameter "position"
    .parameter "mediaID"
    .parameter "ci"
    .parameter "url"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/duokan/airkan/common/AirkanException;
        }
    .end annotation

    .prologue
    .line 326
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-wide v3, p3

    move v5, p5

    move-object v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/duokan/airkan/phone/api/VideoManager;->setVideoURI(Ljava/lang/String;IJIILjava/lang/String;)V

    .line 327
    return-void
.end method

.method public setVideoURI(Ljava/lang/String;ILcom/duokan/airkan/common/video/VideoResolution$Resolution;Lorg/json/JSONObject;)V
    .locals 9
    .parameter "title"
    .parameter "position"
    .parameter "resolution"
    .parameter "parameters"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/duokan/airkan/common/AirkanException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 442
    new-instance v3, Lcom/duokan/airkan/common/video/VideoBasicInfo;

    invoke-direct {v3}, Lcom/duokan/airkan/common/video/VideoBasicInfo;-><init>()V

    .line 443
    .local v3, vbi:Lcom/duokan/airkan/common/video/VideoBasicInfo;
    const-string v5, ""

    iput-object v5, v3, Lcom/duokan/airkan/common/video/VideoBasicInfo;->header:Ljava/lang/String;

    .line 444
    iput-object p1, v3, Lcom/duokan/airkan/common/video/VideoBasicInfo;->title:Ljava/lang/String;

    .line 445
    iput p2, v3, Lcom/duokan/airkan/common/video/VideoBasicInfo;->position:I

    .line 446
    new-instance v4, Lcom/duokan/airkan/common/video/VideoMetaData;

    invoke-direct {v4, v3}, Lcom/duokan/airkan/common/video/VideoMetaData;-><init>(Lcom/duokan/airkan/common/video/VideoBasicInfo;)V

    .line 447
    .local v4, vmd:Lcom/duokan/airkan/common/video/VideoMetaData;
    invoke-static {p3}, Lcom/duokan/airkan/common/video/VideoResolution;->enumResolutionToByte(Lcom/duokan/airkan/common/video/VideoResolution$Resolution;)B

    move-result v0

    .line 448
    .local v0, bres:B
    invoke-virtual {v4, v0}, Lcom/duokan/airkan/common/video/VideoMetaData;->setResolution(B)V

    .line 450
    move-object v2, p4

    .line 452
    .local v2, json:Lorg/json/JSONObject;
    :try_start_0
    const-string v5, "spname"

    iget-object v6, p0, Lcom/duokan/airkan/phone/api/VideoManager;->mSpName:Ljava/lang/String;

    invoke-virtual {v2, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 453
    const-string v5, "title"

    invoke-virtual {v2, v5, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 454
    const-string v5, "position"

    invoke-virtual {v2, v5, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 455
    const-string v5, "AVM"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "resolution:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p3}, Lcom/duokan/airkan/common/video/VideoResolution$Resolution;->name()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/duokan/airkan/common/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 456
    const-string v5, "resolution"

    invoke-virtual {p3}, Lcom/duokan/airkan/common/video/VideoResolution$Resolution;->name()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 460
    :goto_0
    invoke-virtual {v4, v2}, Lcom/duokan/airkan/common/video/VideoMetaData;->setSpParameters(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    .line 461
    invoke-virtual {p0, v4}, Lcom/duokan/airkan/phone/api/VideoManager;->setVideoMetaData(Lcom/duokan/airkan/common/video/VideoMetaData;)V

    .line 462
    iget-object v5, p0, Lcom/duokan/airkan/phone/api/VideoManager;->mVCDPlayPostCtrl:Lcom/duokan/airkan/common/video/VideoControlData;

    invoke-virtual {v5, p2}, Lcom/duokan/airkan/common/video/VideoControlData;->setPosition(I)V

    .line 463
    iget-object v5, p0, Lcom/duokan/airkan/phone/api/VideoManager;->mVCDPlayPostCtrl:Lcom/duokan/airkan/common/video/VideoControlData;

    invoke-virtual {v5, v8}, Lcom/duokan/airkan/common/video/VideoControlData;->setPlaying(Z)V

    .line 464
    iget-object v5, p0, Lcom/duokan/airkan/phone/api/VideoManager;->mVCDPlayPostCtrl:Lcom/duokan/airkan/common/video/VideoControlData;

    invoke-virtual {v5, v8}, Lcom/duokan/airkan/common/video/VideoControlData;->setPausing(Z)V

    .line 465
    iget-object v5, p0, Lcom/duokan/airkan/phone/api/VideoManager;->mVCDStatRemote:Lcom/duokan/airkan/common/video/VideoControlData;

    invoke-virtual {v5, p2}, Lcom/duokan/airkan/common/video/VideoControlData;->setPosition(I)V

    .line 466
    iget-object v5, p0, Lcom/duokan/airkan/phone/api/VideoManager;->mVCDStatRemote:Lcom/duokan/airkan/common/video/VideoControlData;

    invoke-virtual {v5, v8}, Lcom/duokan/airkan/common/video/VideoControlData;->setPlaying(Z)V

    .line 467
    iget-object v5, p0, Lcom/duokan/airkan/phone/api/VideoManager;->mVCDStatRemote:Lcom/duokan/airkan/common/video/VideoControlData;

    invoke-virtual {v5, v8}, Lcom/duokan/airkan/common/video/VideoControlData;->setPausing(Z)V

    .line 468
    iget-object v6, p0, Lcom/duokan/airkan/phone/api/VideoManager;->mState:Lcom/duokan/airkan/phone/api/VideoManager$State;

    monitor-enter v6

    .line 469
    :try_start_1
    sget-object v5, Lcom/duokan/airkan/phone/api/VideoManager$State;->STATE_IDLE:Lcom/duokan/airkan/phone/api/VideoManager$State;

    iget-object v7, p0, Lcom/duokan/airkan/phone/api/VideoManager;->mState:Lcom/duokan/airkan/phone/api/VideoManager$State;

    if-eq v5, v7, :cond_0

    sget-object v5, Lcom/duokan/airkan/phone/api/VideoManager$State;->STATE_EEEOR:Lcom/duokan/airkan/phone/api/VideoManager$State;

    iget-object v7, p0, Lcom/duokan/airkan/phone/api/VideoManager;->mState:Lcom/duokan/airkan/phone/api/VideoManager$State;

    if-eq v5, v7, :cond_0

    sget-object v5, Lcom/duokan/airkan/phone/api/VideoManager$State;->STATE_STOPPED:Lcom/duokan/airkan/phone/api/VideoManager$State;

    iget-object v7, p0, Lcom/duokan/airkan/phone/api/VideoManager;->mState:Lcom/duokan/airkan/phone/api/VideoManager$State;

    if-ne v5, v7, :cond_1

    .line 470
    :cond_0
    sget-object v5, Lcom/duokan/airkan/phone/api/VideoManager$State;->STATE_DATA:Lcom/duokan/airkan/phone/api/VideoManager$State;

    iput-object v5, p0, Lcom/duokan/airkan/phone/api/VideoManager;->mState:Lcom/duokan/airkan/phone/api/VideoManager$State;

    .line 471
    const-string v5, "AVM"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "setVideoURI, State:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/duokan/airkan/phone/api/VideoManager;->mState:Lcom/duokan/airkan/phone/api/VideoManager$State;

    invoke-virtual {v8}, Lcom/duokan/airkan/phone/api/VideoManager$State;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/duokan/airkan/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 473
    :cond_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 474
    return-void

    .line 457
    :catch_0
    move-exception v1

    .line 458
    .local v1, e:Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 473
    .end local v1           #e:Lorg/json/JSONException;
    :catchall_0
    move-exception v5

    :try_start_2
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v5
.end method

.method public setVideoURI(Ljava/lang/String;ILorg/json/JSONObject;)V
    .locals 8
    .parameter "title"
    .parameter "position"
    .parameter "parameters"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/duokan/airkan/common/AirkanException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 402
    new-instance v2, Lcom/duokan/airkan/common/video/VideoBasicInfo;

    invoke-direct {v2}, Lcom/duokan/airkan/common/video/VideoBasicInfo;-><init>()V

    .line 403
    .local v2, vbi:Lcom/duokan/airkan/common/video/VideoBasicInfo;
    const-string v4, ""

    iput-object v4, v2, Lcom/duokan/airkan/common/video/VideoBasicInfo;->header:Ljava/lang/String;

    .line 404
    iput-object p1, v2, Lcom/duokan/airkan/common/video/VideoBasicInfo;->title:Ljava/lang/String;

    .line 405
    iput p2, v2, Lcom/duokan/airkan/common/video/VideoBasicInfo;->position:I

    .line 406
    new-instance v3, Lcom/duokan/airkan/common/video/VideoMetaData;

    invoke-direct {v3, v2}, Lcom/duokan/airkan/common/video/VideoMetaData;-><init>(Lcom/duokan/airkan/common/video/VideoBasicInfo;)V

    .line 408
    .local v3, vmd:Lcom/duokan/airkan/common/video/VideoMetaData;
    move-object v1, p3

    .line 410
    .local v1, json:Lorg/json/JSONObject;
    :try_start_0
    const-string v4, "spname"

    iget-object v5, p0, Lcom/duokan/airkan/phone/api/VideoManager;->mSpName:Ljava/lang/String;

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 411
    const-string v4, "title"

    invoke-virtual {v1, v4, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 412
    const-string v4, "position"

    invoke-virtual {v1, v4, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 416
    :goto_0
    invoke-virtual {v3, v1}, Lcom/duokan/airkan/common/video/VideoMetaData;->setSpParameters(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    .line 417
    invoke-virtual {p0, v3}, Lcom/duokan/airkan/phone/api/VideoManager;->setVideoMetaData(Lcom/duokan/airkan/common/video/VideoMetaData;)V

    .line 418
    iget-object v4, p0, Lcom/duokan/airkan/phone/api/VideoManager;->mVCDPlayPostCtrl:Lcom/duokan/airkan/common/video/VideoControlData;

    invoke-virtual {v4, p2}, Lcom/duokan/airkan/common/video/VideoControlData;->setPosition(I)V

    .line 419
    iget-object v4, p0, Lcom/duokan/airkan/phone/api/VideoManager;->mVCDPlayPostCtrl:Lcom/duokan/airkan/common/video/VideoControlData;

    invoke-virtual {v4, v6}, Lcom/duokan/airkan/common/video/VideoControlData;->setPlaying(Z)V

    .line 420
    iget-object v4, p0, Lcom/duokan/airkan/phone/api/VideoManager;->mVCDPlayPostCtrl:Lcom/duokan/airkan/common/video/VideoControlData;

    invoke-virtual {v4, v6}, Lcom/duokan/airkan/common/video/VideoControlData;->setPausing(Z)V

    .line 421
    iget-object v4, p0, Lcom/duokan/airkan/phone/api/VideoManager;->mVCDStatRemote:Lcom/duokan/airkan/common/video/VideoControlData;

    invoke-virtual {v4, p2}, Lcom/duokan/airkan/common/video/VideoControlData;->setPosition(I)V

    .line 422
    iget-object v4, p0, Lcom/duokan/airkan/phone/api/VideoManager;->mVCDStatRemote:Lcom/duokan/airkan/common/video/VideoControlData;

    invoke-virtual {v4, v6}, Lcom/duokan/airkan/common/video/VideoControlData;->setPlaying(Z)V

    .line 423
    iget-object v4, p0, Lcom/duokan/airkan/phone/api/VideoManager;->mVCDStatRemote:Lcom/duokan/airkan/common/video/VideoControlData;

    invoke-virtual {v4, v6}, Lcom/duokan/airkan/common/video/VideoControlData;->setPausing(Z)V

    .line 424
    iget-object v5, p0, Lcom/duokan/airkan/phone/api/VideoManager;->mState:Lcom/duokan/airkan/phone/api/VideoManager$State;

    monitor-enter v5

    .line 425
    :try_start_1
    sget-object v4, Lcom/duokan/airkan/phone/api/VideoManager$State;->STATE_IDLE:Lcom/duokan/airkan/phone/api/VideoManager$State;

    iget-object v6, p0, Lcom/duokan/airkan/phone/api/VideoManager;->mState:Lcom/duokan/airkan/phone/api/VideoManager$State;

    if-eq v4, v6, :cond_0

    sget-object v4, Lcom/duokan/airkan/phone/api/VideoManager$State;->STATE_EEEOR:Lcom/duokan/airkan/phone/api/VideoManager$State;

    iget-object v6, p0, Lcom/duokan/airkan/phone/api/VideoManager;->mState:Lcom/duokan/airkan/phone/api/VideoManager$State;

    if-eq v4, v6, :cond_0

    sget-object v4, Lcom/duokan/airkan/phone/api/VideoManager$State;->STATE_STOPPED:Lcom/duokan/airkan/phone/api/VideoManager$State;

    iget-object v6, p0, Lcom/duokan/airkan/phone/api/VideoManager;->mState:Lcom/duokan/airkan/phone/api/VideoManager$State;

    if-ne v4, v6, :cond_1

    .line 426
    :cond_0
    sget-object v4, Lcom/duokan/airkan/phone/api/VideoManager$State;->STATE_DATA:Lcom/duokan/airkan/phone/api/VideoManager$State;

    iput-object v4, p0, Lcom/duokan/airkan/phone/api/VideoManager;->mState:Lcom/duokan/airkan/phone/api/VideoManager$State;

    .line 427
    const-string v4, "AVM"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setVideoURI, State:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/duokan/airkan/phone/api/VideoManager;->mState:Lcom/duokan/airkan/phone/api/VideoManager$State;

    invoke-virtual {v7}, Lcom/duokan/airkan/phone/api/VideoManager$State;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/duokan/airkan/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 429
    :cond_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 430
    return-void

    .line 413
    :catch_0
    move-exception v0

    .line 414
    .local v0, e:Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 429
    .end local v0           #e:Lorg/json/JSONException;
    :catchall_0
    move-exception v4

    :try_start_2
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4
.end method

.method public setVideoURI(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 6
    .parameter "url"
    .parameter "title"
    .parameter "position"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/duokan/airkan/common/AirkanException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 255
    if-nez p2, :cond_0

    .line 256
    const-string v2, "AVM"

    const-string v3, "title is null"

    invoke-static {v2, v3}, Lcom/duokan/airkan/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    new-instance v2, Lcom/duokan/airkan/common/AirkanException;

    const-string v3, "title is not valid"

    invoke-direct {v2, v3}, Lcom/duokan/airkan/common/AirkanException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 259
    :cond_0
    if-nez p1, :cond_1

    .line 260
    const-string v2, "AVM"

    const-string v3, "url is null"

    invoke-static {v2, v3}, Lcom/duokan/airkan/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    new-instance v2, Lcom/duokan/airkan/common/AirkanException;

    const-string v3, "url is not valid"

    invoke-direct {v2, v3}, Lcom/duokan/airkan/common/AirkanException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 263
    :cond_1
    new-instance v0, Lcom/duokan/airkan/common/video/VideoBasicInfo;

    invoke-direct {v0}, Lcom/duokan/airkan/common/video/VideoBasicInfo;-><init>()V

    .line 264
    .local v0, vbi:Lcom/duokan/airkan/common/video/VideoBasicInfo;
    invoke-direct {p0, p1}, Lcom/duokan/airkan/phone/api/VideoManager;->isLocal(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 265
    invoke-direct {p0}, Lcom/duokan/airkan/phone/api/VideoManager;->startHttpd()V

    .line 266
    invoke-virtual {p0, p1}, Lcom/duokan/airkan/phone/api/VideoManager;->formatUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/duokan/airkan/common/video/VideoBasicInfo;->url:Ljava/lang/String;

    .line 267
    iget-object v2, v0, Lcom/duokan/airkan/common/video/VideoBasicInfo;->url:Ljava/lang/String;

    if-nez v2, :cond_3

    .line 268
    const-string v2, "AVM"

    const-string v3, "IP address is not available for HTTP server"

    invoke-static {v2, v3}, Lcom/duokan/airkan/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    new-instance v2, Lcom/duokan/airkan/common/AirkanException;

    const-string v3, "IP address is not available for HTTP server"

    invoke-direct {v2, v3}, Lcom/duokan/airkan/common/AirkanException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 272
    :cond_2
    iput-object p1, v0, Lcom/duokan/airkan/common/video/VideoBasicInfo;->url:Ljava/lang/String;

    .line 275
    :cond_3
    iget-object v2, p0, Lcom/duokan/airkan/phone/api/ConnectionManager;->mAirkanDeviceManager:Lcom/duokan/airkan/phone/api/DeviceManager;

    if-nez v2, :cond_4

    .line 276
    new-instance v2, Lcom/duokan/airkan/common/AirkanException;

    const-string v3, "device manager is null"

    invoke-direct {v2, v3}, Lcom/duokan/airkan/common/AirkanException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 279
    :cond_4
    iget-boolean v2, p0, Lcom/duokan/airkan/phone/api/VideoManager;->mIsMusic:Z

    if-eqz v2, :cond_7

    instance-of v2, p0, Lcom/duokan/airkan/phone/api/MusicManager;

    if-eqz v2, :cond_7

    move-object v2, p0

    .line 280
    check-cast v2, Lcom/duokan/airkan/phone/api/MusicManager;

    invoke-virtual {v2}, Lcom/duokan/airkan/phone/api/MusicManager;->generateMetadata()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/duokan/airkan/common/video/VideoBasicInfo;->header:Ljava/lang/String;

    .line 285
    :goto_0
    iput-object p2, v0, Lcom/duokan/airkan/common/video/VideoBasicInfo;->title:Ljava/lang/String;

    .line 286
    iput p3, v0, Lcom/duokan/airkan/common/video/VideoBasicInfo;->position:I

    .line 287
    iget-object v2, p0, Lcom/duokan/airkan/phone/api/ConnectionManager;->mAirkanDeviceManager:Lcom/duokan/airkan/phone/api/DeviceManager;

    invoke-virtual {v2}, Lcom/duokan/airkan/phone/api/DeviceManager;->getLocalDevicename()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/duokan/airkan/common/video/VideoBasicInfo;->deviceName:Ljava/lang/String;

    .line 288
    new-instance v1, Lcom/duokan/airkan/common/video/VideoMetaData;

    invoke-direct {v1, v0}, Lcom/duokan/airkan/common/video/VideoMetaData;-><init>(Lcom/duokan/airkan/common/video/VideoBasicInfo;)V

    .line 289
    .local v1, vmd:Lcom/duokan/airkan/common/video/VideoMetaData;
    invoke-virtual {p0, v1}, Lcom/duokan/airkan/phone/api/VideoManager;->setVideoMetaData(Lcom/duokan/airkan/common/video/VideoMetaData;)V

    .line 290
    iget-object v2, p0, Lcom/duokan/airkan/phone/api/VideoManager;->mVCDPlayPostCtrl:Lcom/duokan/airkan/common/video/VideoControlData;

    invoke-virtual {v2, p3}, Lcom/duokan/airkan/common/video/VideoControlData;->setPosition(I)V

    .line 291
    iget-object v2, p0, Lcom/duokan/airkan/phone/api/VideoManager;->mVCDPlayPostCtrl:Lcom/duokan/airkan/common/video/VideoControlData;

    invoke-virtual {v2, v3}, Lcom/duokan/airkan/common/video/VideoControlData;->setPlaying(Z)V

    .line 292
    iget-object v2, p0, Lcom/duokan/airkan/phone/api/VideoManager;->mVCDPlayPostCtrl:Lcom/duokan/airkan/common/video/VideoControlData;

    invoke-virtual {v2, v3}, Lcom/duokan/airkan/common/video/VideoControlData;->setPausing(Z)V

    .line 293
    iget-object v2, p0, Lcom/duokan/airkan/phone/api/VideoManager;->mVCDStatRemote:Lcom/duokan/airkan/common/video/VideoControlData;

    invoke-virtual {v2, p3}, Lcom/duokan/airkan/common/video/VideoControlData;->setPosition(I)V

    .line 294
    iget-object v2, p0, Lcom/duokan/airkan/phone/api/VideoManager;->mVCDStatRemote:Lcom/duokan/airkan/common/video/VideoControlData;

    invoke-virtual {v2, v3}, Lcom/duokan/airkan/common/video/VideoControlData;->setPlaying(Z)V

    .line 295
    iget-object v2, p0, Lcom/duokan/airkan/phone/api/VideoManager;->mVCDStatRemote:Lcom/duokan/airkan/common/video/VideoControlData;

    invoke-virtual {v2, v3}, Lcom/duokan/airkan/common/video/VideoControlData;->setPausing(Z)V

    .line 296
    iget-object v3, p0, Lcom/duokan/airkan/phone/api/VideoManager;->mState:Lcom/duokan/airkan/phone/api/VideoManager$State;

    monitor-enter v3

    .line 297
    :try_start_0
    sget-object v2, Lcom/duokan/airkan/phone/api/VideoManager$State;->STATE_IDLE:Lcom/duokan/airkan/phone/api/VideoManager$State;

    iget-object v4, p0, Lcom/duokan/airkan/phone/api/VideoManager;->mState:Lcom/duokan/airkan/phone/api/VideoManager$State;

    if-eq v2, v4, :cond_5

    sget-object v2, Lcom/duokan/airkan/phone/api/VideoManager$State;->STATE_EEEOR:Lcom/duokan/airkan/phone/api/VideoManager$State;

    iget-object v4, p0, Lcom/duokan/airkan/phone/api/VideoManager;->mState:Lcom/duokan/airkan/phone/api/VideoManager$State;

    if-eq v2, v4, :cond_5

    sget-object v2, Lcom/duokan/airkan/phone/api/VideoManager$State;->STATE_STOPPED:Lcom/duokan/airkan/phone/api/VideoManager$State;

    iget-object v4, p0, Lcom/duokan/airkan/phone/api/VideoManager;->mState:Lcom/duokan/airkan/phone/api/VideoManager$State;

    if-ne v2, v4, :cond_6

    .line 298
    :cond_5
    sget-object v2, Lcom/duokan/airkan/phone/api/VideoManager$State;->STATE_DATA:Lcom/duokan/airkan/phone/api/VideoManager$State;

    iput-object v2, p0, Lcom/duokan/airkan/phone/api/VideoManager;->mState:Lcom/duokan/airkan/phone/api/VideoManager$State;

    .line 299
    const-string v2, "AVM"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setVideoURI, State:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/duokan/airkan/phone/api/VideoManager;->mState:Lcom/duokan/airkan/phone/api/VideoManager$State;

    invoke-virtual {v5}, Lcom/duokan/airkan/phone/api/VideoManager$State;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/duokan/airkan/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    :cond_6
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 302
    return-void

    .line 282
    .end local v1           #vmd:Lcom/duokan/airkan/common/video/VideoMetaData;
    :cond_7
    const-string v2, ""

    iput-object v2, v0, Lcom/duokan/airkan/common/video/VideoBasicInfo;->header:Ljava/lang/String;

    goto :goto_0

    .line 301
    .restart local v1       #vmd:Lcom/duokan/airkan/common/video/VideoMetaData;
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public setVolume(F)V
    .locals 4
    .parameter "fVolume"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Lcom/duokan/airkan/common/AirkanException;
        }
    .end annotation

    .prologue
    .line 1036
    const/4 v2, 0x0

    cmpg-float v2, p1, v2

    if-ltz v2, :cond_0

    const/high16 v2, 0x3f80

    cmpl-float v2, p1, v2

    if-lez v2, :cond_1

    .line 1037
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "volume must in range [0f, 1f]"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1039
    :cond_1
    invoke-direct {p0, p1}, Lcom/duokan/airkan/phone/api/VideoManager;->floatVolumeToByte(F)B

    move-result v1

    .line 1040
    .local v1, volume:B
    iget-object v2, p0, Lcom/duokan/airkan/phone/api/ConnectionManager;->mAirkanDeviceManager:Lcom/duokan/airkan/phone/api/DeviceManager;

    if-nez v2, :cond_2

    .line 1041
    new-instance v2, Lcom/duokan/airkan/common/AirkanException;

    const-string v3, "device manager is null"

    invoke-direct {v2, v3}, Lcom/duokan/airkan/common/AirkanException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1043
    :cond_2
    iget-object v2, p0, Lcom/duokan/airkan/phone/api/ConnectionManager;->mAirkanDeviceManager:Lcom/duokan/airkan/phone/api/DeviceManager;

    invoke-virtual {v2}, Lcom/duokan/airkan/phone/api/DeviceManager;->getService()Lcom/duokan/airkan/phone/aidl/IAirkanClientService;

    move-result-object v0

    .line 1044
    .local v0, myService:Lcom/duokan/airkan/phone/aidl/IAirkanClientService;
    if-eqz v0, :cond_3

    .line 1045
    iget-object v2, p0, Lcom/duokan/airkan/phone/api/VideoManager;->mVCDStatRemote:Lcom/duokan/airkan/common/video/VideoControlData;

    invoke-virtual {v2, v1}, Lcom/duokan/airkan/common/video/VideoControlData;->setVolume(B)V

    .line 1047
    iget-object v2, p0, Lcom/duokan/airkan/phone/api/VideoManager;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/duokan/airkan/phone/api/VideoManager$10;

    invoke-direct {v3, p0, v1, v0}, Lcom/duokan/airkan/phone/api/VideoManager$10;-><init>(Lcom/duokan/airkan/phone/api/VideoManager;BLcom/duokan/airkan/phone/aidl/IAirkanClientService;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1066
    return-void

    .line 1061
    :cond_3
    const-string v2, "AVM"

    const-string v3, "setVolume, Service not bounded. call DeviceManager.open() first and wait for onOpened()."

    invoke-static {v2, v3}, Lcom/duokan/airkan/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1063
    new-instance v2, Lcom/duokan/airkan/common/AirkanException;

    const-string v3, "setVolume, Service not bounded. call DeviceManager.open() first and wait for onOpened()."

    invoke-direct {v2, v3}, Lcom/duokan/airkan/common/AirkanException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public start()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/duokan/airkan/common/AirkanException;
        }
    .end annotation

    .prologue
    .line 580
    const-string v1, "AVM"

    const-string v2, "start enter"

    invoke-static {v1, v2}, Lcom/duokan/airkan/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 581
    iget-object v1, p0, Lcom/duokan/airkan/phone/api/ConnectionManager;->mAirkanDeviceManager:Lcom/duokan/airkan/phone/api/DeviceManager;

    if-nez v1, :cond_0

    .line 582
    new-instance v1, Lcom/duokan/airkan/common/AirkanException;

    const-string v2, "device manager is null"

    invoke-direct {v1, v2}, Lcom/duokan/airkan/common/AirkanException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 584
    :cond_0
    iget-object v1, p0, Lcom/duokan/airkan/phone/api/ConnectionManager;->mAirkanDeviceManager:Lcom/duokan/airkan/phone/api/DeviceManager;

    invoke-virtual {v1}, Lcom/duokan/airkan/phone/api/DeviceManager;->getService()Lcom/duokan/airkan/phone/aidl/IAirkanClientService;

    move-result-object v0

    .line 585
    .local v0, myService:Lcom/duokan/airkan/phone/aidl/IAirkanClientService;
    if-eqz v0, :cond_1

    .line 586
    iget-object v1, p0, Lcom/duokan/airkan/phone/api/VideoManager;->mVCDStatRemote:Lcom/duokan/airkan/common/video/VideoControlData;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/duokan/airkan/common/video/VideoControlData;->setPlaying(Z)V

    .line 587
    iget-object v1, p0, Lcom/duokan/airkan/phone/api/VideoManager;->mVCDStatRemote:Lcom/duokan/airkan/common/video/VideoControlData;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/duokan/airkan/common/video/VideoControlData;->setPausing(Z)V

    .line 589
    iget-object v1, p0, Lcom/duokan/airkan/phone/api/VideoManager;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/duokan/airkan/phone/api/VideoManager$2;

    invoke-direct {v2, p0, v0}, Lcom/duokan/airkan/phone/api/VideoManager$2;-><init>(Lcom/duokan/airkan/phone/api/VideoManager;Lcom/duokan/airkan/phone/aidl/IAirkanClientService;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 608
    return-void

    .line 603
    :cond_1
    const-string v1, "AVM"

    const-string v2, "start, Service not bounded. call DeviceManager.open() first and wait for onOpened()."

    invoke-static {v1, v2}, Lcom/duokan/airkan/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 605
    new-instance v1, Lcom/duokan/airkan/common/AirkanException;

    const-string v2, "start, Service not bounded. call DeviceManager.open() first and wait for onOpened()."

    invoke-direct {v1, v2}, Lcom/duokan/airkan/common/AirkanException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public stop()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/duokan/airkan/common/AirkanException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 733
    const-string v1, "AVM"

    const-string v2, "stop enter"

    invoke-static {v1, v2}, Lcom/duokan/airkan/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 734
    iget-object v1, p0, Lcom/duokan/airkan/phone/api/ConnectionManager;->mAirkanDeviceManager:Lcom/duokan/airkan/phone/api/DeviceManager;

    if-nez v1, :cond_0

    .line 735
    new-instance v1, Lcom/duokan/airkan/common/AirkanException;

    const-string v2, "device manager is null"

    invoke-direct {v1, v2}, Lcom/duokan/airkan/common/AirkanException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 737
    :cond_0
    iget-object v1, p0, Lcom/duokan/airkan/phone/api/ConnectionManager;->mAirkanDeviceManager:Lcom/duokan/airkan/phone/api/DeviceManager;

    invoke-virtual {v1}, Lcom/duokan/airkan/phone/api/DeviceManager;->getService()Lcom/duokan/airkan/phone/aidl/IAirkanClientService;

    move-result-object v0

    .line 738
    .local v0, myService:Lcom/duokan/airkan/phone/aidl/IAirkanClientService;
    if-eqz v0, :cond_1

    .line 739
    iget-object v1, p0, Lcom/duokan/airkan/phone/api/VideoManager;->mVCDStatRemote:Lcom/duokan/airkan/common/video/VideoControlData;

    invoke-virtual {v1, v3}, Lcom/duokan/airkan/common/video/VideoControlData;->setPlaying(Z)V

    .line 740
    iget-object v1, p0, Lcom/duokan/airkan/phone/api/VideoManager;->mVCDStatRemote:Lcom/duokan/airkan/common/video/VideoControlData;

    invoke-virtual {v1, v3}, Lcom/duokan/airkan/common/video/VideoControlData;->setPausing(Z)V

    .line 742
    iget-object v1, p0, Lcom/duokan/airkan/phone/api/VideoManager;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/duokan/airkan/phone/api/VideoManager$5;

    invoke-direct {v2, p0, v0}, Lcom/duokan/airkan/phone/api/VideoManager$5;-><init>(Lcom/duokan/airkan/phone/api/VideoManager;Lcom/duokan/airkan/phone/aidl/IAirkanClientService;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 773
    return-void

    .line 767
    :cond_1
    const-string v1, "AVM"

    const-string v2, "stop, Service not bounded. call DeviceManager.open() first and wait for onOpened()."

    invoke-static {v1, v2}, Lcom/duokan/airkan/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 769
    new-instance v1, Lcom/duokan/airkan/common/AirkanException;

    const-string v2, "stop, Service not bounded. call DeviceManager.open() first and wait for onOpened()."

    invoke-direct {v1, v2}, Lcom/duokan/airkan/common/AirkanException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public takeBack()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/duokan/airkan/common/AirkanException;
        }
    .end annotation

    .prologue
    .line 520
    const-string v0, "AVM"

    const-string v1, "takeBack enter"

    invoke-static {v0, v1}, Lcom/duokan/airkan/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 521
    invoke-super {p0}, Lcom/duokan/airkan/phone/api/ConnectionManager;->takeBack()V

    .line 522
    invoke-direct {p0}, Lcom/duokan/airkan/phone/api/VideoManager;->removeVideoCallback()V

    .line 523
    iget-object v1, p0, Lcom/duokan/airkan/phone/api/VideoManager;->mState:Lcom/duokan/airkan/phone/api/VideoManager$State;

    monitor-enter v1

    .line 524
    :try_start_0
    sget-object v0, Lcom/duokan/airkan/phone/api/VideoManager$State;->STATE_DATA:Lcom/duokan/airkan/phone/api/VideoManager$State;

    iput-object v0, p0, Lcom/duokan/airkan/phone/api/VideoManager;->mState:Lcom/duokan/airkan/phone/api/VideoManager$State;

    .line 525
    const-string v0, "AVM"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "takeBack, State:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/duokan/airkan/phone/api/VideoManager;->mState:Lcom/duokan/airkan/phone/api/VideoManager$State;

    invoke-virtual {v3}, Lcom/duokan/airkan/phone/api/VideoManager$State;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/duokan/airkan/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 526
    monitor-exit v1

    .line 527
    return-void

    .line 526
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method updateDuration(I)V
    .locals 5
    .parameter "duration"

    .prologue
    .line 1125
    const-string v1, "AVM"

    const-string v2, "updateDuration enter"

    invoke-static {v1, v2}, Lcom/duokan/airkan/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1126
    iget-object v1, p0, Lcom/duokan/airkan/phone/api/VideoManager;->mVCDStatRemote:Lcom/duokan/airkan/common/video/VideoControlData;

    invoke-virtual {v1}, Lcom/duokan/airkan/common/video/VideoControlData;->getDuration()I

    move-result v1

    if-eq v1, p1, :cond_2

    const/4 v0, 0x1

    .line 1127
    .local v0, changed:Z
    :goto_0
    iget-object v1, p0, Lcom/duokan/airkan/phone/api/VideoManager;->mVCDStatRemote:Lcom/duokan/airkan/common/video/VideoControlData;

    invoke-virtual {v1, p1}, Lcom/duokan/airkan/common/video/VideoControlData;->setDuration(I)V

    .line 1128
    if-lez p1, :cond_0

    .line 1129
    iget-object v2, p0, Lcom/duokan/airkan/phone/api/VideoManager;->mState:Lcom/duokan/airkan/phone/api/VideoManager$State;

    monitor-enter v2

    .line 1130
    :try_start_0
    sget-object v1, Lcom/duokan/airkan/phone/api/VideoManager$State;->STATE_STARTED:Lcom/duokan/airkan/phone/api/VideoManager$State;

    iput-object v1, p0, Lcom/duokan/airkan/phone/api/VideoManager;->mState:Lcom/duokan/airkan/phone/api/VideoManager$State;

    .line 1131
    const-string v1, "AVM"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateDuration, State:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/duokan/airkan/phone/api/VideoManager;->mState:Lcom/duokan/airkan/phone/api/VideoManager$State;

    invoke-virtual {v4}, Lcom/duokan/airkan/phone/api/VideoManager$State;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/duokan/airkan/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1132
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1135
    :cond_0
    iget-object v1, p0, Lcom/duokan/airkan/phone/api/VideoManager;->mOnVideoEventListener:Lcom/duokan/airkan/phone/api/VideoManager$OnVideoEventListener;

    if-nez v1, :cond_3

    .line 1136
    const-string v1, "AVM"

    const-string v2, "video event listener is not available, ignore"

    invoke-static {v1, v2}, Lcom/duokan/airkan/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1143
    :cond_1
    :goto_1
    return-void

    .line 1126
    .end local v0           #changed:Z
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 1132
    .restart local v0       #changed:Z
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 1139
    :cond_3
    if-eqz v0, :cond_1

    .line 1140
    const-string v1, "AVM"

    const-string v2, "duration changed. to inform app"

    invoke-static {v1, v2}, Lcom/duokan/airkan/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1141
    iget-object v1, p0, Lcom/duokan/airkan/phone/api/VideoManager;->mOnVideoEventListener:Lcom/duokan/airkan/phone/api/VideoManager$OnVideoEventListener;

    invoke-interface {v1, p1}, Lcom/duokan/airkan/phone/api/VideoManager$OnVideoEventListener;->onDurationUpdated(I)V

    goto :goto_1
.end method

.method updatePosition(I)V
    .locals 3
    .parameter "pos"

    .prologue
    .line 1145
    const-string v0, "AVM"

    const-string v1, "updatePosition"

    invoke-static {v0, v1}, Lcom/duokan/airkan/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1147
    iget-object v1, p0, Lcom/duokan/airkan/phone/api/VideoManager;->mState:Lcom/duokan/airkan/phone/api/VideoManager$State;

    monitor-enter v1

    .line 1148
    :try_start_0
    sget-object v0, Lcom/duokan/airkan/phone/api/VideoManager$State;->STATE_IDLE:Lcom/duokan/airkan/phone/api/VideoManager$State;

    iget-object v2, p0, Lcom/duokan/airkan/phone/api/VideoManager;->mState:Lcom/duokan/airkan/phone/api/VideoManager$State;

    if-eq v0, v2, :cond_0

    sget-object v0, Lcom/duokan/airkan/phone/api/VideoManager$State;->STATE_DATA:Lcom/duokan/airkan/phone/api/VideoManager$State;

    iget-object v2, p0, Lcom/duokan/airkan/phone/api/VideoManager;->mState:Lcom/duokan/airkan/phone/api/VideoManager$State;

    if-eq v0, v2, :cond_0

    sget-object v0, Lcom/duokan/airkan/phone/api/VideoManager$State;->STATE_INITIALIZED:Lcom/duokan/airkan/phone/api/VideoManager$State;

    iget-object v2, p0, Lcom/duokan/airkan/phone/api/VideoManager;->mState:Lcom/duokan/airkan/phone/api/VideoManager$State;

    if-ne v0, v2, :cond_2

    .line 1150
    :cond_0
    const-string v0, "AVM"

    const-string v2, "not in playing state, not need to update position"

    invoke-static {v0, v2}, Lcom/duokan/airkan/common/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1151
    monitor-exit v1

    .line 1157
    :cond_1
    :goto_0
    return-void

    .line 1153
    :cond_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1154
    iget-boolean v0, p0, Lcom/duokan/airkan/phone/api/VideoManager;->mIsSeekPost:Z

    if-nez v0, :cond_1

    .line 1155
    iget-object v0, p0, Lcom/duokan/airkan/phone/api/VideoManager;->mVCDStatRemote:Lcom/duokan/airkan/common/video/VideoControlData;

    invoke-virtual {v0, p1}, Lcom/duokan/airkan/common/video/VideoControlData;->setPosition(I)V

    goto :goto_0

    .line 1153
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method updateResolution(B)V
    .locals 3
    .parameter "resolution"

    .prologue
    .line 1159
    const-string v1, "AVM"

    const-string v2, "updateResolution enter"

    invoke-static {v1, v2}, Lcom/duokan/airkan/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1160
    iget-object v1, p0, Lcom/duokan/airkan/phone/api/VideoManager;->mVCDStatRemote:Lcom/duokan/airkan/common/video/VideoControlData;

    invoke-virtual {v1}, Lcom/duokan/airkan/common/video/VideoControlData;->getResolution()B

    move-result v1

    if-eq v1, p1, :cond_1

    const/4 v0, 0x1

    .line 1161
    .local v0, changed:Z
    :goto_0
    iget-object v1, p0, Lcom/duokan/airkan/phone/api/VideoManager;->mVCDStatRemote:Lcom/duokan/airkan/common/video/VideoControlData;

    invoke-virtual {v1, p1}, Lcom/duokan/airkan/common/video/VideoControlData;->setResolution(B)V

    .line 1163
    iget-object v1, p0, Lcom/duokan/airkan/phone/api/VideoManager;->mOnVideoEventListener:Lcom/duokan/airkan/phone/api/VideoManager$OnVideoEventListener;

    if-nez v1, :cond_2

    .line 1164
    const-string v1, "AVM"

    const-string v2, "video event listener is not available, ignore"

    invoke-static {v1, v2}, Lcom/duokan/airkan/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1171
    :cond_0
    :goto_1
    return-void

    .line 1160
    .end local v0           #changed:Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 1167
    .restart local v0       #changed:Z
    :cond_2
    if-eqz v0, :cond_0

    .line 1168
    const-string v1, "AVM"

    const-string v2, "resolution change, to refresh"

    invoke-static {v1, v2}, Lcom/duokan/airkan/common/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1169
    iget-object v1, p0, Lcom/duokan/airkan/phone/api/VideoManager;->mOnVideoEventListener:Lcom/duokan/airkan/phone/api/VideoManager$OnVideoEventListener;

    invoke-static {p1}, Lcom/duokan/airkan/common/video/VideoResolution;->byteResolutionToEnum(B)Lcom/duokan/airkan/common/video/VideoResolution$Resolution;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/duokan/airkan/phone/api/VideoManager$OnVideoEventListener;->onResolutionChanged(Lcom/duokan/airkan/common/video/VideoResolution$Resolution;)V

    goto :goto_1
.end method

.method updateVolume(B)V
    .locals 4
    .parameter "volume"

    .prologue
    .line 1173
    const-string v1, "AVM"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateVolume:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/duokan/airkan/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1174
    iget-object v1, p0, Lcom/duokan/airkan/phone/api/VideoManager;->mVCDStatRemote:Lcom/duokan/airkan/common/video/VideoControlData;

    invoke-virtual {v1}, Lcom/duokan/airkan/common/video/VideoControlData;->getVolume()B

    move-result v1

    if-eq v1, p1, :cond_1

    const/4 v0, 0x1

    .line 1175
    .local v0, changed:Z
    :goto_0
    iget-object v1, p0, Lcom/duokan/airkan/phone/api/VideoManager;->mVCDStatRemote:Lcom/duokan/airkan/common/video/VideoControlData;

    invoke-virtual {v1, p1}, Lcom/duokan/airkan/common/video/VideoControlData;->setVolume(B)V

    .line 1177
    iget-object v1, p0, Lcom/duokan/airkan/phone/api/VideoManager;->mOnVideoEventListener:Lcom/duokan/airkan/phone/api/VideoManager$OnVideoEventListener;

    if-nez v1, :cond_2

    .line 1178
    const-string v1, "AVM"

    const-string v2, "video event listener is not available, ignore"

    invoke-static {v1, v2}, Lcom/duokan/airkan/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1185
    :cond_0
    :goto_1
    return-void

    .line 1174
    .end local v0           #changed:Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 1181
    .restart local v0       #changed:Z
    :cond_2
    if-eqz v0, :cond_0

    .line 1182
    const-string v1, "AVM"

    const-string v2, "volume change, to refresh"

    invoke-static {v1, v2}, Lcom/duokan/airkan/common/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1183
    iget-object v1, p0, Lcom/duokan/airkan/phone/api/VideoManager;->mOnVideoEventListener:Lcom/duokan/airkan/phone/api/VideoManager$OnVideoEventListener;

    invoke-direct {p0, p1}, Lcom/duokan/airkan/phone/api/VideoManager;->byteVolumeToFloat(B)F

    move-result v2

    invoke-interface {v1, v2}, Lcom/duokan/airkan/phone/api/VideoManager$OnVideoEventListener;->onVolumeUpdated(F)V

    goto :goto_1
.end method
