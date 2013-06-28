.class public Lcom/duokan/MediaPlayer;
.super Ljava/lang/Object;
.source "MediaPlayer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/duokan/MediaPlayer$EventHandler;,
        Lcom/duokan/MediaPlayer$OnTimedTextListener;,
        Lcom/duokan/MediaPlayer$OnInfoListener;,
        Lcom/duokan/MediaPlayer$OnErrorListener;,
        Lcom/duokan/MediaPlayer$OnVideoSizeChangedListener;,
        Lcom/duokan/MediaPlayer$OnSeekCompleteListener;,
        Lcom/duokan/MediaPlayer$OnBufferingUpdateListener;,
        Lcom/duokan/MediaPlayer$OnCompletionListener;,
        Lcom/duokan/MediaPlayer$OnPreparedListener;,
        Lcom/duokan/MediaPlayer$AudioTrackInfo;,
        Lcom/duokan/MediaPlayer$MediaInfo;
    }
.end annotation


# static fields
.field public static final APPLY_METADATA_FILTER:Z = true

.field public static final BYPASS_METADATA_FILTER:Z = false

.field private static final KEY_PARAMETER_AUDIO_TRACK_INDEX:I = 0x578

.field private static final KEY_PARAMETER_AUDIO_TRACK_INFO:I = 0x4b2

.field private static final KEY_PARAMETER_DISABLE_MULTI_SPEED_PLAYBACK:I = 0x7d2

.field private static final KEY_PARAMETER_ENABLE_MULTI_SPEED_PLAYBACK:I = 0x7d1

.field private static final KEY_PARAMETER_IN_BAND_SUBTITLE_INFO:I = 0x4b1

.field private static final KEY_PARAMETER_MEDIA_INFO:I = 0x514

.field private static final KEY_PARAMETER_TIMED_TEXT_ADD_OUT_OF_BAND_SOURCE:I = 0x3e9

.field private static final KEY_PARAMETER_TIMED_TEXT_TRACK_INDEX:I = 0x3e8

.field private static final MEDIA_BUFFERING_UPDATE:I = 0x3

.field private static final MEDIA_ERROR:I = 0x64

.field public static final MEDIA_ERROR_NOT_VALID_FOR_PROGRESSIVE_PLAYBACK:I = 0xc8

.field public static final MEDIA_ERROR_SERVER_DIED:I = 0x64

.field public static final MEDIA_ERROR_UNKNOWN:I = 0x1

.field private static final MEDIA_INFO:I = 0xc8

.field public static final MEDIA_INFO_BAD_INTERLEAVING:I = 0x320

.field public static final MEDIA_INFO_BUFFERING_END:I = 0x2be

.field public static final MEDIA_INFO_BUFFERING_START:I = 0x2bd

.field public static final MEDIA_INFO_BUFFERING_UPDATE:I = 0x302

.field public static final MEDIA_INFO_HARDWARE_DECODER:I = 0x259

.field public static final MEDIA_INFO_METADATA_UPDATE:I = 0x322

.field public static final MEDIA_INFO_NOT_SEEKABLE:I = 0x321

.field public static final MEDIA_INFO_SOFTWARE_DECODER:I = 0x25a

.field public static final MEDIA_INFO_UNKNOWN:I = 0x1

.field public static final MEDIA_INFO_VIDEO_TRACK_LAGGING:I = 0x2bc

.field private static final MEDIA_NOP:I = 0x0

.field private static final MEDIA_PLAYBACK_COMPLETE:I = 0x2

.field private static final MEDIA_PREPARED:I = 0x1

.field private static final MEDIA_SEEK_COMPLETE:I = 0x4

.field private static final MEDIA_SET_VIDEO_SIZE:I = 0x5

.field private static final MEDIA_TIMED_TEXT:I = 0x63

.field public static final METADATA_ALL:Z = false

.field public static final METADATA_UPDATE_ONLY:Z = true

.field private static final MULTI_SPEED_BACKWARD_PLAYBACK:I = 0x2

.field private static final MULTI_SPEED_FORWARD_PLAYBACK:I = 0x1

.field private static final TAG:Ljava/lang/String; = "XiaomiPlayer"


# instance fields
.field private mEventHandler:Lcom/duokan/MediaPlayer$EventHandler;

.field private mListenerContext:I

.field private mNativeContext:I

.field private mNativeSurfaceTexture:I

.field private mOnBufferingUpdateListener:Lcom/duokan/MediaPlayer$OnBufferingUpdateListener;

.field private mOnCompletionListener:Lcom/duokan/MediaPlayer$OnCompletionListener;

.field private mOnErrorListener:Lcom/duokan/MediaPlayer$OnErrorListener;

.field private mOnInfoListener:Lcom/duokan/MediaPlayer$OnInfoListener;

.field private mOnPreparedListener:Lcom/duokan/MediaPlayer$OnPreparedListener;

.field private mOnSeekCompleteListener:Lcom/duokan/MediaPlayer$OnSeekCompleteListener;

