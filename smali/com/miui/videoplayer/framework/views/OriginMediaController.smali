.class public Lcom/miui/videoplayer/framework/views/OriginMediaController;
.super Landroid/widget/FrameLayout;
.source "OriginMediaController.java"

# interfaces
.implements Lcom/miui/videoplayer/framework/ui/DuoKanMediaController$ScreenOrientationListener;


# static fields
.field private static final FADE_OUT:I = 0x1

.field private static final FADE_OUT_PROGRESS_TIME:I = 0x3

.field private static final FFWD:I = 0x4

.field private static final FFWD_REW_DELAY_TIME:I = 0xc8

.field private static final FFWD_REW_DUOKAN_CODEC_DELAY_TIME:I = 0x64

.field private static final GET_PROGRESS_VALUE:I = 0x6

.field private static final REW:I = 0x5

.field private static final SHOW_FULL_SCREEN_PAUSE:I = 0x7

.field private static final SHOW_PROGRESS:I = 0x2

.field private static final TAG:Ljava/lang/String; = null

.field private static final sDefaultTimeout:I = 0xbb8


# instance fields
.field private mAirKanButton:Landroid/widget/ImageView;

.field private mAirKanManager:Lcom/miui/videoplayer/framework/airkan/AirkanManager;

.field private mAirkanDevicePopupWindow:Lcom/miui/videoplayer/framework/popup/IAirKanDevicesPopupWindow;

.field private mAirkanListener:Landroid/view/View$OnClickListener;

.field private mAnchor:Landroid/view/View;

.field private mBottomControllerPopupWindow:Lcom/miui/videoplayer/framework/popup/BottomControllerPopupWindow;

.field private mContext:Landroid/content/Context;

.field private mControlListButton:Landroid/widget/ImageView;

.field private mControlListListener:Landroid/view/View$OnClickListener;

.field private mControlListPopupWindow:Lcom/miui/videoplayer/framework/popup/ControlListPopupWindow;

.field private mCurrentTime:Landroid/widget/TextView;

.field private mDragging:Z

.field private mDuoKanMediaController:Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;

.field private mEndTime:Landroid/widget/TextView;

.field private mFullScreenPopupWindow:Lcom/miui/videoplayer/framework/popup/PauseFullScreenPopupWindow;

.field private mHandler:Landroid/os/Handler;

.field private mNextButton:Landroid/widget/ImageView;

.field private mNextButtonLongPressed:Z

.field private mNextLongClickListener:Landroid/view/View$OnLongClickListener;

.field private mNextTouchClickListener:Landroid/view/View$OnTouchListener;

.field private mPauseButton:Landroid/widget/ImageView;

.field private mPauseListener:Landroid/view/View$OnClickListener;

.field private mPlayer:Lcom/miui/videoplayer/framework/ui/MediaPlayerControl;

.field private mPlayingIndex:I

.field private mPrevButton:Landroid/widget/ImageView;

.field private mPrevButtonLongPressed:Z

.field private mPrevLongClickListener:Landroid/view/View$OnLongClickListener;

.field private mPrevTouchClickListener:Landroid/view/View$OnTouchListener;

.field private mProgress:Landroid/widget/SeekBar;

.field private mProgressTimePopupWindow:Lcom/miui/videoplayer/framework/popup/ProgressTimePopupWindow;

.field private mRoot:Landroid/view/View;

.field private mSeekListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

.field private mShowing:Z

.field private mTopStatusBarPopupWindow:Lcom/miui/videoplayer/framework/popup/TopStatusBarPopupWindow;

