.class public Lcom/duokan/airkan/common/video/VideoMetaData;
.super Ljava/lang/Object;
.source "VideoMetaData.java"


# instance fields
.field private TAG:Ljava/lang/String;

.field private mDuokanVideoInfo:Lcom/duokan/airkan/common/video/DuokanVideoInfo;

.field private mResolution:B

.field private mSource:B

.field private mSpParameters:Lorg/json/JSONObject;

.field private mVideoBasicInfo:Lcom/duokan/airkan/common/video/VideoBasicInfo;

.field private mVideoURLList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/duokan/airkan/common/video/VideoURL;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const-string v0, "VMD"

    iput-object v0, p0, Lcom/duokan/airkan/common/video/VideoMetaData;->TAG:Ljava/lang/String;

    .line 14
    new-instance v0, Lcom/duokan/airkan/common/video/VideoBasicInfo;

    invoke-direct {v0}, Lcom/duokan/airkan/common/video/VideoBasicInfo;-><init>()V

    iput-object v0, p0, Lcom/duokan/airkan/common/video/VideoMetaData;->mVideoBasicInfo:Lcom/duokan/airkan/common/video/VideoBasicInfo;

    .line 15
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/duokan/airkan/common/video/VideoMetaData;->mVideoURLList:Ljava/util/ArrayList;

    .line 16
    new-instance v0, Lcom/duokan/airkan/common/video/DuokanVideoInfo;

    invoke-direct {v0}, Lcom/duokan/airkan/common/video/DuokanVideoInfo;-><init>()V

    iput-object v0, p0, Lcom/duokan/airkan/common/video/VideoMetaData;->mDuokanVideoInfo:Lcom/duokan/airkan/common/video/DuokanVideoInfo;

    .line 17
    const/4 v0, 0x4

    iput-byte v0, p0, Lcom/duokan/airkan/common/video/VideoMetaData;->mResolution:B

    .line 18
    const/4 v0, 0x1

    iput-byte v0, p0, Lcom/duokan/airkan/common/video/VideoMetaData;->mSource:B

    .line 19
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/duokan/airkan/common/video/VideoMetaData;->mSpParameters:Lorg/json/JSONObject;

    .line 22
    return-void
.end method

.method public constructor <init>(Lcom/duokan/airkan/common/video/VideoBasicInfo;)V
    .locals 1
    .parameter "vbi"

    .prologue
    .line 24
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const-string v0, "VMD"

    iput-object v0, p0, Lcom/duokan/airkan/common/video/VideoMetaData;->TAG:Ljava/lang/String;

    .line 14
    new-instance v0, Lcom/duokan/airkan/common/video/VideoBasicInfo;

    invoke-direct {v0}, Lcom/duokan/airkan/common/video/VideoBasicInfo;-><init>()V

    iput-object v0, p0, Lcom/duokan/airkan/common/video/VideoMetaData;->mVideoBasicInfo:Lcom/duokan/airkan/common/video/VideoBasicInfo;

    .line 15
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/duokan/airkan/common/video/VideoMetaData;->mVideoURLList:Ljava/util/ArrayList;

    .line 16
    new-instance v0, Lcom/duokan/airkan/common/video/DuokanVideoInfo;

    invoke-direct {v0}, Lcom/duokan/airkan/common/video/DuokanVideoInfo;-><init>()V

    iput-object v0, p0, Lcom/duokan/airkan/common/video/VideoMetaData;->mDuokanVideoInfo:Lcom/duokan/airkan/common/video/DuokanVideoInfo;

    .line 17
    const/4 v0, 0x4

    iput-byte v0, p0, Lcom/duokan/airkan/common/video/VideoMetaData;->mResolution:B

    .line 18
    const/4 v0, 0x1

    iput-byte v0, p0, Lcom/duokan/airkan/common/video/VideoMetaData;->mSource:B

    .line 19
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/duokan/airkan/common/video/VideoMetaData;->mSpParameters:Lorg/json/JSONObject;

    .line 25
    iput-object p1, p0, Lcom/duokan/airkan/common/video/VideoMetaData;->mVideoBasicInfo:Lcom/duokan/airkan/common/video/VideoBasicInfo;

    .line 26
    return-void
.end method

