.class public Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;
.super Landroid/view/SurfaceView;
.source "DuoKanCodecOriginVideoView.java"

# interfaces
.implements Lcom/miui/videoplayer/framework/ui/LocalMediaPlayerControl;
.implements Lcom/miui/videoplayer/framework/ui/LocalVideoPlaySizeAdjustable;


# static fields
.field private static final NETWORK_1003_ERROR_RETRY_TIMES:I = 0x3

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

.field private mBufferingUpdateListener:Lcom/duokan/MediaPlayer$OnBufferingUpdateListener;

.field private mCanPause:Z

.field private mCanSeekBack:Z

.field private mCanSeekForward:Z

.field private mCompletionListener:Lcom/duokan/MediaPlayer$OnCompletionListener;

.field private mContext:Landroid/content/Context;

.field private mCurrentBufferPercentage:I

.field private mCurrentState:I

.field private mDuration:I

.field private mErrorListener:Lcom/duokan/MediaPlayer$OnErrorListener;

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

.field private mMediaPlayer:Lcom/duokan/MediaPlayer;

.field private mOnBufferingUpdateListener:Lcom/duokan/MediaPlayer$OnBufferingUpdateListener;

.field private mOnCompletionListener:Lcom/duokan/MediaPlayer$OnCompletionListener;

.field private mOnErrorListener:Lcom/duokan/MediaPlayer$OnErrorListener;

.field private mOnInfoListener:Lcom/duokan/MediaPlayer$OnInfoListener;

.field private mOnPreparedListener:Lcom/duokan/MediaPlayer$OnPreparedListener;

.field private mOnSeekCompleteListener:Lcom/duokan/MediaPlayer$OnSeekCompleteListener;

.field private mOnVideoSizeChangedListener:Lcom/duokan/MediaPlayer$OnVideoSizeChangedListener;

.field mPreparedListener:Lcom/duokan/MediaPlayer$OnPreparedListener;

.field private mRemainRetryTimes:I

.field mSHCallback:Landroid/view/SurfaceHolder$Callback;

.field private mSeekWhenPrepared:I

