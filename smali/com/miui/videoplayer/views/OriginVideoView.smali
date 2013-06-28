.class public Lcom/miui/videoplayer/views/OriginVideoView;
.super Landroid/view/SurfaceView;
.source "OriginVideoView.java"

# interfaces
.implements Lcom/miui/videoplayer/framework/ui/LocalMediaPlayerControl;
.implements Lcom/miui/videoplayer/framework/ui/LocalVideoPlaySizeAdjustable;


# static fields
.field private static final STATE_ERROR:I = -0x1

.field private static final STATE_IDLE:I = 0x0

.field private static final STATE_PAUSED:I = 0x4

.field private static final STATE_PLAYBACK_COMPLETED:I = 0x5

.field private static final STATE_PLAYING:I = 0x3

.field private static final STATE_PREPARED:I = 0x2

.field private static final STATE_PREPARING:I = 0x1


# instance fields
.field private TAG:Ljava/lang/String;

.field private mAdjustHeight:I

.field private mAdjustWidth:I

.field private mBufferingUpdateListener:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

.field private mCanPause:Z

.field private mCanSeekBack:Z

.field private mCanSeekForward:Z

.field private mCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

.field private mContext:Landroid/content/Context;

.field private mCurrentBufferPercentage:I

.field private mCurrentState:I

.field private mDuration:I

.field private mErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

.field private mHeaders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mLastPausedTimeStamp:J

.field private mMediaPlayer:Landroid/media/MediaPlayer;

.field private mOnBufferingUpdateListener:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

.field private mOnCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

.field private mOnErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

.field private mOnInfoListener:Landroid/media/MediaPlayer$OnInfoListener;

.field private mOnPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

.field private mOnSeekCompleteListener:Landroid/media/MediaPlayer$OnSeekCompleteListener;

.field private mOnVideoSizeChangedListener:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

.field mPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

.field mSHCallback:Landroid/view/SurfaceHolder$Callback;

.field private mSeekWhenPrepared:I

.field mSizeChangedListener:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

.field private mSurfaceHeight:I

.field private mSurfaceHolder:Landroid/view/SurfaceHolder;

.field private mSurfaceWidth:I

.field private mTargetState:I

.field private mTimedTextSourceUri:Ljava/lang/String;

.field private mTotalPausedTime:J

.field private mUri:Landroid/net/Uri;

.field private mUserAdjustSize:Z

.field private mVideoHeight:I

