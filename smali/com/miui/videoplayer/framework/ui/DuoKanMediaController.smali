.class public Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;
.super Landroid/widget/FrameLayout;
.source "DuoKanMediaController.java"

# interfaces
.implements Lcom/miui/videoplayer/framework/airkan/AirkanManager$AirkanOnChangedListener;
.implements Landroid/media/MediaPlayer$OnPreparedListener;
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Landroid/media/MediaPlayer$OnSeekCompleteListener;
.implements Landroid/media/MediaPlayer$OnInfoListener;
.implements Landroid/media/MediaPlayer$OnBufferingUpdateListener;
.implements Landroid/media/MediaPlayer$OnVideoSizeChangedListener;
.implements Landroid/media/MediaPlayer$OnErrorListener;
.implements Lcom/duokan/MediaPlayer$OnPreparedListener;
.implements Lcom/duokan/MediaPlayer$OnCompletionListener;
.implements Lcom/duokan/MediaPlayer$OnSeekCompleteListener;
.implements Lcom/duokan/MediaPlayer$OnInfoListener;
.implements Lcom/duokan/MediaPlayer$OnVideoSizeChangedListener;
.implements Lcom/duokan/MediaPlayer$OnErrorListener;
.implements Lcom/duokan/MediaPlayer$OnBufferingUpdateListener;
.implements Lcom/duokan/MediaPlayer$OnTimedTextListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/videoplayer/framework/ui/DuoKanMediaController$BufferingProgressDialog;,
        Lcom/miui/videoplayer/framework/ui/DuoKanMediaController$BackKeyEvent;,
        Lcom/miui/videoplayer/framework/ui/DuoKanMediaController$ScreenOrientationListener;
    }
.end annotation


# static fields
.field private static final BRIGHTNESS_VOLUME_DISMISS_TIME:I = 0xbb8

.field private static final CONTINUE_PLAY_SEEK_TO_WHAT:I = 0x2

.field private static final CONTINUE_PLAY_START_WHAT:I = 0x3

.field private static final FADE_OUT_BRIGHTNESS_MESSAGE_WHAT:I = 0x1

.field private static final FADE_OUT_ERROR_DIALOG_WHAT:I = 0x4

.field private static final FADE_OUT_VOLUME_MESSAGE_WHAT:I = 0x0

.field private static final QUERY_PROGRESS_AFTER_PREPARED:I = 0x5

.field private static final TAG:Ljava/lang/String; = null

.field private static final X_MAX_TOLERANCE:F = 20.0f

.field private static final X_MIN_TOLERANCE:F = 20.0f

.field private static final Y_MAX_TOLERANCE:F = 20.0f

.field private static final Y_MIN_TOLERANCE:F = 20.0f


# instance fields
.field private downLeftRegion:Z

.field private downRightRegion:Z

.field private mActivity:Landroid/app/Activity;

.field private mAdjustPositionStep:F

.field private mAirkanBackgroundView:Landroid/view/View;

.field private mAirkanExistDeviceInfo:Lcom/miui/videoplayer/framework/airkan/AirkanManager$AirkanExistDeviceInfo;

.field private mAirkanManager:Lcom/miui/videoplayer/framework/airkan/AirkanManager;

.field private mAlertDialog:Landroid/app/AlertDialog;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mBackToast:Landroid/widget/Toast;

.field private mBrightnessPopupWindow:Lcom/miui/videoplayer/framework/popup/BrightnessPopupWindow;

.field private mBufferTimes:I

.field private mBufferedStartTimeStamp:J

.field private mBufferingProgressDialog:Lcom/miui/videoplayer/framework/ui/DuoKanMediaController$BufferingProgressDialog;

.field private mContinuePlayToast:Landroid/widget/Toast;

.field private mDisplayInformationFetcher:Lcom/miui/videoplayer/framework/utils/DisplayInformationFetcher;

.field private mDisplayMetrics:Landroid/util/DisplayMetrics;

.field private mHandler:Landroid/os/Handler;

.field private mLayoutInflater:Landroid/view/LayoutInflater;

.field private mLoadingBackgroundView:Landroid/view/View;

.field private mLocalMediaPlayer:Lcom/miui/videoplayer/framework/ui/LocalMediaPlayerControl;

.field private mMediaController:Lcom/miui/videoplayer/framework/views/OriginMediaController;

.field private mMetaDataMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/miui/videoplayer/framework/history/PlayHistoryManager$PlayHistoryEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mOptionMenuPopupWindow:Lcom/miui/videoplayer/framework/popup/OptionMenuPopupWindow;

.field private mOptionSubMenuPopupWindow:Lcom/miui/videoplayer/framework/popup/OptionSubMenuPopupWindow;

.field private mPrepared:Z

.field private mProgressOnlyPopupWindow:Lcom/miui/videoplayer/framework/popup/ProgressBarOnlyPopupWindow;

.field private mProgressTimePopupWindow:Lcom/miui/videoplayer/framework/popup/ProgressTimePopupWindow;

.field private mStartPlayingTimeStamp:J

.field private mSwitchMediaOrientation:I

.field private mTotalBufferedTime:J

.field private mTotalPausedTime:I

.field private mTriggerAdjustPosition:Z

.field private mTriggerAdjustPositionTolerance:F

.field private mUri:Landroid/net/Uri;

.field private mUris:[Ljava/lang/String;

.field private mVideoSizeAdjustable:Lcom/miui/videoplayer/framework/ui/LocalVideoPlaySizeAdjustable;

.field private mVolumePopupWindow:Lcom/miui/videoplayer/framework/popup/VolumePopupWindow;

.field private mX:F

.field private mY:F

.field private moved:Z

.field private movedBrightness:Z

.field private movedPosition:Z

.field private movedVolume:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 72
    const-class v0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    const/4 v3, 0x0

    const-wide/16 v1, 0x0

    const/4 v0, 0x0

    .line 169
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 109
    iput v0, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->mSwitchMediaOrientation:I

    .line 124
    iput v0, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->mBufferTimes:I

    .line 125
    iput v0, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->mTotalPausedTime:I

    .line 126
    iput-wide v1, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->mTotalBufferedTime:J

    .line 127
    iput-wide v1, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->mStartPlayingTimeStamp:J

    .line 128
    iput-wide v1, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->mBufferedStartTimeStamp:J

    .line 130
    iput-boolean v0, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->mPrepared:Z

    .line 285
    iput v3, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->mX:F

    .line 286
    iput v3, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->mY:F

    .line 291
    iput-boolean v0, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->moved:Z

    .line 293
    iput-boolean v0, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->downLeftRegion:Z

    .line 294
    iput-boolean v0, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->downRightRegion:Z

    .line 296
    iput-boolean v0, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->movedBrightness:Z

    .line 297
    iput-boolean v0, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->movedVolume:Z

    .line 298
    iput-boolean v0, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->movedPosition:Z

    .line 300
    iput-boolean v0, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->mTriggerAdjustPosition:Z

    .line 598
    new-instance v0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController$1;

    invoke-direct {v0, p0}, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController$1;-><init>(Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;)V

    iput-object v0, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->mHandler:Landroid/os/Handler;

    .line 171
    invoke-direct {p0, p1}, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->setupWindows(Landroid/content/Context;)V

    .line 172
    invoke-direct {p0, p1}, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->init(Landroid/content/Context;)V

    .line 173
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v3, 0x0

    const-wide/16 v1, 0x0

    const/4 v0, 0x0

    .line 183
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 109
    iput v0, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->mSwitchMediaOrientation:I

    .line 124
    iput v0, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->mBufferTimes:I

    .line 125
    iput v0, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->mTotalPausedTime:I

    .line 126
    iput-wide v1, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->mTotalBufferedTime:J

    .line 127
    iput-wide v1, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->mStartPlayingTimeStamp:J

    .line 128
    iput-wide v1, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->mBufferedStartTimeStamp:J

    .line 130
    iput-boolean v0, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->mPrepared:Z

    .line 285
    iput v3, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->mX:F

    .line 286
    iput v3, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->mY:F

    .line 291
    iput-boolean v0, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->moved:Z

    .line 293
    iput-boolean v0, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->downLeftRegion:Z

    .line 294
    iput-boolean v0, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->downRightRegion:Z

    .line 296
    iput-boolean v0, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->movedBrightness:Z

    .line 297
    iput-boolean v0, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->movedVolume:Z

    .line 298
    iput-boolean v0, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->movedPosition:Z

    .line 300
    iput-boolean v0, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->mTriggerAdjustPosition:Z

    .line 598
    new-instance v0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController$1;

    invoke-direct {v0, p0}, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController$1;-><init>(Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;)V

    iput-object v0, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->mHandler:Landroid/os/Handler;

    .line 185
    invoke-direct {p0, p1}, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->setupWindows(Landroid/content/Context;)V

    .line 186
    invoke-direct {p0, p1}, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->init(Landroid/content/Context;)V

    .line 187
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v3, 0x0

    const-wide/16 v1, 0x0

    const/4 v0, 0x0

    .line 176
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 109
    iput v0, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->mSwitchMediaOrientation:I

    .line 124
    iput v0, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->mBufferTimes:I

    .line 125
    iput v0, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->mTotalPausedTime:I

    .line 126
    iput-wide v1, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->mTotalBufferedTime:J

    .line 127
    iput-wide v1, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->mStartPlayingTimeStamp:J

    .line 128
    iput-wide v1, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->mBufferedStartTimeStamp:J

    .line 130
    iput-boolean v0, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->mPrepared:Z

    .line 285
    iput v3, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->mX:F

    .line 286
    iput v3, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->mY:F

    .line 291
    iput-boolean v0, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->moved:Z

    .line 293
    iput-boolean v0, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->downLeftRegion:Z

    .line 294
    iput-boolean v0, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->downRightRegion:Z

    .line 296
    iput-boolean v0, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->movedBrightness:Z

    .line 297
    iput-boolean v0, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->movedVolume:Z

    .line 298
    iput-boolean v0, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->movedPosition:Z

    .line 300
    iput-boolean v0, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->mTriggerAdjustPosition:Z

    .line 598
    new-instance v0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController$1;

    invoke-direct {v0, p0}, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController$1;-><init>(Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;)V

    iput-object v0, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->mHandler:Landroid/os/Handler;

    .line 178
    invoke-direct {p0, p1}, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->setupWindows(Landroid/content/Context;)V

    .line 179
    invoke-direct {p0, p1}, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->init(Landroid/content/Context;)V

    .line 180
    return-void
.end method

.method static synthetic access$000(Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;)Lcom/miui/videoplayer/framework/popup/VolumePopupWindow;
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->mVolumePopupWindow:Lcom/miui/videoplayer/framework/popup/VolumePopupWindow;

    return-object v0
.end method

.method static synthetic access$100(Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;)Lcom/miui/videoplayer/framework/popup/BrightnessPopupWindow;
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->mBrightnessPopupWindow:Lcom/miui/videoplayer/framework/popup/BrightnessPopupWindow;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;)Landroid/net/Uri;
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->mUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget-boolean v0, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->mPrepared:Z

    return v0
.end method