.field mSizeChangedListener:Lcom/duokan/MediaPlayer$OnVideoSizeChangedListener;

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

    .line 105
    invoke-direct {p0, p1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    .line 31
    const-string v0, "DuoKanCodecOriginVideoView"

    iput-object v0, p0, Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;->TAG:Ljava/lang/String;

    .line 52
    iput v1, p0, Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;->mCurrentState:I

    .line 53
    iput v1, p0, Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;->mTargetState:I

    .line 56
    iput-object v2, p0, Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 57
    iput-object v2, p0, Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;->mMediaPlayer:Lcom/duokan/MediaPlayer;

    .line 82
    const/4 v0, 0x3

    iput v0, p0, Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;->mRemainRetryTimes:I

    .line 84
    iput-wide v3, p0, Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;->mTotalPausedTime:J

    .line 85
    iput-wide v3, p0, Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;->mLastPausedTimeStamp:J

    .line 100
    iput-boolean v1, p0, Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;->mUserAdjustSize:Z

    .line 308
    new-instance v0, Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView$1;

    invoke-direct {v0, p0}, Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView$1;-><init>(Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;)V

    iput-object v0, p0, Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;->mSizeChangedListener:Lcom/duokan/MediaPlayer$OnVideoSizeChangedListener;

    .line 323
    new-instance v0, Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView$2;

    invoke-direct {v0, p0}, Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView$2;-><init>(Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;)V

    iput-object v0, p0, Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;->mPreparedListener:Lcom/duokan/MediaPlayer$OnPreparedListener;

    .line 389
    new-instance v0, Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView$3;

    invoke-direct {v0, p0}, Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView$3;-><init>(Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;)V

    iput-object v0, p0, Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;->mCompletionListener:Lcom/duokan/MediaPlayer$OnCompletionListener;

    .line 403
    new-instance v0, Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView$4;

    invoke-direct {v0, p0}, Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView$4;-><init>(Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;)V

    iput-object v0, p0, Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;->mErrorListener:Lcom/duokan/MediaPlayer$OnErrorListener;

    .line 482
    new-instance v0, Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView$5;

    invoke-direct {v0, p0}, Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView$5;-><init>(Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;)V

    iput-object v0, p0, Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;->mBufferingUpdateListener:Lcom/duokan/MediaPlayer$OnBufferingUpdateListener;

    .line 527
    new-instance v0, Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView$6;

    invoke-direct {v0, p0}, Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView$6;-><init>(Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;)V

    iput-object v0, p0, Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;->mSHCallback:Landroid/view/SurfaceHolder$Callback;

    .line 106
    invoke-direct {p0}, Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;->initVideoView()V

    .line 107
    iput-object p1, p0, Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;->mContext:Landroid/content/Context;

    .line 108
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 111
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 112
    invoke-direct {p0}, Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;->initVideoView()V

    .line 113
    iput-object p1, p0, Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;->mContext:Landroid/content/Context;

    .line 114
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

    .line 117
    invoke-direct {p0, p1, p2, p3}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 31
    const-string v0, "DuoKanCodecOriginVideoView"

    iput-object v0, p0, Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;->TAG:Ljava/lang/String;

    .line 52
    iput v1, p0, Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;->mCurrentState:I

    .line 53
    iput v1, p0, Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;->mTargetState:I

    .line 56
    iput-object v2, p0, Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 57
    iput-object v2, p0, Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;->mMediaPlayer:Lcom/duokan/MediaPlayer;

    .line 82
    const/4 v0, 0x3

    iput v0, p0, Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;->mRemainRetryTimes:I

    .line 84
    iput-wide v3, p0, Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;->mTotalPausedTime:J

    .line 85
    iput-wide v3, p0, Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;->mLastPausedTimeStamp:J

    .line 100
    iput-boolean v1, p0, Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;->mUserAdjustSize:Z

    .line 308
    new-instance v0, Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView$1;

    invoke-direct {v0, p0}, Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView$1;-><init>(Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;)V

    iput-object v0, p0, Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;->mSizeChangedListener:Lcom/duokan/MediaPlayer$OnVideoSizeChangedListener;

    .line 323
    new-instance v0, Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView$2;

    invoke-direct {v0, p0}, Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView$2;-><init>(Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;)V

    iput-object v0, p0, Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;->mPreparedListener:Lcom/duokan/MediaPlayer$OnPreparedListener;

    .line 389
    new-instance v0, Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView$3;

    invoke-direct {v0, p0}, Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView$3;-><init>(Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;)V

    iput-object v0, p0, Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;->mCompletionListener:Lcom/duokan/MediaPlayer$OnCompletionListener;

    .line 403
    new-instance v0, Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView$4;

    invoke-direct {v0, p0}, Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView$4;-><init>(Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;)V

    iput-object v0, p0, Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;->mErrorListener:Lcom/duokan/MediaPlayer$OnErrorListener;

    .line 482
    new-instance v0, Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView$5;

    invoke-direct {v0, p0}, Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView$5;-><init>(Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;)V

    iput-object v0, p0, Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;->mBufferingUpdateListener:Lcom/duokan/MediaPlayer$OnBufferingUpdateListener;

    .line 527
    new-instance v0, Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView$6;

    invoke-direct {v0, p0}, Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView$6;-><init>(Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;)V

    iput-object v0, p0, Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;->mSHCallback:Landroid/view/SurfaceHolder$Callback;

    .line 118
    invoke-direct {p0}, Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;->initVideoView()V

    .line 119
    iput-object p1, p0, Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;->mContext:Landroid/content/Context;

    .line 120
    return-void
.end method

.method static synthetic access$000(Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget v0, p0, Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;->mVideoWidth:I

    return v0
.end method

.method static synthetic access$002(Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30
    iput p1, p0, Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;->mVideoWidth:I

    return p1
.end method

.method static synthetic access$100(Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget v0, p0, Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;->mVideoHeight:I

    return v0
.end method

.method static synthetic access$1000(Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;)Lcom/duokan/MediaPlayer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;->mMediaPlayer:Lcom/duokan/MediaPlayer;

    return-object v0
.end method

.method static synthetic access$102(Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30
    iput p1, p0, Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;->mVideoHeight:I

    return p1
.end method

.method static synthetic access$1100(Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget v0, p0, Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;->mSeekWhenPrepared:I

    return v0
.end method

.method static synthetic access$1200(Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget v0, p0, Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;->mSurfaceWidth:I

    return v0
.end method

.method static synthetic access$1202(Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30
    iput p1, p0, Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;->mSurfaceWidth:I

    return p1
.end method

.method static synthetic access$1300(Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget v0, p0, Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;->mSurfaceHeight:I

    return v0
.end method

.method static synthetic access$1302(Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30
    iput p1, p0, Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;->mSurfaceHeight:I

    return p1
.end method

.method static synthetic access$1400(Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget v0, p0, Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;->mTargetState:I

    return v0
.end method

.method static synthetic access$1402(Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30
    iput p1, p0, Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;->mTargetState:I

    return p1
.end method

.method static synthetic access$1500(Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;)Lcom/duokan/MediaPlayer$OnCompletionListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;->mOnCompletionListener:Lcom/duokan/MediaPlayer$OnCompletionListener;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;)Landroid/net/Uri;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;->mUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget v0, p0, Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;->mRemainRetryTimes:I

    return v0
.end method

.method static synthetic access$1810(Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 30
    iget v0, p0, Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;->mRemainRetryTimes:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;->mRemainRetryTimes:I

    return v0
.end method

.method static synthetic access$1900(Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;)Lcom/duokan/MediaPlayer$OnErrorListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;->mOnErrorListener:Lcom/duokan/MediaPlayer$OnErrorListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;)Lcom/duokan/MediaPlayer$OnVideoSizeChangedListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;->mOnVideoSizeChangedListener:Lcom/duokan/MediaPlayer$OnVideoSizeChangedListener;

    return-object v0
.end method

.method static synthetic access$2002(Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30
    iput p1, p0, Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;->mCurrentBufferPercentage:I

    return p1
.end method

.method static synthetic access$2100(Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;)Lcom/duokan/MediaPlayer$OnBufferingUpdateListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;->mOnBufferingUpdateListener:Lcom/duokan/MediaPlayer$OnBufferingUpdateListener;

    return-object v0
.end method

.method static synthetic access$2202(Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;Landroid/view/SurfaceHolder;)Landroid/view/SurfaceHolder;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30
    iput-object p1, p0, Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    return-object p1
.end method

.method static synthetic access$2300(Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;->openVideo()V

    return-void
.end method

.method static synthetic access$2400(Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;->release(Z)V

    return-void
.end method

.method static synthetic access$302(Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30
    iput-wide p1, p0, Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;->mTotalPausedTime:J

    return-wide p1
.end method

.method static synthetic access$402(Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30
    iput-wide p1, p0, Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;->mLastPausedTimeStamp:J

    return-wide p1
.end method

.method static synthetic access$502(Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30
    iput p1, p0, Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;->mCurrentState:I

    return p1
.end method

.method static synthetic access$602(Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30
    iput-boolean p1, p0, Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;->mCanPause:Z

    return p1
.end method

.method static synthetic access$702(Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30
    iput-boolean p1, p0, Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;->mCanSeekBack:Z

    return p1
.end method

.method static synthetic access$802(Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30
    iput-boolean p1, p0, Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;->mCanSeekForward:Z

    return p1
.end method

.method static synthetic access$900(Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;)Lcom/duokan/MediaPlayer$OnPreparedListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;->mOnPreparedListener:Lcom/duokan/MediaPlayer$OnPreparedListener;

    return-object v0
.end method

.method private initVideoView()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 182
    iput v2, p0, Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;->mVideoWidth:I

    .line 183
    iput v2, p0, Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;->mVideoHeight:I

    .line 184
    invoke-virtual {p0}, Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;->mSHCallback:Landroid/view/SurfaceHolder$Callback;

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 185
    invoke-virtual {p0}, Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setType(I)V

    .line 186
    invoke-virtual {p0, v3}, Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;->setFocusable(Z)V

    .line 187
    invoke-virtual {p0, v3}, Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;->setFocusableInTouchMode(Z)V

    .line 188
    invoke-virtual {p0}, Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;->requestFocus()Z

    .line 189
    iput v2, p0, Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;->mCurrentState:I

    .line 190
    iput v2, p0, Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;->mTargetState:I

    .line 191
    return-void
.end method

.method private isInPlaybackState()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 738
    iget-object v1, p0, Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;->mMediaPlayer:Lcom/duokan/MediaPlayer;

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;->mCurrentState:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;->mCurrentState:I

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;->mCurrentState:I

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
    iget-object v2, p0, Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;->mUri:Landroid/net/Uri;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

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
    iget-object v2, p0, Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 239
    invoke-direct {p0, v6}, Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;->release(Z)V

    .line 241
    :try_start_0
    new-instance v2, Lcom/duokan/MediaPlayer;

    invoke-direct {v2}, Lcom/duokan/MediaPlayer;-><init>()V

    iput-object v2, p0, Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;->mMediaPlayer:Lcom/duokan/MediaPlayer;

    .line 242
    iget-object v2, p0, Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;->mMediaPlayer:Lcom/duokan/MediaPlayer;

    iget-object v3, p0, Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;->mPreparedListener:Lcom/duokan/MediaPlayer$OnPreparedListener;

    invoke-virtual {v2, v3}, Lcom/duokan/MediaPlayer;->setOnPreparedListener(Lcom/duokan/MediaPlayer$OnPreparedListener;)V

    .line 243
    iget-object v2, p0, Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;->mMediaPlayer:Lcom/duokan/MediaPlayer;

    iget-object v3, p0, Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;->mSizeChangedListener:Lcom/duokan/MediaPlayer$OnVideoSizeChangedListener;

    invoke-virtual {v2, v3}, Lcom/duokan/MediaPlayer;->setOnVideoSizeChangedListener(Lcom/duokan/MediaPlayer$OnVideoSizeChangedListener;)V

    .line 244
    const/4 v2, -0x1

    iput v2, p0, Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;->mDuration:I

    .line 245
    iget-object v2, p0, Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;->mMediaPlayer:Lcom/duokan/MediaPlayer;

    iget-object v3, p0, Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;->mCompletionListener:Lcom/duokan/MediaPlayer$OnCompletionListener;

    invoke-virtual {v2, v3}, Lcom/duokan/MediaPlayer;->setOnCompletionListener(Lcom/duokan/MediaPlayer$OnCompletionListener;)V

    .line 246
    iget-object v2, p0, Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;->mMediaPlayer:Lcom/duokan/MediaPlayer;

    iget-object v3, p0, Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;->mErrorListener:Lcom/duokan/MediaPlayer$OnErrorListener;

    invoke-virtual {v2, v3}, Lcom/duokan/MediaPlayer;->setOnErrorListener(Lcom/duokan/MediaPlayer$OnErrorListener;)V

    .line 247
    iget-object v2, p0, Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;->mMediaPlayer:Lcom/duokan/MediaPlayer;

    iget-object v3, p0, Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;->mBufferingUpdateListener:Lcom/duokan/MediaPlayer$OnBufferingUpdateListener;

    invoke-virtual {v2, v3}, Lcom/duokan/MediaPlayer;->setOnBufferingUpdateListener(Lcom/duokan/MediaPlayer$OnBufferingUpdateListener;)V

    .line 248
    const/4 v2, 0x0

    iput v2, p0, Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;->mCurrentBufferPercentage:I

    .line 251
    iget-object v2, p0, Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;->mOnSeekCompleteListener:Lcom/duokan/MediaPlayer$OnSeekCompleteListener;

    if-eqz v2, :cond_2

    .line 252
    iget-object v2, p0, Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;->mMediaPlayer:Lcom/duokan/MediaPlayer;

    iget-object v3, p0, Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;->mOnSeekCompleteListener:Lcom/duokan/MediaPlayer$OnSeekCompleteListener;

    invoke-virtual {v2, v3}, Lcom/duokan/MediaPlayer;->setOnSeekCompleteListener(Lcom/duokan/MediaPlayer$OnSeekCompleteListener;)V

    .line 255
    :cond_2
    iget-object v2, p0, Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;->mOnInfoListener:Lcom/duokan/MediaPlayer$OnInfoListener;

    if-eqz v2, :cond_3

    .line 256
    iget-object v2, p0, Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;->mMediaPlayer:Lcom/duokan/MediaPlayer;

    iget-object v3, p0, Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;->mOnInfoListener:Lcom/duokan/MediaPlayer$OnInfoListener;

    invoke-virtual {v2, v3}, Lcom/duokan/MediaPlayer;->setOnInfoListener(Lcom/duokan/MediaPlayer$OnInfoListener;)V

    .line 265
    :cond_3
    iget-object v2, p0, Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setDataSource: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;->mUri:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    iget-object v2, p0, Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;->mMediaPlayer:Lcom/duokan/MediaPlayer;

    iget-object v3, p0, Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;->mUri:Landroid/net/Uri;

    invoke-virtual {v2, v3, v4}, Lcom/duokan/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 267
    iget-object v2, p0, Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;->mMediaPlayer:Lcom/duokan/MediaPlayer;

    iget-object v3, p0, Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-virtual {v2, v3}, Lcom/duokan/MediaPlayer;->setDisplay(Landroid/view/SurfaceHolder;)V

    .line 269
    iget-object v2, p0, Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;->mMediaPlayer:Lcom/duokan/MediaPlayer;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/duokan/MediaPlayer;->setScreenOnWhilePlaying(Z)V

    .line 270
    iget-object v2, p0, Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;->mMediaPlayer:Lcom/duokan/MediaPlayer;

    invoke-virtual {v2}, Lcom/duokan/MediaPlayer;->prepareAsync()V

    .line 273
    const/4 v2, 0x1

    iput v2, p0, Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;->mCurrentState:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    goto/16 :goto_0

    .line 275
    :catch_0
    move-exception v0

    .line 276
    .local v0, ex:Ljava/io/IOException;
    iget-object v2, p0, Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to open content: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;->mUri:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 277
    iput v5, p0, Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;->mCurrentState:I

    .line 278
    iput v5, p0, Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;->mTargetState:I

    .line 279
    iget-object v2, p0, Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;->mErrorListener:Lcom/duokan/MediaPlayer$OnErrorListener;

    iget-object v3, p0, Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;->mMediaPlayer:Lcom/duokan/MediaPlayer;

    invoke-interface {v2, v3, v7, v6}, Lcom/duokan/MediaPlayer$OnErrorListener;->onError(Lcom/duokan/MediaPlayer;II)Z

    goto/16 :goto_0

    .line 281
    .end local v0           #ex:Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 282
    .local v0, ex:Ljava/lang/IllegalArgumentException;
    iget-object v2, p0, Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to open content: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;->mUri:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 283
    iput v5, p0, Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;->mCurrentState:I

    .line 284
    iput v5, p0, Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;->mTargetState:I

    .line 285
    iget-object v2, p0, Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;->mErrorListener:Lcom/duokan/MediaPlayer$OnErrorListener;

    iget-object v3, p0, Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;->mMediaPlayer:Lcom/duokan/MediaPlayer;

    invoke-interface {v2, v3, v7, v6}, Lcom/duokan/MediaPlayer$OnErrorListener;->onError(Lcom/duokan/MediaPlayer;II)Z

    goto/16 :goto_0
.end method

.method private release(Z)V
    .locals 2
    .parameter "cleartargetstate"

    .prologue
    const/4 v1, 0x0

    .line 566
    iget-object v0, p0, Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;->mMediaPlayer:Lcom/duokan/MediaPlayer;

    if-eqz v0, :cond_0

    .line 567
    iget-object v0, p0, Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;->mMediaPlayer:Lcom/duokan/MediaPlayer;

    invoke-virtual {v0}, Lcom/duokan/MediaPlayer;->reset()V

    .line 568
    iget-object v0, p0, Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;->mMediaPlayer:Lcom/duokan/MediaPlayer;

    invoke-virtual {v0}, Lcom/duokan/MediaPlayer;->release()V

    .line 569
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;->mMediaPlayer:Lcom/duokan/MediaPlayer;

    .line 570
    iput v1, p0, Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;->mCurrentState:I

    .line 571
    if-eqz p1, :cond_0

    .line 572
    iput v1, p0, Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;->mTargetState:I

    .line 575
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
    .line 761
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, p1, p2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 762
    .local v0, lp:Landroid/widget/FrameLayout$LayoutParams;
    const/16 v1, 0x11

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 763
    invoke-virtual {p0, v0}, Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 765
    if-nez p3, :cond_0

    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, p0, Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;->mUserAdjustSize:Z

    .line 766
    iput p1, p0, Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;->mAdjustWidth:I

    .line 767
    iput p2, p0, Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;->mAdjustHeight:I

    .line 768
    invoke-virtual {p0}, Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Landroid/view/SurfaceHolder;->setFixedSize(II)V

    .line 770
    return-void

    .line 765
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public canPause()Z
    .locals 1

    .prologue
    .line 745
    iget-boolean v0, p0, Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;->mCanPause:Z

    return v0
.end method

.method public canSeekBackward()Z
    .locals 1

    .prologue
    .line 749
    iget-boolean v0, p0, Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;->mCanSeekBack:Z

    return v0
.end method

.method public canSeekForward()Z
    .locals 1

    .prologue
    .line 753
    iget-boolean v0, p0, Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;->mCanSeekForward:Z

    return v0
.end method

.method public disableMultiSpeedPlayback()Z
    .locals 1

    .prologue
    .line 838
    iget-object v0, p0, Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;->mMediaPlayer:Lcom/duokan/MediaPlayer;

    invoke-virtual {v0}, Lcom/duokan/MediaPlayer;->disableMultiSpeedPlayback()Z

    move-result v0

    return v0
.end method

.method public enableMultiSpeedPlayback(IZ)Z
    .locals 1
    .parameter "speed"
    .parameter "forward"

    .prologue
    .line 833
    iget-object v0, p0, Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;->mMediaPlayer:Lcom/duokan/MediaPlayer;

    invoke-virtual {v0, p1, p2}, Lcom/duokan/MediaPlayer;->enableMultiSpeedPlayback(IZ)Z

    move-result v0

    return v0
.end method

.method public getAdjustHeight()I
    .locals 1

    .prologue
    .line 828
    iget v0, p0, Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;->mAdjustHeight:I

    return v0
.end method

.method public getAdjustWidth()I
    .locals 1

    .prologue
    .line 824
    iget v0, p0, Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;->mAdjustWidth:I

    return v0
.end method

.method public getBufferPercentage()I
    .locals 1

    .prologue
    .line 731
    iget-object v0, p0, Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;->mMediaPlayer:Lcom/duokan/MediaPlayer;

    if-eqz v0, :cond_0

    .line 732
    iget v0, p0, Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;->mCurrentBufferPercentage:I

    .line 734
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCurrentPosition()I
    .locals 1

    .prologue
    .line 711
    invoke-direct {p0}, Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 712
    iget-object v0, p0, Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;->mMediaPlayer:Lcom/duokan/MediaPlayer;

    invoke-virtual {v0}, Lcom/duokan/MediaPlayer;->getCurrentPosition()I

    move-result v0

    .line 714
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDuration()I
    .locals 1

    .prologue
    .line 699
    invoke-direct {p0}, Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 700
    iget v0, p0, Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;->mDuration:I

    if-lez v0, :cond_0

    .line 701
    iget v0, p0, Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;->mDuration:I

    .line 707
    :goto_0
    return v0

    .line 703
    :cond_0
    iget-object v0, p0, Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;->mMediaPlayer:Lcom/duokan/MediaPlayer;

    invoke-virtual {v0}, Lcom/duokan/MediaPlayer;->getDuration()I

    move-result v0

    iput v0, p0, Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;->mDuration:I

    .line 704
    iget v0, p0, Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;->mDuration:I

    goto :goto_0

    .line 706
    :cond_1
    const/4 v0, -0x1

    iput v0, p0, Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;->mDuration:I

    .line 707
    iget v0, p0, Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;->mDuration:I

    goto :goto_0
.end method

.method public getMediaInfo()Lcom/duokan/MediaPlayer$MediaInfo;
    .locals 1

    .prologue
    .line 774
    iget-object v0, p0, Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;->mMediaPlayer:Lcom/duokan/MediaPlayer;

    invoke-virtual {v0}, Lcom/duokan/MediaPlayer;->getMediaInfo()Lcom/duokan/MediaPlayer$MediaInfo;

    move-result-object v0

    return-object v0
.end method

.method public getPausedTotalTime()J
    .locals 2

    .prologue
    .line 867
    iget-wide v0, p0, Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;->mTotalPausedTime:J

    return-wide v0
.end method

.method public getVideoHeight()I
    .locals 1

    .prologue
    .line 92
    iget v0, p0, Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;->mVideoHeight:I

    return v0
.end method

.method public getVideoWidth()I
    .locals 1

    .prologue
    .line 88
    iget v0, p0, Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;->mVideoWidth:I

    return v0
.end method

.method public isPaused()Z
    .locals 2

    .prologue
    .line 757
    iget v0, p0, Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;->mCurrentState:I

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
    .line 727
    invoke-direct {p0}, Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;->mMediaPlayer:Lcom/duokan/MediaPlayer;

    invoke-virtual {v0}, Lcom/duokan/MediaPlayer;->isPlaying()Z

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
    .line 126
    iget v2, p0, Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;->mVideoWidth:I

    invoke-static {v2, p1}, Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;->getDefaultSize(II)I

    move-result v1

    .line 127
    .local v1, width:I
    iget v2, p0, Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;->mVideoHeight:I

    invoke-static {v2, p2}, Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;->getDefaultSize(II)I

    move-result v0

    .line 128
    .local v0, height:I
    iget v2, p0, Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;->mVideoWidth:I

    if-lez v2, :cond_0

    iget v2, p0, Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;->mVideoHeight:I

    if-lez v2, :cond_0

    .line 129
    iget v2, p0, Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;->mVideoWidth:I

    mul-int/2addr v2, v0

    iget v3, p0, Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;->mVideoHeight:I

    mul-int/2addr v3, v1

    if-le v2, v3, :cond_2

    .line 131
    iget v2, p0, Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;->mVideoHeight:I

    mul-int/2addr v2, v1

    iget v3, p0, Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;->mVideoWidth:I

    div-int v0, v2, v3

    .line 143
    :cond_0
    :goto_0
    iget-boolean v2, p0, Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;->mUserAdjustSize:Z

    if-eqz v2, :cond_1

    .line 144
    iget v1, p0, Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;->mAdjustWidth:I

    .line 145
    iget v0, p0, Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;->mAdjustHeight:I

    .line 149
    :cond_1
    invoke-virtual {p0, v1, v0}, Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;->setMeasuredDimension(II)V

    .line 150
    return-void

    .line 132
    :cond_2
    iget v2, p0, Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;->mVideoWidth:I

    mul-int/2addr v2, v0

    iget v3, p0, Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;->mVideoHeight:I

    mul-int/2addr v3, v1

    if-ge v2, v3, :cond_0

    .line 134
    iget v2, p0, Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;->mVideoWidth:I

    mul-int/2addr v2, v0

    iget v3, p0, Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;->mVideoHeight:I

    div-int v1, v2, v3

    goto :goto_0
.end method

.method public pause()V
    .locals 3

    .prologue
    const/4 v2, 0x4

    .line 678
    invoke-direct {p0}, Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 679
    iget-object v0, p0, Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;->mMediaPlayer:Lcom/duokan/MediaPlayer;

    invoke-virtual {v0}, Lcom/duokan/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 680
    iget-object v0, p0, Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;->mMediaPlayer:Lcom/duokan/MediaPlayer;

    invoke-virtual {v0}, Lcom/duokan/MediaPlayer;->pause()V

    .line 681
    iput v2, p0, Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;->mCurrentState:I

    .line 683
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;->mLastPausedTimeStamp:J

    .line 686
    :cond_0
    iput v2, p0, Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;->mTargetState:I

    .line 687
    return-void
.end method

.method public resolveAdjustedSize(II)I
    .locals 3
    .parameter "desiredSize"
    .parameter "measureSpec"

    .prologue
    .line 153
    move v0, p1

    .line 154
    .local v0, result:I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 155
    .local v1, specMode:I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 157
    .local v2, specSize:I
    sparse-switch v1, :sswitch_data_0

    .line 178
    :goto_0
    return v0

    .line 162
    :sswitch_0
    move v0, p1

    .line 163
    goto :goto_0

    .line 170
    :sswitch_1
    invoke-static {p1, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 171
    goto :goto_0

    .line 175
    :sswitch_2
    move v0, v2

    goto :goto_0

    .line 157
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
    .line 694
    invoke-direct {p0}, Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;->openVideo()V

    .line 695
    return-void
.end method

.method public seekTo(I)V
    .locals 1
    .parameter "msec"

    .prologue
    .line 718
    invoke-direct {p0}, Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 719
    iget-object v0, p0, Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;->mMediaPlayer:Lcom/duokan/MediaPlayer;

    invoke-virtual {v0, p1}, Lcom/duokan/MediaPlayer;->seekTo(I)V

    .line 720
    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;->mSeekWhenPrepared:I

    .line 724
    :goto_0
    return-void

    .line 722
    :cond_0
    iput p1, p0, Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;->mSeekWhenPrepared:I

    goto :goto_0
.end method

.method public setOnBufferingUpdateListener(Landroid/media/MediaPlayer$OnBufferingUpdateListener;)V
    .locals 0
    .parameter "onBufferingUpdateListener"

    .prologue
    .line 860
    return-void
.end method

.method public setOnBufferingUpdateListener(Lcom/duokan/MediaPlayer$OnBufferingUpdateListener;)V
    .locals 0
    .parameter "onBufferingUpdateListener"

    .prologue
    .line 799
    iput-object p1, p0, Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;->mOnBufferingUpdateListener:Lcom/duokan/MediaPlayer$OnBufferingUpdateListener;

    .line 800
    return-void
.end method

.method public setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 848
    return-void
.end method

.method public setOnCompletionListener(Lcom/duokan/MediaPlayer$OnCompletionListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 511
    iput-object p1, p0, Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;->mOnCompletionListener:Lcom/duokan/MediaPlayer$OnCompletionListener;

    .line 512
    return-void
.end method

.method public setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 851
    return-void
.end method

.method public setOnErrorListener(Lcom/duokan/MediaPlayer$OnErrorListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 524
    iput-object p1, p0, Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;->mOnErrorListener:Lcom/duokan/MediaPlayer$OnErrorListener;

    .line 525
    return-void
.end method

.method public setOnInfoListener(Landroid/media/MediaPlayer$OnInfoListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 857
    return-void
.end method

.method public setOnInfoListener(Lcom/duokan/MediaPlayer$OnInfoListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 790
    iput-object p1, p0, Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;->mOnInfoListener:Lcom/duokan/MediaPlayer$OnInfoListener;

    .line 791
    return-void
.end method

.method public setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 845
    return-void
.end method

.method public setOnPreparedListener(Lcom/duokan/MediaPlayer$OnPreparedListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 500
    iput-object p1, p0, Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;->mOnPreparedListener:Lcom/duokan/MediaPlayer$OnPreparedListener;

    .line 501
    return-void
.end method

.method public setOnSeekCompleteListener(Landroid/media/MediaPlayer$OnSeekCompleteListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 854
    return-void
.end method

.method public setOnSeekCompleteListener(Lcom/duokan/MediaPlayer$OnSeekCompleteListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 795
    iput-object p1, p0, Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;->mOnSeekCompleteListener:Lcom/duokan/MediaPlayer$OnSeekCompleteListener;

    .line 796
    return-void
.end method

.method public setOnTimedTextListener(Lcom/duokan/MediaPlayer$OnTimedTextListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 780
    return-void
.end method

.method public setOnVideoSizeChangedListener(Landroid/media/MediaPlayer$OnVideoSizeChangedListener;)V
    .locals 0
    .parameter "onVideoSizeChangedListener"

    .prologue
    .line 863
    return-void
.end method

.method public setOnVideoSizeChangedListener(Lcom/duokan/MediaPlayer$OnVideoSizeChangedListener;)V
    .locals 0
    .parameter "onVideoSizeChangedListener"

    .prologue
    .line 803
    iput-object p1, p0, Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;->mOnVideoSizeChangedListener:Lcom/duokan/MediaPlayer$OnVideoSizeChangedListener;

    .line 804
    return-void
.end method

.method public setOutOfBandTextSource(Ljava/lang/String;)Z
    .locals 1
    .parameter "sourceUri"

    .prologue
    .line 784
    iput-object p1, p0, Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;->mTimedTextSourceUri:Ljava/lang/String;

    .line 785
    const/4 v0, 0x0

    return v0
.end method

.method public setVideoPath(Ljava/lang/String;)V
    .locals 1
    .parameter "path"

    .prologue
    .line 194
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;->setVideoURI(Landroid/net/Uri;)V

    .line 195
    return-void
.end method

.method public setVideoURI(Landroid/net/Uri;)V
    .locals 3
    .parameter "uri"

    .prologue
    .line 198
    iget-object v0, p0, Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SetVideoURI: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    const/4 v0, 0x3

    iput v0, p0, Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;->mRemainRetryTimes:I

    .line 200
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;->setVideoURI(Landroid/net/Uri;Ljava/util/Map;)V

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
    iput-object p1, p0, Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;->mUri:Landroid/net/Uri;

    .line 208
    iput-object p2, p0, Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;->mHeaders:Ljava/util/Map;

    .line 209
    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;->mSeekWhenPrepared:I

    .line 210
    invoke-direct {p0}, Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;->openVideo()V

    .line 211
    invoke-virtual {p0}, Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;->requestLayout()V

    .line 212
    invoke-virtual {p0}, Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;->invalidate()V

    .line 213
    return-void
.end method

.method public start()V
    .locals 9

    .prologue
    const-wide/16 v7, 0x0

    const/4 v6, 0x3

    .line 666
    invoke-direct {p0}, Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 667
    iget-object v0, p0, Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;->mMediaPlayer:Lcom/duokan/MediaPlayer;

    invoke-virtual {v0}, Lcom/duokan/MediaPlayer;->start()V

    .line 668
    iput v6, p0, Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;->mCurrentState:I

    .line 669
    iget-wide v0, p0, Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;->mLastPausedTimeStamp:J

    cmp-long v0, v0, v7

    if-eqz v0, :cond_0

    .line 670
    iget-wide v0, p0, Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;->mTotalPausedTime:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;->mLastPausedTimeStamp:J

    sub-long/2addr v2, v4

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;->mTotalPausedTime:J

    .line 671
    iput-wide v7, p0, Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;->mLastPausedTimeStamp:J

    .line 674
    :cond_0
    iput v6, p0, Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;->mTargetState:I

    .line 675
    return-void
.end method

.method public startLocalPlayForAirkan(Landroid/net/Uri;)V
    .locals 0
    .parameter "videoUri"

    .prologue
    .line 822
    return-void
.end method

.method public startLocalPlayForMediaSwitch(Landroid/net/Uri;)V
    .locals 0
    .parameter "uri"

    .prologue
    .line 812
    return-void
.end method

.method public stopLocalPlayForAirkan()V
    .locals 0

    .prologue
    .line 817
    return-void
.end method

.method public stopLocalPlayForMediaSwitch()V
    .locals 0

    .prologue
    .line 808
    return-void
.end method

.method public stopPlayback()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 216
    iget-object v0, p0, Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;->mMediaPlayer:Lcom/duokan/MediaPlayer;

    if-eqz v0, :cond_0

    .line 217
    iget-object v0, p0, Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;->mMediaPlayer:Lcom/duokan/MediaPlayer;

    invoke-virtual {v0}, Lcom/duokan/MediaPlayer;->stop()V

    .line 218
    iget-object v0, p0, Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;->mMediaPlayer:Lcom/duokan/MediaPlayer;

    invoke-virtual {v0}, Lcom/duokan/MediaPlayer;->release()V

    .line 219
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;->mMediaPlayer:Lcom/duokan/MediaPlayer;

    .line 220
    iput v1, p0, Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;->mCurrentState:I

    .line 221
    iput v1, p0, Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;->mTargetState:I

    .line 223
    :cond_0
    return-void
.end method

.method public suspend()V
    .locals 1

    .prologue
    .line 690
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;->release(Z)V

    .line 691
    return-void
.end method