.method public constructor <init>(Lcom/duokan/airkan/common/video/VideoBasicInfo;Lcom/duokan/airkan/common/video/DuokanVideoInfo;)V
    .locals 1
    .parameter "vbi"
    .parameter "dvi"

    .prologue
    .line 42
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const-string v0, "VMD"

    iput-object v0, p0, Lcom/duokan/airkan/common/video/VideoMetaData;->TAG:Ljava/lang/String;

    .line 14
    new-instance v0, Lcom/duokan/airkan/common/video/VideoBasicInfo;

    invoke-direct {v0}, Lcom/duokan/airkan/common/video/VideoBasicInfo;-><init>()V

    iput-object v0, p0, Lcom/duokan/airkan/common/video/VideoMetaData;->mVideoBasicInfo:Lcom/duokan/airkan/common/video/VideoBasicInfo;

    .line 15
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/duokan/airkan/common/video/VideoMetaData;->mVideoURLList:Ljava/util/ArrayList;

    .line 16
    new-instance v0, Lcom/duokan/airkan/common/video/DuokanVideoInfo;

    invoke-direct {v0}, Lcom/duokan/airkan/common/video/DuokanVideoInfo;-><init>()V

    iput-object v0, p0, Lcom/duokan/airkan/common/video/VideoMetaData;->mDuokanVideoInfo:Lcom/duokan/airkan/common/video/DuokanVideoInfo;

    .line 17
    const/4 v0, 0x4

    iput-byte v0, p0, Lcom/duokan/airkan/common/video/VideoMetaData;->mResolution:B

    .line 18
    const/4 v0, 0x1

    iput-byte v0, p0, Lcom/duokan/airkan/common/video/VideoMetaData;->mSource:B

    .line 19
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/duokan/airkan/common/video/VideoMetaData;->mSpParameters:Lorg/json/JSONObject;

    .line 43
    iput-object p1, p0, Lcom/duokan/airkan/common/video/VideoMetaData;->mVideoBasicInfo:Lcom/duokan/airkan/common/video/VideoBasicInfo;

    .line 44
    iput-object p2, p0, Lcom/duokan/airkan/common/video/VideoMetaData;->mDuokanVideoInfo:Lcom/duokan/airkan/common/video/DuokanVideoInfo;

    .line 45
    return-void
.end method

.method public constructor <init>(Lcom/duokan/airkan/common/video/VideoBasicInfo;Ljava/util/ArrayList;)V
    .locals 3
    .parameter "vbi"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/duokan/airkan/common/video/VideoBasicInfo;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/duokan/airkan/common/video/VideoURL;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 28
    .local p2, vul:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/duokan/airkan/common/video/VideoURL;>;"
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const-string v1, "VMD"

    iput-object v1, p0, Lcom/duokan/airkan/common/video/VideoMetaData;->TAG:Ljava/lang/String;

    .line 14
    new-instance v1, Lcom/duokan/airkan/common/video/VideoBasicInfo;

    invoke-direct {v1}, Lcom/duokan/airkan/common/video/VideoBasicInfo;-><init>()V

    iput-object v1, p0, Lcom/duokan/airkan/common/video/VideoMetaData;->mVideoBasicInfo:Lcom/duokan/airkan/common/video/VideoBasicInfo;

    .line 15
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/duokan/airkan/common/video/VideoMetaData;->mVideoURLList:Ljava/util/ArrayList;

    .line 16
    new-instance v1, Lcom/duokan/airkan/common/video/DuokanVideoInfo;

    invoke-direct {v1}, Lcom/duokan/airkan/common/video/DuokanVideoInfo;-><init>()V

    iput-object v1, p0, Lcom/duokan/airkan/common/video/VideoMetaData;->mDuokanVideoInfo:Lcom/duokan/airkan/common/video/DuokanVideoInfo;

    .line 17
    const/4 v1, 0x4

    iput-byte v1, p0, Lcom/duokan/airkan/common/video/VideoMetaData;->mResolution:B

    .line 18
    const/4 v1, 0x1

    iput-byte v1, p0, Lcom/duokan/airkan/common/video/VideoMetaData;->mSource:B

    .line 19
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/duokan/airkan/common/video/VideoMetaData;->mSpParameters:Lorg/json/JSONObject;

    .line 29
    iput-object p1, p0, Lcom/duokan/airkan/common/video/VideoMetaData;->mVideoBasicInfo:Lcom/duokan/airkan/common/video/VideoBasicInfo;

    .line 30
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 31
    iget-object v1, p0, Lcom/duokan/airkan/common/video/VideoMetaData;->mVideoURLList:Ljava/util/ArrayList;

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 30
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 33
    :cond_0
    return-void