.method static synthetic access$1200(Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;JLjava/lang/String;Lcom/miui/videoplayer/framework/history/PlayHistoryManager$PlayHistoryEntry;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 70
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->savePlayInfoFile(JLjava/lang/String;Lcom/miui/videoplayer/framework/history/PlayHistoryManager$PlayHistoryEntry;)V

    return-void
.end method

.method static synthetic access$200(Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;)Lcom/miui/videoplayer/framework/ui/LocalMediaPlayerControl;
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->mLocalMediaPlayer:Lcom/miui/videoplayer/framework/ui/LocalMediaPlayerControl;

    return-object v0
.end method

.method static synthetic access$300(Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;)Landroid/app/Activity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$400(Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;)Landroid/widget/Toast;
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->mContinuePlayToast:Landroid/widget/Toast;

    return-object v0
.end method

.method static synthetic access$402(Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;Landroid/widget/Toast;)Landroid/widget/Toast;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 70
    iput-object p1, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->mContinuePlayToast:Landroid/widget/Toast;

    return-object p1
.end method

.method static synthetic access$500(Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;)Lcom/miui/videoplayer/framework/views/OriginMediaController;
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->mMediaController:Lcom/miui/videoplayer/framework/views/OriginMediaController;

    return-object v0
.end method

.method static synthetic access$600(Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;)Landroid/app/AlertDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->mAlertDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$700(Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->onCompletionCalled()V

    return-void
.end method

.method static synthetic access$800()Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    sget-object v0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$900(Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private adjustBrightness(F)V
    .locals 4
    .parameter "distanceY"

    .prologue
    .line 459
    iget-object v2, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->mActivity:Landroid/app/Activity;

    invoke-static {v2}, Lcom/miui/videoplayer/framework/utils/AndroidUtils;->getActivityBrightness(Landroid/app/Activity;)F

    move-result v2

    const/high16 v3, 0x437f

    mul-float/2addr v2, v3

    float-to-int v0, v2

    .line 460
    .local v0, currentValue:I
    if-gez v0, :cond_0

    .line 461
    iget-object v2, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->mActivity:Landroid/app/Activity;

    invoke-static {v2}, Lcom/miui/videoplayer/framework/utils/AndroidUtils;->getSystemBrightness(Landroid/content/Context;)I

    move-result v0

    .line 463
    :cond_0
    invoke-direct {p0}, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->showBrightnessPopupWindow()V

    .line 464
    invoke-direct {p0, p1, v0}, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->getNewBrightnessValue(FI)I

    move-result v1

    .line 465
    .local v1, newValue:I
    iget-object v2, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->mActivity:Landroid/app/Activity;

    invoke-static {v2, v1}, Lcom/miui/videoplayer/framework/utils/AndroidUtils;->setActivityBrightness(Landroid/app/Activity;I)V

    .line 466
    iget-object v2, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->mBrightnessPopupWindow:Lcom/miui/videoplayer/framework/popup/BrightnessPopupWindow;

    div-int/lit8 v3, v1, 0x11

    invoke-virtual {v2, v3}, Lcom/miui/videoplayer/framework/popup/BrightnessPopupWindow;->updateSeekbarValue(I)V

    .line 467
    return-void
.end method

.method private adjustPlayPosition(F)V
    .locals 9
    .parameter "distanceX"

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 516
    iget-object v5, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->mMediaController:Lcom/miui/videoplayer/framework/views/OriginMediaController;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->mMediaController:Lcom/miui/videoplayer/framework/views/OriginMediaController;

    invoke-virtual {v5}, Lcom/miui/videoplayer/framework/views/OriginMediaController;->isShowing()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 519
    :cond_0
    iget-object v5, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->mProgressTimePopupWindow:Lcom/miui/videoplayer/framework/popup/ProgressTimePopupWindow;

    if-nez v5, :cond_1

    .line 520
    new-instance v5, Lcom/miui/videoplayer/framework/popup/ProgressTimePopupWindow;

    iget-object v8, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->mActivity:Landroid/app/Activity;

    invoke-direct {v5, v8, v7}, Lcom/miui/videoplayer/framework/popup/ProgressTimePopupWindow;-><init>(Landroid/content/Context;Z)V

    iput-object v5, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->mProgressTimePopupWindow:Lcom/miui/videoplayer/framework/popup/ProgressTimePopupWindow;

    .line 521
    iget-object v5, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->mProgressTimePopupWindow:Lcom/miui/videoplayer/framework/popup/ProgressTimePopupWindow;

    iget-object v8, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->mMediaController:Lcom/miui/videoplayer/framework/views/OriginMediaController;

    invoke-virtual {v8}, Lcom/miui/videoplayer/framework/views/OriginMediaController;->getTopStatusBarPopupWindow()Lcom/miui/videoplayer/framework/popup/TopStatusBarPopupWindow;

    move-result-object v8

    invoke-virtual {v5, v8}, Lcom/miui/videoplayer/framework/popup/ProgressTimePopupWindow;->setTopStatusBarPopupWindow(Lcom/miui/videoplayer/framework/popup/TopStatusBarPopupWindow;)V

    .line 524
    :cond_1
    iget-object v5, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->mProgressTimePopupWindow:Lcom/miui/videoplayer/framework/popup/ProgressTimePopupWindow;

    invoke-virtual {v5}, Lcom/miui/videoplayer/framework/popup/ProgressTimePopupWindow;->isShowing()Z

    move-result v5

    if-nez v5, :cond_2

    .line 525
    iget-object v5, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v8, 0x7f070029

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v2, v5

    .line 526
    .local v2, marginTop:I
    iget-object v5, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->mProgressTimePopupWindow:Lcom/miui/videoplayer/framework/popup/ProgressTimePopupWindow;

    const/16 v8, 0x30

    invoke-virtual {v5, p0, v8, v7, v2}, Lcom/miui/videoplayer/framework/popup/ProgressTimePopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 529
    .end local v2           #marginTop:I
    :cond_2
    invoke-virtual {p0}, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->getWidth()I

    move-result v4

    .line 530
    .local v4, videoViewWidth:I
    iget-object v5, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->mLocalMediaPlayer:Lcom/miui/videoplayer/framework/ui/LocalMediaPlayerControl;

    invoke-interface {v5}, Lcom/miui/videoplayer/framework/ui/LocalMediaPlayerControl;->getCurrentPosition()I

    move-result v0

    .line 531
    .local v0, currentPosition:I
    iget-object v5, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->mLocalMediaPlayer:Lcom/miui/videoplayer/framework/ui/LocalMediaPlayerControl;

    invoke-interface {v5}, Lcom/miui/videoplayer/framework/ui/LocalMediaPlayerControl;->getDuration()I

    move-result v1

    .line 533
    .local v1, duration:I
    iget-object v5, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->mProgressOnlyPopupWindow:Lcom/miui/videoplayer/framework/popup/ProgressBarOnlyPopupWindow;

    if-nez v5, :cond_3

    .line 534
    new-instance v5, Lcom/miui/videoplayer/framework/popup/ProgressBarOnlyPopupWindow;

    iget-object v8, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->mActivity:Landroid/app/Activity;

    invoke-direct {v5, v8}, Lcom/miui/videoplayer/framework/popup/ProgressBarOnlyPopupWindow;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->mProgressOnlyPopupWindow:Lcom/miui/videoplayer/framework/popup/ProgressBarOnlyPopupWindow;

    .line 536
    :cond_3
    iget-object v5, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->mProgressOnlyPopupWindow:Lcom/miui/videoplayer/framework/popup/ProgressBarOnlyPopupWindow;

    invoke-virtual {v5}, Lcom/miui/videoplayer/framework/popup/ProgressBarOnlyPopupWindow;->isShowing()Z

    move-result v5

    if-nez v5, :cond_4

    .line 541
    :cond_4
    iget-object v5, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->mProgressTimePopupWindow:Lcom/miui/videoplayer/framework/popup/ProgressTimePopupWindow;

    invoke-virtual {v5, v0}, Lcom/miui/videoplayer/framework/popup/ProgressTimePopupWindow;->updatePosition(I)V

    .line 542
    iget-object v8, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->mProgressTimePopupWindow:Lcom/miui/videoplayer/framework/popup/ProgressTimePopupWindow;

    const/4 v5, 0x0

    cmpl-float v5, p1, v5

    if-lez v5, :cond_7

    move v5, v6

    :goto_0
    invoke-virtual {v8, v5}, Lcom/miui/videoplayer/framework/popup/ProgressTimePopupWindow;->setOrientation(Z)V

    .line 544
    invoke-direct {p0, p1, v4, v0, v1}, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->getSeekToPosition(FIII)I

    move-result v3

    .line 545
    .local v3, seekToPosition:I
    if-ne v0, v3, :cond_9

    .line 546
    if-ne v3, v1, :cond_8

    .line 547
    iput v6, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->mSwitchMediaOrientation:I

    .line 548
    iget-object v5, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->mProgressTimePopupWindow:Lcom/miui/videoplayer/framework/popup/ProgressTimePopupWindow;

    const/16 v6, -0x3ea

    invoke-virtual {v5, v6}, Lcom/miui/videoplayer/framework/popup/ProgressTimePopupWindow;->updatePosition(I)V

    .line 561
    :cond_5
    :goto_1
    iget-object v5, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->mMediaController:Lcom/miui/videoplayer/framework/views/OriginMediaController;

    invoke-virtual {v5}, Lcom/miui/videoplayer/framework/views/OriginMediaController;->show()V

    .line 562
    iget-object v5, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->mProgressOnlyPopupWindow:Lcom/miui/videoplayer/framework/popup/ProgressBarOnlyPopupWindow;

    invoke-virtual {v5}, Lcom/miui/videoplayer/framework/popup/ProgressBarOnlyPopupWindow;->dismiss()V

    .line 563
    iget-object v5, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->mMediaController:Lcom/miui/videoplayer/framework/views/OriginMediaController;

    invoke-virtual {v5}, Lcom/miui/videoplayer/framework/views/OriginMediaController;->getTopStatusBarPopupWindow()Lcom/miui/videoplayer/framework/popup/TopStatusBarPopupWindow;

    move-result-object v5

    if-eqz v5, :cond_6

    iget-object v5, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->mMediaController:Lcom/miui/videoplayer/framework/views/OriginMediaController;

    invoke-virtual {v5}, Lcom/miui/videoplayer/framework/views/OriginMediaController;->getTopStatusBarPopupWindow()Lcom/miui/videoplayer/framework/popup/TopStatusBarPopupWindow;

    move-result-object v5

    invoke-virtual {v5}, Lcom/miui/videoplayer/framework/popup/TopStatusBarPopupWindow;->isShowing()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 564
    iget-object v5, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->mMediaController:Lcom/miui/videoplayer/framework/views/OriginMediaController;

    invoke-virtual {v5}, Lcom/miui/videoplayer/framework/views/OriginMediaController;->getTopStatusBarPopupWindow()Lcom/miui/videoplayer/framework/popup/TopStatusBarPopupWindow;

    move-result-object v5

    invoke-virtual {v5}, Lcom/miui/videoplayer/framework/popup/TopStatusBarPopupWindow;->dismiss()V

    .line 566
    :cond_6
    iget-object v5, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->mMediaController:Lcom/miui/videoplayer/framework/views/OriginMediaController;

    invoke-virtual {v5}, Lcom/miui/videoplayer/framework/views/OriginMediaController;->removeShowFullScreenPauseMessage()V

    .line 569
    return-void

    .end local v3           #seekToPosition:I
    :cond_7
    move v5, v7

    .line 542
    goto :goto_0

    .line 549
    .restart local v3       #seekToPosition:I
    :cond_8
    if-nez v3, :cond_5

    .line 550
    const/4 v5, -0x1

    iput v5, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->mSwitchMediaOrientation:I

    .line 551
    iget-object v5, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->mProgressTimePopupWindow:Lcom/miui/videoplayer/framework/popup/ProgressTimePopupWindow;

    const/16 v6, -0x3e9

    invoke-virtual {v5, v6}, Lcom/miui/videoplayer/framework/popup/ProgressTimePopupWindow;->updatePosition(I)V

    goto :goto_1

    .line 554
    :cond_9
    iput v7, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->mSwitchMediaOrientation:I

    .line 555
    iget-object v5, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->mLocalMediaPlayer:Lcom/miui/videoplayer/framework/ui/LocalMediaPlayerControl;

    invoke-interface {v5, v3}, Lcom/miui/videoplayer/framework/ui/LocalMediaPlayerControl;->seekTo(I)V

    .line 556
    iget-object v5, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->mProgressTimePopupWindow:Lcom/miui/videoplayer/framework/popup/ProgressTimePopupWindow;

    invoke-virtual {v5, v3}, Lcom/miui/videoplayer/framework/popup/ProgressTimePopupWindow;->updatePosition(I)V

    .line 557
    iget-object v5, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->mProgressOnlyPopupWindow:Lcom/miui/videoplayer/framework/popup/ProgressBarOnlyPopupWindow;

    invoke-virtual {v5, v3}, Lcom/miui/videoplayer/framework/popup/ProgressBarOnlyPopupWindow;->updatePosition(I)V

    goto :goto_1
.end method

.method private adjustVolume(F)V
    .locals 6
    .parameter "distanceY"

    .prologue
    const/4 v5, 0x3

    .line 487
    iget-object v3, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->mAudioManager:Landroid/media/AudioManager;

    if-nez v3, :cond_0

    .line 488
    iget-object v3, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->mActivity:Landroid/app/Activity;

    const-string v4, "audio"

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/AudioManager;

    iput-object v3, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->mAudioManager:Landroid/media/AudioManager;

    .line 490
    :cond_0
    iget-object v3, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v3, v5}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v1

    .line 491
    .local v1, maxVolume:I
    iget-object v3, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v3, v5}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    .line 492
    .local v0, currentVolume:I
    invoke-direct {p0}, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->showVolumePopupWindow()V

    .line 494
    invoke-direct {p0, p1, v1, v0}, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->getNewVolumeValue(FII)I

    move-result v2

    .line 495
    .local v2, newValue:I
    iget-object v3, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->mAudioManager:Landroid/media/AudioManager;

    const/16 v4, 0x8

    invoke-virtual {v3, v5, v2, v4}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 496
    iget-object v3, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->mVolumePopupWindow:Lcom/miui/videoplayer/framework/popup/VolumePopupWindow;

    invoke-virtual {v3, v2}, Lcom/miui/videoplayer/framework/popup/VolumePopupWindow;->updateSeekbarValue(I)V

    .line 497
    return-void
.end method

.method private bufferingEnd()V
    .locals 6

    .prologue
    .line 1287
    iget-wide v0, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->mTotalBufferedTime:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->mBufferedStartTimeStamp:J

    sub-long/2addr v2, v4

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->mTotalBufferedTime:J

    .line 1288
    iget-object v0, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->mMediaController:Lcom/miui/videoplayer/framework/views/OriginMediaController;

    instance-of v0, v0, Lcom/miui/videoplayer/framework/views/OriginMediaControllerV5;

    if-eqz v0, :cond_1

    .line 1289
    iget-object v0, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->mMediaController:Lcom/miui/videoplayer/framework/views/OriginMediaController;

    check-cast v0, Lcom/miui/videoplayer/framework/views/OriginMediaControllerV5;

    invoke-virtual {v0}, Lcom/miui/videoplayer/framework/views/OriginMediaControllerV5;->bufferingEnd()V

    .line 1295
    :cond_0
    :goto_0
    return-void

    .line 1291
    :cond_1
    iget-object v0, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->mBufferingProgressDialog:Lcom/miui/videoplayer/framework/ui/DuoKanMediaController$BufferingProgressDialog;

    if-eqz v0, :cond_0

    .line 1292
    iget-object v0, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->mBufferingProgressDialog:Lcom/miui/videoplayer/framework/ui/DuoKanMediaController$BufferingProgressDialog;

    invoke-virtual {v0}, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController$BufferingProgressDialog;->dismiss()V

    goto :goto_0
.end method

.method private bufferingStart()V
    .locals 2

    .prologue
    .line 1273
    iget-object v0, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->mMediaController:Lcom/miui/videoplayer/framework/views/OriginMediaController;

    instance-of v0, v0, Lcom/miui/videoplayer/framework/views/OriginMediaControllerV5;

    if-eqz v0, :cond_0

    .line 1274
    iget-object v0, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->mMediaController:Lcom/miui/videoplayer/framework/views/OriginMediaController;

    check-cast v0, Lcom/miui/videoplayer/framework/views/OriginMediaControllerV5;

    invoke-virtual {v0}, Lcom/miui/videoplayer/framework/views/OriginMediaControllerV5;->bufferingStart()V

    .line 1282
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->mBufferedStartTimeStamp:J

    .line 1283
    iget v0, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->mBufferTimes:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->mBufferTimes:I

    .line 1284
    return-void

    .line 1276
    :cond_0
    iget-object v0, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->mBufferingProgressDialog:Lcom/miui/videoplayer/framework/ui/DuoKanMediaController$BufferingProgressDialog;

    if-nez v0, :cond_1

    .line 1277
    new-instance v0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController$BufferingProgressDialog;

    iget-object v1, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController$BufferingProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->mBufferingProgressDialog:Lcom/miui/videoplayer/framework/ui/DuoKanMediaController$BufferingProgressDialog;

    .line 1278
    iget-object v0, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->mBufferingProgressDialog:Lcom/miui/videoplayer/framework/ui/DuoKanMediaController$BufferingProgressDialog;

    invoke-virtual {v0, p0}, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController$BufferingProgressDialog;->setOnKeyDownListener(Landroid/view/View;)V

    .line 1280
    :cond_1
    iget-object v0, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->mBufferingProgressDialog:Lcom/miui/videoplayer/framework/ui/DuoKanMediaController$BufferingProgressDialog;

    invoke-virtual {v0}, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController$BufferingProgressDialog;->show()V

    goto :goto_0
.end method

.method private cleanOnBackPressed()V
    .locals 2

    .prologue
    .line 915
    iget-object v0, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->mMediaController:Lcom/miui/videoplayer/framework/views/OriginMediaController;

    if-eqz v0, :cond_0

    .line 916
    iget-object v0, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->mMediaController:Lcom/miui/videoplayer/framework/views/OriginMediaController;

    invoke-virtual {v0}, Lcom/miui/videoplayer/framework/views/OriginMediaController;->hide()V

    .line 918
    :cond_0
    iget-object v0, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->mAirkanManager:Lcom/miui/videoplayer/framework/airkan/AirkanManager;

    if-eqz v0, :cond_1

    .line 919
    iget-object v0, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->mAirkanManager:Lcom/miui/videoplayer/framework/airkan/AirkanManager;

    invoke-virtual {v0}, Lcom/miui/videoplayer/framework/airkan/AirkanManager;->isPlayingInLocal()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 920
    iget-object v0, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->mLocalMediaPlayer:Lcom/miui/videoplayer/framework/ui/LocalMediaPlayerControl;

    if-eqz v0, :cond_1

    .line 921
    iget-object v0, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->mLocalMediaPlayer:Lcom/miui/videoplayer/framework/ui/LocalMediaPlayerControl;

    invoke-interface {v0}, Lcom/miui/videoplayer/framework/ui/LocalMediaPlayerControl;->getCurrentPosition()I

    move-result v0

    iget-object v1, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->mLocalMediaPlayer:Lcom/miui/videoplayer/framework/ui/LocalMediaPlayerControl;

    invoke-interface {v1}, Lcom/miui/videoplayer/framework/ui/LocalMediaPlayerControl;->getDuration()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->savePlayHistory(II)V

    .line 928
    :cond_1
    :goto_0
    invoke-static {}, Lcom/miui/videoplayer/framework/popup/PopupWindowManager;->getInstance()Lcom/miui/videoplayer/framework/popup/PopupWindowManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/videoplayer/framework/popup/PopupWindowManager;->dimissAllManagedPopupWindow()V

    .line 929
    iget-object v0, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->mBufferingProgressDialog:Lcom/miui/videoplayer/framework/ui/DuoKanMediaController$BufferingProgressDialog;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->mBufferingProgressDialog:Lcom/miui/videoplayer/framework/ui/DuoKanMediaController$BufferingProgressDialog;

    invoke-virtual {v0}, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController$BufferingProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 930
    iget-object v0, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->mBufferingProgressDialog:Lcom/miui/videoplayer/framework/ui/DuoKanMediaController$BufferingProgressDialog;

    iget-object v1, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController$BufferingProgressDialog;->dismissAndFinishActivity(Landroid/app/Activity;)V

    .line 932
    :cond_2
    return-void

    .line 924
    :cond_3
    iget-object v0, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->mAirkanManager:Lcom/miui/videoplayer/framework/airkan/AirkanManager;

    invoke-virtual {v0}, Lcom/miui/videoplayer/framework/airkan/AirkanManager;->stopRemotePlay()V

    .line 925
    iget-object v0, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->mAirkanManager:Lcom/miui/videoplayer/framework/airkan/AirkanManager;

    invoke-virtual {v0}, Lcom/miui/videoplayer/framework/airkan/AirkanManager;->getCurrentPosition()I

    move-result v0

    iget-object v1, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->mAirkanManager:Lcom/miui/videoplayer/framework/airkan/AirkanManager;

    invoke-virtual {v1}, Lcom/miui/videoplayer/framework/airkan/AirkanManager;->getDuration()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->savePlayHistory(II)V

    goto :goto_0
.end method

.method private delayFadeOutBrightnessPopupWindows()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 589
    iget-object v0, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 590
    iget-object v0, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0xbb8

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 591
    return-void
.end method

.method private delayFadeOutVolumePopupWindow()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 594
    iget-object v0, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 595
    iget-object v0, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0xbb8

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 596
    return-void
.end method

.method private dismissUnusedPopupWindows()V
    .locals 1

    .prologue
    .line 675
    iget-object v0, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->mProgressTimePopupWindow:Lcom/miui/videoplayer/framework/popup/ProgressTimePopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->mProgressTimePopupWindow:Lcom/miui/videoplayer/framework/popup/ProgressTimePopupWindow;

    invoke-virtual {v0}, Lcom/miui/videoplayer/framework/popup/ProgressTimePopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 676
    iget-object v0, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->mProgressTimePopupWindow:Lcom/miui/videoplayer/framework/popup/ProgressTimePopupWindow;

    invoke-virtual {v0}, Lcom/miui/videoplayer/framework/popup/ProgressTimePopupWindow;->dismiss()V

    .line 678
    :cond_0
    iget-object v0, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->mProgressOnlyPopupWindow:Lcom/miui/videoplayer/framework/popup/ProgressBarOnlyPopupWindow;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->mProgressOnlyPopupWindow:Lcom/miui/videoplayer/framework/popup/ProgressBarOnlyPopupWindow;

    invoke-virtual {v0}, Lcom/miui/videoplayer/framework/popup/ProgressBarOnlyPopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 679
    iget-object v0, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->mProgressOnlyPopupWindow:Lcom/miui/videoplayer/framework/popup/ProgressBarOnlyPopupWindow;

    invoke-virtual {v0}, Lcom/miui/videoplayer/framework/popup/ProgressBarOnlyPopupWindow;->dismiss()V

    .line 681
    :cond_1
    return-void
.end method

.method private findDateItemObject(Ljava/lang/String;Lorg/json/JSONArray;)Lorg/json/JSONObject;
    .locals 5
    .parameter "dayDate"
    .parameter "jsonArray"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 901
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v1, v4, :cond_1

    .line 902
    invoke-virtual {p2, v1}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    .line 903
    .local v3, object:Ljava/lang/Object;
    instance-of v4, v3, Lorg/json/JSONObject;

    if-eqz v4, :cond_0

    move-object v2, v3

    .line 904
    check-cast v2, Lorg/json/JSONObject;

    .line 905
    .local v2, jsonObject:Lorg/json/JSONObject;
    const-string v4, "date"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 906
    .local v0, date:Ljava/lang/String;
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 911
    .end local v0           #date:Ljava/lang/String;
    .end local v2           #jsonObject:Lorg/json/JSONObject;
    .end local v3           #object:Ljava/lang/Object;
    :goto_1
    return-object v2

    .line 901
    .restart local v3       #object:Ljava/lang/Object;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 911
    .end local v3           #object:Ljava/lang/Object;
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private getMetaDataEntry(Ljava/lang/String;)Lcom/miui/videoplayer/framework/history/PlayHistoryManager$PlayHistoryEntry;
    .locals 1
    .parameter "uri"

    .prologue
    .line 1150
    iget-object v0, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->mMetaDataMap:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 1151
    iget-object v0, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->mMetaDataMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/videoplayer/framework/history/PlayHistoryManager$PlayHistoryEntry;

    .line 1153
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getNewBrightnessValue(FI)I
    .locals 2
    .parameter "distanceY"
    .parameter "currentValue"

    .prologue
    .line 470
    const/4 v0, 0x0

    .line 471
    .local v0, newValue:I
    const/4 v1, 0x0

    cmpl-float v1, p1, v1

    if-lez v1, :cond_2

    .line 472
    add-int/lit8 v0, p2, -0x11

    .line 476
    :goto_0
    const/16 v1, 0xff

    if-le v0, v1, :cond_0

    .line 477
    const/16 v0, 0xff

    .line 479
    :cond_0
    const/4 v1, 0x2

    if-ge v0, v1, :cond_1

    .line 480
    const/4 v0, 0x2

    .line 482
    :cond_1
    return v0

    .line 474
    :cond_2
    add-int/lit8 v0, p2, 0x11

    goto :goto_0
.end method

.method private getNewVolumeValue(FII)I
    .locals 2
    .parameter "distanceY"
    .parameter "maxVolume"
    .parameter "currentVolume"

    .prologue
    .line 500
    const/4 v0, 0x0

    .line 501
    .local v0, newValue:I
    const/4 v1, 0x0

    cmpl-float v1, p1, v1

    if-lez v1, :cond_2

    .line 502
    add-int/lit8 v0, p3, -0x1

    .line 506
    :goto_0
    if-le v0, p2, :cond_0

    .line 507
    move v0, p2

    .line 509
    :cond_0
    if-gez v0, :cond_1

    .line 510
    const/4 v0, 0x0

    .line 512
    :cond_1
    return v0

    .line 504
    :cond_2
    add-int/lit8 v0, p3, 0x1

    goto :goto_0
.end method

.method private getSeekToPosition(FIII)I
    .locals 4
    .parameter "distanceX"
    .parameter "videoViewWidth"
    .parameter "currentPosition"
    .parameter "duration"

    .prologue
    .line 572
    const/4 v0, 0x0

    .line 573
    .local v0, seekToPosition:I
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iget v3, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->mAdjustPositionStep:F

    div-float/2addr v2, v3

    float-to-int v2, v2

    mul-int/lit16 v1, v2, 0x3e8

    .line 574
    .local v1, stepPosition:I
    const/4 v2, 0x0

    cmpg-float v2, p1, v2

    if-gez v2, :cond_1

    .line 575
    sub-int v0, p3, v1

    .line 576
    if-gez v0, :cond_0

    .line 577
    const/4 v0, 0x0

    .line 585
    :cond_0
    :goto_0
    return v0

    .line 580
    :cond_1
    add-int v0, p3, v1

    .line 581
    if-le v0, p4, :cond_0

    .line 582
    move v0, p4

    goto :goto_0
.end method

.method private hideLoadingView()V
    .locals 3

    .prologue
    .line 1398
    iget-object v0, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->mLoadingBackgroundView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1399
    sget-object v0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hide loading view: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->mLoadingBackgroundView:Landroid/view/View;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1400
    iget-object v0, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->mLoadingBackgroundView:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1402
    :cond_0
    invoke-virtual {p0}, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->bringToFront()V

    .line 1403
    return-void
.end method

.method private inflateAirkanBackgroundView()Landroid/view/View;
    .locals 6

    .prologue
    const/4 v5, -0x1

    .line 989
    iget-object v2, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f030025

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 990
    .local v1, result:Landroid/view/View;
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v5, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 991
    .local v0, lp:Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {p0, v1, v0}, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 992
    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 993
    return-object v1
.end method

.method private inflateLoadingBackgroundView()Landroid/view/View;
    .locals 11

    .prologue
    const/4 v10, -0x1

    const/4 v9, 0x0

    .line 997
    iget-object v6, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v7, 0x7f030023

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 998
    .local v4, result:Landroid/view/View;
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v10, v10}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 999
    .local v0, lp:Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {p0, v4, v0}, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1000
    const/4 v6, 0x4

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    .line 1002
    const v6, 0x7f090049

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 1003
    .local v3, progressGroupView:Landroid/view/View;
    iget-object v6, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f060004

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual {v3, v6}, Landroid/view/View;->setBackgroundColor(I)V

    .line 1005
    const v6, 0x7f090025

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ProgressBar;

    .line 1006
    .local v2, progressBar:Landroid/widget/ProgressBar;
    invoke-virtual {v2, v9}, Landroid/widget/ProgressBar;->setEnabled(Z)V

    .line 1008
    const v6, 0x7f090023

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 1009
    .local v1, positionView:Landroid/widget/TextView;
    invoke-static {}, Lcom/miui/videoplayer/framework/utils/DKTimeFormatter;->getInstance()Lcom/miui/videoplayer/framework/utils/DKTimeFormatter;

    move-result-object v6

    invoke-virtual {v6, v9}, Lcom/miui/videoplayer/framework/utils/DKTimeFormatter;->stringForTime(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1010
    const v6, 0x7f090024

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 1011
    .local v5, timeView:Landroid/widget/TextView;
    invoke-static {}, Lcom/miui/videoplayer/framework/utils/DKTimeFormatter;->getInstance()Lcom/miui/videoplayer/framework/utils/DKTimeFormatter;

    move-result-object v6

    invoke-virtual {v6, v9}, Lcom/miui/videoplayer/framework/utils/DKTimeFormatter;->stringForTime(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1012
    return-object v4
.end method

.method private inflateLoadingBackgroundViewV5()Landroid/view/View;
    .locals 10

    .prologue
    const/4 v9, -0x1

    .line 1016
    iget-object v6, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v7, 0x7f030024

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 1017
    .local v4, result:Landroid/view/View;
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v9, v9}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 1018
    .local v2, lp:Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {p0, v4, v2}, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1019
    const/4 v6, 0x4

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    .line 1021
    const v6, 0x7f090021

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 1022
    .local v0, bufferingTextView:Landroid/widget/ImageView;
    iget-object v6, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->mActivity:Landroid/app/Activity;

    const/high16 v7, 0x7f04

    invoke-static {v6, v7}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1024
    const v6, 0x7f090029

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 1025
    .local v3, mediaNameTextview:Landroid/widget/TextView;
    iget-object v6, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f050030

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 1026
    .local v5, toBePlayString:Ljava/lang/String;
    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1027
    iget-object v6, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->mUri:Landroid/net/Uri;

    if-eqz v6, :cond_0

    .line 1028
    iget-object v6, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->mUri:Landroid/net/Uri;

    invoke-virtual {v6}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->getMetaDataEntry(Ljava/lang/String;)Lcom/miui/videoplayer/framework/history/PlayHistoryManager$PlayHistoryEntry;

    move-result-object v1

    .line 1029
    .local v1, entry:Lcom/miui/videoplayer/framework/history/PlayHistoryManager$PlayHistoryEntry;
    if-eqz v1, :cond_0

    .line 1030
    invoke-virtual {v1}, Lcom/miui/videoplayer/framework/history/PlayHistoryManager$PlayHistoryEntry;->getVideoName()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 1031
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Lcom/miui/videoplayer/framework/history/PlayHistoryManager$PlayHistoryEntry;->getVideoName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1046
    .end local v1           #entry:Lcom/miui/videoplayer/framework/history/PlayHistoryManager$PlayHistoryEntry;
    :cond_0
    return-object v4
.end method

.method private init(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 212
    new-instance v0, Lcom/miui/videoplayer/framework/views/OriginMediaControllerV5;

    invoke-direct {v0, p1}, Lcom/miui/videoplayer/framework/views/OriginMediaControllerV5;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->mMediaController:Lcom/miui/videoplayer/framework/views/OriginMediaController;

    .line 217
    iget-object v0, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->mMediaController:Lcom/miui/videoplayer/framework/views/OriginMediaController;

    invoke-virtual {v0, p0}, Lcom/miui/videoplayer/framework/views/OriginMediaController;->setAnchorView(Landroid/view/View;)V

    .line 218
    return-void
.end method

.method private loadSettings()V
    .locals 5

    .prologue
    .line 267
    iget-object v3, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->mActivity:Landroid/app/Activity;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 268
    .local v2, sp:Landroid/content/SharedPreferences;
    const-string v3, "shared_pereference_key_last_brightness"

    const/high16 v4, -0x4080

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v0

    .line 269
    .local v0, activityBrightness:F
    const/4 v3, 0x0

    cmpl-float v3, v0, v3

    if-lez v3, :cond_0

    .line 270
    const/high16 v3, 0x437f

    mul-float/2addr v3, v0

    float-to-int v1, v3

    .line 271
    .local v1, newValue:I
    iget-object v3, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->mActivity:Landroid/app/Activity;

    invoke-static {v3, v1}, Lcom/miui/videoplayer/framework/utils/AndroidUtils;->setActivityBrightness(Landroid/app/Activity;I)V

    .line 273
    .end local v1           #newValue:I
    :cond_0
    return-void
.end method

.method private onBufferUpdatingCalled(I)V
    .locals 3
    .parameter "percent"

    .prologue
    .line 1344
    const-string v0, "on buffered updating: "

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1345
    return-void
.end method

.method private onCompletionCalled()V
    .locals 3

    .prologue
    .line 1162
    sget-object v0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mLocalMediaPlayer: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->mLocalMediaPlayer:Lcom/miui/videoplayer/framework/ui/LocalMediaPlayerControl;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1163
    iget-object v0, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->mLocalMediaPlayer:Lcom/miui/videoplayer/framework/ui/LocalMediaPlayerControl;

    if-eqz v0, :cond_0

    .line 1164
    iget-object v0, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->mLocalMediaPlayer:Lcom/miui/videoplayer/framework/ui/LocalMediaPlayerControl;

    invoke-interface {v0}, Lcom/miui/videoplayer/framework/ui/LocalMediaPlayerControl;->getCurrentPosition()I

    move-result v0

    iget-object v1, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->mLocalMediaPlayer:Lcom/miui/videoplayer/framework/ui/LocalMediaPlayerControl;

    invoke-interface {v1}, Lcom/miui/videoplayer/framework/ui/LocalMediaPlayerControl;->getDuration()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->savePlayHistory(II)V

    .line 1166
    :cond_0
    iget-object v0, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->mUris:[Ljava/lang/String;

    array-length v0, v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    .line 1167
    iget-object v0, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1168
    invoke-static {}, Lcom/miui/videoplayer/framework/popup/PopupWindowManager;->getInstance()Lcom/miui/videoplayer/framework/popup/PopupWindowManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/videoplayer/framework/popup/PopupWindowManager;->dimissAllManagedPopupWindow()V

    .line 1169
    iget-object v0, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->mMediaController:Lcom/miui/videoplayer/framework/views/OriginMediaController;

    if-eqz v0, :cond_1

    .line 1170
    iget-object v0, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->mMediaController:Lcom/miui/videoplayer/framework/views/OriginMediaController;

    invoke-virtual {v0}, Lcom/miui/videoplayer/framework/views/OriginMediaController;->hide()V

    .line 1172
    :cond_1
    iget-object v0, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 1179
    :cond_2
    :goto_0
    return-void

    .line 1175
    :cond_3
    iget-object v0, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->mMediaController:Lcom/miui/videoplayer/framework/views/OriginMediaController;

    if-eqz v0, :cond_2

    .line 1176
    iget-object v0, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->mMediaController:Lcom/miui/videoplayer/framework/views/OriginMediaController;

    invoke-virtual {v0}, Lcom/miui/videoplayer/framework/views/OriginMediaController;->playNextMedia()V

    goto :goto_0
.end method

.method private onErrorCalled(II)V
    .locals 2
    .parameter "what"
    .parameter "extra"

    .prologue
    .line 1412
    sget-object v0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->TAG:Ljava/lang/String;

    const-string v1, "On error called!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1413
    invoke-direct {p0}, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->hideLoadingView()V

    .line 1415
    invoke-direct {p0, p1}, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->showErrorDialog(I)V

    .line 1416
    return-void
.end method

.method private onPreparedCalled()V
    .locals 9

    .prologue
    const/4 v4, 0x1

    const/4 v0, 0x0

    .line 1056
    sget-object v5, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->TAG:Ljava/lang/String;

    const-string v6, "mediaplayer  onPrepared"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1057
    invoke-direct {p0}, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->removeSeekToMessage()V

    .line 1058
    iget-object v5, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->mLocalMediaPlayer:Lcom/miui/videoplayer/framework/ui/LocalMediaPlayerControl;

    invoke-interface {v5}, Lcom/miui/videoplayer/framework/ui/LocalMediaPlayerControl;->pause()V

    .line 1059
    invoke-virtual {p0}, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->loadAndSavePlayHistory()V

    .line 1061
    iget-object v5, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v5, v0}, Landroid/app/Activity;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1062
    .local v1, sp:Landroid/content/SharedPreferences;
    const-string v5, "shared_pereference_key_orientation_sensor"

    invoke-interface {v1, v5, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    if-nez v5, :cond_0

    move v0, v4

    .line 1063
    .local v0, isFixedOrientation:Z
    :cond_0
    if-eqz v0, :cond_1

    iget-object v5, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->mVideoSizeAdjustable:Lcom/miui/videoplayer/framework/ui/LocalVideoPlaySizeAdjustable;

    if-eqz v5, :cond_1

    .line 1064
    iget-object v5, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->mVideoSizeAdjustable:Lcom/miui/videoplayer/framework/ui/LocalVideoPlaySizeAdjustable;

    invoke-interface {v5}, Lcom/miui/videoplayer/framework/ui/LocalVideoPlaySizeAdjustable;->getVideoWidth()I

    move-result v3

    .line 1065
    .local v3, videoWidth:I
    iget-object v5, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->mVideoSizeAdjustable:Lcom/miui/videoplayer/framework/ui/LocalVideoPlaySizeAdjustable;

    invoke-interface {v5}, Lcom/miui/videoplayer/framework/ui/LocalVideoPlaySizeAdjustable;->getVideoHeight()I

    move-result v2

    .line 1068
    .local v2, videoHeight:I
    if-ge v3, v2, :cond_3

    .line 1069
    iget-object v5, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->mActivity:Landroid/app/Activity;

    const/4 v6, 0x7

    invoke-virtual {v5, v6}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 1074
    .end local v2           #videoHeight:I
    .end local v3           #videoWidth:I
    :cond_1
    :goto_0
    iget-object v5, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->mActivity:Landroid/app/Activity;

    invoke-static {v5}, Lcom/miui/videoplayer/framework/popup/MediaInfoPopupWindow;->getInstance(Landroid/content/Context;)Lcom/miui/videoplayer/framework/popup/MediaInfoPopupWindow;

    move-result-object v5

    invoke-virtual {v5}, Lcom/miui/videoplayer/framework/popup/MediaInfoPopupWindow;->isShowing()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1075
    iget-object v5, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->mActivity:Landroid/app/Activity;

    invoke-static {v5}, Lcom/miui/videoplayer/framework/popup/MediaInfoPopupWindow;->getInstance(Landroid/content/Context;)Lcom/miui/videoplayer/framework/popup/MediaInfoPopupWindow;

    move-result-object v5

    iget-object v6, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->mLocalMediaPlayer:Lcom/miui/videoplayer/framework/ui/LocalMediaPlayerControl;

    invoke-interface {v6}, Lcom/miui/videoplayer/framework/ui/LocalMediaPlayerControl;->getMediaInfo()Lcom/duokan/MediaPlayer$MediaInfo;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/miui/videoplayer/framework/popup/MediaInfoPopupWindow;->updateValues(Lcom/duokan/MediaPlayer$MediaInfo;)V

    .line 1077
    :cond_2
    iget-object v5, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->mActivity:Landroid/app/Activity;

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->isFinishing()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1092
    :goto_1
    return-void

    .line 1071
    .restart local v2       #videoHeight:I
    .restart local v3       #videoWidth:I
    :cond_3
    iget-object v5, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->mActivity:Landroid/app/Activity;

    const/4 v6, 0x6

    invoke-virtual {v5, v6}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto :goto_0

    .line 1080
    .end local v2           #videoHeight:I
    .end local v3           #videoWidth:I
    :cond_4
    invoke-direct {p0}, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->hideLoadingView()V

    .line 1081
    iget-object v5, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->mMediaController:Lcom/miui/videoplayer/framework/views/OriginMediaController;

    if-eqz v5, :cond_5

    .line 1082
    iget-object v5, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->mMediaController:Lcom/miui/videoplayer/framework/views/OriginMediaController;

    invoke-virtual {v5}, Lcom/miui/videoplayer/framework/views/OriginMediaController;->show()V

    .line 1083
    iget-object v5, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->mMediaController:Lcom/miui/videoplayer/framework/views/OriginMediaController;

    invoke-virtual {v5, v4}, Lcom/miui/videoplayer/framework/views/OriginMediaController;->updatePlayingState(Z)V

    .line 1085
    :cond_5
    iget-object v5, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->mOptionSubMenuPopupWindow:Lcom/miui/videoplayer/framework/popup/OptionSubMenuPopupWindow;

    if-eqz v5, :cond_6

    .line 1086
    iget-object v5, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->mOptionSubMenuPopupWindow:Lcom/miui/videoplayer/framework/popup/OptionSubMenuPopupWindow;

    invoke-virtual {v5}, Lcom/miui/videoplayer/framework/popup/OptionSubMenuPopupWindow;->updateVideoPlayerSize()V

    .line 1088
    :cond_6
    iget-object v5, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->mHandler:Landroid/os/Handler;

    const/4 v6, 0x5

    const-wide/16 v7, 0xc8

    invoke-virtual {v5, v6, v7, v8}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1089
    iput-boolean v4, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->mPrepared:Z

    .line 1090
    invoke-direct {p0}, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->resetPlayInfo()V

    .line 1091
    invoke-virtual {p0}, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->bringToFront()V

    goto :goto_1
.end method

.method private onScreenOrientationChanged(I)V
    .locals 6
    .parameter "orientation"

    .prologue
    const/4 v2, 0x0

    const/4 v5, 0x0

    const/4 v0, 0x1

    .line 1210
    if-eq p1, v0, :cond_0

    const/4 v3, 0x2

    if-ne p1, v3, :cond_6

    .line 1211
    :cond_0
    if-ne p1, v0, :cond_7

    .line 1212
    sget-object v3, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->TAG:Ljava/lang/String;

    const-string v4, "Orientation changed to PORTRAIT "

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1216
    :goto_0
    iget-object v3, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->mMediaController:Lcom/miui/videoplayer/framework/views/OriginMediaController;

    invoke-virtual {v3}, Lcom/miui/videoplayer/framework/views/OriginMediaController;->getAirKanButton()Landroid/widget/ImageView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ImageView;->getVisibility()I

    move-result v1

    .line 1217
    .local v1, visiblity:I
    iget-object v3, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->mMediaController:Lcom/miui/videoplayer/framework/views/OriginMediaController;

    invoke-virtual {v3, p0}, Lcom/miui/videoplayer/framework/views/OriginMediaController;->setAnchorView(Landroid/view/View;)V

    .line 1218
    iget-object v3, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->mMediaController:Lcom/miui/videoplayer/framework/views/OriginMediaController;

    invoke-virtual {v3, p1}, Lcom/miui/videoplayer/framework/views/OriginMediaController;->onScreenOrientationChanged(I)V

    .line 1219
    iget-object v3, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->mMediaController:Lcom/miui/videoplayer/framework/views/OriginMediaController;

    invoke-virtual {v3}, Lcom/miui/videoplayer/framework/views/OriginMediaController;->getAirKanButton()Landroid/widget/ImageView;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1221
    iget-object v3, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->mAirkanManager:Lcom/miui/videoplayer/framework/airkan/AirkanManager;

    invoke-virtual {v3}, Lcom/miui/videoplayer/framework/airkan/AirkanManager;->isPlayingInLocal()Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->mAirkanBackgroundView:Landroid/view/View;

    if-eqz v3, :cond_1

    .line 1222
    iget-object v3, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->mAirkanBackgroundView:Landroid/view/View;

    invoke-virtual {p0, v3}, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->removeView(Landroid/view/View;)V

    .line 1223
    iput-object v5, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->mAirkanBackgroundView:Landroid/view/View;

    .line 1224
    invoke-direct {p0}, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->inflateAirkanBackgroundView()Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->mAirkanBackgroundView:Landroid/view/View;

    .line 1225
    invoke-direct {p0}, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->updateAirkanDeviceName()V

    .line 1226
    iget-object v3, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->mAirkanBackgroundView:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1229
    :cond_1
    invoke-direct {p0}, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->updateAdjustPositionStep()V

    .line 1231
    iget-object v3, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->mBrightnessPopupWindow:Lcom/miui/videoplayer/framework/popup/BrightnessPopupWindow;

    if-eqz v3, :cond_8

    iget-object v3, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->mBrightnessPopupWindow:Lcom/miui/videoplayer/framework/popup/BrightnessPopupWindow;

    invoke-virtual {v3}, Lcom/miui/videoplayer/framework/popup/BrightnessPopupWindow;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 1232
    .local v0, isShowingBrightness:Z
    :goto_1
    if-eqz v0, :cond_2

    .line 1233
    iget-object v2, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->mBrightnessPopupWindow:Lcom/miui/videoplayer/framework/popup/BrightnessPopupWindow;

    invoke-virtual {v2}, Lcom/miui/videoplayer/framework/popup/BrightnessPopupWindow;->dismiss()V

    .line 1235
    :cond_2
    iput-object v5, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->mBrightnessPopupWindow:Lcom/miui/videoplayer/framework/popup/BrightnessPopupWindow;

    .line 1237
    iget-object v2, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->mVolumePopupWindow:Lcom/miui/videoplayer/framework/popup/VolumePopupWindow;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->mVolumePopupWindow:Lcom/miui/videoplayer/framework/popup/VolumePopupWindow;

    invoke-virtual {v2}, Lcom/miui/videoplayer/framework/popup/VolumePopupWindow;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1238
    iget-object v2, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->mVolumePopupWindow:Lcom/miui/videoplayer/framework/popup/VolumePopupWindow;

    invoke-virtual {v2}, Lcom/miui/videoplayer/framework/popup/VolumePopupWindow;->dismiss()V

    .line 1240
    :cond_3
    iput-object v5, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->mVolumePopupWindow:Lcom/miui/videoplayer/framework/popup/VolumePopupWindow;

    .line 1242
    iget-object v2, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->mOptionSubMenuPopupWindow:Lcom/miui/videoplayer/framework/popup/OptionSubMenuPopupWindow;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->mOptionSubMenuPopupWindow:Lcom/miui/videoplayer/framework/popup/OptionSubMenuPopupWindow;

    invoke-virtual {v2}, Lcom/miui/videoplayer/framework/popup/OptionSubMenuPopupWindow;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1243
    iget-object v2, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->mOptionSubMenuPopupWindow:Lcom/miui/videoplayer/framework/popup/OptionSubMenuPopupWindow;

    invoke-virtual {v2}, Lcom/miui/videoplayer/framework/popup/OptionSubMenuPopupWindow;->dismiss()V

    .line 1244
    iget-object v2, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->mOptionSubMenuPopupWindow:Lcom/miui/videoplayer/framework/popup/OptionSubMenuPopupWindow;

    invoke-virtual {v2, p0}, Lcom/miui/videoplayer/framework/popup/OptionSubMenuPopupWindow;->show(Landroid/view/View;)V

    .line 1247
    :cond_4
    iget-object v2, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->mOptionSubMenuPopupWindow:Lcom/miui/videoplayer/framework/popup/OptionSubMenuPopupWindow;

    if-eqz v2, :cond_5

    .line 1248
    iget-object v2, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->mOptionSubMenuPopupWindow:Lcom/miui/videoplayer/framework/popup/OptionSubMenuPopupWindow;

    invoke-virtual {v2}, Lcom/miui/videoplayer/framework/popup/OptionSubMenuPopupWindow;->updateVideoPlayerSize()V

    .line 1251
    :cond_5
    iget-object v2, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->mOptionMenuPopupWindow:Lcom/miui/videoplayer/framework/popup/OptionMenuPopupWindow;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->mOptionMenuPopupWindow:Lcom/miui/videoplayer/framework/popup/OptionMenuPopupWindow;

    invoke-virtual {v2}, Lcom/miui/videoplayer/framework/popup/OptionMenuPopupWindow;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1252
    iget-object v2, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->mOptionMenuPopupWindow:Lcom/miui/videoplayer/framework/popup/OptionMenuPopupWindow;

    invoke-virtual {v2}, Lcom/miui/videoplayer/framework/popup/OptionMenuPopupWindow;->dismiss()V

    .line 1253
    iget-object v2, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->mOptionMenuPopupWindow:Lcom/miui/videoplayer/framework/popup/OptionMenuPopupWindow;

    invoke-virtual {v2, p0}, Lcom/miui/videoplayer/framework/popup/OptionMenuPopupWindow;->show(Landroid/view/View;)V

    .line 1257
    .end local v0           #isShowingBrightness:Z
    .end local v1           #visiblity:I
    :cond_6
    return-void

    .line 1214
    :cond_7
    sget-object v3, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->TAG:Ljava/lang/String;

    const-string v4, "Orientation changed to LANDSCAPE "

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .restart local v1       #visiblity:I
    :cond_8
    move v0, v2

    .line 1231
    goto :goto_1
.end method

.method private removeSeekToMessage()V
    .locals 2

    .prologue
    .line 1102
    iget-object v0, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1103
    iget-object v0, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->mContinuePlayToast:Landroid/widget/Toast;

    if-eqz v0, :cond_0

    .line 1104
    iget-object v0, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->mContinuePlayToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    .line 1106
    :cond_0
    return-void
.end method

.method private resetPlayInfo()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1095
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->mStartPlayingTimeStamp:J

    .line 1096
    iput v2, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->mBufferTimes:I

    .line 1097
    iput v2, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->mTotalPausedTime:I

    .line 1098
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->mTotalBufferedTime:J

    .line 1099
    return-void
.end method

.method private savePlayHistory(II)V
    .locals 10
    .parameter "position"
    .parameter "duration"

    .prologue
    .line 803
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->mStartPlayingTimeStamp:J

    sub-long v7, v0, v2

    .line 804
    .local v7, totalTime:J
    iget-object v0, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->mLocalMediaPlayer:Lcom/miui/videoplayer/framework/ui/LocalMediaPlayerControl;

    invoke-interface {v0}, Lcom/miui/videoplayer/framework/ui/LocalMediaPlayerControl;->getPausedTotalTime()J

    move-result-wide v0

    sub-long v0, v7, v0

    iget-wide v2, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->mTotalBufferedTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    div-long v4, v0, v2

    .line 805
    .local v4, playingTime:J
    invoke-static {}, Lcom/miui/videoplayer/framework/utils/DKTimeFormatter;->getInstance()Lcom/miui/videoplayer/framework/utils/DKTimeFormatter;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/miui/videoplayer/framework/utils/DKTimeFormatter;->longToDayDate(J)Ljava/lang/String;

    move-result-object v6

    .line 807
    .local v6, dayDate:Ljava/lang/String;
    new-instance v9, Ljava/lang/Thread;

    new-instance v0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController$2;

    move-object v1, p0

    move v2, p1

    move v3, p2

    invoke-direct/range {v0 .. v6}, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController$2;-><init>(Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;IIJLjava/lang/String;)V

    invoke-direct {v9, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v9}, Ljava/lang/Thread;->start()V

    .line 833
    return-void
.end method

.method private savePlayInfoFile(JLjava/lang/String;Lcom/miui/videoplayer/framework/history/PlayHistoryManager$PlayHistoryEntry;)V
    .locals 6
    .parameter "playingTime"
    .parameter "dayDate"
    .parameter "historyEntry"

    .prologue
    .line 836
    if-nez p4, :cond_0

    .line 857
    :goto_0
    return-void

    .line 839
    :cond_0
    new-instance v3, Lcom/miui/videoplayer/framework/history/PlayHistoryManager;

    iget-object v4, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->mActivity:Landroid/app/Activity;

    const-string v5, "play_info.xml"

    invoke-direct {v3, v4, v5}, Lcom/miui/videoplayer/framework/history/PlayHistoryManager;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 840
    .local v3, playInfoManager:Lcom/miui/videoplayer/framework/history/PlayHistoryManager;
    invoke-virtual {v3}, Lcom/miui/videoplayer/framework/history/PlayHistoryManager;->load()V

    .line 841
    iget-object v4, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->mUri:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Lcom/miui/videoplayer/framework/history/PlayHistoryManager;->findPlayHistory(Landroid/net/Uri;)Lcom/miui/videoplayer/framework/history/PlayHistoryManager$PlayHistoryEntry;

    move-result-object v2

    .line 842
    .local v2, oldEntry:Lcom/miui/videoplayer/framework/history/PlayHistoryManager$PlayHistoryEntry;
    if-nez v2, :cond_1

    .line 843
    new-instance v2, Lcom/miui/videoplayer/framework/history/PlayHistoryManager$PlayHistoryEntry;

    .end local v2           #oldEntry:Lcom/miui/videoplayer/framework/history/PlayHistoryManager$PlayHistoryEntry;
    iget-object v4, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->mUri:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Lcom/miui/videoplayer/framework/history/PlayHistoryManager$PlayHistoryEntry;-><init>(Ljava/lang/String;)V

    .line 844
    .restart local v2       #oldEntry:Lcom/miui/videoplayer/framework/history/PlayHistoryManager$PlayHistoryEntry;
    invoke-virtual {v3, v2}, Lcom/miui/videoplayer/framework/history/PlayHistoryManager;->addToHistory(Lcom/miui/videoplayer/framework/history/PlayHistoryManager$PlayHistoryEntry;)V

    .line 846
    :cond_1
    invoke-virtual {p4}, Lcom/miui/videoplayer/framework/history/PlayHistoryManager$PlayHistoryEntry;->getMediaId()Ljava/lang/String;

    move-result-object v1

    .line 847
    .local v1, mediaId:Ljava/lang/String;
    invoke-virtual {p4}, Lcom/miui/videoplayer/framework/history/PlayHistoryManager$PlayHistoryEntry;->getMediaCi()Ljava/lang/String;

    move-result-object v0

    .line 848
    .local v0, mediaCi:Ljava/lang/String;
    if-eqz v1, :cond_2

    .line 849
    invoke-virtual {v2, v1}, Lcom/miui/videoplayer/framework/history/PlayHistoryManager$PlayHistoryEntry;->setMediaId(Ljava/lang/String;)V

    .line 851
    :cond_2
    if-eqz v0, :cond_3

    .line 852
    invoke-virtual {v2, v0}, Lcom/miui/videoplayer/framework/history/PlayHistoryManager$PlayHistoryEntry;->setMediaCi(Ljava/lang/String;)V

    .line 854
    :cond_3
    invoke-direct {p0, p1, p2, p3, v2}, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->updatePlayTimeInfoJSONObject(JLjava/lang/String;Lcom/miui/videoplayer/framework/history/PlayHistoryManager$PlayHistoryEntry;)V

    .line 856
    invoke-virtual {v3}, Lcom/miui/videoplayer/framework/history/PlayHistoryManager;->save()V

    goto :goto_0
.end method

.method private saveSettings()V
    .locals 5

    .prologue
    .line 276
    iget-object v3, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->mActivity:Landroid/app/Activity;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 277
    .local v2, sp:Landroid/content/SharedPreferences;
    iget-object v3, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->mActivity:Landroid/app/Activity;

    invoke-static {v3}, Lcom/miui/videoplayer/framework/utils/AndroidUtils;->getActivityBrightness(Landroid/app/Activity;)F

    move-result v0

    .line 278
    .local v0, activityBrightness:F
    const/4 v3, 0x0

    cmpl-float v3, v0, v3

    if-lez v3, :cond_0

    .line 279
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 280
    .local v1, editor:Landroid/content/SharedPreferences$Editor;
    const-string v3, "shared_pereference_key_last_brightness"

    invoke-interface {v1, v3, v0}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 281
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 283
    .end local v1           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_0
    return-void
.end method

.method private setupWindows(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v0, 0x1

    .line 190
    invoke-virtual {p0, v0}, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->setFocusable(Z)V

    .line 191
    invoke-virtual {p0, v0}, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->setFocusableInTouchMode(Z)V

    .line 192
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060001

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->setBackgroundColor(I)V

    .line 195
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 197
    invoke-static {p1}, Lcom/miui/videoplayer/framework/utils/DisplayInformationFetcher;->getInstance(Landroid/content/Context;)Lcom/miui/videoplayer/framework/utils/DisplayInformationFetcher;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->mDisplayInformationFetcher:Lcom/miui/videoplayer/framework/utils/DisplayInformationFetcher;

    .line 198
    iget-object v0, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->mDisplayInformationFetcher:Lcom/miui/videoplayer/framework/utils/DisplayInformationFetcher;

    invoke-virtual {v0}, Lcom/miui/videoplayer/framework/utils/DisplayInformationFetcher;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    .line 199
    invoke-direct {p0}, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->updateAdjustPositionStep()V

    .line 201
    iget-object v0, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    div-int/lit8 v0, v0, 0xa

    int-to-float v0, v0

    iget-object v1, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->mTriggerAdjustPositionTolerance:F

    .line 202
    invoke-virtual {p0}, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->requestFocus()Z

    .line 203
    return-void
.end method

.method private showBrightnessPopupWindow()V
    .locals 4

    .prologue
    .line 416
    iget-object v1, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->mBrightnessPopupWindow:Lcom/miui/videoplayer/framework/popup/BrightnessPopupWindow;

    if-nez v1, :cond_0

    .line 417
    new-instance v1, Lcom/miui/videoplayer/framework/popup/BrightnessPopupWindow;

    iget-object v2, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->mActivity:Landroid/app/Activity;

    invoke-direct {v1, v2}, Lcom/miui/videoplayer/framework/popup/BrightnessPopupWindow;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->mBrightnessPopupWindow:Lcom/miui/videoplayer/framework/popup/BrightnessPopupWindow;

    .line 419
    new-instance v1, Lcom/miui/videoplayer/framework/popup/BrightnessPopupWindow;

    iget-object v2, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->mActivity:Landroid/app/Activity;

    const v3, 0x7f030018

    invoke-direct {v1, v2, v3}, Lcom/miui/videoplayer/framework/popup/BrightnessPopupWindow;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->mBrightnessPopupWindow:Lcom/miui/videoplayer/framework/popup/BrightnessPopupWindow;

    .line 422
    :cond_0
    iget-object v1, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->mActivity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/miui/videoplayer/framework/utils/AndroidUtils;->getActivityBrightness(Landroid/app/Activity;)F

    move-result v1

    const/high16 v2, 0x437f

    mul-float/2addr v1, v2

    float-to-int v0, v1

    .line 423
    .local v0, currentValue:I
    if-gez v0, :cond_1

    .line 424
    iget-object v1, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->mActivity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/miui/videoplayer/framework/utils/AndroidUtils;->getSystemBrightness(Landroid/content/Context;)I

    move-result v0

    .line 428
    :cond_1
    iget-object v1, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->mBrightnessPopupWindow:Lcom/miui/videoplayer/framework/popup/BrightnessPopupWindow;

    div-int/lit8 v2, v0, 0x11

    invoke-virtual {v1, v2}, Lcom/miui/videoplayer/framework/popup/BrightnessPopupWindow;->updateSeekbarValue(I)V

    .line 429
    iget-object v1, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->mBrightnessPopupWindow:Lcom/miui/videoplayer/framework/popup/BrightnessPopupWindow;

    invoke-virtual {v1}, Lcom/miui/videoplayer/framework/popup/BrightnessPopupWindow;->isShowing()Z

    move-result v1

    if-nez v1, :cond_2

    .line 430
    iget-object v1, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->mBrightnessPopupWindow:Lcom/miui/videoplayer/framework/popup/BrightnessPopupWindow;

    iget-object v2, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1, p0, v2}, Lcom/miui/videoplayer/framework/popup/BrightnessPopupWindow;->show(Landroid/view/View;Landroid/content/Context;)V

    .line 431
    iget-object v1, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->mBrightnessPopupWindow:Lcom/miui/videoplayer/framework/popup/BrightnessPopupWindow;

    invoke-virtual {v1}, Lcom/miui/videoplayer/framework/popup/BrightnessPopupWindow;->getSeekbar()Landroid/widget/SeekBar;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setPressed(Z)V

    .line 433
    :cond_2
    return-void
.end method

.method private showErrorDialog(I)V
    .locals 5
    .parameter "what"

    .prologue
    .line 1420
    const/16 v1, 0xc8

    if-ne p1, v1, :cond_1

    .line 1421
    const v0, 0x7f050002

    .line 1425
    .local v0, messageId:I
    :goto_0
    iget-object v1, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->mUri:Landroid/net/Uri;

    invoke-static {v1}, Lcom/miui/videoplayer/framework/utils/AndroidUtils;->isOnlineVideo(Landroid/net/Uri;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->mActivity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/miui/videoplayer/framework/utils/AndroidUtils;->isNetworkConncected(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1426
    const v0, 0x7f05002b

    .line 1429
    :cond_0
    iget-object v1, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x4

    const-wide/16 v3, 0x1388

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1430
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->mActivity:Landroid/app/Activity;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f050004

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f050005

    new-instance v3, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController$5;

    invoke-direct {v3, p0}, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController$5;-><init>(Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->mAlertDialog:Landroid/app/AlertDialog;

    .line 1445
    return-void

    .line 1423
    .end local v0           #messageId:I
    :cond_1
    const v0, 0x7f050003

    .restart local v0       #messageId:I
    goto :goto_0
.end method

.method private showLoadingView()V
    .locals 3

    .prologue
    .line 1376
    iget-object v0, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->mLoadingBackgroundView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 1378
    invoke-direct {p0}, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->inflateLoadingBackgroundViewV5()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->mLoadingBackgroundView:Landroid/view/View;

    .line 1383
    :cond_0
    sget-object v0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "show loading view: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->mLoadingBackgroundView:Landroid/view/View;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1384
    iget-object v0, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->mLoadingBackgroundView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1385
    iget-object v0, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->mMediaController:Lcom/miui/videoplayer/framework/views/OriginMediaController;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->mMediaController:Lcom/miui/videoplayer/framework/views/OriginMediaController;

    invoke-virtual {v0}, Lcom/miui/videoplayer/framework/views/OriginMediaController;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1386
    iget-object v0, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->mMediaController:Lcom/miui/videoplayer/framework/views/OriginMediaController;

    invoke-virtual {v0}, Lcom/miui/videoplayer/framework/views/OriginMediaController;->hide()V

    .line 1388
    :cond_1
    iget-object v0, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->mLoadingBackgroundView:Landroid/view/View;

    new-instance v1, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController$4;

    invoke-direct {v1, p0}, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController$4;-><init>(Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1395
    return-void
.end method

.method private showVolumePopupWindow()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    .line 436
    iget-object v2, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->mVolumePopupWindow:Lcom/miui/videoplayer/framework/popup/VolumePopupWindow;

    if-nez v2, :cond_0

    .line 437
    new-instance v2, Lcom/miui/videoplayer/framework/popup/VolumePopupWindow;

    iget-object v3, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->mActivity:Landroid/app/Activity;

    invoke-direct {v2, v3}, Lcom/miui/videoplayer/framework/popup/VolumePopupWindow;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->mVolumePopupWindow:Lcom/miui/videoplayer/framework/popup/VolumePopupWindow;

    .line 439
    new-instance v2, Lcom/miui/videoplayer/framework/popup/VolumePopupWindow;

    iget-object v3, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->mActivity:Landroid/app/Activity;

    const v4, 0x7f03001e

    invoke-direct {v2, v3, v4}, Lcom/miui/videoplayer/framework/popup/VolumePopupWindow;-><init>(Landroid/content/Context;I)V

    iput-object v2, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->mVolumePopupWindow:Lcom/miui/videoplayer/framework/popup/VolumePopupWindow;

    .line 442
    :cond_0
    iget-object v2, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->mAudioManager:Landroid/media/AudioManager;

    if-nez v2, :cond_1

    .line 443
    iget-object v2, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->mActivity:Landroid/app/Activity;

    const-string v3, "audio"

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioManager;

    iput-object v2, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->mAudioManager:Landroid/media/AudioManager;

    .line 446
    :cond_1
    iget-object v2, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2, v5}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v1

    .line 447
    .local v1, maxVolume:I
    iget-object v2, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2, v5}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    .line 449
    .local v0, currentVolume:I
    iget-object v2, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->mVolumePopupWindow:Lcom/miui/videoplayer/framework/popup/VolumePopupWindow;

    invoke-virtual {v2, v1}, Lcom/miui/videoplayer/framework/popup/VolumePopupWindow;->setMaxSeekbarValue(I)V

    .line 450
    iget-object v2, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->mVolumePopupWindow:Lcom/miui/videoplayer/framework/popup/VolumePopupWindow;

    invoke-virtual {v2, v0}, Lcom/miui/videoplayer/framework/popup/VolumePopupWindow;->updateSeekbarValue(I)V

    .line 451
    iget-object v2, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->mVolumePopupWindow:Lcom/miui/videoplayer/framework/popup/VolumePopupWindow;

    invoke-virtual {v2}, Lcom/miui/videoplayer/framework/popup/VolumePopupWindow;->isShowing()Z

    move-result v2

    if-nez v2, :cond_2

    .line 452
    iget-object v2, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->mVolumePopupWindow:Lcom/miui/videoplayer/framework/popup/VolumePopupWindow;

    iget-object v3, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2, p0, v3}, Lcom/miui/videoplayer/framework/popup/VolumePopupWindow;->show(Landroid/view/View;Landroid/content/Context;)V

    .line 453
    iget-object v2, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->mVolumePopupWindow:Lcom/miui/videoplayer/framework/popup/VolumePopupWindow;

    invoke-virtual {v2}, Lcom/miui/videoplayer/framework/popup/VolumePopupWindow;->getSeekbar()Landroid/widget/SeekBar;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/SeekBar;->setPressed(Z)V

    .line 455
    :cond_2
    return-void
.end method

.method private toggleMediaControlsVisiblity()V
    .locals 1

    .prologue
    .line 699
    iget-object v0, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 708
    :goto_0
    return-void

    .line 702
    :cond_0
    invoke-virtual {p0}, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->bringToFront()V

    .line 703
    iget-object v0, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->mMediaController:Lcom/miui/videoplayer/framework/views/OriginMediaController;

    invoke-virtual {v0}, Lcom/miui/videoplayer/framework/views/OriginMediaController;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 704
    iget-object v0, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->mMediaController:Lcom/miui/videoplayer/framework/views/OriginMediaController;

    invoke-virtual {v0}, Lcom/miui/videoplayer/framework/views/OriginMediaController;->hide()V

    goto :goto_0

    .line 706
    :cond_1
    iget-object v0, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->mMediaController:Lcom/miui/videoplayer/framework/views/OriginMediaController;

    invoke-virtual {v0}, Lcom/miui/videoplayer/framework/views/OriginMediaController;->show()V

    goto :goto_0
.end method

.method private touchMove(FF)V
    .locals 7
    .parameter "x"
    .parameter "y"

    .prologue
    const/high16 v6, 0x41a0

    const/4 v5, 0x1

    .line 316
    iget v4, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->mX:F

    sub-float v0, p1, v4

    .line 317
    .local v0, distanceX:F
    iget v4, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->mY:F

    sub-float v1, p2, v4

    .line 318
    .local v1, distanceY:F
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v2

    .line 319
    .local v2, dx:F
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v3

    .line 321
    .local v3, dy:F
    iget v4, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->mTriggerAdjustPositionTolerance:F

    cmpl-float v4, v2, v4

    if-ltz v4, :cond_0

    cmpg-float v4, v3, v6

    if-gtz v4, :cond_0

    iget-boolean v4, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->mTriggerAdjustPosition:Z

    if-nez v4, :cond_0

    .line 322
    iput-boolean v5, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->mTriggerAdjustPosition:Z

    .line 324
    :cond_0
    iget-boolean v4, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->mTriggerAdjustPosition:Z

    if-eqz v4, :cond_3

    iget v4, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->mAdjustPositionStep:F

    cmpl-float v4, v2, v4

    if-ltz v4, :cond_3

    cmpg-float v4, v3, v6

    if-gez v4, :cond_3

    .line 325
    iget-object v4, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->mAirkanManager:Lcom/miui/videoplayer/framework/airkan/AirkanManager;

    invoke-virtual {v4}, Lcom/miui/videoplayer/framework/airkan/AirkanManager;->isPlayingInLocal()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 326
    iput-boolean v5, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->movedPosition:Z

    .line 327
    iget-object v4, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->mLocalMediaPlayer:Lcom/miui/videoplayer/framework/ui/LocalMediaPlayerControl;

    invoke-interface {v4}, Lcom/miui/videoplayer/framework/ui/LocalMediaPlayerControl;->isPlaying()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 328
    iget-object v4, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->mLocalMediaPlayer:Lcom/miui/videoplayer/framework/ui/LocalMediaPlayerControl;

    invoke-interface {v4}, Lcom/miui/videoplayer/framework/ui/LocalMediaPlayerControl;->pause()V

    .line 330
    :cond_1
    invoke-direct {p0, v0}, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->adjustPlayPosition(F)V

    .line 335
    :cond_2
    :goto_0
    iput-boolean v5, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->moved:Z

    .line 336
    iput p1, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->mX:F

    .line 337
    iput p2, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->mY:F

    .line 340
    :cond_3
    iget-boolean v4, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->downLeftRegion:Z

    if-eqz v4, :cond_5

    cmpg-float v4, v2, v6

    if-gtz v4, :cond_5

    cmpl-float v4, v3, v6

    if-ltz v4, :cond_5

    .line 341
    iget-object v4, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->mAirkanManager:Lcom/miui/videoplayer/framework/airkan/AirkanManager;

    invoke-virtual {v4}, Lcom/miui/videoplayer/framework/airkan/AirkanManager;->isPlayingInLocal()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 342
    invoke-direct {p0, v1}, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->adjustBrightness(F)V

    .line 343
    iput-boolean v5, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->movedBrightness:Z

    .line 345
    :cond_4
    iput-boolean v5, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->moved:Z

    .line 346
    iput p1, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->mX:F

    .line 347
    iput p2, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->mY:F

    .line 350
    :cond_5
    iget-boolean v4, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->downRightRegion:Z

    if-eqz v4, :cond_7

    cmpg-float v4, v2, v6

    if-gtz v4, :cond_7

    cmpl-float v4, v3, v6

    if-ltz v4, :cond_7

    .line 351
    iget-object v4, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->mAirkanManager:Lcom/miui/videoplayer/framework/airkan/AirkanManager;

    invoke-virtual {v4}, Lcom/miui/videoplayer/framework/airkan/AirkanManager;->isPlayingInLocal()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 352
    invoke-direct {p0, v1}, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->adjustVolume(F)V

    .line 353
    iput-boolean v5, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->movedVolume:Z

    .line 355
    :cond_6
    iput-boolean v5, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->moved:Z

    .line 356
    iput p1, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->mX:F

    .line 357
    iput p2, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->mY:F

    .line 359
    :cond_7
    return-void

    .line 331
    :cond_8
    iget-object v4, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->isFinishing()Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->mAirkanExistDeviceInfo:Lcom/miui/videoplayer/framework/airkan/AirkanManager$AirkanExistDeviceInfo;

    if-eqz v4, :cond_2

    goto :goto_0
.end method

.method private touchStart(FF)V
    .locals 4
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v3, 0x1

    .line 303
    iget-object v1, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->mDisplayInformationFetcher:Lcom/miui/videoplayer/framework/utils/DisplayInformationFetcher;

    invoke-virtual {v1}, Lcom/miui/videoplayer/framework/utils/DisplayInformationFetcher;->getScreenWidth()I

    move-result v0

    .line 305
    .local v0, screenWidth:I
    iput p1, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->mX:F

    .line 306
    iput p2, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->mY:F

    .line 308
    iget v1, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->mX:F

    div-int/lit8 v2, v0, 0x6

    int-to-float v2, v2

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_1

    .line 309
    iput-boolean v3, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->downLeftRegion:Z

    .line 313
    :cond_0
    :goto_0
    return-void

    .line 310
    :cond_1
    iget v1, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->mX:F

    mul-int/lit8 v2, v0, 0x5

    div-int/lit8 v2, v2, 0x6

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_0

    .line 311
    iput-boolean v3, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->downRightRegion:Z

    goto :goto_0
.end method

.method private touchUp(FF)V
    .locals 2
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v1, 0x0

    .line 362
    iget-boolean v0, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->moved:Z

    if-nez v0, :cond_3

    .line 363
    iget-object v0, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->mAirkanManager:Lcom/miui/videoplayer/framework/airkan/AirkanManager;

    invoke-virtual {v0}, Lcom/miui/videoplayer/framework/airkan/AirkanManager;->isPlayingInLocal()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 364
    iget-boolean v0, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->downLeftRegion:Z

    if-eqz v0, :cond_1

    .line 365
    invoke-direct {p0}, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->showBrightnessPopupWindow()V

    .line 366
    invoke-direct {p0}, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->delayFadeOutBrightnessPopupWindows()V

    .line 409
    :cond_0
    :goto_0
    iput-boolean v1, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->moved:Z

    .line 410
    iput-boolean v1, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->downLeftRegion:Z

    .line 411
    iput-boolean v1, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->downRightRegion:Z

    .line 412
    return-void

    .line 367
    :cond_1
    iget-boolean v0, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->downRightRegion:Z

    if-eqz v0, :cond_2

    .line 368
    invoke-direct {p0}, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->showVolumePopupWindow()V

    .line 369
    invoke-direct {p0}, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->delayFadeOutVolumePopupWindow()V

    goto :goto_0

    .line 370
    :cond_2
    iget-object v0, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->mMediaController:Lcom/miui/videoplayer/framework/views/OriginMediaController;

    if-eqz v0, :cond_0

    .line 371
    invoke-direct {p0}, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->toggleMediaControlsVisiblity()V

    goto :goto_0

    .line 375
    :cond_3
    iget-boolean v0, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->movedBrightness:Z

    if-eqz v0, :cond_5

    .line 376
    iget-object v0, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->mBrightnessPopupWindow:Lcom/miui/videoplayer/framework/popup/BrightnessPopupWindow;

    if-eqz v0, :cond_4

    .line 377
    iget-object v0, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->mBrightnessPopupWindow:Lcom/miui/videoplayer/framework/popup/BrightnessPopupWindow;

    invoke-virtual {v0}, Lcom/miui/videoplayer/framework/popup/BrightnessPopupWindow;->getSeekbar()Landroid/widget/SeekBar;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setPressed(Z)V

    .line 378
    invoke-direct {p0}, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->delayFadeOutBrightnessPopupWindows()V

    .line 380
    :cond_4
    iput-boolean v1, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->movedBrightness:Z

    .line 382
    :cond_5
    iget-boolean v0, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->movedVolume:Z

    if-eqz v0, :cond_7

    .line 383
    iget-object v0, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->mVolumePopupWindow:Lcom/miui/videoplayer/framework/popup/VolumePopupWindow;

    if-eqz v0, :cond_6

    .line 384
    iget-object v0, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->mVolumePopupWindow:Lcom/miui/videoplayer/framework/popup/VolumePopupWindow;

    invoke-virtual {v0}, Lcom/miui/videoplayer/framework/popup/VolumePopupWindow;->getSeekbar()Landroid/widget/SeekBar;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setPressed(Z)V

    .line 385
    invoke-direct {p0}, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->delayFadeOutVolumePopupWindow()V

    .line 387
    :cond_6
    iput-boolean v1, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->movedVolume:Z

    .line 389
    :cond_7
    iget-boolean v0, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->movedPosition:Z

    if-eqz v0, :cond_9

    .line 390
    iget v0, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->mSwitchMediaOrientation:I

    if-nez v0, :cond_b

    .line 391
    iget-object v0, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->mLocalMediaPlayer:Lcom/miui/videoplayer/framework/ui/LocalMediaPlayerControl;

    invoke-interface {v0}, Lcom/miui/videoplayer/framework/ui/LocalMediaPlayerControl;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_8

    .line 392
    iget-object v0, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->mLocalMediaPlayer:Lcom/miui/videoplayer/framework/ui/LocalMediaPlayerControl;

    invoke-interface {v0}, Lcom/miui/videoplayer/framework/ui/LocalMediaPlayerControl;->start()V

    .line 400
    :cond_8
    :goto_1
    iput-boolean v1, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->movedPosition:Z

    .line 403
    :cond_9
    iget-boolean v0, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->mTriggerAdjustPosition:Z

    if-eqz v0, :cond_a

    .line 404
    iput-boolean v1, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->mTriggerAdjustPosition:Z

    .line 407
    :cond_a
    invoke-direct {p0}, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->dismissUnusedPopupWindows()V

    goto :goto_0

    .line 394
    :cond_b
    iget v0, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->mSwitchMediaOrientation:I

    if-lez v0, :cond_c

    .line 395
    iget-object v0, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->mMediaController:Lcom/miui/videoplayer/framework/views/OriginMediaController;

    invoke-virtual {v0}, Lcom/miui/videoplayer/framework/views/OriginMediaController;->playNextMedia()V

    goto :goto_1

    .line 396
    :cond_c
    iget v0, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->mSwitchMediaOrientation:I

    if-gez v0, :cond_8

    .line 397
    iget-object v0, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->mMediaController:Lcom/miui/videoplayer/framework/views/OriginMediaController;

    invoke-virtual {v0}, Lcom/miui/videoplayer/framework/views/OriginMediaController;->playPreviousMedia()V

    goto :goto_1
.end method

.method private updateAdjustPositionStep()V
    .locals 3

    .prologue
    .line 206
    iget-object v1, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->mDisplayInformationFetcher:Lcom/miui/videoplayer/framework/utils/DisplayInformationFetcher;

    invoke-virtual {v1}, Lcom/miui/videoplayer/framework/utils/DisplayInformationFetcher;->getScreenWidth()I

    move-result v0

    .line 207
    .local v0, screenWidth:I
    int-to-float v1, v0

    const/high16 v2, 0x42f0

    div-float/2addr v1, v2

    iput v1, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->mAdjustPositionStep:F

    .line 208
    return-void
.end method

.method private updateAirkanDeviceName()V
    .locals 5

    .prologue
    .line 982
    iget-object v3, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->mAirkanBackgroundView:Landroid/view/View;

    const v4, 0x7f09004b

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 983
    .local v2, textView:Landroid/widget/TextView;
    iget-object v3, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->mActivity:Landroid/app/Activity;

    const v4, 0x7f050021

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 984
    .local v0, playInString:Ljava/lang/String;
    iget-object v3, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->mActivity:Landroid/app/Activity;

    const v4, 0x7f050022

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 985
    .local v1, playString:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->mAirkanManager:Lcom/miui/videoplayer/framework/airkan/AirkanManager;

    invoke-virtual {v4}, Lcom/miui/videoplayer/framework/airkan/AirkanManager;->getPlayingDeviceName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 986
    return-void
.end method

.method private updatePlayTimeInfoJSONObject(JLjava/lang/String;Lcom/miui/videoplayer/framework/history/PlayHistoryManager$PlayHistoryEntry;)V
    .locals 10
    .parameter "playingTime"
    .parameter "dayDate"
    .parameter "oldEntry"

    .prologue
    .line 860
    invoke-virtual {p4}, Lcom/miui/videoplayer/framework/history/PlayHistoryManager$PlayHistoryEntry;->getDatePlayInfoJsonObject()Lorg/json/JSONObject;

    move-result-object v3

    .line 861
    .local v3, jsonObject:Lorg/json/JSONObject;
    const/4 v2, 0x0

    .line 862
    .local v2, jsonArray:Lorg/json/JSONArray;
    if-nez v3, :cond_0

    .line 863
    new-instance v3, Lorg/json/JSONObject;

    .end local v3           #jsonObject:Lorg/json/JSONObject;
    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 864
    .restart local v3       #jsonObject:Lorg/json/JSONObject;
    new-instance v2, Lorg/json/JSONArray;

    .end local v2           #jsonArray:Lorg/json/JSONArray;
    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 866
    .restart local v2       #jsonArray:Lorg/json/JSONArray;
    :try_start_0
    const-string v7, "content"

    invoke-virtual {v3, v7, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 872
    :cond_0
    :goto_0
    :try_start_1
    const-string v7, "content"

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 874
    invoke-direct {p0, p3, v2}, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->findDateItemObject(Ljava/lang/String;Lorg/json/JSONArray;)Lorg/json/JSONObject;

    move-result-object v1

    .line 875
    .local v1, itemObject:Lorg/json/JSONObject;
    if-nez v1, :cond_1

    .line 876
    new-instance v1, Lorg/json/JSONObject;

    .end local v1           #itemObject:Lorg/json/JSONObject;
    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 877
    .restart local v1       #itemObject:Lorg/json/JSONObject;
    const-string v7, "date"

    invoke-virtual {v1, v7, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 878
    const-string v7, "playingTime"

    const-wide/16 v8, 0x0

    invoke-virtual {v1, v7, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 879
    const-string v7, "bufferTime"

    const/4 v8, 0x0

    invoke-virtual {v1, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 880
    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 885
    :cond_1
    const-string v7, "playingTime"

    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v5

    .line 886
    .local v5, oldPlayingTime:J
    const-string v7, "bufferTime"

    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 891
    .local v4, oldBufferTimes:I
    const-string v7, "playingTime"

    add-long v8, p1, v5

    invoke-virtual {v1, v7, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 892
    const-string v7, "bufferTime"

    iget v8, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->mBufferTimes:I

    add-int/2addr v8, v4

    invoke-virtual {v1, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 897
    .end local v1           #itemObject:Lorg/json/JSONObject;
    .end local v4           #oldBufferTimes:I
    .end local v5           #oldPlayingTime:J
    :goto_1
    invoke-virtual {p4, v3}, Lcom/miui/videoplayer/framework/history/PlayHistoryManager$PlayHistoryEntry;->setDatePlayInfoJsonObject(Lorg/json/JSONObject;)V

    .line 898
    return-void

    .line 867
    :catch_0
    move-exception v0

    .line 868
    .local v0, e:Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 894
    .end local v0           #e:Lorg/json/JSONException;
    :catch_1
    move-exception v0

    .line 895
    .restart local v0       #e:Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1
.end method


# virtual methods
.method public bindAirkanService()V
    .locals 1

    .prologue
    .line 1526
    iget-object v0, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->mAirkanManager:Lcom/miui/videoplayer/framework/airkan/AirkanManager;

    invoke-virtual {v0}, Lcom/miui/videoplayer/framework/airkan/AirkanManager;->openDeviceManager()V

    .line 1527
    return-void
.end method

.method public checkNetwork(Landroid/net/Uri;)V
    .locals 5
    .parameter "uri"

    .prologue
    .line 1357
    if-nez p1, :cond_1

    .line 1373
    :cond_0
    :goto_0
    return-void

    .line 1360
    :cond_1
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->mPrepared:Z

    .line 1361
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    .line 1362
    .local v1, scheme:Ljava/lang/String;
    iget-object v2, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->mActivity:Landroid/app/Activity;

    invoke-static {v2}, Lcom/miui/videoplayer/framework/utils/AndroidUtils;->isNetworkConncected(Landroid/content/Context;)Z

    move-result v0

    .line 1363
    .local v0, isNetworkConnected:Z
    sget-object v2, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->TAG:Ljava/lang/String;

    const-string v3, "check network"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1364
    sget-object v2, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "scheme: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1365
    sget-object v2, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "network connected: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1366
    invoke-static {p1}, Lcom/miui/videoplayer/framework/utils/AndroidUtils;->isOnlineVideo(Landroid/net/Uri;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->mAirkanManager:Lcom/miui/videoplayer/framework/airkan/AirkanManager;

    invoke-virtual {v2}, Lcom/miui/videoplayer/framework/airkan/AirkanManager;->isPlayingInLocal()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1367
    if-eqz v0, :cond_0

    .line 1370
    invoke-direct {p0}, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->showLoadingView()V

    .line 1372
    :cond_2
    invoke-virtual {p0, p1}, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->checkValidMedia(Landroid/net/Uri;)V

    goto :goto_0
.end method

.method public checkValidMedia(Landroid/net/Uri;)V
    .locals 2
    .parameter "uri"

    .prologue
    const/4 v1, 0x0

    .line 1491
    if-nez p1, :cond_1

    .line 1500
    :cond_0
    :goto_0
    return-void

    .line 1494
    :cond_1
    invoke-static {p1}, Lcom/miui/videoplayer/framework/utils/DuoKanUtils;->isValidFormatVideo(Landroid/net/Uri;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1495
    iget-object v0, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->mLocalMediaPlayer:Lcom/miui/videoplayer/framework/ui/LocalMediaPlayerControl;

    if-eqz v0, :cond_2

    .line 1496
    iget-object v0, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->mLocalMediaPlayer:Lcom/miui/videoplayer/framework/ui/LocalMediaPlayerControl;

    invoke-interface {v0}, Lcom/miui/videoplayer/framework/ui/LocalMediaPlayerControl;->stopLocalPlayForMediaSwitch()V

    .line 1498
    :cond_2
    invoke-direct {p0, v1, v1}, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->onErrorCalled(II)V

    goto :goto_0
.end method

.method public getPlayingUri()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1186
    iget-object v0, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->mMediaController:Lcom/miui/videoplayer/framework/views/OriginMediaController;

    invoke-virtual {v0}, Lcom/miui/videoplayer/framework/views/OriginMediaController;->getPlayingUri()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hide()V
    .locals 1

    .prologue
    .line 1522
    iget-object v0, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->mMediaController:Lcom/miui/videoplayer/framework/views/OriginMediaController;

    invoke-virtual {v0}, Lcom/miui/videoplayer/framework/views/OriginMediaController;->hide()V

    .line 1523
    return-void
.end method

.method public isShowing()Z
    .locals 1

    .prologue
    .line 1514
    iget-object v0, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->mMediaController:Lcom/miui/videoplayer/framework/views/OriginMediaController;

    invoke-virtual {v0}, Lcom/miui/videoplayer/framework/views/OriginMediaController;->isShowing()Z

    move-result v0

    return v0
.end method

.method public loadAndSavePlayHistory()V
    .locals 2

    .prologue
    .line 1109
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController$3;

    invoke-direct {v1, p0}, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController$3;-><init>(Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 1145
    return-void
.end method

.method public onActivityCreate()V
    .locals 1

    .prologue
    .line 222
    iget-object v0, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->mAirkanManager:Lcom/miui/videoplayer/framework/airkan/AirkanManager;

    invoke-virtual {v0}, Lcom/miui/videoplayer/framework/airkan/AirkanManager;->onActivityCreate()V

    .line 224
    return-void
.end method

.method public onActivityDestroy()V
    .locals 1

    .prologue
    .line 260
    iget-object v0, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->mAirkanManager:Lcom/miui/videoplayer/framework/airkan/AirkanManager;

    invoke-virtual {v0}, Lcom/miui/videoplayer/framework/airkan/AirkanManager;->onActivityDestroy()V

    .line 262
    iget-object v0, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->mMediaController:Lcom/miui/videoplayer/framework/views/OriginMediaController;

    invoke-virtual {v0}, Lcom/miui/videoplayer/framework/views/OriginMediaController;->onActivityDestroy()V

    .line 263
    return-void
.end method

.method public onActivityStart()V
    .locals 1

    .prologue
    .line 227
    invoke-virtual {p0}, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->requestFocus()Z

    .line 229
    iget-object v0, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->mAirkanManager:Lcom/miui/videoplayer/framework/airkan/AirkanManager;

    invoke-virtual {v0}, Lcom/miui/videoplayer/framework/airkan/AirkanManager;->onActivityStart()V

    .line 231
    invoke-direct {p0}, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->loadSettings()V

    .line 232
    return-void
.end method

.method public onActivityStop()V
    .locals 1

    .prologue
    .line 236
    iget-object v0, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->mAirkanManager:Lcom/miui/videoplayer/framework/airkan/AirkanManager;

    invoke-virtual {v0}, Lcom/miui/videoplayer/framework/airkan/AirkanManager;->onActivityStop()V

    .line 238
    invoke-direct {p0}, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->saveSettings()V

    .line 239
    iget-object v0, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->mAirkanManager:Lcom/miui/videoplayer/framework/airkan/AirkanManager;

    invoke-virtual {v0}, Lcom/miui/videoplayer/framework/airkan/AirkanManager;->isPlayingInLocal()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 240
    iget-object v0, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->mMediaController:Lcom/miui/videoplayer/framework/views/OriginMediaController;

    if-eqz v0, :cond_0

    .line 241
    iget-object v0, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->mMediaController:Lcom/miui/videoplayer/framework/views/OriginMediaController;

    invoke-virtual {v0}, Lcom/miui/videoplayer/framework/views/OriginMediaController;->hide()V

    .line 243
    :cond_0
    iget-object v0, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->mBufferingProgressDialog:Lcom/miui/videoplayer/framework/ui/DuoKanMediaController$BufferingProgressDialog;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->mBufferingProgressDialog:Lcom/miui/videoplayer/framework/ui/DuoKanMediaController$BufferingProgressDialog;

    invoke-virtual {v0}, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController$BufferingProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 244
    iget-object v0, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->mBufferingProgressDialog:Lcom/miui/videoplayer/framework/ui/DuoKanMediaController$BufferingProgressDialog;

    invoke-virtual {v0}, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController$BufferingProgressDialog;->dismiss()V

    .line 246
    :cond_1
    invoke-direct {p0}, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->hideLoadingView()V

    .line 247
    invoke-static {}, Lcom/miui/videoplayer/framework/popup/MediaInfoPopupWindow;->isNull()Z

    move-result v0

    if-nez v0, :cond_2

    .line 248
    invoke-static {}, Lcom/miui/videoplayer/framework/popup/MediaInfoPopupWindow;->setNull()V

    .line 251
    :cond_2
    iget-object v0, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->mMediaController:Lcom/miui/videoplayer/framework/views/OriginMediaController;

    invoke-virtual {v0}, Lcom/miui/videoplayer/framework/views/OriginMediaController;->removeShowFullScreenPauseMessage()V

    .line 253
    invoke-static {}, Lcom/miui/videoplayer/framework/popup/PopupWindowManager;->getInstance()Lcom/miui/videoplayer/framework/popup/PopupWindowManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/videoplayer/framework/popup/PopupWindowManager;->dimissAllManagedPopupWindow()V

    .line 256
    :cond_3
    return-void
.end method

.method public onAirKanChanged(Lcom/miui/videoplayer/framework/airkan/AirkanManager$AirkanChangedEvent;)V
    .locals 2
    .parameter "event"

    .prologue
    .line 957
    iget-object v0, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->mAirkanBackgroundView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 958
    invoke-direct {p0}, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->inflateAirkanBackgroundView()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->mAirkanBackgroundView:Landroid/view/View;

    .line 960
    :cond_0
    invoke-virtual {p1}, Lcom/miui/videoplayer/framework/airkan/AirkanManager$AirkanChangedEvent;->getCode()I

    move-result v0

    if-nez v0, :cond_2

    .line 961
    sget-object v0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->TAG:Ljava/lang/String;

    const-string v1, "on airkan changed: Play to device"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 962
    iget-object v0, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->mAirkanBackgroundView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 963
    invoke-direct {p0}, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->updateAirkanDeviceName()V

    .line 964
    invoke-static {}, Lcom/miui/videoplayer/framework/popup/MediaInfoPopupWindow;->isNull()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/miui/videoplayer/framework/popup/MediaInfoPopupWindow;->getInstance(Landroid/content/Context;)Lcom/miui/videoplayer/framework/popup/MediaInfoPopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/videoplayer/framework/popup/MediaInfoPopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 965
    iget-object v0, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/miui/videoplayer/framework/popup/MediaInfoPopupWindow;->getInstance(Landroid/content/Context;)Lcom/miui/videoplayer/framework/popup/MediaInfoPopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/videoplayer/framework/popup/MediaInfoPopupWindow;->dismiss()V

    .line 978
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->requestLayout()V

    .line 979
    return-void

    .line 967
    :cond_2
    invoke-virtual {p1}, Lcom/miui/videoplayer/framework/airkan/AirkanManager$AirkanChangedEvent;->getCode()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    .line 968
    sget-object v0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->TAG:Ljava/lang/String;

    const-string v1, "on airkan changed: Back to phone"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 969
    iget-object v0, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->mAirkanBackgroundView:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 970
    :cond_3
    invoke-virtual {p1}, Lcom/miui/videoplayer/framework/airkan/AirkanManager$AirkanChangedEvent;->getCode()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 971
    sget-object v0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->TAG:Ljava/lang/String;

    const-string v1, "on airkan changed: Play stoped"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 972
    iget-object v0, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->mMediaController:Lcom/miui/videoplayer/framework/views/OriginMediaController;

    if-eqz v0, :cond_4

    .line 973
    iget-object v0, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->mMediaController:Lcom/miui/videoplayer/framework/views/OriginMediaController;

    invoke-virtual {v0}, Lcom/miui/videoplayer/framework/views/OriginMediaController;->hide()V

    .line 975
    :cond_4
    invoke-static {}, Lcom/miui/videoplayer/framework/popup/PopupWindowManager;->getInstance()Lcom/miui/videoplayer/framework/popup/PopupWindowManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/videoplayer/framework/popup/PopupWindowManager;->dimissAllManagedPopupWindow()V

    .line 976
    iget-object v0, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    .line 1349
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 1350
    sget-object v0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->TAG:Ljava/lang/String;

    const-string v1, "onAttachedToWindow"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1351
    iget-object v0, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1352
    iget-object v0, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->mUri:Landroid/net/Uri;

    invoke-virtual {p0, v0}, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->checkNetwork(Landroid/net/Uri;)V

    .line 1354
    :cond_0
    return-void
.end method

.method public onBufferingUpdate(Landroid/media/MediaPlayer;I)V
    .locals 0
    .parameter "mp"
    .parameter "percent"

    .prologue
    .line 1299
    invoke-direct {p0, p2}, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->onBufferUpdatingCalled(I)V

    .line 1300
    return-void
.end method

.method public onBufferingUpdate(Lcom/duokan/MediaPlayer;I)V
    .locals 0
    .parameter "mp"
    .parameter "percent"

    .prologue
    .line 1340
    invoke-direct {p0, p2}, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->onBufferUpdatingCalled(I)V

    .line 1341
    return-void
.end method

.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 0
    .parameter "mp"

    .prologue
    .line 1158
    invoke-direct {p0}, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->onCompletionCalled()V

    .line 1159
    return-void
.end method

.method public onCompletion(Lcom/duokan/MediaPlayer;)V
    .locals 0
    .parameter "mp"

    .prologue
    .line 1330
    invoke-direct {p0}, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->onCompletionCalled()V

    .line 1331
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .parameter "newConfig"

    .prologue
    .line 1544
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-direct {p0, v0}, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->onScreenOrientationChanged(I)V

    .line 1545
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1546
    return-void
.end method

.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 1
    .parameter "mp"
    .parameter "what"
    .parameter "extra"

    .prologue
    .line 1449
    invoke-direct {p0, p2, p3}, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->onErrorCalled(II)V

    .line 1450
    const/4 v0, 0x0

    return v0
.end method

.method public onError(Lcom/duokan/MediaPlayer;II)Z
    .locals 1
    .parameter "mp"
    .parameter "what"
    .parameter "extra"

    .prologue
    .line 1407
    invoke-direct {p0, p2, p3}, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->onErrorCalled(II)V

    .line 1408
    const/4 v0, 0x0

    return v0
.end method

.method public onInfo(Landroid/media/MediaPlayer;II)Z
    .locals 2
    .parameter "mp"
    .parameter "what"
    .parameter "extra"

    .prologue
    .line 1261
    const/16 v0, 0x2bd

    if-ne p2, v0, :cond_0

    .line 1262
    sget-object v0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->TAG:Ljava/lang/String;

    const-string v1, "Buffering start"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1263
    invoke-direct {p0}, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->bufferingStart()V

    .line 1265
    :cond_0
    const/16 v0, 0x2be

    if-ne p2, v0, :cond_1

    .line 1266
    sget-object v0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->TAG:Ljava/lang/String;

    const-string v1, "Buffering end"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1267
    invoke-direct {p0}, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->bufferingEnd()V

    .line 1269
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public onInfo(Lcom/duokan/MediaPlayer;II)Z
    .locals 3
    .parameter "mp"
    .parameter "what"
    .parameter "extra"

    .prologue
    .line 1305
    const/16 v0, 0x2bd

    if-ne p2, v0, :cond_0

    .line 1306
    sget-object v0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->TAG:Ljava/lang/String;

    const-string v1, "Buffering start"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1307
    invoke-direct {p0}, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->bufferingStart()V

    .line 1310
    :cond_0
    const/16 v0, 0x302

    if-ne p2, v0, :cond_1

    .line 1311
    sget-object v0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Buffered : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " %"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1312
    iget-object v0, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->mMediaController:Lcom/miui/videoplayer/framework/views/OriginMediaController;

    instance-of v0, v0, Lcom/miui/videoplayer/framework/views/OriginMediaControllerV5;

    if-eqz v0, :cond_1

    .line 1313
    iget-object v0, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->mMediaController:Lcom/miui/videoplayer/framework/views/OriginMediaController;

    check-cast v0, Lcom/miui/videoplayer/framework/views/OriginMediaControllerV5;

    invoke-virtual {v0, p3}, Lcom/miui/videoplayer/framework/views/OriginMediaControllerV5;->bufferUpdating(I)V

    .line 1317
    :cond_1
    const/16 v0, 0x2be

    if-ne p2, v0, :cond_2

    .line 1318
    sget-object v0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->TAG:Ljava/lang/String;

    const-string v1, "Buffering end"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1319
    invoke-direct {p0}, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->bufferingEnd()V

    .line 1321
    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 7
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v6, 0x4

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 712
    sget-object v4, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->TAG:Ljava/lang/String;

    const-string v5, "KEY DOWN EVENT!!!!"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 714
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v4

    if-ne v4, v6, :cond_4

    .line 715
    sget-object v4, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->TAG:Ljava/lang/String;

    const-string v5, "BACK DOWN!!!!"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 716
    instance-of v4, p2, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController$BackKeyEvent;

    if-eqz v4, :cond_1

    .line 717
    invoke-direct {p0}, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->cleanOnBackPressed()V

    .line 718
    iget-object v2, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->finish()V

    move v2, v3

    .line 796
    :cond_0
    :goto_0
    return v2

    .line 721
    :cond_1
    iget-object v4, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->mBackToast:Landroid/widget/Toast;

    if-nez v4, :cond_2

    .line 722
    iget-object v4, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->mActivity:Landroid/app/Activity;

    const v5, 0x7f05001c

    invoke-static {v4, v5, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    iput-object v4, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->mBackToast:Landroid/widget/Toast;

    .line 724
    :cond_2
    iget-object v4, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->mBackToast:Landroid/widget/Toast;

    invoke-virtual {v4}, Landroid/widget/Toast;->getView()Landroid/view/View;

    move-result-object v4

    if-nez v4, :cond_3

    move v2, v3

    .line 725
    goto :goto_0

    .line 727
    :cond_3
    iget-object v4, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->mBackToast:Landroid/widget/Toast;

    invoke-virtual {v4}, Landroid/widget/Toast;->getView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->isShown()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 728
    iget-object v4, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->mBackToast:Landroid/widget/Toast;

    invoke-virtual {v4}, Landroid/widget/Toast;->cancel()V

    .line 729
    invoke-direct {p0}, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->cleanOnBackPressed()V

    .line 736
    :cond_4
    iget-object v4, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->mLoadingBackgroundView:Landroid/view/View;

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->mLoadingBackgroundView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_6

    .line 737
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    if-ne v3, v6, :cond_0

    .line 738
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v2

    goto :goto_0

    .line 731
    :cond_5
    iget-object v3, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->mBackToast:Landroid/widget/Toast;

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 744
    :cond_6
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v4

    const/16 v5, 0x52

    if-ne v4, v5, :cond_c

    .line 745
    iget-object v4, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->mAirkanManager:Lcom/miui/videoplayer/framework/airkan/AirkanManager;

    if-eqz v4, :cond_7

    iget-object v4, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->mAirkanManager:Lcom/miui/videoplayer/framework/airkan/AirkanManager;

    invoke-virtual {v4}, Lcom/miui/videoplayer/framework/airkan/AirkanManager;->isPlayingInLocal()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 749
    :cond_7
    iget-object v4, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->mOptionMenuPopupWindow:Lcom/miui/videoplayer/framework/popup/OptionMenuPopupWindow;

    if-nez v4, :cond_8

    .line 750
    new-instance v4, Lcom/miui/videoplayer/framework/popup/OptionMenuPopupWindow;

    iget-object v5, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->mActivity:Landroid/app/Activity;

    invoke-direct {v4, v5, p0}, Lcom/miui/videoplayer/framework/popup/OptionMenuPopupWindow;-><init>(Landroid/app/Activity;Landroid/view/View;)V

    iput-object v4, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->mOptionMenuPopupWindow:Lcom/miui/videoplayer/framework/popup/OptionMenuPopupWindow;

    .line 751
    new-instance v4, Lcom/miui/videoplayer/framework/popup/OptionSubMenuPopupWindow;

    iget-object v5, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->mActivity:Landroid/app/Activity;

    iget-object v6, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->mVideoSizeAdjustable:Lcom/miui/videoplayer/framework/ui/LocalVideoPlaySizeAdjustable;

    invoke-direct {v4, v5, v6}, Lcom/miui/videoplayer/framework/popup/OptionSubMenuPopupWindow;-><init>(Landroid/content/Context;Lcom/miui/videoplayer/framework/ui/LocalVideoPlaySizeAdjustable;)V

    iput-object v4, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->mOptionSubMenuPopupWindow:Lcom/miui/videoplayer/framework/popup/OptionSubMenuPopupWindow;

    .line 752
    iget-object v4, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->mOptionMenuPopupWindow:Lcom/miui/videoplayer/framework/popup/OptionMenuPopupWindow;

    iget-object v5, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->mOptionSubMenuPopupWindow:Lcom/miui/videoplayer/framework/popup/OptionSubMenuPopupWindow;

    invoke-virtual {v4, v5}, Lcom/miui/videoplayer/framework/popup/OptionMenuPopupWindow;->setOptionSubMenuPopupWindow(Lcom/miui/videoplayer/framework/popup/OptionSubMenuPopupWindow;)V

    .line 755
    :cond_8
    iget-object v4, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->mOptionMenuPopupWindow:Lcom/miui/videoplayer/framework/popup/OptionMenuPopupWindow;

    invoke-virtual {v4, p0}, Lcom/miui/videoplayer/framework/popup/OptionMenuPopupWindow;->setDuoKanMediaController(Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;)V

    .line 756
    iget-object v4, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->mOptionMenuPopupWindow:Lcom/miui/videoplayer/framework/popup/OptionMenuPopupWindow;

    iget-object v5, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->mMediaController:Lcom/miui/videoplayer/framework/views/OriginMediaController;

    invoke-virtual {v4, v5}, Lcom/miui/videoplayer/framework/popup/OptionMenuPopupWindow;->setMediaController(Lcom/miui/videoplayer/framework/views/OriginMediaController;)V

    .line 757
    iget-object v4, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->mOptionMenuPopupWindow:Lcom/miui/videoplayer/framework/popup/OptionMenuPopupWindow;

    iget-object v5, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->mLocalMediaPlayer:Lcom/miui/videoplayer/framework/ui/LocalMediaPlayerControl;

    invoke-virtual {v4, v5}, Lcom/miui/videoplayer/framework/popup/OptionMenuPopupWindow;->setLocalMediaPlayerControl(Lcom/miui/videoplayer/framework/ui/LocalMediaPlayerControl;)V

    .line 758
    iget-object v4, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->mOptionMenuPopupWindow:Lcom/miui/videoplayer/framework/popup/OptionMenuPopupWindow;

    iget-object v5, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->mVideoSizeAdjustable:Lcom/miui/videoplayer/framework/ui/LocalVideoPlaySizeAdjustable;

    invoke-virtual {v4, v5}, Lcom/miui/videoplayer/framework/popup/OptionMenuPopupWindow;->setSizeAdjustable(Lcom/miui/videoplayer/framework/ui/LocalVideoPlaySizeAdjustable;)V

    .line 759
    iget-object v4, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->mMediaController:Lcom/miui/videoplayer/framework/views/OriginMediaController;

    invoke-virtual {v4}, Lcom/miui/videoplayer/framework/views/OriginMediaController;->getControlListPopupWindow()Lcom/miui/videoplayer/framework/popup/ControlListPopupWindow;

    move-result-object v0

    .line 760
    .local v0, controlListPopupWindows:Lcom/miui/videoplayer/framework/popup/ControlListPopupWindow;
    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lcom/miui/videoplayer/framework/popup/ControlListPopupWindow;->isShowing()Z

    move-result v4

    if-eqz v4, :cond_9

    move v1, v2

    .line 762
    .local v1, isControlListPopupShowing:Z
    :goto_1
    iget-object v4, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->mMediaController:Lcom/miui/videoplayer/framework/views/OriginMediaController;

    invoke-virtual {v4}, Lcom/miui/videoplayer/framework/views/OriginMediaController;->removeShowFullScreenPauseMessage()V

    .line 764
    iget-object v4, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->mOptionMenuPopupWindow:Lcom/miui/videoplayer/framework/popup/OptionMenuPopupWindow;

    invoke-virtual {v4}, Lcom/miui/videoplayer/framework/popup/OptionMenuPopupWindow;->isShowing()Z

    move-result v4

    if-eqz v4, :cond_a

    move v2, v3

    .line 765
    goto/16 :goto_0

    .end local v1           #isControlListPopupShowing:Z
    :cond_9
    move v1, v3

    .line 760
    goto :goto_1

    .line 767
    .restart local v1       #isControlListPopupShowing:Z
    :cond_a
    iget-object v3, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->mMediaController:Lcom/miui/videoplayer/framework/views/OriginMediaController;

    if-eqz v3, :cond_b

    .line 768
    iget-object v3, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->mMediaController:Lcom/miui/videoplayer/framework/views/OriginMediaController;

    invoke-virtual {v3}, Lcom/miui/videoplayer/framework/views/OriginMediaController;->hideFullScreenPausePopup()V

    .line 770
    :cond_b
    if-nez v1, :cond_0

    .line 771
    iget-object v3, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->mOptionMenuPopupWindow:Lcom/miui/videoplayer/framework/popup/OptionMenuPopupWindow;

    invoke-virtual {v3, p0}, Lcom/miui/videoplayer/framework/popup/OptionMenuPopupWindow;->show(Landroid/view/View;)V

    goto/16 :goto_0

    .line 777
    .end local v0           #controlListPopupWindows:Lcom/miui/videoplayer/framework/popup/ControlListPopupWindow;
    .end local v1           #isControlListPopupShowing:Z
    :cond_c
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    const/16 v4, 0x19

    if-ne v3, v4, :cond_d

    .line 778
    sget-object v3, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->TAG:Ljava/lang/String;

    const-string v4, "VOLUME DOWN!!!!"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 779
    iget-object v3, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->mAirkanManager:Lcom/miui/videoplayer/framework/airkan/AirkanManager;

    invoke-virtual {v3, p2}, Lcom/miui/videoplayer/framework/airkan/AirkanManager;->onVolumeKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 782
    const/high16 v3, 0x3f80

    invoke-direct {p0, v3}, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->adjustVolume(F)V

    .line 783
    invoke-direct {p0}, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->delayFadeOutVolumePopupWindow()V

    goto/16 :goto_0

    .line 787
    :cond_d
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    const/16 v4, 0x18

    if-ne v3, v4, :cond_e

    .line 788
    sget-object v3, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->TAG:Ljava/lang/String;

    const-string v4, "VOLUME UP"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 789
    iget-object v3, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->mAirkanManager:Lcom/miui/videoplayer/framework/airkan/AirkanManager;

    invoke-virtual {v3, p2}, Lcom/miui/videoplayer/framework/airkan/AirkanManager;->onVolumeKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 792
    const/high16 v3, -0x4080

    invoke-direct {p0, v3}, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->adjustVolume(F)V

    .line 793
    invoke-direct {p0}, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->delayFadeOutVolumePopupWindow()V

    goto/16 :goto_0

    .line 796
    :cond_e
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v2

    goto/16 :goto_0
.end method

.method public onNewIntent()V
    .locals 1

    .prologue
    .line 1479
    iget-object v0, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->mAirkanManager:Lcom/miui/videoplayer/framework/airkan/AirkanManager;

    invoke-virtual {v0}, Lcom/miui/videoplayer/framework/airkan/AirkanManager;->isPlayingInLocal()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1480
    iget-object v0, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->mAirkanManager:Lcom/miui/videoplayer/framework/airkan/AirkanManager;

    invoke-virtual {v0}, Lcom/miui/videoplayer/framework/airkan/AirkanManager;->takebackToPhone()V

    .line 1481
    iget-object v0, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->mMediaController:Lcom/miui/videoplayer/framework/views/OriginMediaController;

    if-eqz v0, :cond_0

    .line 1482
    iget-object v0, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->mMediaController:Lcom/miui/videoplayer/framework/views/OriginMediaController;

    invoke-virtual {v0}, Lcom/miui/videoplayer/framework/views/OriginMediaController;->hide()V

    .line 1484
    :cond_0
    invoke-static {}, Lcom/miui/videoplayer/framework/popup/PopupWindowManager;->getInstance()Lcom/miui/videoplayer/framework/popup/PopupWindowManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/videoplayer/framework/popup/PopupWindowManager;->dimissAllManagedPopupWindow()V

    .line 1485
    invoke-direct {p0}, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->hideLoadingView()V

    .line 1487
    :cond_1
    iget-object v0, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->mAirkanManager:Lcom/miui/videoplayer/framework/airkan/AirkanManager;

    invoke-virtual {v0}, Lcom/miui/videoplayer/framework/airkan/AirkanManager;->closeDeviceManager()V

    .line 1488
    return-void
.end method

.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 0
    .parameter "mp"

    .prologue
    .line 1052
    invoke-direct {p0}, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->onPreparedCalled()V

    .line 1053
    return-void
.end method

.method public onPrepared(Lcom/duokan/MediaPlayer;)V
    .locals 0
    .parameter "mp"

    .prologue
    .line 1335
    invoke-direct {p0}, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->onPreparedCalled()V

    .line 1336
    return-void
.end method

.method public onSeekComplete(Landroid/media/MediaPlayer;)V
    .locals 0
    .parameter "mp"

    .prologue
    .line 1207
    return-void
.end method

.method public onSeekComplete(Lcom/duokan/MediaPlayer;)V
    .locals 0
    .parameter "mp"

    .prologue
    .line 1326
    return-void
.end method

.method public onTimedText(Lcom/duokan/MediaPlayer;Lcom/duokan/TimedText;)V
    .locals 0
    .parameter "mp"
    .parameter "text"

    .prologue
    .line 1471
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "event"

    .prologue
    const/4 v2, 0x1

    .line 686
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 687
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->touchStart(FF)V

    .line 689
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 690
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->touchMove(FF)V

    .line 692
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v2, :cond_2

    .line 693
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->touchUp(FF)V

    .line 695
    :cond_2
    return v2
.end method

.method public onVideoSizeChanged(Landroid/media/MediaPlayer;II)V
    .locals 0
    .parameter "mp"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 1462
    return-void
.end method

.method public onVideoSizeChanged(Lcom/duokan/MediaPlayer;II)V
    .locals 2
    .parameter "mp"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 1455
    iget-object v0, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/miui/videoplayer/framework/popup/MediaInfoPopupWindow;->getInstance(Landroid/content/Context;)Lcom/miui/videoplayer/framework/popup/MediaInfoPopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/videoplayer/framework/popup/MediaInfoPopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1456
    iget-object v0, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/miui/videoplayer/framework/popup/MediaInfoPopupWindow;->getInstance(Landroid/content/Context;)Lcom/miui/videoplayer/framework/popup/MediaInfoPopupWindow;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->mLocalMediaPlayer:Lcom/miui/videoplayer/framework/ui/LocalMediaPlayerControl;

    invoke-interface {v1}, Lcom/miui/videoplayer/framework/ui/LocalMediaPlayerControl;->getMediaInfo()Lcom/duokan/MediaPlayer$MediaInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/videoplayer/framework/popup/MediaInfoPopupWindow;->updateValues(Lcom/duokan/MediaPlayer$MediaInfo;)V

    .line 1458
    :cond_0
    return-void
.end method

.method public setAirkanExistDeviceInfo(Lcom/miui/videoplayer/framework/airkan/AirkanManager$AirkanExistDeviceInfo;)V
    .locals 0
    .parameter "airkanExistDeviceInfo"

    .prologue
    .line 1197
    iput-object p1, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->mAirkanExistDeviceInfo:Lcom/miui/videoplayer/framework/airkan/AirkanManager$AirkanExistDeviceInfo;

    .line 1198
    return-void
.end method

.method public setDirectAirkanUri(Landroid/net/Uri;)V
    .locals 1
    .parameter "uri"

    .prologue
    .line 1201
    iget-object v0, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->mAirkanManager:Lcom/miui/videoplayer/framework/airkan/AirkanManager;

    invoke-virtual {v0, p1}, Lcom/miui/videoplayer/framework/airkan/AirkanManager;->setDirectAirkanUri(Landroid/net/Uri;)V

    .line 1202
    return-void
.end method

.method public setInput([Ljava/lang/String;ILandroid/app/Activity;)V
    .locals 1
    .parameter "uris"
    .parameter "playIndex"
    .parameter "activity"

    .prologue
    .line 935
    if-eqz p1, :cond_0

    array-length v0, p1

    if-eqz v0, :cond_0

    if-eqz p3, :cond_0

    if-ltz p2, :cond_0

    array-length v0, p1

    add-int/lit8 v0, v0, -0x1

    if-le p2, v0, :cond_1

    .line 937
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 939
    :cond_1
    iput-object p1, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->mUris:[Ljava/lang/String;

    .line 940
    iput-object p3, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->mActivity:Landroid/app/Activity;

    .line 941
    iget-object v0, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->mMediaController:Lcom/miui/videoplayer/framework/views/OriginMediaController;

    invoke-virtual {v0, p1, p2}, Lcom/miui/videoplayer/framework/views/OriginMediaController;->setUriArray([Ljava/lang/String;I)V

    .line 943
    aget-object v0, p1, p2

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->mUri:Landroid/net/Uri;

    .line 944
    return-void
.end method

.method public setLocalMediaPlayerControl(Lcom/miui/videoplayer/framework/ui/LocalMediaPlayerControl;)V
    .locals 4
    .parameter "localMediaPlayerControl"

    .prologue
    .line 133
    iput-object p1, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->mLocalMediaPlayer:Lcom/miui/videoplayer/framework/ui/LocalMediaPlayerControl;

    .line 136
    invoke-interface {p1, p0}, Lcom/miui/videoplayer/framework/ui/LocalMediaPlayerControl;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 137
    invoke-interface {p1, p0}, Lcom/miui/videoplayer/framework/ui/LocalMediaPlayerControl;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 138
    invoke-interface {p1, p0}, Lcom/miui/videoplayer/framework/ui/LocalMediaPlayerControl;->setOnSeekCompleteListener(Landroid/media/MediaPlayer$OnSeekCompleteListener;)V

    .line 139
    invoke-interface {p1, p0}, Lcom/miui/videoplayer/framework/ui/LocalMediaPlayerControl;->setOnInfoListener(Landroid/media/MediaPlayer$OnInfoListener;)V

    .line 140
    invoke-interface {p1, p0}, Lcom/miui/videoplayer/framework/ui/LocalMediaPlayerControl;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 141
    invoke-interface {p1, p0}, Lcom/miui/videoplayer/framework/ui/LocalMediaPlayerControl;->setOnBufferingUpdateListener(Landroid/media/MediaPlayer$OnBufferingUpdateListener;)V

    .line 142
    invoke-interface {p1, p0}, Lcom/miui/videoplayer/framework/ui/LocalMediaPlayerControl;->setOnVideoSizeChangedListener(Landroid/media/MediaPlayer$OnVideoSizeChangedListener;)V

    .line 145
    invoke-interface {p1, p0}, Lcom/miui/videoplayer/framework/ui/LocalMediaPlayerControl;->setOnPreparedListener(Lcom/duokan/MediaPlayer$OnPreparedListener;)V

    .line 146
    invoke-interface {p1, p0}, Lcom/miui/videoplayer/framework/ui/LocalMediaPlayerControl;->setOnCompletionListener(Lcom/duokan/MediaPlayer$OnCompletionListener;)V

    .line 147
    invoke-interface {p1, p0}, Lcom/miui/videoplayer/framework/ui/LocalMediaPlayerControl;->setOnSeekCompleteListener(Lcom/duokan/MediaPlayer$OnSeekCompleteListener;)V

    .line 148
    invoke-interface {p1, p0}, Lcom/miui/videoplayer/framework/ui/LocalMediaPlayerControl;->setOnInfoListener(Lcom/duokan/MediaPlayer$OnInfoListener;)V

    .line 149
    invoke-interface {p1, p0}, Lcom/miui/videoplayer/framework/ui/LocalMediaPlayerControl;->setOnErrorListener(Lcom/duokan/MediaPlayer$OnErrorListener;)V

    .line 150
    invoke-interface {p1, p0}, Lcom/miui/videoplayer/framework/ui/LocalMediaPlayerControl;->setOnBufferingUpdateListener(Lcom/duokan/MediaPlayer$OnBufferingUpdateListener;)V

    .line 151
    invoke-interface {p1, p0}, Lcom/miui/videoplayer/framework/ui/LocalMediaPlayerControl;->setOnVideoSizeChangedListener(Lcom/duokan/MediaPlayer$OnVideoSizeChangedListener;)V

    .line 152
    invoke-interface {p1, p0}, Lcom/miui/videoplayer/framework/ui/LocalMediaPlayerControl;->setOnTimedTextListener(Lcom/duokan/MediaPlayer$OnTimedTextListener;)V

    .line 155
    iget-object v0, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->mAirkanExistDeviceInfo:Lcom/miui/videoplayer/framework/airkan/AirkanManager$AirkanExistDeviceInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->mAirkanExistDeviceInfo:Lcom/miui/videoplayer/framework/airkan/AirkanManager$AirkanExistDeviceInfo;

    invoke-virtual {v0}, Lcom/miui/videoplayer/framework/airkan/AirkanManager$AirkanExistDeviceInfo;->getExistDeviceName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 156
    new-instance v0, Lcom/miui/videoplayer/framework/airkan/AirkanManager;

    iget-object v1, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->mMediaController:Lcom/miui/videoplayer/framework/views/OriginMediaController;

    iget-object v2, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->mActivity:Landroid/app/Activity;

    iget-object v3, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->mAirkanExistDeviceInfo:Lcom/miui/videoplayer/framework/airkan/AirkanManager$AirkanExistDeviceInfo;

    invoke-direct {v0, p1, v1, v2, v3}, Lcom/miui/videoplayer/framework/airkan/AirkanManager;-><init>(Lcom/miui/videoplayer/framework/ui/LocalMediaPlayerControl;Lcom/miui/videoplayer/framework/views/OriginMediaController;Landroid/content/Context;Lcom/miui/videoplayer/framework/airkan/AirkanManager$AirkanExistDeviceInfo;)V

    iput-object v0, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->mAirkanManager:Lcom/miui/videoplayer/framework/airkan/AirkanManager;

    .line 160
    :goto_0
    iget-object v0, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->mAirkanManager:Lcom/miui/videoplayer/framework/airkan/AirkanManager;

    invoke-virtual {v0, p0}, Lcom/miui/videoplayer/framework/airkan/AirkanManager;->setAirkanOnChangedListener(Lcom/miui/videoplayer/framework/airkan/AirkanManager$AirkanOnChangedListener;)V

    .line 161
    iget-object v0, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->mAirkanManager:Lcom/miui/videoplayer/framework/airkan/AirkanManager;

    invoke-virtual {v0, p0}, Lcom/miui/videoplayer/framework/airkan/AirkanManager;->setDuokanMediaController(Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;)V

    .line 162
    iget-object v0, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->mMediaController:Lcom/miui/videoplayer/framework/views/OriginMediaController;

    iget-object v1, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->mAirkanManager:Lcom/miui/videoplayer/framework/airkan/AirkanManager;

    invoke-virtual {v0, v1}, Lcom/miui/videoplayer/framework/views/OriginMediaController;->setAirKanManager(Lcom/miui/videoplayer/framework/airkan/AirkanManager;)V

    .line 163
    iget-object v0, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->mMediaController:Lcom/miui/videoplayer/framework/views/OriginMediaController;

    invoke-virtual {v0, p1}, Lcom/miui/videoplayer/framework/views/OriginMediaController;->setMediaPlayer(Lcom/miui/videoplayer/framework/ui/MediaPlayerControl;)V

    .line 164
    iget-object v0, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->mMediaController:Lcom/miui/videoplayer/framework/views/OriginMediaController;

    invoke-virtual {v0, p0}, Lcom/miui/videoplayer/framework/views/OriginMediaController;->setDuoKanMediaController(Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;)V

    .line 166
    return-void

    .line 158
    :cond_0
    new-instance v0, Lcom/miui/videoplayer/framework/airkan/AirkanManager;

    iget-object v1, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->mMediaController:Lcom/miui/videoplayer/framework/views/OriginMediaController;

    iget-object v2, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, p1, v1, v2}, Lcom/miui/videoplayer/framework/airkan/AirkanManager;-><init>(Lcom/miui/videoplayer/framework/ui/LocalMediaPlayerControl;Lcom/miui/videoplayer/framework/views/OriginMediaController;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->mAirkanManager:Lcom/miui/videoplayer/framework/airkan/AirkanManager;

    goto :goto_0
.end method

.method public setTitleMap(Ljava/util/Map;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/miui/videoplayer/framework/history/PlayHistoryManager$PlayHistoryEntry;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1474
    .local p1, map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lcom/miui/videoplayer/framework/history/PlayHistoryManager$PlayHistoryEntry;>;"
    iput-object p1, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->mMetaDataMap:Ljava/util/Map;

    .line 1475
    iget-object v0, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->mMediaController:Lcom/miui/videoplayer/framework/views/OriginMediaController;

    invoke-virtual {v0, p1}, Lcom/miui/videoplayer/framework/views/OriginMediaController;->setTitleMap(Ljava/util/Map;)V

    .line 1476
    return-void
.end method

.method public setUri(Landroid/net/Uri;)V
    .locals 0
    .parameter "uri"

    .prologue
    .line 1465
    iput-object p1, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->mUri:Landroid/net/Uri;

    .line 1466
    return-void
.end method

.method public setVideoSizeAdjustable(Lcom/miui/videoplayer/framework/ui/LocalVideoPlaySizeAdjustable;)V
    .locals 0
    .parameter "videoSizeAdjustable"

    .prologue
    .line 1182
    iput-object p1, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->mVideoSizeAdjustable:Lcom/miui/videoplayer/framework/ui/LocalVideoPlaySizeAdjustable;

    .line 1183
    return-void
.end method

.method public show()V
    .locals 1

    .prologue
    .line 1518
    iget-object v0, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->mMediaController:Lcom/miui/videoplayer/framework/views/OriginMediaController;

    invoke-virtual {v0}, Lcom/miui/videoplayer/framework/views/OriginMediaController;->show()V

    .line 1519
    return-void
.end method

.method public unbindAirkanService()V
    .locals 1

    .prologue
    .line 1530
    iget-object v0, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->mAirkanManager:Lcom/miui/videoplayer/framework/airkan/AirkanManager;

    invoke-virtual {v0}, Lcom/miui/videoplayer/framework/airkan/AirkanManager;->closeDeviceManager()V

    .line 1531
    return-void
.end method
