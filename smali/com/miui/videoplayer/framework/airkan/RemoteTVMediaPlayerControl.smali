.class public Lcom/miui/videoplayer/framework/airkan/RemoteTVMediaPlayerControl;
.super Ljava/lang/Object;
.source "RemoteTVMediaPlayerControl.java"

# interfaces
.implements Lcom/miui/videoplayer/framework/ui/MediaPlayerControl;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDeviceName:Ljava/lang/String;

.field private mMediaController:Lcom/miui/videoplayer/framework/views/OriginMediaController;

.field private mUri:Ljava/lang/String;

.field private mVideoManager:Lcom/duokan/airkan/phone/api/VideoManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const-class v0, Lcom/miui/videoplayer/framework/airkan/RemoteTVMediaPlayerControl;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/videoplayer/framework/airkan/RemoteTVMediaPlayerControl;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 18
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/miui/videoplayer/framework/airkan/RemoteTVMediaPlayerControl;->mContext:Landroid/content/Context;

    .line 20
    return-void
.end method


# virtual methods
.method public canPause()Z
    .locals 1

    .prologue
    .line 192
    const/4 v0, 0x1

    return v0
.end method

.method public canSeekBackward()Z
    .locals 1

    .prologue
    .line 197
    const/4 v0, 0x1

    return v0
.end method

.method public canSeekForward()Z
    .locals 1

    .prologue
    .line 202
    const/4 v0, 0x1

    return v0
.end method

.method public getBufferPercentage()I
    .locals 1

    .prologue
    .line 187
    const/4 v0, 0x0

    return v0
.end method

.method public getCurrentPosition()I
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lcom/miui/videoplayer/framework/airkan/RemoteTVMediaPlayerControl;->mVideoManager:Lcom/duokan/airkan/phone/api/VideoManager;

    if-eqz v0, :cond_0

    .line 151
    iget-object v0, p0, Lcom/miui/videoplayer/framework/airkan/RemoteTVMediaPlayerControl;->mVideoManager:Lcom/duokan/airkan/phone/api/VideoManager;

    invoke-virtual {v0}, Lcom/duokan/airkan/phone/api/VideoManager;->getCurrentPosition()I

    move-result v0

    .line 153
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDeviceName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 206
    iget-object v0, p0, Lcom/miui/videoplayer/framework/airkan/RemoteTVMediaPlayerControl;->mDeviceName:Ljava/lang/String;

    return-object v0
.end method

.method public getDuration()I
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lcom/miui/videoplayer/framework/airkan/RemoteTVMediaPlayerControl;->mVideoManager:Lcom/duokan/airkan/phone/api/VideoManager;

    if-eqz v0, :cond_0

    .line 143
    iget-object v0, p0, Lcom/miui/videoplayer/framework/airkan/RemoteTVMediaPlayerControl;->mVideoManager:Lcom/duokan/airkan/phone/api/VideoManager;

    invoke-virtual {v0}, Lcom/duokan/airkan/phone/api/VideoManager;->getDuration()I

    move-result v0

    .line 145
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getUri()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/miui/videoplayer/framework/airkan/RemoteTVMediaPlayerControl;->mUri:Ljava/lang/String;

    return-object v0
.end method

.method public getVolume()F
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/miui/videoplayer/framework/airkan/RemoteTVMediaPlayerControl;->mVideoManager:Lcom/duokan/airkan/phone/api/VideoManager;

    if-eqz v0, :cond_0

    .line 81
    iget-object v0, p0, Lcom/miui/videoplayer/framework/airkan/RemoteTVMediaPlayerControl;->mVideoManager:Lcom/duokan/airkan/phone/api/VideoManager;

    invoke-virtual {v0}, Lcom/duokan/airkan/phone/api/VideoManager;->getVolume()F

    move-result v0

    .line 83
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPlaying()Z
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Lcom/miui/videoplayer/framework/airkan/RemoteTVMediaPlayerControl;->mVideoManager:Lcom/duokan/airkan/phone/api/VideoManager;

    if-eqz v0, :cond_0

    .line 180
    iget-object v0, p0, Lcom/miui/videoplayer/framework/airkan/RemoteTVMediaPlayerControl;->mVideoManager:Lcom/duokan/airkan/phone/api/VideoManager;

    invoke-virtual {v0}, Lcom/duokan/airkan/phone/api/VideoManager;->isPlaying()Z

    move-result v0

    .line 182
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public pause()V
    .locals 2

    .prologue
    .line 131
    iget-object v1, p0, Lcom/miui/videoplayer/framework/airkan/RemoteTVMediaPlayerControl;->mVideoManager:Lcom/duokan/airkan/phone/api/VideoManager;

    if-eqz v1, :cond_0

    .line 133
    :try_start_0
    iget-object v1, p0, Lcom/miui/videoplayer/framework/airkan/RemoteTVMediaPlayerControl;->mVideoManager:Lcom/duokan/airkan/phone/api/VideoManager;

    invoke-virtual {v1}, Lcom/duokan/airkan/phone/api/VideoManager;->pause()V
    :try_end_0
    .catch Lcom/duokan/airkan/common/AirkanException; {:try_start_0 .. :try_end_0} :catch_0

    .line 138
    :cond_0
    :goto_0
    return-void

    .line 134
    :catch_0
    move-exception v0

    .line 135
    .local v0, e:Lcom/duokan/airkan/common/AirkanException;
    invoke-virtual {v0}, Lcom/duokan/airkan/common/AirkanException;->printStackTrace()V

    goto :goto_0
