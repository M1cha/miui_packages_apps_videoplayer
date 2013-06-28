.class public interface abstract Lcom/duokan/airkan/phone/api/VideoManager$OnVideoEventListener;
.super Ljava/lang/Object;
.source "VideoManager.java"

# interfaces
.implements Lcom/duokan/airkan/phone/api/ConnectionManager$OnConnectionStatusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/duokan/airkan/phone/api/VideoManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnVideoEventListener"
.end annotation


# virtual methods
.method public abstract onDurationUpdated(I)V
.end method

.method public abstract onError(Ljava/lang/String;)V
.end method

.method public abstract onPaused()V
.end method

.method public abstract onPlayToSuccess()V
.end method

.method public abstract onResolutionChanged(Lcom/duokan/airkan/common/video/VideoResolution$Resolution;)V
.end method

.method public abstract onStarted()V
.end method

.method public abstract onStopped()V
.end method

.method public abstract onVolumeUpdated(F)V
.end method