.field private mVideoWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    const-wide/16 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 106
    invoke-direct {p0, p1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    .line 35
    const-string v0, "VideoView"

    iput-object v0, p0, Lcom/miui/videoplayer/views/OriginVideoView;->TAG:Ljava/lang/String;

    .line 56
    iput v1, p0, Lcom/miui/videoplayer/views/OriginVideoView;->mCurrentState:I

    .line 57
    iput v1, p0, Lcom/miui/videoplayer/views/OriginVideoView;->mTargetState:I

    .line 60
    iput-object v2, p0, Lcom/miui/videoplayer/views/OriginVideoView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 61
    iput-object v2, p0, Lcom/miui/videoplayer/views/OriginVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 85
    iput-wide v3, p0, Lcom/miui/videoplayer/views/OriginVideoView;->mTotalPausedTime:J

    .line 86
    iput-wide v3, p0, Lcom/miui/videoplayer/views/OriginVideoView;->mLastPausedTimeStamp:J

    .line 101
    iput-boolean v1, p0, Lcom/miui/videoplayer/views/OriginVideoView;->mUserAdjustSize:Z

    .line 308
    new-instance v0, Lcom/miui/videoplayer/views/OriginVideoView$1;

    invoke-direct {v0, p0}, Lcom/miui/videoplayer/views/OriginVideoView$1;-><init>(Lcom/miui/videoplayer/views/OriginVideoView;)V

    iput-object v0, p0, Lcom/miui/videoplayer/views/OriginVideoView;->mSizeChangedListener:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

    .line 322
    new-instance v0, Lcom/miui/videoplayer/views/OriginVideoView$2;

    invoke-direct {v0, p0}, Lcom/miui/videoplayer/views/OriginVideoView$2;-><init>(Lcom/miui/videoplayer/views/OriginVideoView;)V

    iput-object v0, p0, Lcom/miui/videoplayer/views/OriginVideoView;->mPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    .line 388
    new-instance v0, Lcom/miui/videoplayer/views/OriginVideoView$3;

    invoke-direct {v0, p0}, Lcom/miui/videoplayer/views/OriginVideoView$3;-><init>(Lcom/miui/videoplayer/views/OriginVideoView;)V

    iput-object v0, p0, Lcom/miui/videoplayer/views/OriginVideoView;->mCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    .line 402
    new-instance v0, Lcom/miui/videoplayer/views/OriginVideoView$4;

    invoke-direct {v0, p0}, Lcom/miui/videoplayer/views/OriginVideoView$4;-><init>(Lcom/miui/videoplayer/views/OriginVideoView;)V

    iput-object v0, p0, Lcom/miui/videoplayer/views/OriginVideoView;->mErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    .line 473
    new-instance v0, Lcom/miui/videoplayer/views/OriginVideoView$5;

    invoke-direct {v0, p0}, Lcom/miui/videoplayer/views/OriginVideoView$5;-><init>(Lcom/miui/videoplayer/views/OriginVideoView;)V

    iput-object v0, p0, Lcom/miui/videoplayer/views/OriginVideoView;->mBufferingUpdateListener:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

    .line 519
    new-instance v0, Lcom/miui/videoplayer/views/OriginVideoView$6;

    invoke-direct {v0, p0}, Lcom/miui/videoplayer/views/OriginVideoView$6;-><init>(Lcom/miui/videoplayer/views/OriginVideoView;)V

    iput-object v0, p0, Lcom/miui/videoplayer/views/OriginVideoView;->mSHCallback:Landroid/view/SurfaceHolder$Callback;

    .line 107
    invoke-direct {p0}, Lcom/miui/videoplayer/views/OriginVideoView;->initVideoView()V

    .line 108
    iput-object p1, p0, Lcom/miui/videoplayer/views/OriginVideoView;->mContext:Landroid/content/Context;

    .line 109
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 112
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/miui/videoplayer/views/OriginVideoView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 113
    invoke-direct {p0}, Lcom/miui/videoplayer/views/OriginVideoView;->initVideoView()V

    .line 114
    iput-object p1, p0, Lcom/miui/videoplayer/views/OriginVideoView;->mContext:Landroid/content/Context;

    .line 115
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const-wide/16 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 118
    invoke-direct {p0, p1, p2, p3}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 35
    const-string v0, "VideoView"

    iput-object v0, p0, Lcom/miui/videoplayer/views/OriginVideoView;->TAG:Ljava/lang/String;

    .line 56
    iput v1, p0, Lcom/miui/videoplayer/views/OriginVideoView;->mCurrentState:I

    .line 57
    iput v1, p0, Lcom/miui/videoplayer/views/OriginVideoView;->mTargetState:I

    .line 60
    iput-object v2, p0, Lcom/miui/videoplayer/views/OriginVideoView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 61
    iput-object v2, p0, Lcom/miui/videoplayer/views/OriginVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 85
    iput-wide v3, p0, Lcom/miui/videoplayer/views/OriginVideoView;->mTotalPausedTime:J

    .line 86
    iput-wide v3, p0, Lcom/miui/videoplayer/views/OriginVideoView;->mLastPausedTimeStamp:J

    .line 101
    iput-boolean v1, p0, Lcom/miui/videoplayer/views/OriginVideoView;->mUserAdjustSize:Z

    .line 308
    new-instance v0, Lcom/miui/videoplayer/views/OriginVideoView$1;

    invoke-direct {v0, p0}, Lcom/miui/videoplayer/views/OriginVideoView$1;-><init>(Lcom/miui/videoplayer/views/OriginVideoView;)V

    iput-object v0, p0, Lcom/miui/videoplayer/views/OriginVideoView;->mSizeChangedListener:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

    .line 322
    new-instance v0, Lcom/miui/videoplayer/views/OriginVideoView$2;

    invoke-direct {v0, p0}, Lcom/miui/videoplayer/views/OriginVideoView$2;-><init>(Lcom/miui/videoplayer/views/OriginVideoView;)V

    iput-object v0, p0, Lcom/miui/videoplayer/views/OriginVideoView;->mPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    .line 388
    new-instance v0, Lcom/miui/videoplayer/views/OriginVideoView$3;

    invoke-direct {v0, p0}, Lcom/miui/videoplayer/views/OriginVideoView$3;-><init>(Lcom/miui/videoplayer/views/OriginVideoView;)V

    iput-object v0, p0, Lcom/miui/videoplayer/views/OriginVideoView;->mCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    .line 402
    new-instance v0, Lcom/miui/videoplayer/views/OriginVideoView$4;

    invoke-direct {v0, p0}, Lcom/miui/videoplayer/views/OriginVideoView$4;-><init>(Lcom/miui/videoplayer/views/OriginVideoView;)V

    iput-object v0, p0, Lcom/miui/videoplayer/views/OriginVideoView;->mErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    .line 473
    new-instance v0, Lcom/miui/videoplayer/views/OriginVideoView$5;

    invoke-direct {v0, p0}, Lcom/miui/videoplayer/views/OriginVideoView$5;-><init>(Lcom/miui/videoplayer/views/OriginVideoView;)V

    iput-object v0, p0, Lcom/miui/videoplayer/views/OriginVideoView;->mBufferingUpdateListener:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

    .line 519
    new-instance v0, Lcom/miui/videoplayer/views/OriginVideoView$6;

    invoke-direct {v0, p0}, Lcom/miui/videoplayer/views/OriginVideoView$6;-><init>(Lcom/miui/videoplayer/views/OriginVideoView;)V

    iput-object v0, p0, Lcom/miui/videoplayer/views/OriginVideoView;->mSHCallback:Landroid/view/SurfaceHolder$Callback;

    .line 119
    invoke-direct {p0}, Lcom/miui/videoplayer/views/OriginVideoView;->initVideoView()V

    .line 120
    iput-object p1, p0, Lcom/miui/videoplayer/views/OriginVideoView;->mContext:Landroid/content/Context;

    .line 121
    return-void
.end method

.method static synthetic access$000(Lcom/miui/videoplayer/views/OriginVideoView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget v0, p0, Lcom/miui/videoplayer/views/OriginVideoView;->mVideoWidth:I

    return v0
.end method

.method static synthetic access$002(Lcom/miui/videoplayer/views/OriginVideoView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34
    iput p1, p0, Lcom/miui/videoplayer/views/OriginVideoView;->mVideoWidth:I

    return p1
.end method

.method static synthetic access$100(Lcom/miui/videoplayer/views/OriginVideoView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget v0, p0, Lcom/miui/videoplayer/views/OriginVideoView;->mVideoHeight:I

    return v0
.end method

.method static synthetic access$1000(Lcom/miui/videoplayer/views/OriginVideoView;)Landroid/media/MediaPlayer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/miui/videoplayer/views/OriginVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    return-object v0
.end method

.method static synthetic access$102(Lcom/miui/videoplayer/views/OriginVideoView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34
    iput p1, p0, Lcom/miui/videoplayer/views/OriginVideoView;->mVideoHeight:I

    return p1
.end method

.method static synthetic access$1100(Lcom/miui/videoplayer/views/OriginVideoView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget v0, p0, Lcom/miui/videoplayer/views/OriginVideoView;->mSeekWhenPrepared:I

    return v0
.end method

.method static synthetic access$1200(Lcom/miui/videoplayer/views/OriginVideoView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget v0, p0, Lcom/miui/videoplayer/views/OriginVideoView;->mSurfaceWidth:I

    return v0
.end method

.method static synthetic access$1202(Lcom/miui/videoplayer/views/OriginVideoView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34
    iput p1, p0, Lcom/miui/videoplayer/views/OriginVideoView;->mSurfaceWidth:I

    return p1
.end method

.method static synthetic access$1300(Lcom/miui/videoplayer/views/OriginVideoView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget v0, p0, Lcom/miui/videoplayer/views/OriginVideoView;->mSurfaceHeight:I

    return v0
.end method

.method static synthetic access$1302(Lcom/miui/videoplayer/views/OriginVideoView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34
    iput p1, p0, Lcom/miui/videoplayer/views/OriginVideoView;->mSurfaceHeight:I

    return p1
.end method

.method static synthetic access$1400(Lcom/miui/videoplayer/views/OriginVideoView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget v0, p0, Lcom/miui/videoplayer/views/OriginVideoView;->mTargetState:I

    return v0
.end method

.method static synthetic access$1402(Lcom/miui/videoplayer/views/OriginVideoView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34
    iput p1, p0, Lcom/miui/videoplayer/views/OriginVideoView;->mTargetState:I

    return p1
.end method

.method static synthetic access$1500(Lcom/miui/videoplayer/views/OriginVideoView;)Landroid/media/MediaPlayer$OnCompletionListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/miui/videoplayer/views/OriginVideoView;->mOnCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/miui/videoplayer/views/OriginVideoView;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/miui/videoplayer/views/OriginVideoView;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/miui/videoplayer/views/OriginVideoView;)Landroid/media/MediaPlayer$OnErrorListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/miui/videoplayer/views/OriginVideoView;->mOnErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    return-object v0
.end method

.method static synthetic access$1802(Lcom/miui/videoplayer/views/OriginVideoView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34
    iput p1, p0, Lcom/miui/videoplayer/views/OriginVideoView;->mCurrentBufferPercentage:I

    return p1
.end method

.method static synthetic access$1900(Lcom/miui/videoplayer/views/OriginVideoView;)Landroid/media/MediaPlayer$OnBufferingUpdateListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/miui/videoplayer/views/OriginVideoView;->mOnBufferingUpdateListener:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/miui/videoplayer/views/OriginVideoView;)Landroid/media/MediaPlayer$OnVideoSizeChangedListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/miui/videoplayer/views/OriginVideoView;->mOnVideoSizeChangedListener:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

    return-object v0
.end method

.method static synthetic access$2002(Lcom/miui/videoplayer/views/OriginVideoView;Landroid/view/SurfaceHolder;)Landroid/view/SurfaceHolder;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34
    iput-object p1, p0, Lcom/miui/videoplayer/views/OriginVideoView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    return-object p1
.end method

.method static synthetic access$2100(Lcom/miui/videoplayer/views/OriginVideoView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/miui/videoplayer/views/OriginVideoView;->openVideo()V

    return-void
.end method

.method static synthetic access$2200(Lcom/miui/videoplayer/views/OriginVideoView;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/miui/videoplayer/views/OriginVideoView;->release(Z)V

    return-void
.end method

.method static synthetic access$302(Lcom/miui/videoplayer/views/OriginVideoView;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34
    iput-wide p1, p0, Lcom/miui/videoplayer/views/OriginVideoView;->mTotalPausedTime:J

    return-wide p1
.end method

.method static synthetic access$402(Lcom/miui/videoplayer/views/OriginVideoView;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34
    iput-wide p1, p0, Lcom/miui/videoplayer/views/OriginVideoView;->mLastPausedTimeStamp:J

    return-wide p1
.end method

.method static synthetic access$502(Lcom/miui/videoplayer/views/OriginVideoView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34
    iput p1, p0, Lcom/miui/videoplayer/views/OriginVideoView;->mCurrentState:I

    return p1
.end method

.method static synthetic access$602(Lcom/miui/videoplayer/views/OriginVideoView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34
    iput-boolean p1, p0, Lcom/miui/videoplayer/views/OriginVideoView;->mCanPause:Z

    return p1
.end method

.method static synthetic access$702(Lcom/miui/videoplayer/views/OriginVideoView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34
    iput-boolean p1, p0, Lcom/miui/videoplayer/views/OriginVideoView;->mCanSeekBack:Z

    return p1
.end method

.method static synthetic access$802(Lcom/miui/videoplayer/views/OriginVideoView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34
    iput-boolean p1, p0, Lcom/miui/videoplayer/views/OriginVideoView;->mCanSeekForward:Z

    return p1
.end method

.method static synthetic access$900(Lcom/miui/videoplayer/views/OriginVideoView;)Landroid/media/MediaPlayer$OnPreparedListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/miui/videoplayer/views/OriginVideoView;->mOnPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    return-object v0
.end method

.method private initVideoView()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 184
    iput v2, p0, Lcom/miui/videoplayer/views/OriginVideoView;->mVideoWidth:I

    .line 185
    iput v2, p0, Lcom/miui/videoplayer/views/OriginVideoView;->mVideoHeight:I

    .line 186
    invoke-virtual {p0}, Lcom/miui/videoplayer/views/OriginVideoView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/videoplayer/views/OriginVideoView;->mSHCallback:Landroid/view/SurfaceHolder$Callback;

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 187
    invoke-virtual {p0}, Lcom/miui/videoplayer/views/OriginVideoView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setType(I)V

    .line 188
    invoke-virtual {p0, v3}, Lcom/miui/videoplayer/views/OriginVideoView;->setFocusable(Z)V

    .line 189
    invoke-virtual {p0, v3}, Lcom/miui/videoplayer/views/OriginVideoView;->setFocusableInTouchMode(Z)V

    .line 190
    invoke-virtual {p0}, Lcom/miui/videoplayer/views/OriginVideoView;->requestFocus()Z

    .line 191
    iput v2, p0, Lcom/miui/videoplayer/views/OriginVideoView;->mCurrentState:I

    .line 192
    iput v2, p0, Lcom/miui/videoplayer/views/OriginVideoView;->mTargetState:I

    .line 193
    return-void
.end method

.method private isInPlaybackState()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 729
    iget-object v1, p0, Lcom/miui/videoplayer/views/OriginVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/miui/videoplayer/views/OriginVideoView;->mCurrentState:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/miui/videoplayer/views/OriginVideoView;->mCurrentState:I

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/miui/videoplayer/views/OriginVideoView;->mCurrentState:I

    if-eq v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private openVideo()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, -0x1

    .line 227
    iget-object v2, p0, Lcom/miui/videoplayer/views/OriginVideoView;->mUri:Landroid/net/Uri;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/miui/videoplayer/views/OriginVideoView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    if-nez v2, :cond_1

    .line 288
    :cond_0
    :goto_0
    return-void

    .line 233
    :cond_1
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.music.musicservicecommand"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 234
    .local v1, i:Landroid/content/Intent;
    const-string v2, "command"

    const-string v3, "pause"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 235
    iget-object v2, p0, Lcom/miui/videoplayer/views/OriginVideoView;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 239
    invoke-direct {p0, v6}, Lcom/miui/videoplayer/views/OriginVideoView;->release(Z)V

    .line 241
    :try_start_0
    new-instance v2, Landroid/media/MediaPlayer;

    invoke-direct {v2}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v2, p0, Lcom/miui/videoplayer/views/OriginVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 242
    iget-object v2, p0, Lcom/miui/videoplayer/views/OriginVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v3, p0, Lcom/miui/videoplayer/views/OriginVideoView;->mPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    invoke-virtual {v2, v3}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 243
    iget-object v2, p0, Lcom/miui/videoplayer/views/OriginVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v3, p0, Lcom/miui/videoplayer/views/OriginVideoView;->mSizeChangedListener:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

    invoke-virtual {v2, v3}, Landroid/media/MediaPlayer;->setOnVideoSizeChangedListener(Landroid/media/MediaPlayer$OnVideoSizeChangedListener;)V

    .line 244
    const/4 v2, -0x1

    iput v2, p0, Lcom/miui/videoplayer/views/OriginVideoView;->mDuration:I

    .line 245
    iget-object v2, p0, Lcom/miui/videoplayer/views/OriginVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v3, p0, Lcom/miui/videoplayer/views/OriginVideoView;->mCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    invoke-virtual {v2, v3}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 246
    iget-object v2, p0, Lcom/miui/videoplayer/views/OriginVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v3, p0, Lcom/miui/videoplayer/views/OriginVideoView;->mErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    invoke-virtual {v2, v3}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 247
    iget-object v2, p0, Lcom/miui/videoplayer/views/OriginVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v3, p0, Lcom/miui/videoplayer/views/OriginVideoView;->mBufferingUpdateListener:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

    invoke-virtual {v2, v3}, Landroid/media/MediaPlayer;->setOnBufferingUpdateListener(Landroid/media/MediaPlayer$OnBufferingUpdateListener;)V

    .line 248
    const/4 v2, 0x0

    iput v2, p0, Lcom/miui/videoplayer/views/OriginVideoView;->mCurrentBufferPercentage:I

    .line 251
    iget-object v2, p0, Lcom/miui/videoplayer/views/OriginVideoView;->mOnSeekCompleteListener:Landroid/media/MediaPlayer$OnSeekCompleteListener;

    if-eqz v2, :cond_2

    .line 252
    iget-object v2, p0, Lcom/miui/videoplayer/views/OriginVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v3, p0, Lcom/miui/videoplayer/views/OriginVideoView;->mOnSeekCompleteListener:Landroid/media/MediaPlayer$OnSeekCompleteListener;

    invoke-virtual {v2, v3}, Landroid/media/MediaPlayer;->setOnSeekCompleteListener(Landroid/media/MediaPlayer$OnSeekCompleteListener;)V

    .line 255
    :cond_2
    iget-object v2, p0, Lcom/miui/videoplayer/views/OriginVideoView;->mOnInfoListener:Landroid/media/MediaPlayer$OnInfoListener;

    if-eqz v2, :cond_3

    .line 256
    iget-object v2, p0, Lcom/miui/videoplayer/views/OriginVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v3, p0, Lcom/miui/videoplayer/views/OriginVideoView;->mOnInfoListener:Landroid/media/MediaPlayer$OnInfoListener;

    invoke-virtual {v2, v3}, Landroid/media/MediaPlayer;->setOnInfoListener(Landroid/media/MediaPlayer$OnInfoListener;)V

    .line 265
    :cond_3
    iget-object v2, p0, Lcom/miui/videoplayer/views/OriginVideoView;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setDataSource: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/miui/videoplayer/views/OriginVideoView;->mUri:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    iget-object v2, p0, Lcom/miui/videoplayer/views/OriginVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v3, p0, Lcom/miui/videoplayer/views/OriginVideoView;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/miui/videoplayer/views/OriginVideoView;->mUri:Landroid/net/Uri;

    invoke-virtual {v2, v3, v4}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 267
    iget-object v2, p0, Lcom/miui/videoplayer/views/OriginVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v3, p0, Lcom/miui/videoplayer/views/OriginVideoView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-virtual {v2, v3}, Landroid/media/MediaPlayer;->setDisplay(Landroid/view/SurfaceHolder;)V

    .line 269
    iget-object v2, p0, Lcom/miui/videoplayer/views/OriginVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/media/MediaPlayer;->setScreenOnWhilePlaying(Z)V

    .line 270
    iget-object v2, p0, Lcom/miui/videoplayer/views/OriginVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->prepareAsync()V

    .line 273
    const/4 v2, 0x1

    iput v2, p0, Lcom/miui/videoplayer/views/OriginVideoView;->mCurrentState:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    goto/16 :goto_0

    .line 275
    :catch_0
    move-exception v0

    .line 276
    .local v0, ex:Ljava/io/IOException;
    iget-object v2, p0, Lcom/miui/videoplayer/views/OriginVideoView;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to open content: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/miui/videoplayer/views/OriginVideoView;->mUri:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 277
    iput v5, p0, Lcom/miui/videoplayer/views/OriginVideoView;->mCurrentState:I

    .line 278
    iput v5, p0, Lcom/miui/videoplayer/views/OriginVideoView;->mTargetState:I

    .line 279
    iget-object v2, p0, Lcom/miui/videoplayer/views/OriginVideoView;->mErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    iget-object v3, p0, Lcom/miui/videoplayer/views/OriginVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-interface {v2, v3, v7, v6}, Landroid/media/MediaPlayer$OnErrorListener;->onError(Landroid/media/MediaPlayer;II)Z

    goto/16 :goto_0

    .line 281
    .end local v0           #ex:Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 282
    .local v0, ex:Ljava/lang/IllegalArgumentException;
    iget-object v2, p0, Lcom/miui/videoplayer/views/OriginVideoView;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to open content: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/miui/videoplayer/views/OriginVideoView;->mUri:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 283
    iput v5, p0, Lcom/miui/videoplayer/views/OriginVideoView;->mCurrentState:I

    .line 284
    iput v5, p0, Lcom/miui/videoplayer/views/OriginVideoView;->mTargetState:I

    .line 285
    iget-object v2, p0, Lcom/miui/videoplayer/views/OriginVideoView;->mErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    iget-object v3, p0, Lcom/miui/videoplayer/views/OriginVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-interface {v2, v3, v7, v6}, Landroid/media/MediaPlayer$OnErrorListener;->onError(Landroid/media/MediaPlayer;II)Z

    goto/16 :goto_0
.end method

.method private release(Z)V
    .locals 2
    .parameter "cleartargetstate"

    .prologue
    const/4 v1, 0x0

    .line 558
    iget-object v0, p0, Lcom/miui/videoplayer/views/OriginVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 559
    iget-object v0, p0, Lcom/miui/videoplayer/views/OriginVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    .line 560
    iget-object v0, p0, Lcom/miui/videoplayer/views/OriginVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 561
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/videoplayer/views/OriginVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 562
    iput v1, p0, Lcom/miui/videoplayer/views/OriginVideoView;->mCurrentState:I

    .line 563
    if-eqz p1, :cond_0

    .line 564
    iput v1, p0, Lcom/miui/videoplayer/views/OriginVideoView;->mTargetState:I

    .line 567
    :cond_0
    return-void
.end method


# virtual methods
.method public adjustVideoPlayViewSize(IIZ)V
    .locals 2
    .parameter "width"
    .parameter "height"
    .parameter "auto"

    .prologue
    .line 752
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, p1, p2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 753
    .local v0, lp:Landroid/widget/FrameLayout$LayoutParams;
    const/16 v1, 0x11

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 754
    invoke-virtual {p0, v0}, Lcom/miui/videoplayer/views/OriginVideoView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 756
    if-nez p3, :cond_0

    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, p0, Lcom/miui/videoplayer/views/OriginVideoView;->mUserAdjustSize:Z

    .line 757
    iput p1, p0, Lcom/miui/videoplayer/views/OriginVideoView;->mAdjustWidth:I

    .line 758
    iput p2, p0, Lcom/miui/videoplayer/views/OriginVideoView;->mAdjustHeight:I

    .line 759
    invoke-virtual {p0}, Lcom/miui/videoplayer/views/OriginVideoView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Landroid/view/SurfaceHolder;->setFixedSize(II)V

    .line 761
    return-void

    .line 756
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public canPause()Z
    .locals 1

    .prologue
    .line 736
    iget-boolean v0, p0, Lcom/miui/videoplayer/views/OriginVideoView;->mCanPause:Z

    return v0
.end method

.method public canSeekBackward()Z
    .locals 1

    .prologue
    .line 740
    iget-boolean v0, p0, Lcom/miui/videoplayer/views/OriginVideoView;->mCanSeekBack:Z

    return v0
.end method

.method public canSeekForward()Z
    .locals 1

    .prologue
    .line 744
    iget-boolean v0, p0, Lcom/miui/videoplayer/views/OriginVideoView;->mCanSeekForward:Z

    return v0
.end method

.method public disableMultiSpeedPlayback()Z
    .locals 1

    .prologue
    .line 815
    const/4 v0, 0x0

    return v0
.end method

.method public enableMultiSpeedPlayback(IZ)Z
    .locals 1
    .parameter "speed"
    .parameter "forward"

    .prologue
    .line 811
    const/4 v0, 0x0

    return v0
.end method

.method public getAdjustHeight()I
    .locals 1

    .prologue
    .line 804
    iget v0, p0, Lcom/miui/videoplayer/views/OriginVideoView;->mAdjustHeight:I

    return v0
.end method

.method public getAdjustWidth()I
    .locals 1

    .prologue
    .line 800
    iget v0, p0, Lcom/miui/videoplayer/views/OriginVideoView;->mAdjustWidth:I

    return v0
.end method

.method public getBufferPercentage()I
    .locals 1

    .prologue
    .line 722
    iget-object v0, p0, Lcom/miui/videoplayer/views/OriginVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 723
    iget v0, p0, Lcom/miui/videoplayer/views/OriginVideoView;->mCurrentBufferPercentage:I

    .line 725
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCurrentPosition()I
    .locals 1

    .prologue
    .line 702
    invoke-direct {p0}, Lcom/miui/videoplayer/views/OriginVideoView;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 703
    iget-object v0, p0, Lcom/miui/videoplayer/views/OriginVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    .line 705
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDuration()I
    .locals 1

    .prologue
    .line 690
    invoke-direct {p0}, Lcom/miui/videoplayer/views/OriginVideoView;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 691
    iget v0, p0, Lcom/miui/videoplayer/views/OriginVideoView;->mDuration:I

    if-lez v0, :cond_0

    .line 692
    iget v0, p0, Lcom/miui/videoplayer/views/OriginVideoView;->mDuration:I

    .line 698
    :goto_0
    return v0

    .line 694
    :cond_0
    iget-object v0, p0, Lcom/miui/videoplayer/views/OriginVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v0

    iput v0, p0, Lcom/miui/videoplayer/views/OriginVideoView;->mDuration:I

    .line 695
    iget v0, p0, Lcom/miui/videoplayer/views/OriginVideoView;->mDuration:I

    goto :goto_0

    .line 697
    :cond_1
    const/4 v0, -0x1

    iput v0, p0, Lcom/miui/videoplayer/views/OriginVideoView;->mDuration:I

    .line 698
    iget v0, p0, Lcom/miui/videoplayer/views/OriginVideoView;->mDuration:I

    goto :goto_0
.end method

.method public getMediaInfo()Lcom/duokan/MediaPlayer$MediaInfo;
    .locals 1

    .prologue
    .line 819
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPausedTotalTime()J
    .locals 2

    .prologue
    .line 853
    iget-wide v0, p0, Lcom/miui/videoplayer/views/OriginVideoView;->mTotalPausedTime:J

    return-wide v0
.end method

.method public getVideoHeight()I
    .locals 1

    .prologue
    .line 93
    iget v0, p0, Lcom/miui/videoplayer/views/OriginVideoView;->mVideoHeight:I

    return v0
.end method

.method public getVideoWidth()I
    .locals 1

    .prologue
    .line 89
    iget v0, p0, Lcom/miui/videoplayer/views/OriginVideoView;->mVideoWidth:I

    return v0
.end method

.method public isPaused()Z
    .locals 2

    .prologue
    .line 748
    iget v0, p0, Lcom/miui/videoplayer/views/OriginVideoView;->mCurrentState:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPlaying()Z
    .locals 1

    .prologue
    .line 718
    invoke-direct {p0}, Lcom/miui/videoplayer/views/OriginVideoView;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/videoplayer/views/OriginVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 4
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 127
    iget v2, p0, Lcom/miui/videoplayer/views/OriginVideoView;->mVideoWidth:I

    invoke-static {v2, p1}, Lcom/miui/videoplayer/views/OriginVideoView;->getDefaultSize(II)I

    move-result v1

    .line 128
    .local v1, width:I
    iget v2, p0, Lcom/miui/videoplayer/views/OriginVideoView;->mVideoHeight:I

    invoke-static {v2, p2}, Lcom/miui/videoplayer/views/OriginVideoView;->getDefaultSize(II)I

    move-result v0

    .line 129
    .local v0, height:I
    iget v2, p0, Lcom/miui/videoplayer/views/OriginVideoView;->mVideoWidth:I

    if-lez v2, :cond_0

    iget v2, p0, Lcom/miui/videoplayer/views/OriginVideoView;->mVideoHeight:I

    if-lez v2, :cond_0

    .line 130
    iget v2, p0, Lcom/miui/videoplayer/views/OriginVideoView;->mVideoWidth:I

    mul-int/2addr v2, v0

    iget v3, p0, Lcom/miui/videoplayer/views/OriginVideoView;->mVideoHeight:I

    mul-int/2addr v3, v1

    if-le v2, v3, :cond_2

    .line 132
    iget v2, p0, Lcom/miui/videoplayer/views/OriginVideoView;->mVideoHeight:I

    mul-int/2addr v2, v1

    iget v3, p0, Lcom/miui/videoplayer/views/OriginVideoView;->mVideoWidth:I

    div-int v0, v2, v3

    .line 144
    :cond_0
    :goto_0
    iget-boolean v2, p0, Lcom/miui/videoplayer/views/OriginVideoView;->mUserAdjustSize:Z

    if-eqz v2, :cond_1

    .line 145
    iget v1, p0, Lcom/miui/videoplayer/views/OriginVideoView;->mAdjustWidth:I

    .line 146
    iget v0, p0, Lcom/miui/videoplayer/views/OriginVideoView;->mAdjustHeight:I

    .line 151
    :cond_1
    invoke-virtual {p0, v1, v0}, Lcom/miui/videoplayer/views/OriginVideoView;->setMeasuredDimension(II)V

    .line 152
    return-void

    .line 133
    :cond_2
    iget v2, p0, Lcom/miui/videoplayer/views/OriginVideoView;->mVideoWidth:I

    mul-int/2addr v2, v0

    iget v3, p0, Lcom/miui/videoplayer/views/OriginVideoView;->mVideoHeight:I

    mul-int/2addr v3, v1

    if-ge v2, v3, :cond_0

    .line 135
    iget v2, p0, Lcom/miui/videoplayer/views/OriginVideoView;->mVideoWidth:I

    mul-int/2addr v2, v0

    iget v3, p0, Lcom/miui/videoplayer/views/OriginVideoView;->mVideoHeight:I

    div-int v1, v2, v3

    goto :goto_0
.end method

.method public pause()V
    .locals 3

    .prologue
    const/4 v2, 0x4

    .line 670
    invoke-direct {p0}, Lcom/miui/videoplayer/views/OriginVideoView;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 671
    iget-object v0, p0, Lcom/miui/videoplayer/views/OriginVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 672
    iget-object v0, p0, Lcom/miui/videoplayer/views/OriginVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 673
    iput v2, p0, Lcom/miui/videoplayer/views/OriginVideoView;->mCurrentState:I

    .line 674
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/videoplayer/views/OriginVideoView;->mLastPausedTimeStamp:J

    .line 677
    :cond_0
    iput v2, p0, Lcom/miui/videoplayer/views/OriginVideoView;->mTargetState:I

    .line 678
    return-void
.end method

.method public resolveAdjustedSize(II)I
    .locals 3
    .parameter "desiredSize"
    .parameter "measureSpec"

    .prologue
    .line 155
    move v0, p1

    .line 156
    .local v0, result:I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 157
    .local v1, specMode:I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 159
    .local v2, specSize:I
    sparse-switch v1, :sswitch_data_0

    .line 180
    :goto_0
    return v0

    .line 164
    :sswitch_0
    move v0, p1

    .line 165
    goto :goto_0

    .line 172
    :sswitch_1
    invoke-static {p1, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 173
    goto :goto_0

    .line 177
    :sswitch_2
    move v0, v2

    goto :goto_0

    .line 159
    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_1
        0x0 -> :sswitch_0
        0x40000000 -> :sswitch_2
    .end sparse-switch
.end method

.method public resume()V
    .locals 0

    .prologue
    .line 685
    invoke-direct {p0}, Lcom/miui/videoplayer/views/OriginVideoView;->openVideo()V

    .line 686
    return-void
.end method

.method public seekTo(I)V
    .locals 1
    .parameter "msec"

    .prologue
    .line 709
    invoke-direct {p0}, Lcom/miui/videoplayer/views/OriginVideoView;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 710
    iget-object v0, p0, Lcom/miui/videoplayer/views/OriginVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 711
    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/videoplayer/views/OriginVideoView;->mSeekWhenPrepared:I

    .line 715
    :goto_0
    return-void

    .line 713
    :cond_0
    iput p1, p0, Lcom/miui/videoplayer/views/OriginVideoView;->mSeekWhenPrepared:I

    goto :goto_0
.end method

.method public setOnBufferingUpdateListener(Landroid/media/MediaPlayer$OnBufferingUpdateListener;)V
    .locals 0
    .parameter "onBufferingUpdateListener"

    .prologue
    .line 774
    iput-object p1, p0, Lcom/miui/videoplayer/views/OriginVideoView;->mOnBufferingUpdateListener:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

    .line 775
    return-void
.end method

.method public setOnBufferingUpdateListener(Lcom/duokan/MediaPlayer$OnBufferingUpdateListener;)V
    .locals 0
    .parameter "onBufferingUpdateListener"

    .prologue
    .line 845
    return-void
.end method

.method public setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 503
    iput-object p1, p0, Lcom/miui/videoplayer/views/OriginVideoView;->mOnCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    .line 504
    return-void
.end method

.method public setOnCompletionListener(Lcom/duokan/MediaPlayer$OnCompletionListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 833
    return-void
.end method

.method public setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 516
    iput-object p1, p0, Lcom/miui/videoplayer/views/OriginVideoView;->mOnErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    .line 517
    return-void
.end method

.method public setOnErrorListener(Lcom/duokan/MediaPlayer$OnErrorListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 836
    return-void
.end method

.method public setOnInfoListener(Landroid/media/MediaPlayer$OnInfoListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 765
    iput-object p1, p0, Lcom/miui/videoplayer/views/OriginVideoView;->mOnInfoListener:Landroid/media/MediaPlayer$OnInfoListener;

    .line 766
    return-void
.end method

.method public setOnInfoListener(Lcom/duokan/MediaPlayer$OnInfoListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 842
    return-void
.end method

.method public setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 492
    iput-object p1, p0, Lcom/miui/videoplayer/views/OriginVideoView;->mOnPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    .line 493
    return-void
.end method

.method public setOnPreparedListener(Lcom/duokan/MediaPlayer$OnPreparedListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 830
    return-void
.end method

.method public setOnSeekCompleteListener(Landroid/media/MediaPlayer$OnSeekCompleteListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 770
    iput-object p1, p0, Lcom/miui/videoplayer/views/OriginVideoView;->mOnSeekCompleteListener:Landroid/media/MediaPlayer$OnSeekCompleteListener;

    .line 771
    return-void
.end method

.method public setOnSeekCompleteListener(Lcom/duokan/MediaPlayer$OnSeekCompleteListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 839
    return-void
.end method

.method public setOnTimedTextListener(Lcom/duokan/MediaPlayer$OnTimedTextListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 823
    return-void
.end method

.method public setOnVideoSizeChangedListener(Landroid/media/MediaPlayer$OnVideoSizeChangedListener;)V
    .locals 0
    .parameter "onVideoSizeChangedListener"

    .prologue
    .line 779
    iput-object p1, p0, Lcom/miui/videoplayer/views/OriginVideoView;->mOnVideoSizeChangedListener:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

    .line 780
    return-void
.end method

.method public setOnVideoSizeChangedListener(Lcom/duokan/MediaPlayer$OnVideoSizeChangedListener;)V
    .locals 0
    .parameter "onVideoSizeChangedListener"

    .prologue
    .line 849
    return-void
.end method

.method public setOutOfBandTextSource(Ljava/lang/String;)Z
    .locals 1
    .parameter "sourceUri"

    .prologue
    .line 826
    const/4 v0, 0x0

    return v0
.end method

.method public setVideoPath(Ljava/lang/String;)V
    .locals 1
    .parameter "path"

    .prologue
    .line 196
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/videoplayer/views/OriginVideoView;->setVideoURI(Landroid/net/Uri;)V

    .line 197
    return-void
.end method

.method public setVideoURI(Landroid/net/Uri;)V
    .locals 1
    .parameter "uri"

    .prologue
    .line 200
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/miui/videoplayer/views/OriginVideoView;->setVideoURI(Landroid/net/Uri;Ljava/util/Map;)V

    .line 201
    return-void
.end method

.method public setVideoURI(Landroid/net/Uri;Ljava/util/Map;)V
    .locals 1
    .parameter "uri"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 207
    .local p2, headers:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/miui/videoplayer/views/OriginVideoView;->mUri:Landroid/net/Uri;

    .line 208
    iput-object p2, p0, Lcom/miui/videoplayer/views/OriginVideoView;->mHeaders:Ljava/util/Map;

    .line 209
    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/videoplayer/views/OriginVideoView;->mSeekWhenPrepared:I

    .line 210
    invoke-direct {p0}, Lcom/miui/videoplayer/views/OriginVideoView;->openVideo()V

    .line 211
    invoke-virtual {p0}, Lcom/miui/videoplayer/views/OriginVideoView;->requestLayout()V

    .line 212
    invoke-virtual {p0}, Lcom/miui/videoplayer/views/OriginVideoView;->invalidate()V

    .line 213
    return-void
.end method

.method public start()V
    .locals 9

    .prologue
    const-wide/16 v7, 0x0

    const/4 v6, 0x3

    .line 658
    invoke-direct {p0}, Lcom/miui/videoplayer/views/OriginVideoView;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 659
    iget-object v0, p0, Lcom/miui/videoplayer/views/OriginVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 660
    iput v6, p0, Lcom/miui/videoplayer/views/OriginVideoView;->mCurrentState:I

    .line 661
    iget-wide v0, p0, Lcom/miui/videoplayer/views/OriginVideoView;->mLastPausedTimeStamp:J

    cmp-long v0, v0, v7

    if-eqz v0, :cond_0

    .line 662
    iget-wide v0, p0, Lcom/miui/videoplayer/views/OriginVideoView;->mTotalPausedTime:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/miui/videoplayer/views/OriginVideoView;->mLastPausedTimeStamp:J

    sub-long/2addr v2, v4

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/miui/videoplayer/views/OriginVideoView;->mTotalPausedTime:J

    .line 663
    iput-wide v7, p0, Lcom/miui/videoplayer/views/OriginVideoView;->mLastPausedTimeStamp:J

    .line 666
    :cond_0
    iput v6, p0, Lcom/miui/videoplayer/views/OriginVideoView;->mTargetState:I

    .line 667
    return-void
.end method

.method public startLocalPlayForAirkan(Landroid/net/Uri;)V
    .locals 0
    .parameter "videoUri"

    .prologue
    .line 798
    return-void
.end method

.method public startLocalPlayForMediaSwitch(Landroid/net/Uri;)V
    .locals 0
    .parameter "uri"

    .prologue
    .line 788
    return-void
.end method

.method public stopLocalPlayForAirkan()V
    .locals 0

    .prologue
    .line 793
    return-void
.end method

.method public stopLocalPlayForMediaSwitch()V
    .locals 0

    .prologue
    .line 784
    return-void
.end method

.method public stopPlayback()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 216
    iget-object v0, p0, Lcom/miui/videoplayer/views/OriginVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 217
    iget-object v0, p0, Lcom/miui/videoplayer/views/OriginVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 218
    iget-object v0, p0, Lcom/miui/videoplayer/views/OriginVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 219
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/videoplayer/views/OriginVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 220
    iput v1, p0, Lcom/miui/videoplayer/views/OriginVideoView;->mCurrentState:I

    .line 221
    iput v1, p0, Lcom/miui/videoplayer/views/OriginVideoView;->mTargetState:I

    .line 223
    :cond_0
    return-void
.end method

.method public suspend()V
    .locals 1

    .prologue
    .line 681
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/miui/videoplayer/views/OriginVideoView;->release(Z)V

    .line 682
    return-void
.end method