.end method

.method public constructor <init>(Lcom/duokan/airkan/common/video/VideoBasicInfo;Ljava/util/List;)V
    .locals 3
    .parameter "vbi"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/duokan/airkan/common/video/VideoBasicInfo;",
            "Ljava/util/List",
            "<",
            "Lcom/duokan/airkan/common/video/VideoURL;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 35
    .local p2, vul:Ljava/util/List;,"Ljava/util/List<Lcom/duokan/airkan/common/video/VideoURL;>;"
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const-string v1, "VMD"

    iput-object v1, p0, Lcom/duokan/airkan/common/video/VideoMetaData;->TAG:Ljava/lang/String;

    .line 14
    new-instance v1, Lcom/duokan/airkan/common/video/VideoBasicInfo;

    invoke-direct {v1}, Lcom/duokan/airkan/common/video/VideoBasicInfo;-><init>()V

    iput-object v1, p0, Lcom/duokan/airkan/common/video/VideoMetaData;->mVideoBasicInfo:Lcom/duokan/airkan/common/video/VideoBasicInfo;

    .line 15
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/duokan/airkan/common/video/VideoMetaData;->mVideoURLList:Ljava/util/ArrayList;

    .line 16
    new-instance v1, Lcom/duokan/airkan/common/video/DuokanVideoInfo;

    invoke-direct {v1}, Lcom/duokan/airkan/common/video/DuokanVideoInfo;-><init>()V

    iput-object v1, p0, Lcom/duokan/airkan/common/video/VideoMetaData;->mDuokanVideoInfo:Lcom/duokan/airkan/common/video/DuokanVideoInfo;

    .line 17
    const/4 v1, 0x4

    iput-byte v1, p0, Lcom/duokan/airkan/common/video/VideoMetaData;->mResolution:B

    .line 18
    const/4 v1, 0x1

    iput-byte v1, p0, Lcom/duokan/airkan/common/video/VideoMetaData;->mSource:B

    .line 19
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/duokan/airkan/common/video/VideoMetaData;->mSpParameters:Lorg/json/JSONObject;

    .line 36
    iput-object p1, p0, Lcom/duokan/airkan/common/video/VideoMetaData;->mVideoBasicInfo:Lcom/duokan/airkan/common/video/VideoBasicInfo;

    .line 37
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 38
    iget-object v1, p0, Lcom/duokan/airkan/common/video/VideoMetaData;->mVideoURLList:Ljava/util/ArrayList;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 37
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 40
    :cond_0
    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 1
    .parameter "parameters"

    .prologue
    .line 47
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const-string v0, "VMD"

    iput-object v0, p0, Lcom/duokan/airkan/common/video/VideoMetaData;->TAG:Ljava/lang/String;

    .line 14
    new-instance v0, Lcom/duokan/airkan/common/video/VideoBasicInfo;

    invoke-direct {v0}, Lcom/duokan/airkan/common/video/VideoBasicInfo;-><init>()V

    iput-object v0, p0, Lcom/duokan/airkan/common/video/VideoMetaData;->mVideoBasicInfo:Lcom/duokan/airkan/common/video/VideoBasicInfo;

    .line 15
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/duokan/airkan/common/video/VideoMetaData;->mVideoURLList:Ljava/util/ArrayList;

    .line 16
    new-instance v0, Lcom/duokan/airkan/common/video/DuokanVideoInfo;

    invoke-direct {v0}, Lcom/duokan/airkan/common/video/DuokanVideoInfo;-><init>()V

    iput-object v0, p0, Lcom/duokan/airkan/common/video/VideoMetaData;->mDuokanVideoInfo:Lcom/duokan/airkan/common/video/DuokanVideoInfo;

    .line 17
    const/4 v0, 0x4

    iput-byte v0, p0, Lcom/duokan/airkan/common/video/VideoMetaData;->mResolution:B

    .line 18
    const/4 v0, 0x1

    iput-byte v0, p0, Lcom/duokan/airkan/common/video/VideoMetaData;->mSource:B

    .line 19
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/duokan/airkan/common/video/VideoMetaData;->mSpParameters:Lorg/json/JSONObject;

    .line 48
    iput-object p1, p0, Lcom/duokan/airkan/common/video/VideoMetaData;->mSpParameters:Lorg/json/JSONObject;

    .line 49
    return-void