.field private mUriArray:[Ljava/lang/String;

.field private mUriTitleMap:Ljava/util/Map;
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


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 49
    const-class v0, Lcom/miui/videoplayer/framework/views/OriginMediaController;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/videoplayer/framework/views/OriginMediaController;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 118
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/miui/videoplayer/framework/views/OriginMediaController;-><init>(Landroid/content/Context;Z)V

    .line 119
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v1, 0x0

    .line 99
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 330
    new-instance v0, Lcom/miui/videoplayer/framework/views/OriginMediaController$1;

    invoke-direct {v0, p0}, Lcom/miui/videoplayer/framework/views/OriginMediaController$1;-><init>(Lcom/miui/videoplayer/framework/views/OriginMediaController;)V

    iput-object v0, p0, Lcom/miui/videoplayer/framework/views/OriginMediaController;->mHandler:Landroid/os/Handler;

    .line 451
    iput-boolean v1, p0, Lcom/miui/videoplayer/framework/views/OriginMediaController;->mNextButtonLongPressed:Z

    .line 452
    new-instance v0, Lcom/miui/videoplayer/framework/views/OriginMediaController$2;

    invoke-direct {v0, p0}, Lcom/miui/videoplayer/framework/views/OriginMediaController$2;-><init>(Lcom/miui/videoplayer/framework/views/OriginMediaController;)V

    iput-object v0, p0, Lcom/miui/videoplayer/framework/views/OriginMediaController;->mNextTouchClickListener:Landroid/view/View$OnTouchListener;

    .line 477
    new-instance v0, Lcom/miui/videoplayer/framework/views/OriginMediaController$3;

    invoke-direct {v0, p0}, Lcom/miui/videoplayer/framework/views/OriginMediaController$3;-><init>(Lcom/miui/videoplayer/framework/views/OriginMediaController;)V

    iput-object v0, p0, Lcom/miui/videoplayer/framework/views/OriginMediaController;->mNextLongClickListener:Landroid/view/View$OnLongClickListener;

    .line 492
    iput-boolean v1, p0, Lcom/miui/videoplayer/framework/views/OriginMediaController;->mPrevButtonLongPressed:Z

    .line 493
    new-instance v0, Lcom/miui/videoplayer/framework/views/OriginMediaController$4;

    invoke-direct {v0, p0}, Lcom/miui/videoplayer/framework/views/OriginMediaController$4;-><init>(Lcom/miui/videoplayer/framework/views/OriginMediaController;)V

    iput-object v0, p0, Lcom/miui/videoplayer/framework/views/OriginMediaController;->mPrevTouchClickListener:Landroid/view/View$OnTouchListener;

    .line 517
    new-instance v0, Lcom/miui/videoplayer/framework/views/OriginMediaController$5;

    invoke-direct {v0, p0}, Lcom/miui/videoplayer/framework/views/OriginMediaController$5;-><init>(Lcom/miui/videoplayer/framework/views/OriginMediaController;)V

    iput-object v0, p0, Lcom/miui/videoplayer/framework/views/OriginMediaController;->mPrevLongClickListener:Landroid/view/View$OnLongClickListener;

    .line 594
    new-instance v0, Lcom/miui/videoplayer/framework/views/OriginMediaController$7;

    invoke-direct {v0, p0}, Lcom/miui/videoplayer/framework/views/OriginMediaController$7;-><init>(Lcom/miui/videoplayer/framework/views/OriginMediaController;)V

    iput-object v0, p0, Lcom/miui/videoplayer/framework/views/OriginMediaController;->mPauseListener:Landroid/view/View$OnClickListener;

    .line 666
    new-instance v0, Lcom/miui/videoplayer/framework/views/OriginMediaController$9;

    invoke-direct {v0, p0}, Lcom/miui/videoplayer/framework/views/OriginMediaController$9;-><init>(Lcom/miui/videoplayer/framework/views/OriginMediaController;)V

    iput-object v0, p0, Lcom/miui/videoplayer/framework/views/OriginMediaController;->mSeekListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 746
    new-instance v0, Lcom/miui/videoplayer/framework/views/OriginMediaController$10;

    invoke-direct {v0, p0}, Lcom/miui/videoplayer/framework/views/OriginMediaController$10;-><init>(Lcom/miui/videoplayer/framework/views/OriginMediaController;)V

    iput-object v0, p0, Lcom/miui/videoplayer/framework/views/OriginMediaController;->mControlListListener:Landroid/view/View$OnClickListener;

    .line 758
    new-instance v0, Lcom/miui/videoplayer/framework/views/OriginMediaController$11;

    invoke-direct {v0, p0}, Lcom/miui/videoplayer/framework/views/OriginMediaController$11;-><init>(Lcom/miui/videoplayer/framework/views/OriginMediaController;)V

    iput-object v0, p0, Lcom/miui/videoplayer/framework/views/OriginMediaController;->mAirkanListener:Landroid/view/View$OnClickListener;

    .line 100
    iput-object p0, p0, Lcom/miui/videoplayer/framework/views/OriginMediaController;->mRoot:Landroid/view/View;

    .line 101
    iput-object p1, p0, Lcom/miui/videoplayer/framework/views/OriginMediaController;->mContext:Landroid/content/Context;

    .line 102
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 2
    .parameter "context"
    .parameter "useFastForward"

    .prologue
    const/4 v1, 0x0

    .line 112
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 330
    new-instance v0, Lcom/miui/videoplayer/framework/views/OriginMediaController$1;

    invoke-direct {v0, p0}, Lcom/miui/videoplayer/framework/views/OriginMediaController$1;-><init>(Lcom/miui/videoplayer/framework/views/OriginMediaController;)V

    iput-object v0, p0, Lcom/miui/videoplayer/framework/views/OriginMediaController;->mHandler:Landroid/os/Handler;

    .line 451
    iput-boolean v1, p0, Lcom/miui/videoplayer/framework/views/OriginMediaController;->mNextButtonLongPressed:Z

    .line 452
    new-instance v0, Lcom/miui/videoplayer/framework/views/OriginMediaController$2;

    invoke-direct {v0, p0}, Lcom/miui/videoplayer/framework/views/OriginMediaController$2;-><init>(Lcom/miui/videoplayer/framework/views/OriginMediaController;)V

    iput-object v0, p0, Lcom/miui/videoplayer/framework/views/OriginMediaController;->mNextTouchClickListener:Landroid/view/View$OnTouchListener;

    .line 477
    new-instance v0, Lcom/miui/videoplayer/framework/views/OriginMediaController$3;

    invoke-direct {v0, p0}, Lcom/miui/videoplayer/framework/views/OriginMediaController$3;-><init>(Lcom/miui/videoplayer/framework/views/OriginMediaController;)V

    iput-object v0, p0, Lcom/miui/videoplayer/framework/views/OriginMediaController;->mNextLongClickListener:Landroid/view/View$OnLongClickListener;

    .line 492
    iput-boolean v1, p0, Lcom/miui/videoplayer/framework/views/OriginMediaController;->mPrevButtonLongPressed:Z

    .line 493
    new-instance v0, Lcom/miui/videoplayer/framework/views/OriginMediaController$4;

    invoke-direct {v0, p0}, Lcom/miui/videoplayer/framework/views/OriginMediaController$4;-><init>(Lcom/miui/videoplayer/framework/views/OriginMediaController;)V

    iput-object v0, p0, Lcom/miui/videoplayer/framework/views/OriginMediaController;->mPrevTouchClickListener:Landroid/view/View$OnTouchListener;

    .line 517
    new-instance v0, Lcom/miui/videoplayer/framework/views/OriginMediaController$5;

    invoke-direct {v0, p0}, Lcom/miui/videoplayer/framework/views/OriginMediaController$5;-><init>(Lcom/miui/videoplayer/framework/views/OriginMediaController;)V

    iput-object v0, p0, Lcom/miui/videoplayer/framework/views/OriginMediaController;->mPrevLongClickListener:Landroid/view/View$OnLongClickListener;

    .line 594
    new-instance v0, Lcom/miui/videoplayer/framework/views/OriginMediaController$7;

    invoke-direct {v0, p0}, Lcom/miui/videoplayer/framework/views/OriginMediaController$7;-><init>(Lcom/miui/videoplayer/framework/views/OriginMediaController;)V

    iput-object v0, p0, Lcom/miui/videoplayer/framework/views/OriginMediaController;->mPauseListener:Landroid/view/View$OnClickListener;

    .line 666
    new-instance v0, Lcom/miui/videoplayer/framework/views/OriginMediaController$9;

    invoke-direct {v0, p0}, Lcom/miui/videoplayer/framework/views/OriginMediaController$9;-><init>(Lcom/miui/videoplayer/framework/views/OriginMediaController;)V

    iput-object v0, p0, Lcom/miui/videoplayer/framework/views/OriginMediaController;->mSeekListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 746
    new-instance v0, Lcom/miui/videoplayer/framework/views/OriginMediaController$10;

    invoke-direct {v0, p0}, Lcom/miui/videoplayer/framework/views/OriginMediaController$10;-><init>(Lcom/miui/videoplayer/framework/views/OriginMediaController;)V

    iput-object v0, p0, Lcom/miui/videoplayer/framework/views/OriginMediaController;->mControlListListener:Landroid/view/View$OnClickListener;

    .line 758
    new-instance v0, Lcom/miui/videoplayer/framework/views/OriginMediaController$11;

    invoke-direct {v0, p0}, Lcom/miui/videoplayer/framework/views/OriginMediaController$11;-><init>(Lcom/miui/videoplayer/framework/views/OriginMediaController;)V

    iput-object v0, p0, Lcom/miui/videoplayer/framework/views/OriginMediaController;->mAirkanListener:Landroid/view/View$OnClickListener;

    .line 113
    iput-object p1, p0, Lcom/miui/videoplayer/framework/views/OriginMediaController;->mContext:Landroid/content/Context;

    .line 114
    invoke-direct {p0}, Lcom/miui/videoplayer/framework/views/OriginMediaController;->initFloatingWindow()V

    .line 115
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    sget-object v0, Lcom/miui/videoplayer/framework/views/OriginMediaController;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/miui/videoplayer/framework/views/OriginMediaController;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/miui/videoplayer/framework/views/OriginMediaController;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/miui/videoplayer/framework/views/OriginMediaController;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-boolean v0, p0, Lcom/miui/videoplayer/framework/views/OriginMediaController;->mPrevButtonLongPressed:Z

    return v0
.end method

.method static synthetic access$1002(Lcom/miui/videoplayer/framework/views/OriginMediaController;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 48
    iput-boolean p1, p0, Lcom/miui/videoplayer/framework/views/OriginMediaController;->mPrevButtonLongPressed:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/miui/videoplayer/framework/views/OriginMediaController;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-boolean v0, p0, Lcom/miui/videoplayer/framework/views/OriginMediaController;->mNextButtonLongPressed:Z

    return v0
.end method

.method static synthetic access$1102(Lcom/miui/videoplayer/framework/views/OriginMediaController;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 48
    iput-boolean p1, p0, Lcom/miui/videoplayer/framework/views/OriginMediaController;->mNextButtonLongPressed:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/miui/videoplayer/framework/views/OriginMediaController;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/miui/videoplayer/framework/views/OriginMediaController;->showPauseFullScreenPopupWindow()V

    return-void
.end method

.method static synthetic access$1300(Lcom/miui/videoplayer/framework/views/OriginMediaController;)[Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/miui/videoplayer/framework/views/OriginMediaController;->mUriArray:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/miui/videoplayer/framework/views/OriginMediaController;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget v0, p0, Lcom/miui/videoplayer/framework/views/OriginMediaController;->mPlayingIndex:I

    return v0
.end method

.method static synthetic access$1500(Lcom/miui/videoplayer/framework/views/OriginMediaController;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/miui/videoplayer/framework/views/OriginMediaController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/miui/videoplayer/framework/views/OriginMediaController;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/miui/videoplayer/framework/views/OriginMediaController;->doPauseResume()V

    return-void
.end method

.method static synthetic access$1700(Lcom/miui/videoplayer/framework/views/OriginMediaController;)Lcom/miui/videoplayer/framework/popup/PauseFullScreenPopupWindow;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/miui/videoplayer/framework/views/OriginMediaController;->mFullScreenPopupWindow:Lcom/miui/videoplayer/framework/popup/PauseFullScreenPopupWindow;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/miui/videoplayer/framework/views/OriginMediaController;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/miui/videoplayer/framework/views/OriginMediaController;->mCurrentTime:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/miui/videoplayer/framework/views/OriginMediaController;)Lcom/miui/videoplayer/framework/popup/TopStatusBarPopupWindow;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/miui/videoplayer/framework/views/OriginMediaController;->mTopStatusBarPopupWindow:Lcom/miui/videoplayer/framework/popup/TopStatusBarPopupWindow;

    return-object v0
.end method

.method static synthetic access$200(Lcom/miui/videoplayer/framework/views/OriginMediaController;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/miui/videoplayer/framework/views/OriginMediaController;->setProgress()I

    move-result v0

    return v0
.end method

.method static synthetic access$2000(Lcom/miui/videoplayer/framework/views/OriginMediaController;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/miui/videoplayer/framework/views/OriginMediaController;->mAnchor:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/miui/videoplayer/framework/views/OriginMediaController;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/miui/videoplayer/framework/views/OriginMediaController;->updatePausePlay()V

    return-void
.end method

.method static synthetic access$2200(Lcom/miui/videoplayer/framework/views/OriginMediaController;)Lcom/miui/videoplayer/framework/popup/ControlListPopupWindow;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/miui/videoplayer/framework/views/OriginMediaController;->mControlListPopupWindow:Lcom/miui/videoplayer/framework/popup/ControlListPopupWindow;

    return-object v0
.end method

.method static synthetic access$2202(Lcom/miui/videoplayer/framework/views/OriginMediaController;Lcom/miui/videoplayer/framework/popup/ControlListPopupWindow;)Lcom/miui/videoplayer/framework/popup/ControlListPopupWindow;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 48
    iput-object p1, p0, Lcom/miui/videoplayer/framework/views/OriginMediaController;->mControlListPopupWindow:Lcom/miui/videoplayer/framework/popup/ControlListPopupWindow;

    return-object p1
.end method

.method static synthetic access$2300(Lcom/miui/videoplayer/framework/views/OriginMediaController;)Lcom/miui/videoplayer/framework/popup/IAirKanDevicesPopupWindow;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/miui/videoplayer/framework/views/OriginMediaController;->mAirkanDevicePopupWindow:Lcom/miui/videoplayer/framework/popup/IAirKanDevicesPopupWindow;

    return-object v0
.end method

.method static synthetic access$2302(Lcom/miui/videoplayer/framework/views/OriginMediaController;Lcom/miui/videoplayer/framework/popup/IAirKanDevicesPopupWindow;)Lcom/miui/videoplayer/framework/popup/IAirKanDevicesPopupWindow;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 48
    iput-object p1, p0, Lcom/miui/videoplayer/framework/views/OriginMediaController;->mAirkanDevicePopupWindow:Lcom/miui/videoplayer/framework/popup/IAirKanDevicesPopupWindow;

    return-object p1
.end method

.method static synthetic access$300(Lcom/miui/videoplayer/framework/views/OriginMediaController;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-boolean v0, p0, Lcom/miui/videoplayer/framework/views/OriginMediaController;->mDragging:Z

    return v0
.end method

.method static synthetic access$302(Lcom/miui/videoplayer/framework/views/OriginMediaController;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 48
    iput-boolean p1, p0, Lcom/miui/videoplayer/framework/views/OriginMediaController;->mDragging:Z

    return p1
.end method

.method static synthetic access$400(Lcom/miui/videoplayer/framework/views/OriginMediaController;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-boolean v0, p0, Lcom/miui/videoplayer/framework/views/OriginMediaController;->mShowing:Z

    return v0
.end method

.method static synthetic access$500(Lcom/miui/videoplayer/framework/views/OriginMediaController;)Lcom/miui/videoplayer/framework/ui/MediaPlayerControl;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/miui/videoplayer/framework/views/OriginMediaController;->mPlayer:Lcom/miui/videoplayer/framework/ui/MediaPlayerControl;

    return-object v0
.end method

.method static synthetic access$600(Lcom/miui/videoplayer/framework/views/OriginMediaController;)Lcom/miui/videoplayer/framework/popup/ProgressTimePopupWindow;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/miui/videoplayer/framework/views/OriginMediaController;->mProgressTimePopupWindow:Lcom/miui/videoplayer/framework/popup/ProgressTimePopupWindow;

    return-object v0
.end method

.method static synthetic access$602(Lcom/miui/videoplayer/framework/views/OriginMediaController;Lcom/miui/videoplayer/framework/popup/ProgressTimePopupWindow;)Lcom/miui/videoplayer/framework/popup/ProgressTimePopupWindow;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 48
    iput-object p1, p0, Lcom/miui/videoplayer/framework/views/OriginMediaController;->mProgressTimePopupWindow:Lcom/miui/videoplayer/framework/popup/ProgressTimePopupWindow;

    return-object p1
.end method

.method static synthetic access$700(Lcom/miui/videoplayer/framework/views/OriginMediaController;)Lcom/miui/videoplayer/framework/airkan/AirkanManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/miui/videoplayer/framework/views/OriginMediaController;->mAirKanManager:Lcom/miui/videoplayer/framework/airkan/AirkanManager;

    return-object v0
.end method

.method static synthetic access$800(Lcom/miui/videoplayer/framework/views/OriginMediaController;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/miui/videoplayer/framework/views/OriginMediaController;->ffwd()V

    return-void
.end method

.method static synthetic access$900(Lcom/miui/videoplayer/framework/views/OriginMediaController;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/miui/videoplayer/framework/views/OriginMediaController;->rew()V

    return-void
.end method

.method private doPauseResume()V
    .locals 1

    .prologue
    .line 643
    iget-object v0, p0, Lcom/miui/videoplayer/framework/views/OriginMediaController;->mPlayer:Lcom/miui/videoplayer/framework/ui/MediaPlayerControl;

    invoke-interface {v0}, Lcom/miui/videoplayer/framework/ui/MediaPlayerControl;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 644
    iget-object v0, p0, Lcom/miui/videoplayer/framework/views/OriginMediaController;->mPlayer:Lcom/miui/videoplayer/framework/ui/MediaPlayerControl;

    invoke-interface {v0}, Lcom/miui/videoplayer/framework/ui/MediaPlayerControl;->pause()V

    .line 648
    :goto_0
    invoke-direct {p0}, Lcom/miui/videoplayer/framework/views/OriginMediaController;->updatePausePlay()V

    .line 649
    return-void

    .line 646
    :cond_0
    iget-object v0, p0, Lcom/miui/videoplayer/framework/views/OriginMediaController;->mPlayer:Lcom/miui/videoplayer/framework/ui/MediaPlayerControl;

    invoke-interface {v0}, Lcom/miui/videoplayer/framework/ui/MediaPlayerControl;->start()V

    goto :goto_0
.end method

.method private ffwd()V
    .locals 2

    .prologue
    .line 733
    iget-object v1, p0, Lcom/miui/videoplayer/framework/views/OriginMediaController;->mPlayer:Lcom/miui/videoplayer/framework/ui/MediaPlayerControl;

    invoke-interface {v1}, Lcom/miui/videoplayer/framework/ui/MediaPlayerControl;->getCurrentPosition()I

    move-result v0

    .line 734
    .local v0, pos:I
    add-int/lit16 v0, v0, 0x3e8

    .line 735
    iget-object v1, p0, Lcom/miui/videoplayer/framework/views/OriginMediaController;->mPlayer:Lcom/miui/videoplayer/framework/ui/MediaPlayerControl;

    invoke-interface {v1, v0}, Lcom/miui/videoplayer/framework/ui/MediaPlayerControl;->seekTo(I)V

    .line 736
    invoke-direct {p0}, Lcom/miui/videoplayer/framework/views/OriginMediaController;->setProgress()I

    .line 737
    return-void
.end method

.method private getMediaTitle(Ljava/lang/String;)Lcom/miui/videoplayer/framework/history/PlayHistoryManager$PlayHistoryEntry;
    .locals 1
    .parameter "uriString"

    .prologue
    .line 300
    iget-object v0, p0, Lcom/miui/videoplayer/framework/views/OriginMediaController;->mUriTitleMap:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 301
    iget-object v0, p0, Lcom/miui/videoplayer/framework/views/OriginMediaController;->mUriTitleMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/videoplayer/framework/history/PlayHistoryManager$PlayHistoryEntry;

    .line 303
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private initControllerView(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 185
    const v1, 0x7f09001c

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/miui/videoplayer/framework/views/OriginMediaController;->mControlListButton:Landroid/widget/ImageView;

    .line 186
    iget-object v1, p0, Lcom/miui/videoplayer/framework/views/OriginMediaController;->mControlListButton:Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    .line 187
    iget-object v1, p0, Lcom/miui/videoplayer/framework/views/OriginMediaController;->mControlListButton:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/miui/videoplayer/framework/views/OriginMediaController;->mControlListListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 188
    iget-object v1, p0, Lcom/miui/videoplayer/framework/views/OriginMediaController;->mUriArray:[Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/videoplayer/framework/views/OriginMediaController;->mUriArray:[Ljava/lang/String;

    array-length v1, v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 189
    iget-object v1, p0, Lcom/miui/videoplayer/framework/views/OriginMediaController;->mControlListButton:Landroid/widget/ImageView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 193
    :cond_0
    const v1, 0x7f090020

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/miui/videoplayer/framework/views/OriginMediaController;->mAirKanButton:Landroid/widget/ImageView;

    .line 194
    iget-object v1, p0, Lcom/miui/videoplayer/framework/views/OriginMediaController;->mAirKanButton:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 195
    iget-object v1, p0, Lcom/miui/videoplayer/framework/views/OriginMediaController;->mAirKanButton:Landroid/widget/ImageView;

    if-eqz v1, :cond_1

    .line 196
    iget-object v1, p0, Lcom/miui/videoplayer/framework/views/OriginMediaController;->mAirKanButton:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/miui/videoplayer/framework/views/OriginMediaController;->mAirkanListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 199
    :cond_1
    const v1, 0x7f09001e

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/miui/videoplayer/framework/views/OriginMediaController;->mPauseButton:Landroid/widget/ImageView;

    .line 200
    iget-object v1, p0, Lcom/miui/videoplayer/framework/views/OriginMediaController;->mPauseButton:Landroid/widget/ImageView;

    if-eqz v1, :cond_2

    .line 201
    iget-object v1, p0, Lcom/miui/videoplayer/framework/views/OriginMediaController;->mPauseButton:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->requestFocus()Z

    .line 202
    iget-object v1, p0, Lcom/miui/videoplayer/framework/views/OriginMediaController;->mPauseButton:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/miui/videoplayer/framework/views/OriginMediaController;->mPauseListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 205
    :cond_2
    const v1, 0x7f09001f

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/miui/videoplayer/framework/views/OriginMediaController;->mNextButton:Landroid/widget/ImageView;

    .line 206
    iget-object v1, p0, Lcom/miui/videoplayer/framework/views/OriginMediaController;->mNextButton:Landroid/widget/ImageView;

    if-eqz v1, :cond_3

    .line 207
    iget-object v1, p0, Lcom/miui/videoplayer/framework/views/OriginMediaController;->mNextButton:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/miui/videoplayer/framework/views/OriginMediaController;->mNextLongClickListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 208
    iget-object v1, p0, Lcom/miui/videoplayer/framework/views/OriginMediaController;->mNextButton:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/miui/videoplayer/framework/views/OriginMediaController;->mNextTouchClickListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 211
    :cond_3
    const v1, 0x7f09001d

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/miui/videoplayer/framework/views/OriginMediaController;->mPrevButton:Landroid/widget/ImageView;

    .line 212
    iget-object v1, p0, Lcom/miui/videoplayer/framework/views/OriginMediaController;->mPrevButton:Landroid/widget/ImageView;

    if-eqz v1, :cond_4

    .line 213
    iget-object v1, p0, Lcom/miui/videoplayer/framework/views/OriginMediaController;->mPrevButton:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/miui/videoplayer/framework/views/OriginMediaController;->mPrevLongClickListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 214
    iget-object v1, p0, Lcom/miui/videoplayer/framework/views/OriginMediaController;->mPrevButton:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/miui/videoplayer/framework/views/OriginMediaController;->mPrevTouchClickListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 217
    :cond_4
    const v1, 0x7f090025

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/SeekBar;

    iput-object v1, p0, Lcom/miui/videoplayer/framework/views/OriginMediaController;->mProgress:Landroid/widget/SeekBar;

    .line 218
    iget-object v1, p0, Lcom/miui/videoplayer/framework/views/OriginMediaController;->mProgress:Landroid/widget/SeekBar;

    if-eqz v1, :cond_6

    .line 219
    iget-object v1, p0, Lcom/miui/videoplayer/framework/views/OriginMediaController;->mProgress:Landroid/widget/SeekBar;

    instance-of v1, v1, Landroid/widget/SeekBar;

    if-eqz v1, :cond_5

    .line 220
    iget-object v0, p0, Lcom/miui/videoplayer/framework/views/OriginMediaController;->mProgress:Landroid/widget/SeekBar;

    .line 221
    .local v0, seeker:Landroid/widget/SeekBar;
    iget-object v1, p0, Lcom/miui/videoplayer/framework/views/OriginMediaController;->mSeekListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 223
    .end local v0           #seeker:Landroid/widget/SeekBar;
    :cond_5
    iget-object v1, p0, Lcom/miui/videoplayer/framework/views/OriginMediaController;->mProgress:Landroid/widget/SeekBar;

    const/16 v2, 0x3e8

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setMax(I)V

    .line 226
    :cond_6
    const v1, 0x7f090024

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/miui/videoplayer/framework/views/OriginMediaController;->mEndTime:Landroid/widget/TextView;

    .line 227
    const v1, 0x7f090023

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/miui/videoplayer/framework/views/OriginMediaController;->mCurrentTime:Landroid/widget/TextView;

    .line 228
    return-void
.end method

.method private initFloatingWindow()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 122
    new-instance v1, Lcom/miui/videoplayer/framework/popup/BottomControllerPopupWindow;

    iget-object v2, p0, Lcom/miui/videoplayer/framework/views/OriginMediaController;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, p0}, Lcom/miui/videoplayer/framework/popup/BottomControllerPopupWindow;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iput-object v1, p0, Lcom/miui/videoplayer/framework/views/OriginMediaController;->mBottomControllerPopupWindow:Lcom/miui/videoplayer/framework/popup/BottomControllerPopupWindow;

    .line 124
    new-instance v1, Lcom/miui/videoplayer/framework/popup/TopStatusBarPopupWindowV5;

    iget-object v2, p0, Lcom/miui/videoplayer/framework/views/OriginMediaController;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/miui/videoplayer/framework/popup/TopStatusBarPopupWindowV5;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/miui/videoplayer/framework/views/OriginMediaController;->mTopStatusBarPopupWindow:Lcom/miui/videoplayer/framework/popup/TopStatusBarPopupWindow;

    .line 125
    iget-object v1, p0, Lcom/miui/videoplayer/framework/views/OriginMediaController;->mTopStatusBarPopupWindow:Lcom/miui/videoplayer/framework/popup/TopStatusBarPopupWindow;

    iget-object v2, p0, Lcom/miui/videoplayer/framework/views/OriginMediaController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020077

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/miui/videoplayer/framework/popup/TopStatusBarPopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 126
    iget-object v1, p0, Lcom/miui/videoplayer/framework/views/OriginMediaController;->mBottomControllerPopupWindow:Lcom/miui/videoplayer/framework/popup/BottomControllerPopupWindow;

    iget-object v2, p0, Lcom/miui/videoplayer/framework/views/OriginMediaController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f02001e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/miui/videoplayer/framework/popup/BottomControllerPopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 128
    iget-object v1, p0, Lcom/miui/videoplayer/framework/views/OriginMediaController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070047

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v0, v1

    .line 129
    .local v0, bottomControllerHeightV5:I
    iget-object v1, p0, Lcom/miui/videoplayer/framework/views/OriginMediaController;->mBottomControllerPopupWindow:Lcom/miui/videoplayer/framework/popup/BottomControllerPopupWindow;

    invoke-virtual {v1, v0}, Lcom/miui/videoplayer/framework/popup/BottomControllerPopupWindow;->setHeight(I)V

    .line 137
    invoke-virtual {p0, v4}, Lcom/miui/videoplayer/framework/views/OriginMediaController;->setFocusable(Z)V

    .line 138
    invoke-virtual {p0, v4}, Lcom/miui/videoplayer/framework/views/OriginMediaController;->setFocusableInTouchMode(Z)V

    .line 139
    const/high16 v1, 0x4

    invoke-virtual {p0, v1}, Lcom/miui/videoplayer/framework/views/OriginMediaController;->setDescendantFocusability(I)V

    .line 140
    invoke-virtual {p0}, Lcom/miui/videoplayer/framework/views/OriginMediaController;->requestFocus()Z

    .line 141
    return-void
.end method

.method private recordLastPosition(I)V
    .locals 2
    .parameter "position"

    .prologue
    .line 581
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/miui/videoplayer/framework/views/OriginMediaController$6;

    invoke-direct {v1, p0, p1}, Lcom/miui/videoplayer/framework/views/OriginMediaController$6;-><init>(Lcom/miui/videoplayer/framework/views/OriginMediaController;I)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 592
    return-void
.end method

.method private rew()V
    .locals 2

    .prologue
    .line 740
    iget-object v1, p0, Lcom/miui/videoplayer/framework/views/OriginMediaController;->mPlayer:Lcom/miui/videoplayer/framework/ui/MediaPlayerControl;

    invoke-interface {v1}, Lcom/miui/videoplayer/framework/ui/MediaPlayerControl;->getCurrentPosition()I

    move-result v0

    .line 741
    .local v0, pos:I
    add-int/lit16 v0, v0, -0x3e8

    .line 742
    iget-object v1, p0, Lcom/miui/videoplayer/framework/views/OriginMediaController;->mPlayer:Lcom/miui/videoplayer/framework/ui/MediaPlayerControl;

    invoke-interface {v1, v0}, Lcom/miui/videoplayer/framework/ui/MediaPlayerControl;->seekTo(I)V

    .line 743
    invoke-direct {p0}, Lcom/miui/videoplayer/framework/views/OriginMediaController;->setProgress()I

    .line 744
    return-void
.end method

.method private setProgress()I
    .locals 9

    .prologue
    const/4 v5, 0x0

    .line 398
    iget-object v6, p0, Lcom/miui/videoplayer/framework/views/OriginMediaController;->mPlayer:Lcom/miui/videoplayer/framework/ui/MediaPlayerControl;

    if-eqz v6, :cond_0

    iget-boolean v6, p0, Lcom/miui/videoplayer/framework/views/OriginMediaController;->mDragging:Z

    if-eqz v6, :cond_2

    :cond_0
    move v4, v5

    .line 439
    :cond_1
    :goto_0
    return v4

    .line 401
    :cond_2
    iget-object v6, p0, Lcom/miui/videoplayer/framework/views/OriginMediaController;->mPlayer:Lcom/miui/videoplayer/framework/ui/MediaPlayerControl;

    invoke-interface {v6}, Lcom/miui/videoplayer/framework/ui/MediaPlayerControl;->getCurrentPosition()I

    move-result v4

    .line 402
    .local v4, position:I
    iget-object v6, p0, Lcom/miui/videoplayer/framework/views/OriginMediaController;->mPlayer:Lcom/miui/videoplayer/framework/ui/MediaPlayerControl;

    invoke-interface {v6}, Lcom/miui/videoplayer/framework/ui/MediaPlayerControl;->getDuration()I

    move-result v0

    .line 403
    .local v0, duration:I
    iget-object v6, p0, Lcom/miui/videoplayer/framework/views/OriginMediaController;->mPlayer:Lcom/miui/videoplayer/framework/ui/MediaPlayerControl;

    instance-of v6, v6, Lcom/miui/videoplayer/framework/airkan/RemoteTVMediaPlayerControl;

    if-eqz v6, :cond_3

    .line 405
    invoke-direct {p0}, Lcom/miui/videoplayer/framework/views/OriginMediaController;->updatePausePlay()V

    .line 417
    :cond_3
    iget-object v6, p0, Lcom/miui/videoplayer/framework/views/OriginMediaController;->mPlayer:Lcom/miui/videoplayer/framework/ui/MediaPlayerControl;

    instance-of v6, v6, Lcom/miui/videoplayer/framework/airkan/RemoteTVMediaPlayerControl;

    if-eqz v6, :cond_4

    const/4 v6, -0x1

    if-ne v0, v6, :cond_4

    move v4, v5

    .line 418
    goto :goto_0

    .line 421
    :cond_4
    iget-object v5, p0, Lcom/miui/videoplayer/framework/views/OriginMediaController;->mProgress:Landroid/widget/SeekBar;

    if-eqz v5, :cond_6

    .line 422
    if-lez v0, :cond_5

    .line 424
    const-wide/16 v5, 0x3e8

    int-to-long v7, v4

    mul-long/2addr v5, v7

    int-to-long v7, v0

    div-long v2, v5, v7

    .line 425
    .local v2, pos:J
    iget-object v5, p0, Lcom/miui/videoplayer/framework/views/OriginMediaController;->mProgress:Landroid/widget/SeekBar;

    long-to-int v6, v2

    invoke-virtual {v5, v6}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 427
    .end local v2           #pos:J
    :cond_5
    iget-object v5, p0, Lcom/miui/videoplayer/framework/views/OriginMediaController;->mPlayer:Lcom/miui/videoplayer/framework/ui/MediaPlayerControl;

    invoke-interface {v5}, Lcom/miui/videoplayer/framework/ui/MediaPlayerControl;->getBufferPercentage()I

    move-result v1

    .line 428
    .local v1, percent:I
    iget-object v5, p0, Lcom/miui/videoplayer/framework/views/OriginMediaController;->mProgress:Landroid/widget/SeekBar;

    mul-int/lit8 v6, v1, 0xa

    invoke-virtual {v5, v6}, Landroid/widget/SeekBar;->setSecondaryProgress(I)V

    .line 430
    .end local v1           #percent:I
    :cond_6
    if-eqz v0, :cond_1

    .line 433
    iget-object v5, p0, Lcom/miui/videoplayer/framework/views/OriginMediaController;->mEndTime:Landroid/widget/TextView;

    if-eqz v5, :cond_7

    .line 434
    iget-object v5, p0, Lcom/miui/videoplayer/framework/views/OriginMediaController;->mEndTime:Landroid/widget/TextView;

    invoke-static {}, Lcom/miui/videoplayer/framework/utils/DKTimeFormatter;->getInstance()Lcom/miui/videoplayer/framework/utils/DKTimeFormatter;

    move-result-object v6

    invoke-virtual {v6, v0}, Lcom/miui/videoplayer/framework/utils/DKTimeFormatter;->stringForTime(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 435
    :cond_7
    iget-object v5, p0, Lcom/miui/videoplayer/framework/views/OriginMediaController;->mCurrentTime:Landroid/widget/TextView;

    if-eqz v5, :cond_1

    .line 436
    iget-object v5, p0, Lcom/miui/videoplayer/framework/views/OriginMediaController;->mCurrentTime:Landroid/widget/TextView;

    invoke-static {}, Lcom/miui/videoplayer/framework/utils/DKTimeFormatter;->getInstance()Lcom/miui/videoplayer/framework/utils/DKTimeFormatter;

    move-result-object v6

    invoke-virtual {v6, v4}, Lcom/miui/videoplayer/framework/utils/DKTimeFormatter;->stringForTime(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private setProgressBarAndPauseButtonEnable(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 443
    iget-object v0, p0, Lcom/miui/videoplayer/framework/views/OriginMediaController;->mProgress:Landroid/widget/SeekBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/videoplayer/framework/views/OriginMediaController;->mProgress:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->isEnabled()Z

    move-result v0

    if-eq v0, p1, :cond_0

    .line 444
    iget-object v0, p0, Lcom/miui/videoplayer/framework/views/OriginMediaController;->mProgress:Landroid/widget/SeekBar;

    invoke-virtual {v0, p1}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 446
    :cond_0
    iget-object v0, p0, Lcom/miui/videoplayer/framework/views/OriginMediaController;->mPauseButton:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/videoplayer/framework/views/OriginMediaController;->mPauseButton:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->isEnabled()Z

    move-result v0

    if-eq v0, p1, :cond_1

    .line 447
    iget-object v0, p0, Lcom/miui/videoplayer/framework/views/OriginMediaController;->mPauseButton:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 449
    :cond_1
    return-void
.end method

.method private showPauseFullScreenPopupWindow()V
    .locals 2

    .prologue
    .line 621
    iget-object v0, p0, Lcom/miui/videoplayer/framework/views/OriginMediaController;->mFullScreenPopupWindow:Lcom/miui/videoplayer/framework/popup/PauseFullScreenPopupWindow;

    if-nez v0, :cond_0

    .line 622
    new-instance v0, Lcom/miui/videoplayer/framework/popup/PauseFullScreenPopupWindow;

    iget-object v1, p0, Lcom/miui/videoplayer/framework/views/OriginMediaController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/miui/videoplayer/framework/popup/PauseFullScreenPopupWindow;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/videoplayer/framework/views/OriginMediaController;->mFullScreenPopupWindow:Lcom/miui/videoplayer/framework/popup/PauseFullScreenPopupWindow;

    .line 624
    :cond_0
    iget-object v0, p0, Lcom/miui/videoplayer/framework/views/OriginMediaController;->mFullScreenPopupWindow:Lcom/miui/videoplayer/framework/popup/PauseFullScreenPopupWindow;

    new-instance v1, Lcom/miui/videoplayer/framework/views/OriginMediaController$8;

    invoke-direct {v1, p0}, Lcom/miui/videoplayer/framework/views/OriginMediaController$8;-><init>(Lcom/miui/videoplayer/framework/views/OriginMediaController;)V

    invoke-virtual {v0, v1}, Lcom/miui/videoplayer/framework/popup/PauseFullScreenPopupWindow;->setOnImageViewClickListener(Landroid/view/View$OnClickListener;)V

    .line 632
    iget-object v0, p0, Lcom/miui/videoplayer/framework/views/OriginMediaController;->mFullScreenPopupWindow:Lcom/miui/videoplayer/framework/popup/PauseFullScreenPopupWindow;

    iget-object v1, p0, Lcom/miui/videoplayer/framework/views/OriginMediaController;->mAnchor:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/miui/videoplayer/framework/popup/PauseFullScreenPopupWindow;->show(Landroid/view/View;)V

    .line 633
    return-void
.end method

.method private updatePausePlay()V
    .locals 1

    .prologue
    .line 636
    iget-object v0, p0, Lcom/miui/videoplayer/framework/views/OriginMediaController;->mRoot:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/videoplayer/framework/views/OriginMediaController;->mPauseButton:Landroid/widget/ImageView;

    if-nez v0, :cond_1

    .line 640
    :cond_0
    :goto_0
    return-void

    .line 639
    :cond_1
    iget-object v0, p0, Lcom/miui/videoplayer/framework/views/OriginMediaController;->mPlayer:Lcom/miui/videoplayer/framework/ui/MediaPlayerControl;

    invoke-interface {v0}, Lcom/miui/videoplayer/framework/ui/MediaPlayerControl;->isPlaying()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/miui/videoplayer/framework/views/OriginMediaController;->updatePlayingState(Z)V

    goto :goto_0
.end method


# virtual methods
.method public changeToAirkanSize()V
    .locals 5

    .prologue
    .line 796
    iget-object v3, p0, Lcom/miui/videoplayer/framework/views/OriginMediaController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f02006d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 797
    .local v2, thumbDrawable:Landroid/graphics/drawable/Drawable;
    iget-object v3, p0, Lcom/miui/videoplayer/framework/views/OriginMediaController;->mProgress:Landroid/widget/SeekBar;

    invoke-virtual {v3, v2}, Landroid/widget/SeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    .line 799
    iget-object v3, p0, Lcom/miui/videoplayer/framework/views/OriginMediaController;->mControlListButton:Landroid/widget/ImageView;

    const v4, 0x7f020027

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 802
    iget-object v3, p0, Lcom/miui/videoplayer/framework/views/OriginMediaController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070032

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v1, v3

    .line 803
    .local v1, controlListButtonLeftMargin:I
    iget-object v3, p0, Lcom/miui/videoplayer/framework/views/OriginMediaController;->mControlListButton:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout$LayoutParams;

    iput v1, v3, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 805
    iget-object v3, p0, Lcom/miui/videoplayer/framework/views/OriginMediaController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070033

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v0, v3

    .line 806
    .local v0, centerButtonLeftMargin:I
    iget-object v3, p0, Lcom/miui/videoplayer/framework/views/OriginMediaController;->mPauseButton:Landroid/widget/ImageView;

    const v4, 0x7f020033

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 807
    iget-object v3, p0, Lcom/miui/videoplayer/framework/views/OriginMediaController;->mNextButton:Landroid/widget/ImageView;

    const v4, 0x7f02002d

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 808
    iget-object v3, p0, Lcom/miui/videoplayer/framework/views/OriginMediaController;->mPrevButton:Landroid/widget/ImageView;

    const v4, 0x7f020042

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 809
    iget-object v3, p0, Lcom/miui/videoplayer/framework/views/OriginMediaController;->mAirKanButton:Landroid/widget/ImageView;

    const v4, 0x7f020044

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 810
    iget-object v3, p0, Lcom/miui/videoplayer/framework/views/OriginMediaController;->mPauseButton:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    iput v0, v3, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 811
    iget-object v3, p0, Lcom/miui/videoplayer/framework/views/OriginMediaController;->mNextButton:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    iput v0, v3, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 813
    iget-object v3, p0, Lcom/miui/videoplayer/framework/views/OriginMediaController;->mAirKanButton:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout$LayoutParams;

    iput v1, v3, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 815
    iget-object v3, p0, Lcom/miui/videoplayer/framework/views/OriginMediaController;->mBottomControllerPopupWindow:Lcom/miui/videoplayer/framework/popup/BottomControllerPopupWindow;

    invoke-virtual {v3}, Lcom/miui/videoplayer/framework/popup/BottomControllerPopupWindow;->dismiss()V

    .line 816
    iget-object v3, p0, Lcom/miui/videoplayer/framework/views/OriginMediaController;->mBottomControllerPopupWindow:Lcom/miui/videoplayer/framework/popup/BottomControllerPopupWindow;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/miui/videoplayer/framework/popup/BottomControllerPopupWindow;->updateHeight(Z)V

    .line 817
    iget-object v3, p0, Lcom/miui/videoplayer/framework/views/OriginMediaController;->mBottomControllerPopupWindow:Lcom/miui/videoplayer/framework/popup/BottomControllerPopupWindow;

    iget-object v4, p0, Lcom/miui/videoplayer/framework/views/OriginMediaController;->mAnchor:Landroid/view/View;

    invoke-virtual {v3, v4}, Lcom/miui/videoplayer/framework/popup/BottomControllerPopupWindow;->show(Landroid/view/View;)V

    .line 821
    return-void
.end method

.method public changeToLocalPlaySize()V
    .locals 5

    .prologue
    .line 824
    iget-object v3, p0, Lcom/miui/videoplayer/framework/views/OriginMediaController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f02006c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 825
    .local v2, thumbDrawable:Landroid/graphics/drawable/Drawable;
    iget-object v3, p0, Lcom/miui/videoplayer/framework/views/OriginMediaController;->mProgress:Landroid/widget/SeekBar;

    invoke-virtual {v3, v2}, Landroid/widget/SeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    .line 827
    iget-object v3, p0, Lcom/miui/videoplayer/framework/views/OriginMediaController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f07001c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v1, v3

    .line 828
    .local v1, controlListButtonLeftMargin:I
    iget-object v3, p0, Lcom/miui/videoplayer/framework/views/OriginMediaController;->mControlListButton:Landroid/widget/ImageView;

    const v4, 0x7f020029

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 829
    iget-object v3, p0, Lcom/miui/videoplayer/framework/views/OriginMediaController;->mControlListButton:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout$LayoutParams;

    iput v1, v3, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 832
    iget-object v3, p0, Lcom/miui/videoplayer/framework/views/OriginMediaController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f07001b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v0, v3

    .line 833
    .local v0, centerButtonLeftMargin:I
    iget-object v3, p0, Lcom/miui/videoplayer/framework/views/OriginMediaController;->mPauseButton:Landroid/widget/ImageView;

    const v4, 0x7f020035

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 834
    iget-object v3, p0, Lcom/miui/videoplayer/framework/views/OriginMediaController;->mNextButton:Landroid/widget/ImageView;

    const v4, 0x7f02002f

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 835
    iget-object v3, p0, Lcom/miui/videoplayer/framework/views/OriginMediaController;->mPrevButton:Landroid/widget/ImageView;

    const v4, 0x7f020043

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 836
    iget-object v3, p0, Lcom/miui/videoplayer/framework/views/OriginMediaController;->mPauseButton:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    iput v0, v3, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 837
    iget-object v3, p0, Lcom/miui/videoplayer/framework/views/OriginMediaController;->mNextButton:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    iput v0, v3, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 839
    iget-object v3, p0, Lcom/miui/videoplayer/framework/views/OriginMediaController;->mAirKanButton:Landroid/widget/ImageView;

    const v4, 0x7f020045

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 840
    iget-object v3, p0, Lcom/miui/videoplayer/framework/views/OriginMediaController;->mAirKanButton:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout$LayoutParams;

    iput v1, v3, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 842
    iget-object v3, p0, Lcom/miui/videoplayer/framework/views/OriginMediaController;->mBottomControllerPopupWindow:Lcom/miui/videoplayer/framework/popup/BottomControllerPopupWindow;

    invoke-virtual {v3}, Lcom/miui/videoplayer/framework/popup/BottomControllerPopupWindow;->dismiss()V

    .line 843
    iget-object v3, p0, Lcom/miui/videoplayer/framework/views/OriginMediaController;->mBottomControllerPopupWindow:Lcom/miui/videoplayer/framework/popup/BottomControllerPopupWindow;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/miui/videoplayer/framework/popup/BottomControllerPopupWindow;->updateHeight(Z)V

    .line 844
    iget-object v3, p0, Lcom/miui/videoplayer/framework/views/OriginMediaController;->mBottomControllerPopupWindow:Lcom/miui/videoplayer/framework/popup/BottomControllerPopupWindow;

    iget-object v4, p0, Lcom/miui/videoplayer/framework/views/OriginMediaController;->mAnchor:Landroid/view/View;

    invoke-virtual {v3, v4}, Lcom/miui/videoplayer/framework/popup/BottomControllerPopupWindow;->show(Landroid/view/View;)V

    .line 845
    return-void
.end method

.method public getAirKanButton()Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 848
    iget-object v0, p0, Lcom/miui/videoplayer/framework/views/OriginMediaController;->mAirKanButton:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getAnchor()Landroid/view/View;
    .locals 1

    .prologue
    .line 861
    iget-object v0, p0, Lcom/miui/videoplayer/framework/views/OriginMediaController;->mAnchor:Landroid/view/View;

    return-object v0
.end method

.method protected getBigPauseImageResId()I
    .locals 1

    .prologue
    .line 931
    const v0, 0x7f020033

    return v0
.end method

.method protected getBigPlayImageResId()I
    .locals 1

    .prologue
    .line 935
    const v0, 0x7f020039

    return v0
.end method

.method public getControlListPopupWindow()Lcom/miui/videoplayer/framework/popup/ControlListPopupWindow;
    .locals 1

    .prologue
    .line 889
    iget-object v0, p0, Lcom/miui/videoplayer/framework/views/OriginMediaController;->mControlListPopupWindow:Lcom/miui/videoplayer/framework/popup/ControlListPopupWindow;

    return-object v0
.end method

.method protected getDuoKanMediaController()Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/miui/videoplayer/framework/views/OriginMediaController;->mDuoKanMediaController:Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;

    return-object v0
.end method

.method protected getLayoutId()I
    .locals 1

    .prologue
    .line 180
    const v0, 0x7f03000e

    return v0
.end method

.method protected getPauseImageResId()I
    .locals 1

    .prologue
    .line 939
    const v0, 0x7f020035

    return v0
.end method

.method protected getPlayImageResId()I
    .locals 1

    .prologue
    .line 943
    const v0, 0x7f02003b

    return v0
.end method

.method public getPlayingUri()Ljava/lang/String;
    .locals 2

    .prologue
    .line 873
    iget-object v0, p0, Lcom/miui/videoplayer/framework/views/OriginMediaController;->mUriArray:[Ljava/lang/String;

    iget v1, p0, Lcom/miui/videoplayer/framework/views/OriginMediaController;->mPlayingIndex:I

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getTopStatusBarPopupWindow()Lcom/miui/videoplayer/framework/popup/TopStatusBarPopupWindow;
    .locals 1

    .prologue
    .line 958
    iget-object v0, p0, Lcom/miui/videoplayer/framework/views/OriginMediaController;->mTopStatusBarPopupWindow:Lcom/miui/videoplayer/framework/popup/TopStatusBarPopupWindow;

    return-object v0
.end method

.method public hide()V
    .locals 3

    .prologue
    .line 314
    sget-object v1, Lcom/miui/videoplayer/framework/views/OriginMediaController;->TAG:Ljava/lang/String;

    const-string v2, "hide"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    iget-object v1, p0, Lcom/miui/videoplayer/framework/views/OriginMediaController;->mAnchor:Landroid/view/View;

    if-nez v1, :cond_1

    .line 328
    :cond_0
    :goto_0
    return-void

    .line 318
    :cond_1
    iget-boolean v1, p0, Lcom/miui/videoplayer/framework/views/OriginMediaController;->mShowing:Z

    if-eqz v1, :cond_0

    .line 320
    :try_start_0
    iget-object v1, p0, Lcom/miui/videoplayer/framework/views/OriginMediaController;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 324
    :goto_1
    iget-object v1, p0, Lcom/miui/videoplayer/framework/views/OriginMediaController;->mBottomControllerPopupWindow:Lcom/miui/videoplayer/framework/popup/BottomControllerPopupWindow;

    invoke-virtual {v1}, Lcom/miui/videoplayer/framework/popup/BottomControllerPopupWindow;->dismiss()V

    .line 325
    iget-object v1, p0, Lcom/miui/videoplayer/framework/views/OriginMediaController;->mTopStatusBarPopupWindow:Lcom/miui/videoplayer/framework/popup/TopStatusBarPopupWindow;

    invoke-virtual {v1}, Lcom/miui/videoplayer/framework/popup/TopStatusBarPopupWindow;->dismiss()V

    .line 326
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/miui/videoplayer/framework/views/OriginMediaController;->mShowing:Z

    goto :goto_0

    .line 321
    :catch_0
    move-exception v0

    .line 322
    .local v0, ex:Ljava/lang/IllegalArgumentException;
    const-string v1, "MediaController"

    const-string v2, "already removed"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public hideFullScreenPausePopup()V
    .locals 1

    .prologue
    .line 948
    iget-object v0, p0, Lcom/miui/videoplayer/framework/views/OriginMediaController;->mFullScreenPopupWindow:Lcom/miui/videoplayer/framework/popup/PauseFullScreenPopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/videoplayer/framework/views/OriginMediaController;->mFullScreenPopupWindow:Lcom/miui/videoplayer/framework/popup/PauseFullScreenPopupWindow;

    invoke-virtual {v0}, Lcom/miui/videoplayer/framework/popup/PauseFullScreenPopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 949
    iget-object v0, p0, Lcom/miui/videoplayer/framework/views/OriginMediaController;->mFullScreenPopupWindow:Lcom/miui/videoplayer/framework/popup/PauseFullScreenPopupWindow;

    invoke-virtual {v0}, Lcom/miui/videoplayer/framework/popup/PauseFullScreenPopupWindow;->dismiss()V

    .line 951
    :cond_0
    return-void
.end method

.method public isShowing()Z
    .locals 1

    .prologue
    .line 307
    iget-boolean v0, p0, Lcom/miui/videoplayer/framework/views/OriginMediaController;->mShowing:Z

    return v0
.end method

.method protected makeControllerView()Landroid/view/View;
    .locals 3

    .prologue
    .line 171
    iget-object v1, p0, Lcom/miui/videoplayer/framework/views/OriginMediaController;->mContext:Landroid/content/Context;

    const-string v2, "layout_inflater"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 172
    .local v0, inflate:Landroid/view/LayoutInflater;
    invoke-virtual {p0}, Lcom/miui/videoplayer/framework/views/OriginMediaController;->getLayoutId()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/videoplayer/framework/views/OriginMediaController;->mRoot:Landroid/view/View;

    .line 174
    iget-object v1, p0, Lcom/miui/videoplayer/framework/views/OriginMediaController;->mRoot:Landroid/view/View;

    invoke-direct {p0, v1}, Lcom/miui/videoplayer/framework/views/OriginMediaController;->initControllerView(Landroid/view/View;)V

    .line 176
    iget-object v1, p0, Lcom/miui/videoplayer/framework/views/OriginMediaController;->mRoot:Landroid/view/View;

    return-object v1
.end method

.method public onActivityDestroy()V
    .locals 2

    .prologue
    .line 962
    iget-object v0, p0, Lcom/miui/videoplayer/framework/views/OriginMediaController;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 963
    return-void
.end method

.method public onFinishInflate()V
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/miui/videoplayer/framework/views/OriginMediaController;->mRoot:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 107
    iget-object v0, p0, Lcom/miui/videoplayer/framework/views/OriginMediaController;->mRoot:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/miui/videoplayer/framework/views/OriginMediaController;->initControllerView(Landroid/view/View;)V

    .line 109
    :cond_0
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 878
    iget-object v0, p0, Lcom/miui/videoplayer/framework/views/OriginMediaController;->mDuoKanMediaController:Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;

    if-eqz v0, :cond_0

    .line 879
    iget-object v0, p0, Lcom/miui/videoplayer/framework/views/OriginMediaController;->mDuoKanMediaController:Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;

    invoke-virtual {v0, p1, p2}, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->onKeyDown(ILandroid/view/KeyEvent;)Z

    .line 881
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onScreenOrientationChanged(I)V
    .locals 3
    .parameter "orientation"

    .prologue
    .line 894
    iget-object v0, p0, Lcom/miui/videoplayer/framework/views/OriginMediaController;->mControlListPopupWindow:Lcom/miui/videoplayer/framework/popup/ControlListPopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/videoplayer/framework/views/OriginMediaController;->mControlListPopupWindow:Lcom/miui/videoplayer/framework/popup/ControlListPopupWindow;

    invoke-virtual {v0}, Lcom/miui/videoplayer/framework/popup/ControlListPopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 895
    iget-object v0, p0, Lcom/miui/videoplayer/framework/views/OriginMediaController;->mControlListPopupWindow:Lcom/miui/videoplayer/framework/popup/ControlListPopupWindow;

    invoke-virtual {v0}, Lcom/miui/videoplayer/framework/popup/ControlListPopupWindow;->dismiss()V

    .line 896
    iget-object v0, p0, Lcom/miui/videoplayer/framework/views/OriginMediaController;->mControlListPopupWindow:Lcom/miui/videoplayer/framework/popup/ControlListPopupWindow;

    iget-object v1, p0, Lcom/miui/videoplayer/framework/views/OriginMediaController;->mAnchor:Landroid/view/View;

    iget-object v2, p0, Lcom/miui/videoplayer/framework/views/OriginMediaController;->mPlayer:Lcom/miui/videoplayer/framework/ui/MediaPlayerControl;

    invoke-virtual {v0, v1, v2}, Lcom/miui/videoplayer/framework/popup/ControlListPopupWindow;->show(Landroid/view/View;Lcom/miui/videoplayer/framework/ui/MediaPlayerControl;)V

    .line 898
    :cond_0
    iget-object v0, p0, Lcom/miui/videoplayer/framework/views/OriginMediaController;->mAirKanManager:Lcom/miui/videoplayer/framework/airkan/AirkanManager;

    invoke-virtual {v0}, Lcom/miui/videoplayer/framework/airkan/AirkanManager;->isPlayingInLocal()Z

    move-result v0

    if-nez v0, :cond_1

    .line 899
    invoke-virtual {p0}, Lcom/miui/videoplayer/framework/views/OriginMediaController;->changeToAirkanSize()V

    .line 900
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/miui/videoplayer/framework/views/OriginMediaController;->setUpdateProgressEnable(Z)V

    .line 901
    iget-object v0, p0, Lcom/miui/videoplayer/framework/views/OriginMediaController;->mAirkanDevicePopupWindow:Lcom/miui/videoplayer/framework/popup/IAirKanDevicesPopupWindow;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/videoplayer/framework/views/OriginMediaController;->mAirkanDevicePopupWindow:Lcom/miui/videoplayer/framework/popup/IAirKanDevicesPopupWindow;

    invoke-interface {v0}, Lcom/miui/videoplayer/framework/popup/IAirKanDevicesPopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 902
    iget-object v0, p0, Lcom/miui/videoplayer/framework/views/OriginMediaController;->mAirkanDevicePopupWindow:Lcom/miui/videoplayer/framework/popup/IAirKanDevicesPopupWindow;

    invoke-interface {v0}, Lcom/miui/videoplayer/framework/popup/IAirKanDevicesPopupWindow;->dismiss()V

    .line 903
    iget-object v0, p0, Lcom/miui/videoplayer/framework/views/OriginMediaController;->mAirkanDevicePopupWindow:Lcom/miui/videoplayer/framework/popup/IAirKanDevicesPopupWindow;

    iget-object v1, p0, Lcom/miui/videoplayer/framework/views/OriginMediaController;->mAnchor:Landroid/view/View;

    iget-object v2, p0, Lcom/miui/videoplayer/framework/views/OriginMediaController;->mPlayer:Lcom/miui/videoplayer/framework/ui/MediaPlayerControl;

    invoke-interface {v0, v1, v2}, Lcom/miui/videoplayer/framework/popup/IAirKanDevicesPopupWindow;->show(Landroid/view/View;Lcom/miui/videoplayer/framework/ui/MediaPlayerControl;)V

    .line 906
    :cond_1
    iget-object v0, p0, Lcom/miui/videoplayer/framework/views/OriginMediaController;->mAirkanDevicePopupWindow:Lcom/miui/videoplayer/framework/popup/IAirKanDevicesPopupWindow;

    instance-of v0, v0, Lcom/miui/videoplayer/framework/popup/AirKanDevicesPopupWindowV5;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/videoplayer/framework/views/OriginMediaController;->mAirkanDevicePopupWindow:Lcom/miui/videoplayer/framework/popup/IAirKanDevicesPopupWindow;

    invoke-interface {v0}, Lcom/miui/videoplayer/framework/popup/IAirKanDevicesPopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 907
    iget-object v0, p0, Lcom/miui/videoplayer/framework/views/OriginMediaController;->mAirkanDevicePopupWindow:Lcom/miui/videoplayer/framework/popup/IAirKanDevicesPopupWindow;

    invoke-interface {v0}, Lcom/miui/videoplayer/framework/popup/IAirKanDevicesPopupWindow;->dismiss()V

    .line 908
    iget-object v0, p0, Lcom/miui/videoplayer/framework/views/OriginMediaController;->mAirkanDevicePopupWindow:Lcom/miui/videoplayer/framework/popup/IAirKanDevicesPopupWindow;

    iget-object v1, p0, Lcom/miui/videoplayer/framework/views/OriginMediaController;->mAnchor:Landroid/view/View;

    iget-object v2, p0, Lcom/miui/videoplayer/framework/views/OriginMediaController;->mPlayer:Lcom/miui/videoplayer/framework/ui/MediaPlayerControl;

    invoke-interface {v0, v1, v2}, Lcom/miui/videoplayer/framework/popup/IAirKanDevicesPopupWindow;->show(Landroid/view/View;Lcom/miui/videoplayer/framework/ui/MediaPlayerControl;)V

    .line 910
    :cond_2
    return-void
.end method

.method public playNextMedia()V
    .locals 1

    .prologue
    .line 865
    iget v0, p0, Lcom/miui/videoplayer/framework/views/OriginMediaController;->mPlayingIndex:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/miui/videoplayer/framework/views/OriginMediaController;->switchMedia(I)V

    .line 866
    return-void
.end method

.method public playPreviousMedia()V
    .locals 1

    .prologue
    .line 869
    iget v0, p0, Lcom/miui/videoplayer/framework/views/OriginMediaController;->mPlayingIndex:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/miui/videoplayer/framework/views/OriginMediaController;->switchMedia(I)V

    .line 870
    return-void
.end method

.method public removeShowFullScreenPauseMessage()V
    .locals 2

    .prologue
    .line 966
    iget-object v0, p0, Lcom/miui/videoplayer/framework/views/OriginMediaController;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 967
    return-void
.end method

.method public setAirKanManager(Lcom/miui/videoplayer/framework/airkan/AirkanManager;)V
    .locals 0
    .parameter "airKanManager"

    .prologue
    .line 784
    iput-object p1, p0, Lcom/miui/videoplayer/framework/views/OriginMediaController;->mAirKanManager:Lcom/miui/videoplayer/framework/airkan/AirkanManager;

    .line 785
    return-void
.end method

.method public setAnchorView(Landroid/view/View;)V
    .locals 3
    .parameter "view"

    .prologue
    const/4 v2, -0x1

    .line 156
    iput-object p1, p0, Lcom/miui/videoplayer/framework/views/OriginMediaController;->mAnchor:Landroid/view/View;

    .line 157
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 158
    .local v0, frameParams:Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {p0}, Lcom/miui/videoplayer/framework/views/OriginMediaController;->removeAllViews()V

    .line 159
    invoke-virtual {p0}, Lcom/miui/videoplayer/framework/views/OriginMediaController;->makeControllerView()Landroid/view/View;

    move-result-object v1

    .line 160
    .local v1, v:Landroid/view/View;
    invoke-virtual {p0, v1, v0}, Lcom/miui/videoplayer/framework/views/OriginMediaController;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 161
    return-void
.end method

.method public setDuoKanMediaController(Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;)V
    .locals 0
    .parameter "duoKanMediaController"

    .prologue
    .line 885
    iput-object p1, p0, Lcom/miui/videoplayer/framework/views/OriginMediaController;->mDuoKanMediaController:Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;

    .line 886
    return-void
.end method

.method public setMediaPlayer(Lcom/miui/videoplayer/framework/ui/MediaPlayerControl;)V
    .locals 0
    .parameter "player"

    .prologue
    .line 144
    iput-object p1, p0, Lcom/miui/videoplayer/framework/views/OriginMediaController;->mPlayer:Lcom/miui/videoplayer/framework/ui/MediaPlayerControl;

    .line 145
    invoke-direct {p0}, Lcom/miui/videoplayer/framework/views/OriginMediaController;->updatePausePlay()V

    .line 146
    return-void
.end method

.method public setTitleMap(Ljava/util/Map;)V
    .locals 0
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
    .line 954
    .local p1, map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lcom/miui/videoplayer/framework/history/PlayHistoryManager$PlayHistoryEntry;>;"
    iput-object p1, p0, Lcom/miui/videoplayer/framework/views/OriginMediaController;->mUriTitleMap:Ljava/util/Map;

    .line 955
    return-void
.end method

.method public setUpdateProgressEnable(Z)V
    .locals 2
    .parameter "enable"

    .prologue
    const/4 v1, 0x2

    .line 788
    if-eqz p1, :cond_0

    .line 789
    iget-object v0, p0, Lcom/miui/videoplayer/framework/views/OriginMediaController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 793
    :goto_0
    return-void

    .line 791
    :cond_0
    iget-object v0, p0, Lcom/miui/videoplayer/framework/views/OriginMediaController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_0
.end method

.method public setUriArray([Ljava/lang/String;I)V
    .locals 2
    .parameter "uriArray"
    .parameter "playingIndex"

    .prologue
    .line 852
    iput-object p1, p0, Lcom/miui/videoplayer/framework/views/OriginMediaController;->mUriArray:[Ljava/lang/String;

    .line 853
    iput p2, p0, Lcom/miui/videoplayer/framework/views/OriginMediaController;->mPlayingIndex:I

    .line 855
    iget-object v0, p0, Lcom/miui/videoplayer/framework/views/OriginMediaController;->mUriArray:[Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/videoplayer/framework/views/OriginMediaController;->mUriArray:[Ljava/lang/String;

    array-length v0, v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 856
    iget-object v0, p0, Lcom/miui/videoplayer/framework/views/OriginMediaController;->mControlListButton:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 858
    :cond_0
    return-void
.end method

.method public show()V
    .locals 1

    .prologue
    .line 235
    const/16 v0, 0xbb8

    invoke-virtual {p0, v0}, Lcom/miui/videoplayer/framework/views/OriginMediaController;->show(I)V

    .line 236
    return-void
.end method

.method public show(I)V
    .locals 10
    .parameter "timeout"

    .prologue
    const/4 v9, 0x1

    .line 247
    sget-object v5, Lcom/miui/videoplayer/framework/views/OriginMediaController;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "show (timeout): "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    const/4 v5, -0x1

    if-ne p1, v5, :cond_0

    .line 250
    const/4 p1, 0x0

    .line 251
    iget-object v5, p0, Lcom/miui/videoplayer/framework/views/OriginMediaController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v9}, Landroid/os/Handler;->removeMessages(I)V

    .line 253
    :cond_0
    iget-object v5, p0, Lcom/miui/videoplayer/framework/views/OriginMediaController;->mAirKanManager:Lcom/miui/videoplayer/framework/airkan/AirkanManager;

    invoke-virtual {v5}, Lcom/miui/videoplayer/framework/airkan/AirkanManager;->isPlayingInLocal()Z

    move-result v5

    if-nez v5, :cond_1

    .line 254
    const/4 p1, 0x0

    .line 255
    iget-object v5, p0, Lcom/miui/videoplayer/framework/views/OriginMediaController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v9}, Landroid/os/Handler;->removeMessages(I)V

    .line 257
    :cond_1
    iget-boolean v5, p0, Lcom/miui/videoplayer/framework/views/OriginMediaController;->mShowing:Z

    if-nez v5, :cond_4

    iget-object v5, p0, Lcom/miui/videoplayer/framework/views/OriginMediaController;->mAnchor:Landroid/view/View;

    if-eqz v5, :cond_4

    .line 258
    invoke-direct {p0}, Lcom/miui/videoplayer/framework/views/OriginMediaController;->setProgress()I

    .line 259
    iget-object v5, p0, Lcom/miui/videoplayer/framework/views/OriginMediaController;->mPauseButton:Landroid/widget/ImageView;

    if-eqz v5, :cond_2

    .line 260
    iget-object v5, p0, Lcom/miui/videoplayer/framework/views/OriginMediaController;->mPauseButton:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->requestFocus()Z

    .line 262
    :cond_2
    iget-object v5, p0, Lcom/miui/videoplayer/framework/views/OriginMediaController;->mBottomControllerPopupWindow:Lcom/miui/videoplayer/framework/popup/BottomControllerPopupWindow;

    iget-object v6, p0, Lcom/miui/videoplayer/framework/views/OriginMediaController;->mAnchor:Landroid/view/View;

    invoke-virtual {v5, v6}, Lcom/miui/videoplayer/framework/popup/BottomControllerPopupWindow;->show(Landroid/view/View;)V

    .line 263
    const/4 v2, 0x0

    .line 264
    .local v2, mediaTitle:Ljava/lang/String;
    const/4 v1, -0x1

    .line 265
    .local v1, mediaCi:I
    iget-object v5, p0, Lcom/miui/videoplayer/framework/views/OriginMediaController;->mUriArray:[Ljava/lang/String;

    iget v6, p0, Lcom/miui/videoplayer/framework/views/OriginMediaController;->mPlayingIndex:I

    aget-object v5, v5, v6

    invoke-direct {p0, v5}, Lcom/miui/videoplayer/framework/views/OriginMediaController;->getMediaTitle(Ljava/lang/String;)Lcom/miui/videoplayer/framework/history/PlayHistoryManager$PlayHistoryEntry;

    move-result-object v0

    .line 266
    .local v0, entry:Lcom/miui/videoplayer/framework/history/PlayHistoryManager$PlayHistoryEntry;
    if-eqz v0, :cond_3

    .line 267
    invoke-virtual {v0}, Lcom/miui/videoplayer/framework/history/PlayHistoryManager$PlayHistoryEntry;->getVideoName()Ljava/lang/String;

    move-result-object v2

    .line 268
    invoke-virtual {v0}, Lcom/miui/videoplayer/framework/history/PlayHistoryManager$PlayHistoryEntry;->getMediaCi()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 270
    :try_start_0
    invoke-virtual {v0}, Lcom/miui/videoplayer/framework/history/PlayHistoryManager$PlayHistoryEntry;->getMediaCi()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 276
    :cond_3
    :goto_0
    iget-object v5, p0, Lcom/miui/videoplayer/framework/views/OriginMediaController;->mTopStatusBarPopupWindow:Lcom/miui/videoplayer/framework/popup/TopStatusBarPopupWindow;

    instance-of v5, v5, Lcom/miui/videoplayer/framework/popup/TopStatusBarPopupWindowV5;

    if-eqz v5, :cond_6

    .line 277
    iget-object v4, p0, Lcom/miui/videoplayer/framework/views/OriginMediaController;->mTopStatusBarPopupWindow:Lcom/miui/videoplayer/framework/popup/TopStatusBarPopupWindow;

    check-cast v4, Lcom/miui/videoplayer/framework/popup/TopStatusBarPopupWindowV5;

    .line 278
    .local v4, topStatusPopupWindows:Lcom/miui/videoplayer/framework/popup/TopStatusBarPopupWindowV5;
    iget-object v5, p0, Lcom/miui/videoplayer/framework/views/OriginMediaController;->mAnchor:Landroid/view/View;

    iget-object v6, p0, Lcom/miui/videoplayer/framework/views/OriginMediaController;->mUriArray:[Ljava/lang/String;

    iget v7, p0, Lcom/miui/videoplayer/framework/views/OriginMediaController;->mPlayingIndex:I

    aget-object v6, v6, v7

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v4, v5, v6, v2, v1}, Lcom/miui/videoplayer/framework/popup/TopStatusBarPopupWindowV5;->show(Landroid/view/View;Landroid/net/Uri;Ljava/lang/String;I)V

    .line 282
    .end local v4           #topStatusPopupWindows:Lcom/miui/videoplayer/framework/popup/TopStatusBarPopupWindowV5;
    :goto_1
    iput-boolean v9, p0, Lcom/miui/videoplayer/framework/views/OriginMediaController;->mShowing:Z

    .line 284
    .end local v0           #entry:Lcom/miui/videoplayer/framework/history/PlayHistoryManager$PlayHistoryEntry;
    .end local v1           #mediaCi:I
    .end local v2           #mediaTitle:Ljava/lang/String;
    :cond_4
    invoke-direct {p0}, Lcom/miui/videoplayer/framework/views/OriginMediaController;->updatePausePlay()V

    .line 289
    iget-object v5, p0, Lcom/miui/videoplayer/framework/views/OriginMediaController;->mHandler:Landroid/os/Handler;

    const/4 v6, 0x2

    invoke-virtual {v5, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 291
    iget-object v5, p0, Lcom/miui/videoplayer/framework/views/OriginMediaController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v9}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    .line 292
    .local v3, msg:Landroid/os/Message;
    if-eqz p1, :cond_5

    .line 293
    iget-object v5, p0, Lcom/miui/videoplayer/framework/views/OriginMediaController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v9}, Landroid/os/Handler;->removeMessages(I)V

    .line 294
    iget-object v5, p0, Lcom/miui/videoplayer/framework/views/OriginMediaController;->mHandler:Landroid/os/Handler;

    int-to-long v6, p1

    invoke-virtual {v5, v3, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 296
    :cond_5
    return-void

    .line 280
    .end local v3           #msg:Landroid/os/Message;
    .restart local v0       #entry:Lcom/miui/videoplayer/framework/history/PlayHistoryManager$PlayHistoryEntry;
    .restart local v1       #mediaCi:I
    .restart local v2       #mediaTitle:Ljava/lang/String;
    :cond_6
    iget-object v5, p0, Lcom/miui/videoplayer/framework/views/OriginMediaController;->mTopStatusBarPopupWindow:Lcom/miui/videoplayer/framework/popup/TopStatusBarPopupWindow;

    iget-object v6, p0, Lcom/miui/videoplayer/framework/views/OriginMediaController;->mAnchor:Landroid/view/View;

    iget-object v7, p0, Lcom/miui/videoplayer/framework/views/OriginMediaController;->mUriArray:[Ljava/lang/String;

    iget v8, p0, Lcom/miui/videoplayer/framework/views/OriginMediaController;->mPlayingIndex:I

    aget-object v7, v7, v8

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v5, v6, v7, v2}, Lcom/miui/videoplayer/framework/popup/TopStatusBarPopupWindow;->show(Landroid/view/View;Landroid/net/Uri;Ljava/lang/String;)V

    goto :goto_1

    .line 271
    :catch_0
    move-exception v5

    goto :goto_0
.end method

.method public switchMedia(I)V
    .locals 10
    .parameter "index"

    .prologue
    .line 533
    move v5, p1

    .line 534
    .local v5, result:I
    iget-object v7, p0, Lcom/miui/videoplayer/framework/views/OriginMediaController;->mUriArray:[Ljava/lang/String;

    array-length v1, v7

    .line 535
    .local v1, length:I
    if-gez p1, :cond_0

    .line 536
    add-int/lit8 v5, v1, -0x1

    .line 538
    :cond_0
    if-ne p1, v1, :cond_1

    .line 539
    const/4 v5, 0x0

    .line 541
    :cond_1
    iget-object v7, p0, Lcom/miui/videoplayer/framework/views/OriginMediaController;->mUriArray:[Ljava/lang/String;

    aget-object v6, v7, v5

    .line 543
    .local v6, targetUri:Ljava/lang/String;
    iget-object v7, p0, Lcom/miui/videoplayer/framework/views/OriginMediaController;->mPlayer:Lcom/miui/videoplayer/framework/ui/MediaPlayerControl;

    instance-of v7, v7, Lcom/miui/videoplayer/framework/ui/LocalMediaPlayerControl;

    if-eqz v7, :cond_4

    .line 544
    iget-object v2, p0, Lcom/miui/videoplayer/framework/views/OriginMediaController;->mPlayer:Lcom/miui/videoplayer/framework/ui/MediaPlayerControl;

    check-cast v2, Lcom/miui/videoplayer/framework/ui/LocalMediaPlayerControl;

    .line 545
    .local v2, localMediaPlayerControl:Lcom/miui/videoplayer/framework/ui/LocalMediaPlayerControl;
    invoke-interface {v2}, Lcom/miui/videoplayer/framework/ui/LocalMediaPlayerControl;->getCurrentPosition()I

    move-result v3

    .line 546
    .local v3, position:I
    sget-object v7, Lcom/miui/videoplayer/framework/views/OriginMediaController;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "last position : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 547
    if-eqz v3, :cond_2

    .line 548
    invoke-direct {p0, v3}, Lcom/miui/videoplayer/framework/views/OriginMediaController;->recordLastPosition(I)V

    .line 550
    :cond_2
    invoke-interface {v2}, Lcom/miui/videoplayer/framework/ui/LocalMediaPlayerControl;->stopLocalPlayForMediaSwitch()V

    .line 551
    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-interface {v2, v7}, Lcom/miui/videoplayer/framework/ui/LocalMediaPlayerControl;->startLocalPlayForMediaSwitch(Landroid/net/Uri;)V

    .line 553
    iget-object v7, p0, Lcom/miui/videoplayer/framework/views/OriginMediaController;->mContext:Landroid/content/Context;

    instance-of v7, v7, Landroid/app/Activity;

    if-eqz v7, :cond_3

    .line 554
    iget-object v0, p0, Lcom/miui/videoplayer/framework/views/OriginMediaController;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    .line 555
    .local v0, activity:Landroid/app/Activity;
    invoke-static {}, Lcom/miui/videoplayer/framework/popup/MediaInfoPopupWindow;->isNull()Z

    move-result v7

    if-nez v7, :cond_3

    invoke-static {v0}, Lcom/miui/videoplayer/framework/popup/MediaInfoPopupWindow;->getInstance(Landroid/content/Context;)Lcom/miui/videoplayer/framework/popup/MediaInfoPopupWindow;

    move-result-object v7

    invoke-virtual {v7}, Lcom/miui/videoplayer/framework/popup/MediaInfoPopupWindow;->isShowing()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 556
    invoke-static {v0}, Lcom/miui/videoplayer/framework/popup/MediaInfoPopupWindow;->getInstance(Landroid/content/Context;)Lcom/miui/videoplayer/framework/popup/MediaInfoPopupWindow;

    move-result-object v7

    invoke-virtual {v7}, Lcom/miui/videoplayer/framework/popup/MediaInfoPopupWindow;->dismiss()V

    .line 557
    invoke-static {v0}, Lcom/miui/videoplayer/framework/popup/MediaInfoPopupWindow;->getInstance(Landroid/content/Context;)Lcom/miui/videoplayer/framework/popup/MediaInfoPopupWindow;

    move-result-object v7

    invoke-interface {v2}, Lcom/miui/videoplayer/framework/ui/LocalMediaPlayerControl;->getMediaInfo()Lcom/duokan/MediaPlayer$MediaInfo;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/miui/videoplayer/framework/popup/MediaInfoPopupWindow;->updateValues(Lcom/duokan/MediaPlayer$MediaInfo;)V

    .line 558
    invoke-static {v0}, Lcom/miui/videoplayer/framework/popup/MediaInfoPopupWindow;->getInstance(Landroid/content/Context;)Lcom/miui/videoplayer/framework/popup/MediaInfoPopupWindow;

    move-result-object v7

    iget-object v8, p0, Lcom/miui/videoplayer/framework/views/OriginMediaController;->mAnchor:Landroid/view/View;

    invoke-virtual {v7, v8}, Lcom/miui/videoplayer/framework/popup/MediaInfoPopupWindow;->show(Landroid/view/View;)V

    .line 561
    .end local v0           #activity:Landroid/app/Activity;
    :cond_3
    iget-object v7, p0, Lcom/miui/videoplayer/framework/views/OriginMediaController;->mDuoKanMediaController:Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->checkNetwork(Landroid/net/Uri;)V

    .line 564
    .end local v2           #localMediaPlayerControl:Lcom/miui/videoplayer/framework/ui/LocalMediaPlayerControl;
    .end local v3           #position:I
    :cond_4
    iget-object v7, p0, Lcom/miui/videoplayer/framework/views/OriginMediaController;->mPlayer:Lcom/miui/videoplayer/framework/ui/MediaPlayerControl;

    instance-of v7, v7, Lcom/miui/videoplayer/framework/airkan/RemoteTVMediaPlayerControl;

    if-eqz v7, :cond_5

    .line 565
    iget-object v4, p0, Lcom/miui/videoplayer/framework/views/OriginMediaController;->mPlayer:Lcom/miui/videoplayer/framework/ui/MediaPlayerControl;

    check-cast v4, Lcom/miui/videoplayer/framework/airkan/RemoteTVMediaPlayerControl;

    .line 566
    .local v4, remoteTVMediaController:Lcom/miui/videoplayer/framework/airkan/RemoteTVMediaPlayerControl;
    const-string v7, ""

    const/4 v8, 0x0

    invoke-virtual {v4, v6, v7, v8}, Lcom/miui/videoplayer/framework/airkan/RemoteTVMediaPlayerControl;->setVideoURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 567
    invoke-virtual {v4}, Lcom/miui/videoplayer/framework/airkan/RemoteTVMediaPlayerControl;->getDeviceName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/miui/videoplayer/framework/airkan/RemoteTVMediaPlayerControl;->playTo(Ljava/lang/String;)V

    .line 569
    .end local v4           #remoteTVMediaController:Lcom/miui/videoplayer/framework/airkan/RemoteTVMediaPlayerControl;
    :cond_5
    iget-object v7, p0, Lcom/miui/videoplayer/framework/views/OriginMediaController;->mDuoKanMediaController:Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->setUri(Landroid/net/Uri;)V

    .line 570
    iput v5, p0, Lcom/miui/videoplayer/framework/views/OriginMediaController;->mPlayingIndex:I

    .line 571
    iget-object v7, p0, Lcom/miui/videoplayer/framework/views/OriginMediaController;->mControlListPopupWindow:Lcom/miui/videoplayer/framework/popup/ControlListPopupWindow;

    if-eqz v7, :cond_6

    .line 572
    iget-object v7, p0, Lcom/miui/videoplayer/framework/views/OriginMediaController;->mControlListPopupWindow:Lcom/miui/videoplayer/framework/popup/ControlListPopupWindow;

    invoke-virtual {v7, v5}, Lcom/miui/videoplayer/framework/popup/ControlListPopupWindow;->setPlayingIndex(I)V

    .line 575
    :cond_6
    iget-object v7, p0, Lcom/miui/videoplayer/framework/views/OriginMediaController;->mTopStatusBarPopupWindow:Lcom/miui/videoplayer/framework/popup/TopStatusBarPopupWindow;

    if-eqz v7, :cond_7

    iget-object v7, p0, Lcom/miui/videoplayer/framework/views/OriginMediaController;->mTopStatusBarPopupWindow:Lcom/miui/videoplayer/framework/popup/TopStatusBarPopupWindow;

    invoke-virtual {v7}, Lcom/miui/videoplayer/framework/popup/TopStatusBarPopupWindow;->isShowing()Z

    move-result v7

    if-eqz v7, :cond_7

    .line 576
    iget-object v7, p0, Lcom/miui/videoplayer/framework/views/OriginMediaController;->mTopStatusBarPopupWindow:Lcom/miui/videoplayer/framework/popup/TopStatusBarPopupWindow;

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/miui/videoplayer/framework/popup/TopStatusBarPopupWindow;->updateMediaName(Landroid/net/Uri;)V

    .line 578
    :cond_7
    return-void
.end method

.method public updatePlayingState(Z)V
    .locals 2
    .parameter "playing"

    .prologue
    .line 913
    iget-object v0, p0, Lcom/miui/videoplayer/framework/views/OriginMediaController;->mAirKanManager:Lcom/miui/videoplayer/framework/airkan/AirkanManager;

    invoke-virtual {v0}, Lcom/miui/videoplayer/framework/airkan/AirkanManager;->isPlayingInLocal()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 914
    if-eqz p1, :cond_0

    .line 916
    iget-object v0, p0, Lcom/miui/videoplayer/framework/views/OriginMediaController;->mPauseButton:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/miui/videoplayer/framework/views/OriginMediaController;->getPauseImageResId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 928
    :goto_0
    return-void

    .line 919
    :cond_0
    iget-object v0, p0, Lcom/miui/videoplayer/framework/views/OriginMediaController;->mPauseButton:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/miui/videoplayer/framework/views/OriginMediaController;->getPlayImageResId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 922
    :cond_1
    if-eqz p1, :cond_2

    .line 923
    iget-object v0, p0, Lcom/miui/videoplayer/framework/views/OriginMediaController;->mPauseButton:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/miui/videoplayer/framework/views/OriginMediaController;->getBigPauseImageResId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 925
    :cond_2
    iget-object v0, p0, Lcom/miui/videoplayer/framework/views/OriginMediaController;->mPauseButton:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/miui/videoplayer/framework/views/OriginMediaController;->getBigPlayImageResId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method