.field private mOnTimedTextListener:Lcom/duokan/MediaPlayer$OnTimedTextListener;

.field private mOnVideoSizeChangedListener:Lcom/duokan/MediaPlayer$OnVideoSizeChangedListener;

.field private mScreenOnWhilePlaying:Z

.field private mStayAwake:Z

.field private mSurfaceHolder:Landroid/view/SurfaceHolder;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 101
    const-string v0, "ffmpeg_xm"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 102
    const-string v0, "xiaomimediaplayer"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 103
    const-string v0, "xiaomiplayerwrapper"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 104
    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 117
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 113
    iput-object v3, p0, Lcom/duokan/MediaPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 118
    const-string v1, "XiaomiPlayer"

    const-string v2, "DkMediaPlayer"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    .local v0, looper:Landroid/os/Looper;
    if-eqz v0, :cond_0

    .line 122
    new-instance v1, Lcom/duokan/MediaPlayer$EventHandler;

    invoke-direct {v1, p0, p0, v0}, Lcom/duokan/MediaPlayer$EventHandler;-><init>(Lcom/duokan/MediaPlayer;Lcom/duokan/MediaPlayer;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/duokan/MediaPlayer;->mEventHandler:Lcom/duokan/MediaPlayer$EventHandler;

    .line 129
    :goto_0
    invoke-direct {p0}, Lcom/duokan/MediaPlayer;->native_init()I

    .line 130
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-direct {p0, v1}, Lcom/duokan/MediaPlayer;->native_setup(Ljava/lang/Object;)V

    .line 131
    return-void

    .line 123
    :cond_0
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 124
    new-instance v1, Lcom/duokan/MediaPlayer$EventHandler;

    invoke-direct {v1, p0, p0, v0}, Lcom/duokan/MediaPlayer$EventHandler;-><init>(Lcom/duokan/MediaPlayer;Lcom/duokan/MediaPlayer;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/duokan/MediaPlayer;->mEventHandler:Lcom/duokan/MediaPlayer$EventHandler;

    goto :goto_0

    .line 126
    :cond_1
    iput-object v3, p0, Lcom/duokan/MediaPlayer;->mEventHandler:Lcom/duokan/MediaPlayer$EventHandler;

    goto :goto_0
.end method

.method private native _setVideoSurface(Landroid/view/Surface;)V
.end method

.method static synthetic access$000(Lcom/duokan/MediaPlayer;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 22
    iget v0, p0, Lcom/duokan/MediaPlayer;->mNativeContext:I

    return v0
.end method

.method static synthetic access$100(Lcom/duokan/MediaPlayer;)Lcom/duokan/MediaPlayer$OnPreparedListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 22
    iget-object v0, p0, Lcom/duokan/MediaPlayer;->mOnPreparedListener:Lcom/duokan/MediaPlayer$OnPreparedListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/duokan/MediaPlayer;)Lcom/duokan/MediaPlayer$OnCompletionListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 22
    iget-object v0, p0, Lcom/duokan/MediaPlayer;->mOnCompletionListener:Lcom/duokan/MediaPlayer$OnCompletionListener;

    return-object v0
.end method

.method static synthetic access$300(Lcom/duokan/MediaPlayer;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/duokan/MediaPlayer;->stayAwake(Z)V

    return-void
.end method

.method static synthetic access$400(Lcom/duokan/MediaPlayer;)Lcom/duokan/MediaPlayer$OnBufferingUpdateListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 22
    iget-object v0, p0, Lcom/duokan/MediaPlayer;->mOnBufferingUpdateListener:Lcom/duokan/MediaPlayer$OnBufferingUpdateListener;

    return-object v0
.end method

.method static synthetic access$500(Lcom/duokan/MediaPlayer;)Lcom/duokan/MediaPlayer$OnSeekCompleteListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 22
    iget-object v0, p0, Lcom/duokan/MediaPlayer;->mOnSeekCompleteListener:Lcom/duokan/MediaPlayer$OnSeekCompleteListener;

    return-object v0
.end method

.method static synthetic access$600(Lcom/duokan/MediaPlayer;)Lcom/duokan/MediaPlayer$OnVideoSizeChangedListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 22
    iget-object v0, p0, Lcom/duokan/MediaPlayer;->mOnVideoSizeChangedListener:Lcom/duokan/MediaPlayer$OnVideoSizeChangedListener;

    return-object v0
.end method

.method static synthetic access$700(Lcom/duokan/MediaPlayer;)Lcom/duokan/MediaPlayer$OnErrorListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 22
    iget-object v0, p0, Lcom/duokan/MediaPlayer;->mOnErrorListener:Lcom/duokan/MediaPlayer$OnErrorListener;

    return-object v0
.end method

.method static synthetic access$800(Lcom/duokan/MediaPlayer;)Lcom/duokan/MediaPlayer$OnInfoListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 22
    iget-object v0, p0, Lcom/duokan/MediaPlayer;->mOnInfoListener:Lcom/duokan/MediaPlayer$OnInfoListener;

    return-object v0
.end method

.method static synthetic access$900(Lcom/duokan/MediaPlayer;)Lcom/duokan/MediaPlayer$OnTimedTextListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 22
    iget-object v0, p0, Lcom/duokan/MediaPlayer;->mOnTimedTextListener:Lcom/duokan/MediaPlayer$OnTimedTextListener;

    return-object v0
.end method

.method public static create(Landroid/content/Context;I)Lcom/duokan/MediaPlayer;
    .locals 1
    .parameter "context"
    .parameter "resid"

    .prologue
    .line 180
    const/4 v0, 0x0

    return-object v0
.end method

.method public static create(Landroid/content/Context;Landroid/net/Uri;)Lcom/duokan/MediaPlayer;
    .locals 1
    .parameter "context"
    .parameter "uri"

    .prologue
    .line 134
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/duokan/MediaPlayer;->create(Landroid/content/Context;Landroid/net/Uri;Landroid/view/SurfaceHolder;)Lcom/duokan/MediaPlayer;

    move-result-object v0

    return-object v0
.end method

.method public static create(Landroid/content/Context;Landroid/net/Uri;Landroid/view/SurfaceHolder;)Lcom/duokan/MediaPlayer;
    .locals 4
    .parameter "context"
    .parameter "uri"
    .parameter "holder"

    .prologue
    .line 139
    :try_start_0
    new-instance v1, Lcom/duokan/MediaPlayer;

    invoke-direct {v1}, Lcom/duokan/MediaPlayer;-><init>()V

    .line 140
    .local v1, mp:Lcom/duokan/MediaPlayer;
    invoke-virtual {v1, p0, p1}, Lcom/duokan/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 141
    if-eqz p2, :cond_0

    .line 142
    invoke-virtual {v1, p2}, Lcom/duokan/MediaPlayer;->setDisplay(Landroid/view/SurfaceHolder;)V

    .line 144
    :cond_0
    invoke-virtual {v1}, Lcom/duokan/MediaPlayer;->prepare()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_2

    .line 157
    .end local v1           #mp:Lcom/duokan/MediaPlayer;
    :goto_0
    return-object v1

    .line 146
    :catch_0
    move-exception v0

    .line 147
    .local v0, ex:Ljava/io/IOException;
    const-string v2, "XiaomiPlayer"

    const-string v3, "create failed:"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 157
    .end local v0           #ex:Ljava/io/IOException;
    :goto_1
    const/4 v1, 0x0

    goto :goto_0

    .line 149
    :catch_1
    move-exception v0

    .line 150
    .local v0, ex:Ljava/lang/IllegalArgumentException;
    const-string v2, "XiaomiPlayer"

    const-string v3, "create failed:"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 152
    .end local v0           #ex:Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v0

    .line 153
    .local v0, ex:Ljava/lang/SecurityException;
    const-string v2, "XiaomiPlayer"

    const-string v3, "create failed:"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private native getParameter(ILandroid/os/Parcel;)V
.end method

.method private getRealFilePathFromContentUri(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;
    .locals 9
    .parameter "context"
    .parameter "contentUri"

    .prologue
    const/4 v3, 0x0

    .line 184
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_data"

    aput-object v1, v2, v0

    .line 185
    .local v2, columns:[Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v1, p2

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 186
    .local v6, cursor:Landroid/database/Cursor;
    if-nez v6, :cond_0

    .line 187
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot get content data"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 189
    :cond_0
    const-string v0, "_data"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    .line 190
    .local v7, index:I
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 191
    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 192
    .local v8, result:Ljava/lang/String;
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 193
    return-object v8
.end method

.method private final native native_getMetadata(ZZLandroid/os/Parcel;)Z
.end method

.method private native native_getcurrenttime()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method private native native_getduration()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method private native native_init()I
.end method

.method private native native_pause()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method private native native_prepare()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method private native native_prepare_async()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method private native native_release()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method private native native_reset()V
.end method

.method private native native_seekto(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method private native native_setdatasource(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation
.end method

.method private native native_setdatasource(Ljava/lang/String;Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation
.end method

.method private native native_setup(Ljava/lang/Object;)V
.end method

.method private native native_start()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method private native native_stop()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method private static postEventFromNative(Ljava/lang/Object;IIILjava/lang/Object;)V
    .locals 3
    .parameter "mediaplayer_ref"
    .parameter "what"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "obj"

    .prologue
    .line 1089
    check-cast p0, Ljava/lang/ref/WeakReference;

    .end local p0
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/duokan/MediaPlayer;

    .line 1090
    .local v1, mp:Lcom/duokan/MediaPlayer;
    if-nez v1, :cond_1

    .line 1098
    :cond_0
    :goto_0
    return-void

    .line 1094
    :cond_1
    iget-object v2, v1, Lcom/duokan/MediaPlayer;->mEventHandler:Lcom/duokan/MediaPlayer$EventHandler;

    if-eqz v2, :cond_0

    .line 1095
    iget-object v2, v1, Lcom/duokan/MediaPlayer;->mEventHandler:Lcom/duokan/MediaPlayer$EventHandler;

    invoke-virtual {v2, p1, p2, p3, p4}, Lcom/duokan/MediaPlayer$EventHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1096
    .local v0, m:Landroid/os/Message;
    iget-object v2, v1, Lcom/duokan/MediaPlayer;->mEventHandler:Lcom/duokan/MediaPlayer$EventHandler;

    invoke-virtual {v2, v0}, Lcom/duokan/MediaPlayer$EventHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method private stayAwake(Z)V
    .locals 1
    .parameter "awake"

    .prologue
    .line 1153
    iget-object v0, p0, Lcom/duokan/MediaPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    .line 1154
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/duokan/MediaPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1155
    iget-object v0, p0, Lcom/duokan/MediaPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 1160
    :cond_0
    :goto_0
    iput-boolean p1, p0, Lcom/duokan/MediaPlayer;->mStayAwake:Z

    .line 1161
    invoke-direct {p0}, Lcom/duokan/MediaPlayer;->updateSurfaceScreenOn()V

    .line 1162
    return-void

    .line 1156
    :cond_1
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/duokan/MediaPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1157
    iget-object v0, p0, Lcom/duokan/MediaPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_0
.end method

.method private updateSurfaceScreenOn()V
    .locals 2

    .prologue
    .line 279
    iget-object v0, p0, Lcom/duokan/MediaPlayer;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    if-eqz v0, :cond_0

    .line 280
    iget-object v1, p0, Lcom/duokan/MediaPlayer;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    iget-boolean v0, p0, Lcom/duokan/MediaPlayer;->mScreenOnWhilePlaying:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/duokan/MediaPlayer;->mStayAwake:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-interface {v1, v0}, Landroid/view/SurfaceHolder;->setKeepScreenOn(Z)V

    .line 282
    :cond_0
    return-void

    .line 280
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public disableMultiSpeedPlayback()Z
    .locals 3

    .prologue
    .line 1073
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1074
    .local v0, p:Landroid/os/Parcel;
    const/16 v2, 0x7d2

    invoke-virtual {p0, v2, v0}, Lcom/duokan/MediaPlayer;->setParameter(ILandroid/os/Parcel;)Z

    move-result v1

    .line 1075
    .local v1, ret:Z
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1076
    return v1
.end method

.method public disableTimedText()Z
    .locals 2

    .prologue
    .line 970
    const/16 v0, 0x3e8

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1}, Lcom/duokan/MediaPlayer;->setParameter(II)Z

    move-result v0

    return v0
.end method

.method public enableMultiSpeedPlayback(IZ)Z
    .locals 3
    .parameter "speed"
    .parameter "forward"

    .prologue
    .line 1054
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1055
    .local v0, p:Landroid/os/Parcel;
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1056
    if-eqz p2, :cond_0

    .line 1057
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1062
    :goto_0
    const/16 v2, 0x7d1

    invoke-virtual {p0, v2, v0}, Lcom/duokan/MediaPlayer;->setParameter(ILandroid/os/Parcel;)Z

    move-result v1

    .line 1063
    .local v1, ret:Z
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1064
    return v1

    .line 1060
    .end local v1           #ret:Z
    :cond_0
    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0
.end method

.method public enableTimedText()Z
    .locals 1

    .prologue
    .line 961
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/duokan/MediaPlayer;->enableTimedTextTrackIndex(I)Z

    move-result v0

    return v0
.end method

.method public enableTimedTextTrackIndex(I)Z
    .locals 1
    .parameter "index"

    .prologue
    .line 949
    if-gez p1, :cond_0

    .line 950
    const/4 v0, 0x0

    .line 952
    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x3e8

    invoke-virtual {p0, v0, p1}, Lcom/duokan/MediaPlayer;->setParameter(II)Z

    move-result v0

    goto :goto_0
.end method

.method public getAudioTrackInfo(Lcom/duokan/MediaPlayer$AudioTrackInfo;)Z
    .locals 5
    .parameter "trackInfo"

    .prologue
    .line 993
    const/16 v4, 0x4b2

    invoke-virtual {p0, v4}, Lcom/duokan/MediaPlayer;->getParcelParameter(I)Landroid/os/Parcel;

    move-result-object v3

    .line 994
    .local v3, p:Landroid/os/Parcel;
    invoke-virtual {v3}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 995
    .local v0, audioCount:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 996
    invoke-virtual {v3}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 997
    .local v1, audioTrackName:Ljava/lang/String;
    invoke-virtual {p1, v1}, Lcom/duokan/MediaPlayer$AudioTrackInfo;->addAudioTrack(Ljava/lang/String;)V

    .line 995
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 999
    .end local v1           #audioTrackName:Ljava/lang/String;
    :cond_0
    invoke-virtual {v3}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {p1, v4}, Lcom/duokan/MediaPlayer$AudioTrackInfo;->setSelectedAudioTrack(I)V

    .line 1000
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 1001
    const/4 v4, 0x1

    return v4
.end method

.method public getCurrentPosition()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 402
    const-string v0, "XiaomiPlayer"

    const-string v1, "native_getcurrenttime"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    invoke-direct {p0}, Lcom/duokan/MediaPlayer;->native_getcurrenttime()I

    move-result v0

    return v0
.end method

.method public getDuration()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 412
    const-string v0, "XiaomiPlayer"

    const-string v1, "native_getduration"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 413
    invoke-direct {p0}, Lcom/duokan/MediaPlayer;->native_getduration()I

    move-result v0

    return v0
.end method

.method public getInBandTimedTextInfo(Ljava/util/List;)Z
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 978
    .local p1, subtitleInfoList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/16 v4, 0x4b1

    invoke-virtual {p0, v4}, Lcom/duokan/MediaPlayer;->getParcelParameter(I)Landroid/os/Parcel;

    move-result-object v1

    .line 979
    .local v1, p:Landroid/os/Parcel;
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 980
    .local v2, subtitleCount:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 981
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 982
    .local v3, subtitleName:Ljava/lang/String;
    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 980
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 984
    .end local v3           #subtitleName:Ljava/lang/String;
    :cond_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 985
    const/4 v4, 0x1

    return v4
.end method

.method public getIntParameter(I)I
    .locals 2
    .parameter "key"

    .prologue
    .line 936
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 937
    .local v0, p:Landroid/os/Parcel;
    invoke-direct {p0, p1, v0}, Lcom/duokan/MediaPlayer;->getParameter(ILandroid/os/Parcel;)V

    .line 938
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 939
    .local v1, ret:I
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 940
    return v1
.end method

.method public getMediaInfo()Lcom/duokan/MediaPlayer$MediaInfo;
    .locals 3

    .prologue
    .line 1009
    const/16 v2, 0x514

    invoke-virtual {p0, v2}, Lcom/duokan/MediaPlayer;->getParcelParameter(I)Landroid/os/Parcel;

    move-result-object v1

    .line 1010
    .local v1, p:Landroid/os/Parcel;
    new-instance v0, Lcom/duokan/MediaPlayer$MediaInfo;

    invoke-direct {v0, p0}, Lcom/duokan/MediaPlayer$MediaInfo;-><init>(Lcom/duokan/MediaPlayer;)V

    .line 1011
    .local v0, info:Lcom/duokan/MediaPlayer$MediaInfo;
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_0

    .line 1012
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, v0, Lcom/duokan/MediaPlayer$MediaInfo;->duration:I

    .line 1013
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, v0, Lcom/duokan/MediaPlayer$MediaInfo;->videoHeight:I

    .line 1014
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, v0, Lcom/duokan/MediaPlayer$MediaInfo;->videoWidth:I

    .line 1015
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, v0, Lcom/duokan/MediaPlayer$MediaInfo;->videoCodecId:I

    .line 1016
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/duokan/MediaPlayer$MediaInfo;->videoCodecName:Ljava/lang/String;

    .line 1017
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/duokan/MediaPlayer$MediaInfo;->videoCodecProfile:Ljava/lang/String;

    .line 1018
    invoke-virtual {v1}, Landroid/os/Parcel;->readFloat()F

    move-result v2

    iput v2, v0, Lcom/duokan/MediaPlayer$MediaInfo;->videoFrameRate:F

    .line 1021
    :cond_0
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_1

    .line 1022
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, v0, Lcom/duokan/MediaPlayer$MediaInfo;->audioCodecId:I

    .line 1023
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/duokan/MediaPlayer$MediaInfo;->audioCodecName:Ljava/lang/String;

    .line 1024
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, v0, Lcom/duokan/MediaPlayer$MediaInfo;->audioSampleRate:I

    .line 1026
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1027
    return-object v0
.end method

.method public getMetadata(ZZ)Lcom/duokan/Metadata;
    .locals 4
    .parameter "update_only"
    .parameter "apply_filter"

    .prologue
    const/4 v2, 0x0

    .line 446
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 447
    .local v1, reply:Landroid/os/Parcel;
    new-instance v0, Lcom/duokan/Metadata;

    invoke-direct {v0}, Lcom/duokan/Metadata;-><init>()V

    .line 449
    .local v0, data:Lcom/duokan/Metadata;
    invoke-direct {p0, p1, p2, v1}, Lcom/duokan/MediaPlayer;->native_getMetadata(ZZLandroid/os/Parcel;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 450
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    move-object v0, v2

    .line 460
    .end local v0           #data:Lcom/duokan/Metadata;
    :cond_0
    :goto_0
    return-object v0

    .line 456
    .restart local v0       #data:Lcom/duokan/Metadata;
    :cond_1
    invoke-virtual {v0, v1}, Lcom/duokan/Metadata;->parse(Landroid/os/Parcel;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 457
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    move-object v0, v2

    .line 458
    goto :goto_0
.end method

.method public getParcelParameter(I)Landroid/os/Parcel;
    .locals 1
    .parameter "key"

    .prologue
    .line 910
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 911
    .local v0, p:Landroid/os/Parcel;
    invoke-direct {p0, p1, v0}, Lcom/duokan/MediaPlayer;->getParameter(ILandroid/os/Parcel;)V

    .line 912
    return-object v0
.end method

.method public getStringParameter(I)Ljava/lang/String;
    .locals 2
    .parameter "key"

    .prologue
    .line 922
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 923
    .local v0, p:Landroid/os/Parcel;
    invoke-direct {p0, p1, v0}, Lcom/duokan/MediaPlayer;->getParameter(ILandroid/os/Parcel;)V

    .line 924
    invoke-virtual {v0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 925
    .local v1, ret:Ljava/lang/String;
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 926
    return-object v1
.end method

.method public native getVideoHeight()I
.end method

.method public native getVideoWidth()I
.end method

.method public native isLooping()Z
.end method

.method public native isPlaying()Z
.end method

.method public pause()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 307
    const-string v0, "XiaomiPlayer"

    const-string v1, "native_pause"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/duokan/MediaPlayer;->stayAwake(Z)V

    .line 309
    invoke-direct {p0}, Lcom/duokan/MediaPlayer;->native_pause()V

    .line 310
    return-void
.end method

.method public prepare()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 285
    const-string v0, "XiaomiPlayer"

    const-string v1, "native_prepare"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    invoke-direct {p0}, Lcom/duokan/MediaPlayer;->native_prepare()V

    .line 287
    return-void
.end method

.method public prepareAsync()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 290
    const-string v0, "XiaomiPlayer"

    const-string v1, "native_prepare_async"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    invoke-direct {p0}, Lcom/duokan/MediaPlayer;->native_prepare_async()V

    .line 292
    return-void
.end method

.method public release()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 313
    const-string v0, "XiaomiPlayer"

    const-string v1, "native_release"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/duokan/MediaPlayer;->stayAwake(Z)V

    .line 315
    invoke-direct {p0}, Lcom/duokan/MediaPlayer;->updateSurfaceScreenOn()V

    .line 316
    iput-object v2, p0, Lcom/duokan/MediaPlayer;->mOnPreparedListener:Lcom/duokan/MediaPlayer$OnPreparedListener;

    .line 317
    iput-object v2, p0, Lcom/duokan/MediaPlayer;->mOnBufferingUpdateListener:Lcom/duokan/MediaPlayer$OnBufferingUpdateListener;

    .line 318
    iput-object v2, p0, Lcom/duokan/MediaPlayer;->mOnCompletionListener:Lcom/duokan/MediaPlayer$OnCompletionListener;

    .line 319
    iput-object v2, p0, Lcom/duokan/MediaPlayer;->mOnSeekCompleteListener:Lcom/duokan/MediaPlayer$OnSeekCompleteListener;

    .line 320
    iput-object v2, p0, Lcom/duokan/MediaPlayer;->mOnErrorListener:Lcom/duokan/MediaPlayer$OnErrorListener;

    .line 321
    iput-object v2, p0, Lcom/duokan/MediaPlayer;->mOnInfoListener:Lcom/duokan/MediaPlayer$OnInfoListener;

    .line 322
    iput-object v2, p0, Lcom/duokan/MediaPlayer;->mOnVideoSizeChangedListener:Lcom/duokan/MediaPlayer$OnVideoSizeChangedListener;

    .line 323
    iput-object v2, p0, Lcom/duokan/MediaPlayer;->mOnTimedTextListener:Lcom/duokan/MediaPlayer$OnTimedTextListener;

    .line 324
    invoke-direct {p0}, Lcom/duokan/MediaPlayer;->native_release()V

    .line 325
    return-void
.end method

.method public reset()V
    .locals 2

    .prologue
    .line 422
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/duokan/MediaPlayer;->stayAwake(Z)V

    .line 423
    invoke-direct {p0}, Lcom/duokan/MediaPlayer;->native_reset()V

    .line 425
    iget-object v0, p0, Lcom/duokan/MediaPlayer;->mEventHandler:Lcom/duokan/MediaPlayer$EventHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/duokan/MediaPlayer$EventHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 426
    return-void
.end method

.method public seekTo(I)V
    .locals 2
    .parameter "to_ms"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 392
    const-string v0, "XiaomiPlayer"

    const-string v1, "native_seekto"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    invoke-direct {p0, p1}, Lcom/duokan/MediaPlayer;->native_seekto(I)V

    .line 394
    return-void
.end method

.method public setAudioTrackSource(I)Z
    .locals 1
    .parameter "index"

    .prologue
    .line 1043
    const/16 v0, 0x578

    invoke-virtual {p0, v0, p1}, Lcom/duokan/MediaPlayer;->setParameter(II)Z

    move-result v0

    return v0
.end method

.method public setDataSource(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 1
    .parameter "context"
    .parameter "uri"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/SecurityException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 199
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/duokan/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Map;)V

    .line 200
    return-void
.end method

.method public setDataSource(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Map;)V
    .locals 2
    .parameter "context"
    .parameter "uri"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/net/Uri;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/SecurityException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 205
    .local p3, headers:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    .line 206
    .local v0, scheme:Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v1, "file"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 207
    :cond_0
    invoke-virtual {p2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/duokan/MediaPlayer;->native_setdatasource(Ljava/lang/String;)V

    .line 215
    :goto_0
    return-void

    .line 209
    :cond_1
    const-string v1, "content"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 210
    invoke-direct {p0, p1, p2}, Lcom/duokan/MediaPlayer;->getRealFilePathFromContentUri(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/duokan/MediaPlayer;->native_setdatasource(Ljava/lang/String;)V

    goto :goto_0

    .line 213
    :cond_2
    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, p3}, Lcom/duokan/MediaPlayer;->native_setdatasource(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0
.end method

.method public setDisplay(Landroid/view/SurfaceHolder;)V
    .locals 1
    .parameter "sh"

    .prologue
    .line 240
    iput-object p1, p0, Lcom/duokan/MediaPlayer;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 242
    if-eqz p1, :cond_0

    .line 243
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v0

    .line 247
    .local v0, surface:Landroid/view/Surface;
    :goto_0
    invoke-direct {p0, v0}, Lcom/duokan/MediaPlayer;->_setVideoSurface(Landroid/view/Surface;)V

    .line 248
    invoke-direct {p0}, Lcom/duokan/MediaPlayer;->updateSurfaceScreenOn()V

    .line 249
    return-void

    .line 245
    .end local v0           #surface:Landroid/view/Surface;
    :cond_0
    const/4 v0, 0x0

    .restart local v0       #surface:Landroid/view/Surface;
    goto :goto_0
.end method

.method public native setLooping(Z)V
.end method

.method public setOnBufferingUpdateListener(Lcom/duokan/MediaPlayer$OnBufferingUpdateListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 546
    iput-object p1, p0, Lcom/duokan/MediaPlayer;->mOnBufferingUpdateListener:Lcom/duokan/MediaPlayer$OnBufferingUpdateListener;

    .line 547
    return-void
.end method

.method public setOnCompletionListener(Lcom/duokan/MediaPlayer$OnCompletionListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 512
    iput-object p1, p0, Lcom/duokan/MediaPlayer;->mOnCompletionListener:Lcom/duokan/MediaPlayer$OnCompletionListener;

    .line 513
    return-void
.end method

.method public setOnErrorListener(Lcom/duokan/MediaPlayer$OnErrorListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 661
    iput-object p1, p0, Lcom/duokan/MediaPlayer;->mOnErrorListener:Lcom/duokan/MediaPlayer$OnErrorListener;

    .line 662
    return-void
.end method

.method public setOnInfoListener(Lcom/duokan/MediaPlayer$OnInfoListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 761
    iput-object p1, p0, Lcom/duokan/MediaPlayer;->mOnInfoListener:Lcom/duokan/MediaPlayer$OnInfoListener;

    .line 762
    return-void
.end method

.method public setOnPreparedListener(Lcom/duokan/MediaPlayer$OnPreparedListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 485
    iput-object p1, p0, Lcom/duokan/MediaPlayer;->mOnPreparedListener:Lcom/duokan/MediaPlayer$OnPreparedListener;

    .line 486
    return-void
.end method

.method public setOnSeekCompleteListener(Lcom/duokan/MediaPlayer$OnSeekCompleteListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 573
    iput-object p1, p0, Lcom/duokan/MediaPlayer;->mOnSeekCompleteListener:Lcom/duokan/MediaPlayer$OnSeekCompleteListener;

    .line 574
    return-void
.end method

.method public setOnTimedTextListener(Lcom/duokan/MediaPlayer$OnTimedTextListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 794
    iput-object p1, p0, Lcom/duokan/MediaPlayer;->mOnTimedTextListener:Lcom/duokan/MediaPlayer$OnTimedTextListener;

    .line 795
    return-void
.end method

.method public setOnVideoSizeChangedListener(Lcom/duokan/MediaPlayer$OnVideoSizeChangedListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 602
    iput-object p1, p0, Lcom/duokan/MediaPlayer;->mOnVideoSizeChangedListener:Lcom/duokan/MediaPlayer$OnVideoSizeChangedListener;

    .line 603
    return-void
.end method

.method public setOutOfBandTextSource(Ljava/lang/String;)Z
    .locals 1
    .parameter "sourceUri"

    .prologue
    .line 1035
    const/16 v0, 0x3e9

    invoke-virtual {p0, v0, p1}, Lcom/duokan/MediaPlayer;->setParameter(ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setParameter(II)Z
    .locals 2
    .parameter "key"
    .parameter "value"

    .prologue
    .line 888
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 889
    .local v0, p:Landroid/os/Parcel;
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 890
    invoke-virtual {p0, p1, v0}, Lcom/duokan/MediaPlayer;->setParameter(ILandroid/os/Parcel;)Z

    move-result v1

    .line 891
    .local v1, ret:Z
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 892
    return v1
.end method

.method public native setParameter(ILandroid/os/Parcel;)Z
.end method

.method public setParameter(ILjava/lang/String;)Z
    .locals 2
    .parameter "key"
    .parameter "value"

    .prologue
    .line 873
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 874
    .local v0, p:Landroid/os/Parcel;
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 875
    invoke-virtual {p0, p1, v0}, Lcom/duokan/MediaPlayer;->setParameter(ILandroid/os/Parcel;)Z

    move-result v1

    .line 876
    .local v1, ret:Z
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 877
    return v1
.end method

.method public setScreenOnWhilePlaying(Z)V
    .locals 1
    .parameter "screenOn"

    .prologue
    .line 1146
    iget-boolean v0, p0, Lcom/duokan/MediaPlayer;->mScreenOnWhilePlaying:Z

    if-eq v0, p1, :cond_0

    .line 1147
    iput-boolean p1, p0, Lcom/duokan/MediaPlayer;->mScreenOnWhilePlaying:Z

    .line 1148
    invoke-direct {p0}, Lcom/duokan/MediaPlayer;->updateSurfaceScreenOn()V

    .line 1150
    :cond_0
    return-void
.end method

.method public setSurface(Landroid/view/Surface;)V
    .locals 2
    .parameter "surface"

    .prologue
    .line 270
    iget-boolean v0, p0, Lcom/duokan/MediaPlayer;->mScreenOnWhilePlaying:Z

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 271
    const-string v0, "XiaomiPlayer"

    const-string v1, "setScreenOnWhilePlaying(true) is ineffective for Surface"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/duokan/MediaPlayer;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 274
    invoke-direct {p0, p1}, Lcom/duokan/MediaPlayer;->_setVideoSurface(Landroid/view/Surface;)V

    .line 275
    invoke-direct {p0}, Lcom/duokan/MediaPlayer;->updateSurfaceScreenOn()V

    .line 276
    return-void
.end method

.method public native setVolume(FF)V
.end method

.method public setWakeMode(Landroid/content/Context;I)V
    .locals 4
    .parameter "context"
    .parameter "mode"

    .prologue
    .line 1118
    const/4 v1, 0x0

    .line 1119
    .local v1, washeld:Z
    iget-object v2, p0, Lcom/duokan/MediaPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v2, :cond_1

    .line 1120
    iget-object v2, p0, Lcom/duokan/MediaPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1121
    const/4 v1, 0x1

    .line 1122
    iget-object v2, p0, Lcom/duokan/MediaPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1124
    :cond_0
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/duokan/MediaPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 1127
    :cond_1
    const-string v2, "power"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 1128
    .local v0, pm:Landroid/os/PowerManager;
    const/high16 v2, 0x2000

    or-int/2addr v2, p2

    const-class v3, Lcom/duokan/MediaPlayer;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    iput-object v2, p0, Lcom/duokan/MediaPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 1129
    iget-object v2, p0, Lcom/duokan/MediaPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 1130
    if-eqz v1, :cond_2

    .line 1131
    iget-object v2, p0, Lcom/duokan/MediaPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 1133
    :cond_2
    return-void
.end method

.method public setdatasource(Ljava/lang/String;)V
    .locals 2
    .parameter "path"

    .prologue
    .line 218
    const-string v0, "XiaomiPlayer"

    const-string v1, "native_setdatasource"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    invoke-direct {p0, p1}, Lcom/duokan/MediaPlayer;->native_setdatasource(Ljava/lang/String;)V

    .line 220
    return-void
.end method

.method public setdatasource(Ljava/lang/String;Ljava/util/Map;)V
    .locals 2
    .parameter "path"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 223
    .local p2, headers:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v0, "XiaomiPlayer"

    const-string v1, "native_setdatasource"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    invoke-direct {p0, p1, p2}, Lcom/duokan/MediaPlayer;->native_setdatasource(Ljava/lang/String;Ljava/util/Map;)V

    .line 225
    return-void
.end method

.method public start()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 295
    const-string v0, "XiaomiPlayer"

    const-string v1, "native_start"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/duokan/MediaPlayer;->stayAwake(Z)V

    .line 297
    invoke-direct {p0}, Lcom/duokan/MediaPlayer;->native_start()V

    .line 298
    return-void
.end method

.method public stop()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 301
    const-string v0, "XiaomiPlayer"

    const-string v1, "native_stop"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/duokan/MediaPlayer;->stayAwake(Z)V

    .line 303
    invoke-direct {p0}, Lcom/duokan/MediaPlayer;->native_stop()V

    .line 304
    return-void
.end method