.end method


# virtual methods
.method public addVideoURL(Lcom/duokan/airkan/common/video/VideoURL;)I
    .locals 1
    .parameter "vu"

    .prologue
    .line 177
    iget-object v0, p0, Lcom/duokan/airkan/common/video/VideoMetaData;->mVideoURLList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 178
    const/4 v0, 0x0

    return v0
.end method

.method public calcResolution()B
    .locals 5

    .prologue
    .line 61
    const/4 v2, 0x1

    iput-byte v2, p0, Lcom/duokan/airkan/common/video/VideoMetaData;->mResolution:B

    .line 62
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/duokan/airkan/common/video/VideoMetaData;->mVideoURLList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 63
    iget-object v2, p0, Lcom/duokan/airkan/common/video/VideoMetaData;->mVideoURLList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/duokan/airkan/common/video/VideoURL;

    .line 64
    .local v1, vu:Lcom/duokan/airkan/common/video/VideoURL;
    iget-byte v2, p0, Lcom/duokan/airkan/common/video/VideoMetaData;->mResolution:B

    iget-byte v3, v1, Lcom/duokan/airkan/common/video/VideoURL;->resolution:B

    if-ge v2, v3, :cond_0

    .line 65
    iget-byte v2, v1, Lcom/duokan/airkan/common/video/VideoURL;->resolution:B

    iput-byte v2, p0, Lcom/duokan/airkan/common/video/VideoMetaData;->mResolution:B

    .line 62
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 68
    .end local v1           #vu:Lcom/duokan/airkan/common/video/VideoURL;
    :cond_1
    iget-object v2, p0, Lcom/duokan/airkan/common/video/VideoMetaData;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "resolution:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-byte v4, p0, Lcom/duokan/airkan/common/video/VideoMetaData;->mResolution:B

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/duokan/airkan/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    iget-byte v2, p0, Lcom/duokan/airkan/common/video/VideoMetaData;->mResolution:B

    return v2
.end method

.method public clearVideoUrlList()V
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lcom/duokan/airkan/common/video/VideoMetaData;->mVideoURLList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 175
    return-void
.end method

.method public getDeviceName()Ljava/lang/String;
    .locals 3

    .prologue
    .line 100
    iget-object v0, p0, Lcom/duokan/airkan/common/video/VideoMetaData;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deviceName:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/duokan/airkan/common/video/VideoMetaData;->mVideoBasicInfo:Lcom/duokan/airkan/common/video/VideoBasicInfo;

    iget-object v2, v2, Lcom/duokan/airkan/common/video/VideoBasicInfo;->deviceName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/duokan/airkan/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    iget-object v0, p0, Lcom/duokan/airkan/common/video/VideoMetaData;->mVideoBasicInfo:Lcom/duokan/airkan/common/video/VideoBasicInfo;

    iget-object v0, v0, Lcom/duokan/airkan/common/video/VideoBasicInfo;->deviceName:Ljava/lang/String;

    return-object v0
.end method

.method public getDuokanVideoInfo()Lcom/duokan/airkan/common/video/DuokanVideoInfo;
    .locals 1

    .prologue
    .line 181
    iget-object v0, p0, Lcom/duokan/airkan/common/video/VideoMetaData;->mDuokanVideoInfo:Lcom/duokan/airkan/common/video/DuokanVideoInfo;

    return-object v0
.end method

