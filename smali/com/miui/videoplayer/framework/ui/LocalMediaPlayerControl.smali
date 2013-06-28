.class public interface abstract Lcom/miui/videoplayer/framework/ui/LocalMediaPlayerControl;
.super Ljava/lang/Object;
.source "LocalMediaPlayerControl.java"

# interfaces
.implements Lcom/miui/videoplayer/framework/ui/MediaPlayerControl;


# virtual methods
.method public abstract disableMultiSpeedPlayback()Z
.end method

.method public abstract enableMultiSpeedPlayback(IZ)Z
.end method

.method public abstract getMediaInfo()Lcom/duokan/MediaPlayer$MediaInfo;
.end method

.method public abstract getPausedTotalTime()J
.end method

.method public abstract setOnBufferingUpdateListener(Landroid/media/MediaPlayer$OnBufferingUpdateListener;)V
.end method

.method public abstract setOnBufferingUpdateListener(Lcom/duokan/MediaPlayer$OnBufferingUpdateListener;)V
.end method

.method public abstract setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V
.end method

.method public abstract setOnCompletionListener(Lcom/duokan/MediaPlayer$OnCompletionListener;)V
.end method

.method public abstract setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V
.end method

.method public abstract setOnErrorListener(Lcom/duokan/MediaPlayer$OnErrorListener;)V
.end method

.method public abstract setOnInfoListener(Landroid/media/MediaPlayer$OnInfoListener;)V
.end method

.method public abstract setOnInfoListener(Lcom/duokan/MediaPlayer$OnInfoListener;)V
.end method

.method public abstract setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V
.end method

.method public abstract setOnPreparedListener(Lcom/duokan/MediaPlayer$OnPreparedListener;)V
.end method

.method public abstract setOnSeekCompleteListener(Landroid/media/MediaPlayer$OnSeekCompleteListener;)V
.end method

.method public abstract setOnSeekCompleteListener(Lcom/duokan/MediaPlayer$OnSeekCompleteListener;)V
.end method

.method public abstract setOnTimedTextListener(Lcom/duokan/MediaPlayer$OnTimedTextListener;)V
.end method

.method public abstract setOnVideoSizeChangedListener(Landroid/media/MediaPlayer$OnVideoSizeChangedListener;)V
.end method

.method public abstract setOnVideoSizeChangedListener(Lcom/duokan/MediaPlayer$OnVideoSizeChangedListener;)V
.end method

.method public abstract setOutOfBandTextSource(Ljava/lang/String;)Z
.end method

.method public abstract startLocalPlayForAirkan(Landroid/net/Uri;)V
.end method

.method public abstract startLocalPlayForMediaSwitch(Landroid/net/Uri;)V
.end method

.method public abstract stopLocalPlayForAirkan()V
.end method

.method public abstract stopLocalPlayForMediaSwitch()V
.end method
