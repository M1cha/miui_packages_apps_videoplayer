.class public Lcom/duokan/airkan/common/video/VideoURL;
.super Ljava/lang/Object;
.source "VideoURL.java"


# instance fields
.field public header:Ljava/lang/String;

.field public index:S

.field public resolution:B

.field public state:S

.field public title:Ljava/lang/String;

.field public url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 13
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-byte v0, p0, Lcom/duokan/airkan/common/video/VideoURL;->resolution:B

    .line 7
    iput-object v1, p0, Lcom/duokan/airkan/common/video/VideoURL;->url:Ljava/lang/String;

    .line 8
    iput-object v1, p0, Lcom/duokan/airkan/common/video/VideoURL;->header:Ljava/lang/String;

    .line 9
    iput-object v1, p0, Lcom/duokan/airkan/common/video/VideoURL;->title:Ljava/lang/String;

    .line 10
    iput-short v0, p0, Lcom/duokan/airkan/common/video/VideoURL;->index:S

    .line 11
    iput-short v0, p0, Lcom/duokan/airkan/common/video/VideoURL;->state:S

    .line 15
    return-void
.end method

.method public constructor <init>(Lcom/duokan/airkan/common/aidl/video/ParcelVideoURL;)V
    .locals 2
    .parameter "pvu"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 17
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-byte v0, p0, Lcom/duokan/airkan/common/video/VideoURL;->resolution:B

    .line 7
    iput-object v1, p0, Lcom/duokan/airkan/common/video/VideoURL;->url:Ljava/lang/String;

    .line 8
    iput-object v1, p0, Lcom/duokan/airkan/common/video/VideoURL;->header:Ljava/lang/String;

    .line 9
    iput-object v1, p0, Lcom/duokan/airkan/common/video/VideoURL;->title:Ljava/lang/String;

    .line 10
    iput-short v0, p0, Lcom/duokan/airkan/common/video/VideoURL;->index:S

    .line 11
    iput-short v0, p0, Lcom/duokan/airkan/common/video/VideoURL;->state:S

    .line 18
    iget-byte v0, p1, Lcom/duokan/airkan/common/aidl/video/ParcelVideoURL;->resolution:B

    iput-byte v0, p0, Lcom/duokan/airkan/common/video/VideoURL;->resolution:B

    .line 19
    iget-object v0, p1, Lcom/duokan/airkan/common/aidl/video/ParcelVideoURL;->url:Ljava/lang/String;

    iput-object v0, p0, Lcom/duokan/airkan/common/video/VideoURL;->url:Ljava/lang/String;

    .line 20
    iget-object v0, p1, Lcom/duokan/airkan/common/aidl/video/ParcelVideoURL;->header:Ljava/lang/String;

    iput-object v0, p0, Lcom/duokan/airkan/common/video/VideoURL;->header:Ljava/lang/String;

    .line 21
    iget-object v0, p1, Lcom/duokan/airkan/common/aidl/video/ParcelVideoURL;->title:Ljava/lang/String;

    iput-object v0, p0, Lcom/duokan/airkan/common/video/VideoURL;->title:Ljava/lang/String;

    .line 22
    iget-short v0, p1, Lcom/duokan/airkan/common/aidl/video/ParcelVideoURL;->index:S

    iput-short v0, p0, Lcom/duokan/airkan/common/video/VideoURL;->index:S

    .line 23
    iget-short v0, p1, Lcom/duokan/airkan/common/aidl/video/ParcelVideoURL;->state:S

    iput-short v0, p0, Lcom/duokan/airkan/common/video/VideoURL;->state:S

    .line 24
    return-void
.end method

.method public constructor <init>(Lcom/duokan/airkan/common/video/VideoURL;)V
    .locals 2
    .parameter "vu"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 25
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-byte v0, p0, Lcom/duokan/airkan/common/video/VideoURL;->resolution:B

    .line 7
    iput-object v1, p0, Lcom/duokan/airkan/common/video/VideoURL;->url:Ljava/lang/String;

    .line 8
    iput-object v1, p0, Lcom/duokan/airkan/common/video/VideoURL;->header:Ljava/lang/String;

    .line 9
    iput-object v1, p0, Lcom/duokan/airkan/common/video/VideoURL;->title:Ljava/lang/String;

    .line 10
    iput-short v0, p0, Lcom/duokan/airkan/common/video/VideoURL;->index:S

    .line 11
    iput-short v0, p0, Lcom/duokan/airkan/common/video/VideoURL;->state:S

    .line 26
    iget-byte v0, p1, Lcom/duokan/airkan/common/video/VideoURL;->resolution:B

    iput-byte v0, p0, Lcom/duokan/airkan/common/video/VideoURL;->resolution:B

    .line 27
    iget-object v0, p1, Lcom/duokan/airkan/common/video/VideoURL;->url:Ljava/lang/String;

    iput-object v0, p0, Lcom/duokan/airkan/common/video/VideoURL;->url:Ljava/lang/String;

    .line 28
    iget-object v0, p1, Lcom/duokan/airkan/common/video/VideoURL;->header:Ljava/lang/String;

    iput-object v0, p0, Lcom/duokan/airkan/common/video/VideoURL;->header:Ljava/lang/String;

    .line 29
    iget-object v0, p1, Lcom/duokan/airkan/common/video/VideoURL;->title:Ljava/lang/String;

    iput-object v0, p0, Lcom/duokan/airkan/common/video/VideoURL;->title:Ljava/lang/String;

    .line 30
    iget-short v0, p1, Lcom/duokan/airkan/common/video/VideoURL;->index:S

    iput-short v0, p0, Lcom/duokan/airkan/common/video/VideoURL;->index:S

    .line 31
    iget-short v0, p1, Lcom/duokan/airkan/common/video/VideoURL;->state:S

    iput-short v0, p0, Lcom/duokan/airkan/common/video/VideoURL;->state:S

    .line 32
    return-void
.end method