.method public getHeader()Ljava/lang/String;
    .locals 4

    .prologue
    .line 128
    const/4 v0, 0x0

    .line 129
    .local v0, header:Ljava/lang/String;
    iget-object v1, p0, Lcom/duokan/airkan/common/video/VideoMetaData;->mVideoBasicInfo:Lcom/duokan/airkan/common/video/VideoBasicInfo;

    iget-object v1, v1, Lcom/duokan/airkan/common/video/VideoBasicInfo;->header:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 130
    iget-object v1, p0, Lcom/duokan/airkan/common/video/VideoMetaData;->mVideoBasicInfo:Lcom/duokan/airkan/common/video/VideoBasicInfo;

    iget-object v0, v1, Lcom/duokan/airkan/common/video/VideoBasicInfo;->header:Ljava/lang/String;

    .line 138
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/duokan/airkan/common/video/VideoMetaData;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "header:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/duokan/airkan/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    return-object v0

    .line 131
    :cond_1
    iget-object v1, p0, Lcom/duokan/airkan/common/video/VideoMetaData;->mVideoURLList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 132
    iget-byte v1, p0, Lcom/duokan/airkan/common/video/VideoMetaData;->mResolution:B

    invoke-virtual {p0, v1}, Lcom/duokan/airkan/common/video/VideoMetaData;->getHeaderByResolution(B)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 133
    :cond_2
    iget-object v1, p0, Lcom/duokan/airkan/common/video/VideoMetaData;->mDuokanVideoInfo:Lcom/duokan/airkan/common/video/DuokanVideoInfo;

    iget-boolean v1, v1, Lcom/duokan/airkan/common/video/DuokanVideoInfo;->valid:Z

    if-nez v1, :cond_0

    .line 136
    iget-object v1, p0, Lcom/duokan/airkan/common/video/VideoMetaData;->TAG:Ljava/lang/String;

    const-string v2, "no valid header"

    invoke-static {v1, v2}, Lcom/duokan/airkan/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getHeaderByResolution(B)Ljava/lang/String;
    .locals 4
    .parameter "resolution"

    .prologue
    .line 153
    const/4 v0, 0x0

    .line 154
    .local v0, header:Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v3, p0, Lcom/duokan/airkan/common/video/VideoMetaData;->mVideoURLList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 155
    iget-object v3, p0, Lcom/duokan/airkan/common/video/VideoMetaData;->mVideoURLList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/duokan/airkan/common/video/VideoURL;

    .line 156
    .local v2, vu:Lcom/duokan/airkan/common/video/VideoURL;
    iget-byte v3, v2, Lcom/duokan/airkan/common/video/VideoURL;->resolution:B

    if-ne p1, v3, :cond_0

    .line 157
    iget-byte p1, v2, Lcom/duokan/airkan/common/video/VideoURL;->resolution:B

    .line 158
    iget-object v0, v2, Lcom/duokan/airkan/common/video/VideoURL;->header:Ljava/lang/String;

    .line 154
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 161
    .end local v2           #vu:Lcom/duokan/airkan/common/video/VideoURL;
    :cond_1
    return-object v0
.end method

.method public getPlaylength()I
    .locals 3

    .prologue
    .line 78
    iget-object v0, p0, Lcom/duokan/airkan/common/video/VideoMetaData;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "len:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/duokan/airkan/common/video/VideoMetaData;->mVideoBasicInfo:Lcom/duokan/airkan/common/video/VideoBasicInfo;

    iget v2, v2, Lcom/duokan/airkan/common/video/VideoBasicInfo;->playlength:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/duokan/airkan/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    iget-object v0, p0, Lcom/duokan/airkan/common/video/VideoMetaData;->mVideoBasicInfo:Lcom/duokan/airkan/common/video/VideoBasicInfo;

    iget v0, v0, Lcom/duokan/airkan/common/video/VideoBasicInfo;->playlength:I

    return v0
.end method

.method public getPosition()I
    .locals 3

    .prologue
    .line 87
    iget-object v0, p0, Lcom/duokan/airkan/common/video/VideoMetaData;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "position:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/duokan/airkan/common/video/VideoMetaData;->mVideoBasicInfo:Lcom/duokan/airkan/common/video/VideoBasicInfo;

    iget v2, v2, Lcom/duokan/airkan/common/video/VideoBasicInfo;->position:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/duokan/airkan/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    iget-object v0, p0, Lcom/duokan/airkan/common/video/VideoMetaData;->mVideoBasicInfo:Lcom/duokan/airkan/common/video/VideoBasicInfo;

    iget v0, v0, Lcom/duokan/airkan/common/video/VideoBasicInfo;->position:I

    return v0
.end method

.method public getResolution()B
    .locals 3

    .prologue
    .line 52
    iget-object v0, p0, Lcom/duokan/airkan/common/video/VideoMetaData;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "resolution:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-byte v2, p0, Lcom/duokan/airkan/common/video/VideoMetaData;->mResolution:B

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/duokan/airkan/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    iget-byte v0, p0, Lcom/duokan/airkan/common/video/VideoMetaData;->mResolution:B

    return v0
.end method

.method public getSource()B
    .locals 1

    .prologue
    .line 72
    iget-byte v0, p0, Lcom/duokan/airkan/common/video/VideoMetaData;->mSource:B

    return v0
.end method

