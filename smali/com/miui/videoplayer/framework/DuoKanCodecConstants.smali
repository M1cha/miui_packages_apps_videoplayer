.class public Lcom/miui/videoplayer/framework/DuoKanCodecConstants;
.super Ljava/lang/Object;
.source "DuoKanCodecConstants.java"


# static fields
.field public static IS_DUOKAN_CODEC_PHONE:Z

.field private static final IS_MIONE:Z

.field private static final IS_MITWO:Z

.field private static final IS_MITWO_2A:Z

.field public static sUseDuokanCodec:Z


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 7
    const-string v1, "mione"

    sget-object v4, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "mione_plus"

    sget-object v4, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_0
    move v1, v3

    :goto_0
    sput-boolean v1, Lcom/miui/videoplayer/framework/DuoKanCodecConstants;->IS_MIONE:Z

    .line 8
    const-string v1, "aries"

    sget-object v4, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    sput-boolean v1, Lcom/miui/videoplayer/framework/DuoKanCodecConstants;->IS_MITWO:Z

    .line 9
    sget-boolean v1, Lmiui/os/Build;->IS_MI2A:Z

    sput-boolean v1, Lcom/miui/videoplayer/framework/DuoKanCodecConstants;->IS_MITWO_2A:Z

    .line 11
    sget-boolean v1, Lcom/miui/videoplayer/framework/DuoKanCodecConstants;->IS_MIONE:Z

    if-nez v1, :cond_1

    sget-boolean v1, Lcom/miui/videoplayer/framework/DuoKanCodecConstants;->IS_MITWO:Z

    if-nez v1, :cond_1

    sget-boolean v1, Lcom/miui/videoplayer/framework/DuoKanCodecConstants;->IS_MITWO_2A:Z

    if-eqz v1, :cond_4

    :cond_1
    :goto_1
    sput-boolean v3, Lcom/miui/videoplayer/framework/DuoKanCodecConstants;->IS_DUOKAN_CODEC_PHONE:Z

    .line 13
    sget-boolean v1, Lcom/miui/videoplayer/framework/DuoKanCodecConstants;->IS_DUOKAN_CODEC_PHONE:Z

    sput-boolean v1, Lcom/miui/videoplayer/framework/DuoKanCodecConstants;->sUseDuokanCodec:Z

    .line 16
    sget-boolean v1, Lcom/miui/videoplayer/framework/DuoKanCodecConstants;->IS_MITWO:Z

    if-eqz v1, :cond_2

    .line 18
    :try_start_0
    const-string v1, "xiaomimediaplayer"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    .line 27
    .local v0, e:Ljava/lang/UnsatisfiedLinkError;
    :cond_2
    :goto_2
    return-void

    .end local v0           #e:Ljava/lang/UnsatisfiedLinkError;
    :cond_3
    move v1, v2

    .line 7
    goto :goto_0

    :cond_4
    move v3, v2

    .line 11
    goto :goto_1

    .line 19
    :catch_0
    move-exception v0

    .line 20
    .restart local v0       #e:Ljava/lang/UnsatisfiedLinkError;
    const-string v1, "DuoKanCodecConstants"

    const-string v3, "Can not load duokan codec, use origin codec"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    sput-boolean v2, Lcom/miui/videoplayer/framework/DuoKanCodecConstants;->IS_DUOKAN_CODEC_PHONE:Z

    .line 22
    sget-boolean v1, Lcom/miui/videoplayer/framework/DuoKanCodecConstants;->IS_DUOKAN_CODEC_PHONE:Z

    sput-boolean v1, Lcom/miui/videoplayer/framework/DuoKanCodecConstants;->sUseDuokanCodec:Z

    goto :goto_2
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
