.class public Lcom/duokan/airkan/common/video/DuokanVideoInfo;
.super Ljava/lang/Object;
.source "DuokanVideoInfo.java"


# instance fields
.field public ci:I

.field public mediaID:J

.field public preferSource:B

.field public valid:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 13
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-boolean v2, p0, Lcom/duokan/airkan/common/video/DuokanVideoInfo;->valid:Z

    .line 9
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/duokan/airkan/common/video/DuokanVideoInfo;->mediaID:J

    .line 10
    iput v2, p0, Lcom/duokan/airkan/common/video/DuokanVideoInfo;->ci:I

    .line 11
    iput-byte v2, p0, Lcom/duokan/airkan/common/video/DuokanVideoInfo;->preferSource:B

    .line 15
    return-void
.end method

.method public constructor <init>(Lcom/duokan/airkan/common/aidl/video/ParcelDuokanVideoInfo;)V
    .locals 3
    .parameter "pdvi"

    .prologue
    const/4 v2, 0x0

    .line 16
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-boolean v2, p0, Lcom/duokan/airkan/common/video/DuokanVideoInfo;->valid:Z

    .line 9
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/duokan/airkan/common/video/DuokanVideoInfo;->mediaID:J

    .line 10
    iput v2, p0, Lcom/duokan/airkan/common/video/DuokanVideoInfo;->ci:I

    .line 11
    iput-byte v2, p0, Lcom/duokan/airkan/common/video/DuokanVideoInfo;->preferSource:B

    .line 17
    if-nez p1, :cond_0

    .line 24
    :goto_0
    return-void

    .line 20
    :cond_0
    iget-wide v0, p1, Lcom/duokan/airkan/common/aidl/video/ParcelDuokanVideoInfo;->mediaID:J

    iput-wide v0, p0, Lcom/duokan/airkan/common/video/DuokanVideoInfo;->mediaID:J

    .line 21
    iget v0, p1, Lcom/duokan/airkan/common/aidl/video/ParcelDuokanVideoInfo;->ci:I

    iput v0, p0, Lcom/duokan/airkan/common/video/DuokanVideoInfo;->ci:I

    .line 22
    iget-byte v0, p1, Lcom/duokan/airkan/common/aidl/video/ParcelDuokanVideoInfo;->preferSource:B

    iput-byte v0, p0, Lcom/duokan/airkan/common/video/DuokanVideoInfo;->preferSource:B

    .line 23
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/duokan/airkan/common/video/DuokanVideoInfo;->valid:Z

    goto :goto_0
.end method