.method public getSpParameters()Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 191
    iget-object v0, p0, Lcom/duokan/airkan/common/video/VideoMetaData;->mSpParameters:Lorg/json/JSONObject;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 3

    .prologue
    .line 91
    iget-object v0, p0, Lcom/duokan/airkan/common/video/VideoMetaData;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "title:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/duokan/airkan/common/video/VideoMetaData;->mVideoBasicInfo:Lcom/duokan/airkan/common/video/VideoBasicInfo;

    iget-object v2, v2, Lcom/duokan/airkan/common/video/VideoBasicInfo;->title:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/duokan/airkan/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    iget-object v0, p0, Lcom/duokan/airkan/common/video/VideoMetaData;->mVideoBasicInfo:Lcom/duokan/airkan/common/video/VideoBasicInfo;

    iget-object v0, v0, Lcom/duokan/airkan/common/video/VideoBasicInfo;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getURL()Ljava/lang/String;
    .locals 4

    .prologue
    .line 109
    const/4 v0, 0x0

    .line 110
    .local v0, url:Ljava/lang/String;
    iget-object v1, p0, Lcom/duokan/airkan/common/video/VideoMetaData;->mVideoBasicInfo:Lcom/duokan/airkan/common/video/VideoBasicInfo;

    iget-object v1, v1, Lcom/duokan/airkan/common/video/VideoBasicInfo;->url:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 111
    iget-object v1, p0, Lcom/duokan/airkan/common/video/VideoMetaData;->mVideoBasicInfo:Lcom/duokan/airkan/common/video/VideoBasicInfo;

    iget-object v0, v1, Lcom/duokan/airkan/common/video/VideoBasicInfo;->url:Ljava/lang/String;

    .line 124
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/duokan/airkan/common/video/VideoMetaData;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "url:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/duokan/airkan/common/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    return-object v0

    .line 112
    :cond_1
    iget-object v1, p0, Lcom/duokan/airkan/common/video/VideoMetaData;->mVideoURLList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 113
    iget-byte v1, p0, Lcom/duokan/airkan/common/video/VideoMetaData;->mResolution:B

    invoke-virtual {p0, v1}, Lcom/duokan/airkan/common/video/VideoMetaData;->getUrlByResolution(B)Ljava/lang/String;

    move-result-object v0

    .line 114
    if-nez v0, :cond_0

    .line 115
    invoke-virtual {p0}, Lcom/duokan/airkan/common/video/VideoMetaData;->calcResolution()B

    .line 116
    iget-object v1, p0, Lcom/duokan/airkan/common/video/VideoMetaData;->TAG:Ljava/lang/String;

    const-string v2, "calc done"

    invoke-static {v1, v2}, Lcom/duokan/airkan/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    iget-byte v1, p0, Lcom/duokan/airkan/common/video/VideoMetaData;->mResolution:B

    invoke-virtual {p0, v1}, Lcom/duokan/airkan/common/video/VideoMetaData;->getUrlByResolution(B)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 119
    :cond_2
    iget-object v1, p0, Lcom/duokan/airkan/common/video/VideoMetaData;->mDuokanVideoInfo:Lcom/duokan/airkan/common/video/DuokanVideoInfo;

    iget-boolean v1, v1, Lcom/duokan/airkan/common/video/DuokanVideoInfo;->valid:Z

    if-nez v1, :cond_0

    .line 122
    iget-object v1, p0, Lcom/duokan/airkan/common/video/VideoMetaData;->TAG:Ljava/lang/String;

    const-string v2, "no valid url"

    invoke-static {v1, v2}, Lcom/duokan/airkan/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getUrlByResolution(B)Ljava/lang/String;
    .locals 4
    .parameter "resolution"

    .prologue
    .line 142
    const/4 v1, 0x0

    .line 143
    .local v1, url:Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v3, p0, Lcom/duokan/airkan/common/video/VideoMetaData;->mVideoURLList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 144
    iget-object v3, p0, Lcom/duokan/airkan/common/video/VideoMetaData;->mVideoURLList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/duokan/airkan/common/video/VideoURL;

    .line 145
    .local v2, vu:Lcom/duokan/airkan/common/video/VideoURL;
    iget-byte v3, v2, Lcom/duokan/airkan/common/video/VideoURL;->resolution:B

    if-ne p1, v3, :cond_0

    .line 146
    iget-byte p1, v2, Lcom/duokan/airkan/common/video/VideoURL;->resolution:B

    .line 147
    iget-object v1, v2, Lcom/duokan/airkan/common/video/VideoURL;->url:Ljava/lang/String;

    .line 143
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 150
    .end local v2           #vu:Lcom/duokan/airkan/common/video/VideoURL;
    :cond_1
    return-object v1
