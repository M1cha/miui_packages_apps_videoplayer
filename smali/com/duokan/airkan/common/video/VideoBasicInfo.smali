.class public Lcom/duokan/airkan/common/video/VideoBasicInfo;
.super Ljava/lang/Object;
.source "VideoBasicInfo.java"


# instance fields
.field public deviceName:Ljava/lang/String;

.field public header:Ljava/lang/String;

.field public playlength:I

.field public position:I

.field public title:Ljava/lang/String;

.field public url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 6
    const/4 v0, -0x1

    iput v0, p0, Lcom/duokan/airkan/common/video/VideoBasicInfo;->playlength:I

    .line 7
    const/4 v0, 0x0

    iput v0, p0, Lcom/duokan/airkan/common/video/VideoBasicInfo;->position:I

    .line 15
    return-void
.end method

.method public constructor <init>(Lcom/duokan/airkan/common/aidl/video/ParcelVideoBasicInfo;)V
    .locals 1
    .parameter "pvbi"

    .prologue
    .line 16
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 6
    const/4 v0, -0x1

    iput v0, p0, Lcom/duokan/airkan/common/video/VideoBasicInfo;->playlength:I

    .line 7
    const/4 v0, 0x0

    iput v0, p0, Lcom/duokan/airkan/common/video/VideoBasicInfo;->position:I

    .line 17
    if-nez p1, :cond_0

    .line 26
    :goto_0
    return-void

    .line 20
    :cond_0
    iget v0, p1, Lcom/duokan/airkan/common/aidl/video/ParcelVideoBasicInfo;->playlength:I

    iput v0, p0, Lcom/duokan/airkan/common/video/VideoBasicInfo;->playlength:I

    .line 21
    iget v0, p1, Lcom/duokan/airkan/common/aidl/video/ParcelVideoBasicInfo;->position:I

    iput v0, p0, Lcom/duokan/airkan/common/video/VideoBasicInfo;->position:I

    .line 22
    iget-object v0, p1, Lcom/duokan/airkan/common/aidl/video/ParcelVideoBasicInfo;->title:Ljava/lang/String;

    iput-object v0, p0, Lcom/duokan/airkan/common/video/VideoBasicInfo;->title:Ljava/lang/String;

    .line 23
    iget-object v0, p1, Lcom/duokan/airkan/common/aidl/video/ParcelVideoBasicInfo;->url:Ljava/lang/String;

    iput-object v0, p0, Lcom/duokan/airkan/common/video/VideoBasicInfo;->url:Ljava/lang/String;

    .line 24
    iget-object v0, p1, Lcom/duokan/airkan/common/aidl/video/ParcelVideoBasicInfo;->header:Ljava/lang/String;

    iput-object v0, p0, Lcom/duokan/airkan/common/video/VideoBasicInfo;->header:Ljava/lang/String;

    .line 25
    iget-object v0, p1, Lcom/duokan/airkan/common/aidl/video/ParcelVideoBasicInfo;->deviceName:Ljava/lang/String;

    iput-object v0, p0, Lcom/duokan/airkan/common/video/VideoBasicInfo;->deviceName:Ljava/lang/String;

    goto :goto_0
.end method
