.class public interface abstract Lcom/duokan/airkan/phone/api/MusicManager$OnMusicEventListener;
.super Ljava/lang/Object;
.source "MusicManager.java"

# interfaces
.implements Lcom/duokan/airkan/phone/api/VideoManager$OnVideoEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/duokan/airkan/phone/api/MusicManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnMusicEventListener"
.end annotation


# virtual methods
.method public abstract onRequestLastMusic()V
.end method

.method public abstract onRequestNextMusic()V
.end method