.end method

.method public getVideoBasicInfo()Lcom/duokan/airkan/common/video/VideoBasicInfo;
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lcom/duokan/airkan/common/video/VideoMetaData;->mVideoBasicInfo:Lcom/duokan/airkan/common/video/VideoBasicInfo;

    return-object v0
.end method

.method public getVideoUrlList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/duokan/airkan/common/video/VideoURL;",
            ">;"
        }
    .end annotation

    .prologue
    .line 171
    iget-object v0, p0, Lcom/duokan/airkan/common/video/VideoMetaData;->mVideoURLList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public setDeviceName(Ljava/lang/String;)V
    .locals 3
    .parameter "deviceName"

    .prologue
    .line 104
    iget-object v0, p0, Lcom/duokan/airkan/common/video/VideoMetaData;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "title:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/duokan/airkan/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    iget-object v0, p0, Lcom/duokan/airkan/common/video/VideoMetaData;->mVideoBasicInfo:Lcom/duokan/airkan/common/video/VideoBasicInfo;

    iput-object p1, v0, Lcom/duokan/airkan/common/video/VideoBasicInfo;->deviceName:Ljava/lang/String;

    .line 106
    return-void
.end method

.method public setDuokanVideoInfo(Lcom/duokan/airkan/common/video/DuokanVideoInfo;)V
    .locals 0
    .parameter "dvi"

    .prologue
    .line 184
    iput-object p1, p0, Lcom/duokan/airkan/common/video/VideoMetaData;->mDuokanVideoInfo:Lcom/duokan/airkan/common/video/DuokanVideoInfo;

    .line 185
    return-void
.end method

.method public setPlaylength(I)V
    .locals 3
    .parameter "playlength"

    .prologue
    .line 82
    iget-object v0, p0, Lcom/duokan/airkan/common/video/VideoMetaData;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "len:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/duokan/airkan/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    iget-object v0, p0, Lcom/duokan/airkan/common/video/VideoMetaData;->mVideoBasicInfo:Lcom/duokan/airkan/common/video/VideoBasicInfo;

    iput p1, v0, Lcom/duokan/airkan/common/video/VideoBasicInfo;->playlength:I

    .line 84
    return-void
.end method

.method public setResolution(B)V
    .locals 3
    .parameter "resolution"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/duokan/airkan/common/video/VideoMetaData;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "resolution:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/duokan/airkan/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    iput-byte p1, p0, Lcom/duokan/airkan/common/video/VideoMetaData;->mResolution:B

    .line 58
    return-void
.end method

.method public setSource(B)V
    .locals 0
    .parameter "source"

    .prologue
    .line 75
    iput-byte p1, p0, Lcom/duokan/airkan/common/video/VideoMetaData;->mSource:B

    .line 76
    return-void
.end method

.method public setSpParameters(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 1
    .parameter "parameters"

    .prologue
    .line 187
    iput-object p1, p0, Lcom/duokan/airkan/common/video/VideoMetaData;->mSpParameters:Lorg/json/JSONObject;

    .line 188
    iget-object v0, p0, Lcom/duokan/airkan/common/video/VideoMetaData;->mSpParameters:Lorg/json/JSONObject;

    return-object v0
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 3
    .parameter "title"

    .prologue
    .line 95
    iget-object v0, p0, Lcom/duokan/airkan/common/video/VideoMetaData;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "title:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/duokan/airkan/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    iget-object v0, p0, Lcom/duokan/airkan/common/video/VideoMetaData;->mVideoBasicInfo:Lcom/duokan/airkan/common/video/VideoBasicInfo;

    iput-object p1, v0, Lcom/duokan/airkan/common/video/VideoBasicInfo;->title:Ljava/lang/String;

    .line 97
    return-void
.end method

.method public setVideoBasicInfo(Lcom/duokan/airkan/common/video/VideoBasicInfo;)Lcom/duokan/airkan/common/video/VideoBasicInfo;
    .locals 0
    .parameter "vbi"

    .prologue
    .line 167
    iput-object p1, p0, Lcom/duokan/airkan/common/video/VideoMetaData;->mVideoBasicInfo:Lcom/duokan/airkan/common/video/VideoBasicInfo;

    .line 168
    return-object p1
.end method
