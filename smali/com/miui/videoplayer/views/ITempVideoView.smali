.class public interface abstract Lcom/miui/videoplayer/views/ITempVideoView;
.super Ljava/lang/Object;
.source "ITempVideoView.java"

# interfaces
.implements Lcom/miui/videoplayer/framework/ui/LocalMediaPlayerControl;
.implements Lcom/miui/videoplayer/framework/ui/LocalVideoPlaySizeAdjustable;


# virtual methods
.method public abstract checkNetwork(Landroid/net/Uri;)V
.end method

.method public abstract getAdjustHeight()I
.end method

.method public abstract getAdjustWidth()I
.end method

.method public abstract getPlayingUri()Ljava/lang/String;
.end method

.method public abstract isPaused()Z
.end method

.method public abstract onActivityCreate()V
.end method

.method public abstract onActivityDestroy()V
.end method

.method public abstract onActivityStart()V
.end method

.method public abstract onActivityStop()V
.end method

.method public abstract onNewIntent()V
.end method

.method public abstract setDirectAirkanUri(Landroid/net/Uri;)V
.end method

.method public abstract setInput(Ljava/lang/String;Landroid/app/Activity;)V
.end method

.method public abstract setInput(Ljava/lang/String;Landroid/app/Activity;Lcom/miui/videoplayer/framework/airkan/AirkanManager$AirkanExistDeviceInfo;)V
.end method

.method public abstract setInput([Ljava/lang/String;ILandroid/app/Activity;)V
.end method

.method public abstract setTitleMap(Ljava/util/Map;)V
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
.end method

.method public abstract setVideoURI(Landroid/net/Uri;)V
.end method