.end method

.method public playTo(Ljava/lang/String;)V
    .locals 2
    .parameter "deviceName"

    .prologue
    .line 99
    iget-object v1, p0, Lcom/miui/videoplayer/framework/airkan/RemoteTVMediaPlayerControl;->mVideoManager:Lcom/duokan/airkan/phone/api/VideoManager;

    if-eqz v1, :cond_0

    .line 101
    :try_start_0
    iget-object v1, p0, Lcom/miui/videoplayer/framework/airkan/RemoteTVMediaPlayerControl;->mVideoManager:Lcom/duokan/airkan/phone/api/VideoManager;

    invoke-virtual {v1, p1}, Lcom/duokan/airkan/phone/api/VideoManager;->playTo(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/duokan/airkan/common/AirkanException; {:try_start_0 .. :try_end_0} :catch_0

    .line 105
    :goto_0
    iput-object p1, p0, Lcom/miui/videoplayer/framework/airkan/RemoteTVMediaPlayerControl;->mDeviceName:Ljava/lang/String;

    .line 107
    :cond_0
    return-void

    .line 102
    :catch_0
    move-exception v0

    .line 103
    .local v0, e:Lcom/duokan/airkan/common/AirkanException;
    invoke-virtual {v0}, Lcom/duokan/airkan/common/AirkanException;->printStackTrace()V

    goto :goto_0
.end method

.method public seekTo(I)V
    .locals 2
    .parameter "pos"

    .prologue
    .line 158
    iget-object v1, p0, Lcom/miui/videoplayer/framework/airkan/RemoteTVMediaPlayerControl;->mVideoManager:Lcom/duokan/airkan/phone/api/VideoManager;

    if-eqz v1, :cond_0

    .line 160
    :try_start_0
    iget-object v1, p0, Lcom/miui/videoplayer/framework/airkan/RemoteTVMediaPlayerControl;->mVideoManager:Lcom/duokan/airkan/phone/api/VideoManager;

    invoke-virtual {v1, p1}, Lcom/duokan/airkan/phone/api/VideoManager;->seekTo(I)V
    :try_end_0
    .catch Lcom/duokan/airkan/common/AirkanException; {:try_start_0 .. :try_end_0} :catch_0

    .line 165
    :cond_0
    :goto_0
    return-void

    .line 161
    :catch_0
    move-exception v0

    .line 162
    .local v0, e:Lcom/duokan/airkan/common/AirkanException;
    invoke-virtual {v0}, Lcom/duokan/airkan/common/AirkanException;->printStackTrace()V

    goto :goto_0
.end method

.method public setMediaController(Lcom/miui/videoplayer/framework/views/OriginMediaController;)V
    .locals 2
    .parameter "mediaController"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/miui/videoplayer/framework/airkan/RemoteTVMediaPlayerControl;->mMediaController:Lcom/miui/videoplayer/framework/views/OriginMediaController;

    if-eqz v0, :cond_0

    .line 36
    :cond_0
    iput-object p1, p0, Lcom/miui/videoplayer/framework/airkan/RemoteTVMediaPlayerControl;->mMediaController:Lcom/miui/videoplayer/framework/views/OriginMediaController;

    .line 37
    iget-object v0, p0, Lcom/miui/videoplayer/framework/airkan/RemoteTVMediaPlayerControl;->mMediaController:Lcom/miui/videoplayer/framework/views/OriginMediaController;

    if-eqz v0, :cond_1

    .line 38
    iget-object v0, p0, Lcom/miui/videoplayer/framework/airkan/RemoteTVMediaPlayerControl;->mMediaController:Lcom/miui/videoplayer/framework/views/OriginMediaController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/videoplayer/framework/views/OriginMediaController;->show(I)V

    .line 39
    iget-object v0, p0, Lcom/miui/videoplayer/framework/airkan/RemoteTVMediaPlayerControl;->mMediaController:Lcom/miui/videoplayer/framework/views/OriginMediaController;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/miui/videoplayer/framework/views/OriginMediaController;->setEnabled(Z)V

    .line 40
    iget-object v0, p0, Lcom/miui/videoplayer/framework/airkan/RemoteTVMediaPlayerControl;->mMediaController:Lcom/miui/videoplayer/framework/views/OriginMediaController;

    invoke-virtual {v0, p0}, Lcom/miui/videoplayer/framework/views/OriginMediaController;->setMediaPlayer(Lcom/miui/videoplayer/framework/ui/MediaPlayerControl;)V

    .line 42
    :cond_1
    return-void
.end method

.method public setResolution(Lcom/duokan/airkan/common/video/VideoResolution$Resolution;)V
    .locals 2
    .parameter "resolution"

    .prologue
    .line 70
    iget-object v1, p0, Lcom/miui/videoplayer/framework/airkan/RemoteTVMediaPlayerControl;->mVideoManager:Lcom/duokan/airkan/phone/api/VideoManager;

    if-eqz v1, :cond_0

    .line 72
    :try_start_0
    iget-object v1, p0, Lcom/miui/videoplayer/framework/airkan/RemoteTVMediaPlayerControl;->mVideoManager:Lcom/duokan/airkan/phone/api/VideoManager;

    invoke-virtual {v1, p1}, Lcom/duokan/airkan/phone/api/VideoManager;->setResolution(Lcom/duokan/airkan/common/video/VideoResolution$Resolution;)V
    :try_end_0
    .catch Lcom/duokan/airkan/common/AirkanException; {:try_start_0 .. :try_end_0} :catch_0

    .line 77
    :cond_0
    :goto_0
    return-void

    .line 73
    :catch_0
    move-exception v0

    .line 74
    .local v0, e:Lcom/duokan/airkan/common/AirkanException;
    invoke-virtual {v0}, Lcom/duokan/airkan/common/AirkanException;->printStackTrace()V

    goto :goto_0
.end method

.method public setSpName(Ljava/lang/String;)V
    .locals 2
    .parameter "spName"

    .prologue
    .line 210
    iget-object v1, p0, Lcom/miui/videoplayer/framework/airkan/RemoteTVMediaPlayerControl;->mVideoManager:Lcom/duokan/airkan/phone/api/VideoManager;

    if-eqz v1, :cond_0

    .line 212
    :try_start_0
    iget-object v1, p0, Lcom/miui/videoplayer/framework/airkan/RemoteTVMediaPlayerControl;->mVideoManager:Lcom/duokan/airkan/phone/api/VideoManager;

    invoke-virtual {v1, p1}, Lcom/duokan/airkan/phone/api/VideoManager;->setSpName(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/duokan/airkan/common/AirkanException; {:try_start_0 .. :try_end_0} :catch_0

    .line 217
    :cond_0
    :goto_0
    return-void

    .line 213
    :catch_0
    move-exception v0

    .line 214
    .local v0, e:Lcom/duokan/airkan/common/AirkanException;
    invoke-virtual {v0}, Lcom/duokan/airkan/common/AirkanException;->printStackTrace()V

    goto :goto_0
.end method

.method public setVideoManager(Lcom/duokan/airkan/phone/api/VideoManager;)V
    .locals 0
    .parameter "videoManager"

    .prologue
    .line 45
    iput-object p1, p0, Lcom/miui/videoplayer/framework/airkan/RemoteTVMediaPlayerControl;->mVideoManager:Lcom/duokan/airkan/phone/api/VideoManager;

    .line 46
    return-void
.end method

.method public setVideoURI(Ljava/lang/String;IJIILjava/lang/String;)V
    .locals 10
    .parameter "title"
    .parameter "position"
    .parameter "mediaID"
    .parameter "ci"
    .parameter "preferedSource"
    .parameter "url"

    .prologue
    .line 240
    move-object/from16 v0, p7

    iput-object v0, p0, Lcom/miui/videoplayer/framework/airkan/RemoteTVMediaPlayerControl;->mUri:Ljava/lang/String;

    .line 242
    :try_start_0
    iget-object v1, p0, Lcom/miui/videoplayer/framework/airkan/RemoteTVMediaPlayerControl;->mVideoManager:Lcom/duokan/airkan/phone/api/VideoManager;

    move-object v2, p1

    move v3, p2

    move-wide v4, p3

    move v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p7

    invoke-virtual/range {v1 .. v8}, Lcom/duokan/airkan/phone/api/VideoManager;->setVideoURI(Ljava/lang/String;IJIILjava/lang/String;)V
    :try_end_0
    .catch Lcom/duokan/airkan/common/AirkanException; {:try_start_0 .. :try_end_0} :catch_0

    .line 246
    :goto_0
    return-void

    .line 243
    :catch_0
    move-exception v9

    .line 244
    .local v9, e:Lcom/duokan/airkan/common/AirkanException;
    invoke-virtual {v9}, Lcom/duokan/airkan/common/AirkanException;->printStackTrace()V

    goto :goto_0
.end method

.method public setVideoURI(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 4
    .parameter "url"
    .parameter "title"
    .parameter "position"

    .prologue
    .line 49
    iput-object p1, p0, Lcom/miui/videoplayer/framework/airkan/RemoteTVMediaPlayerControl;->mUri:Ljava/lang/String;

    .line 50
    sget-object v1, Lcom/miui/videoplayer/framework/airkan/RemoteTVMediaPlayerControl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "new URL : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    iget-object v1, p0, Lcom/miui/videoplayer/framework/airkan/RemoteTVMediaPlayerControl;->mVideoManager:Lcom/duokan/airkan/phone/api/VideoManager;

    if-eqz v1, :cond_0

    .line 53
    :try_start_0
    iget-object v1, p0, Lcom/miui/videoplayer/framework/airkan/RemoteTVMediaPlayerControl;->mVideoManager:Lcom/duokan/airkan/phone/api/VideoManager;

    iget-object v2, p0, Lcom/miui/videoplayer/framework/airkan/RemoteTVMediaPlayerControl;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v1, v2, v3, p2, p3}, Lcom/duokan/airkan/phone/api/VideoManager;->setVideoURI(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;I)V
    :try_end_0
    .catch Lcom/duokan/airkan/common/AirkanException; {:try_start_0 .. :try_end_0} :catch_0

    .line 58
    :cond_0
    :goto_0
    return-void

    .line 54
    :catch_0
    move-exception v0

    .line 55
    .local v0, e:Lcom/duokan/airkan/common/AirkanException;
    invoke-virtual {v0}, Lcom/duokan/airkan/common/AirkanException;->printStackTrace()V

    goto :goto_0
.end method

.method public setVolume(F)V
    .locals 2
    .parameter "volume"

    .prologue
    .line 87
    iget-object v1, p0, Lcom/miui/videoplayer/framework/airkan/RemoteTVMediaPlayerControl;->mVideoManager:Lcom/duokan/airkan/phone/api/VideoManager;

    if-eqz v1, :cond_0

    .line 89
    :try_start_0
    iget-object v1, p0, Lcom/miui/videoplayer/framework/airkan/RemoteTVMediaPlayerControl;->mVideoManager:Lcom/duokan/airkan/phone/api/VideoManager;

    invoke-virtual {v1, p1}, Lcom/duokan/airkan/phone/api/VideoManager;->setVolume(F)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/duokan/airkan/common/AirkanException; {:try_start_0 .. :try_end_0} :catch_1

    .line 96
    :cond_0
    :goto_0
    return-void

    .line 90
    :catch_0
    move-exception v0

    .line 91
    .local v0, e:Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    .line 92
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v0

    .line 93
    .local v0, e:Lcom/duokan/airkan/common/AirkanException;
    invoke-virtual {v0}, Lcom/duokan/airkan/common/AirkanException;->printStackTrace()V

    goto :goto_0
.end method

.method public showMediaController()V
    .locals 2

    .prologue
    .line 234
    iget-object v0, p0, Lcom/miui/videoplayer/framework/airkan/RemoteTVMediaPlayerControl;->mMediaController:Lcom/miui/videoplayer/framework/views/OriginMediaController;

    if-eqz v0, :cond_0

    .line 235
    iget-object v0, p0, Lcom/miui/videoplayer/framework/airkan/RemoteTVMediaPlayerControl;->mMediaController:Lcom/miui/videoplayer/framework/views/OriginMediaController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/videoplayer/framework/views/OriginMediaController;->show(I)V

    .line 237
    :cond_0
    return-void
.end method

.method public start()V
    .locals 2

    .prologue
    .line 120
    iget-object v1, p0, Lcom/miui/videoplayer/framework/airkan/RemoteTVMediaPlayerControl;->mVideoManager:Lcom/duokan/airkan/phone/api/VideoManager;

    if-eqz v1, :cond_0

    .line 122
    :try_start_0
    iget-object v1, p0, Lcom/miui/videoplayer/framework/airkan/RemoteTVMediaPlayerControl;->mVideoManager:Lcom/duokan/airkan/phone/api/VideoManager;

    invoke-virtual {v1}, Lcom/duokan/airkan/phone/api/VideoManager;->start()V
    :try_end_0
    .catch Lcom/duokan/airkan/common/AirkanException; {:try_start_0 .. :try_end_0} :catch_0

    .line 127
    :cond_0
    :goto_0
    return-void

    .line 123
    :catch_0
    move-exception v0

    .line 124
    .local v0, e:Lcom/duokan/airkan/common/AirkanException;
    invoke-virtual {v0}, Lcom/duokan/airkan/common/AirkanException;->printStackTrace()V

    goto :goto_0
.end method

.method public stop()V
    .locals 2

    .prologue
    .line 168
    iget-object v1, p0, Lcom/miui/videoplayer/framework/airkan/RemoteTVMediaPlayerControl;->mVideoManager:Lcom/duokan/airkan/phone/api/VideoManager;

    if-eqz v1, :cond_0

    .line 170
    :try_start_0
    iget-object v1, p0, Lcom/miui/videoplayer/framework/airkan/RemoteTVMediaPlayerControl;->mVideoManager:Lcom/duokan/airkan/phone/api/VideoManager;

    invoke-virtual {v1}, Lcom/duokan/airkan/phone/api/VideoManager;->stop()V
    :try_end_0
    .catch Lcom/duokan/airkan/common/AirkanException; {:try_start_0 .. :try_end_0} :catch_0

    .line 175
    :cond_0
    :goto_0
    return-void

    .line 171
    :catch_0
    move-exception v0

    .line 172
    .local v0, e:Lcom/duokan/airkan/common/AirkanException;
    invoke-virtual {v0}, Lcom/duokan/airkan/common/AirkanException;->printStackTrace()V

    goto :goto_0
.end method

.method public takeBack()V
    .locals 2

    .prologue
    .line 109
    iget-object v1, p0, Lcom/miui/videoplayer/framework/airkan/RemoteTVMediaPlayerControl;->mVideoManager:Lcom/duokan/airkan/phone/api/VideoManager;

    if-eqz v1, :cond_0

    .line 111
    :try_start_0
    iget-object v1, p0, Lcom/miui/videoplayer/framework/airkan/RemoteTVMediaPlayerControl;->mVideoManager:Lcom/duokan/airkan/phone/api/VideoManager;

    invoke-virtual {v1}, Lcom/duokan/airkan/phone/api/VideoManager;->takeBack()V
    :try_end_0
    .catch Lcom/duokan/airkan/common/AirkanException; {:try_start_0 .. :try_end_0} :catch_0

    .line 116
    :cond_0
    :goto_0
    return-void

    .line 112
    :catch_0
    move-exception v0

    .line 113
    .local v0, e:Lcom/duokan/airkan/common/AirkanException;
    invoke-virtual {v0}, Lcom/duokan/airkan/common/AirkanException;->printStackTrace()V

    goto :goto_0
.end method

.method public updatePlayingState(Z)V
    .locals 1
    .parameter "playing"

    .prologue
    .line 228
    iget-object v0, p0, Lcom/miui/videoplayer/framework/airkan/RemoteTVMediaPlayerControl;->mMediaController:Lcom/miui/videoplayer/framework/views/OriginMediaController;

    if-eqz v0, :cond_0

    .line 229
    iget-object v0, p0, Lcom/miui/videoplayer/framework/airkan/RemoteTVMediaPlayerControl;->mMediaController:Lcom/miui/videoplayer/framework/views/OriginMediaController;

    invoke-virtual {v0, p1}, Lcom/miui/videoplayer/framework/views/OriginMediaController;->updatePlayingState(Z)V

    .line 231
    :cond_0
    return-void
.end method
