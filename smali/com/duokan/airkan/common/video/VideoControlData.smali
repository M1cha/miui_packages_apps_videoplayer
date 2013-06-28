.class public Lcom/duokan/airkan/common/video/VideoControlData;
.super Ljava/lang/Object;
.source "VideoControlData.java"


# instance fields
.field private TAG:Ljava/lang/String;

.field private duration:I

.field private pausing:Z

.field private playing:Z

.field private position:I

.field private resolution:B

.field private url:Ljava/lang/String;

.field private volume:B


# direct methods
.method public constructor <init>(B)V
    .locals 2
    .parameter "resolution"

    .prologue
    const/4 v1, 0x0

    .line 15
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 6
    const-string v0, "VCD"

    iput-object v0, p0, Lcom/duokan/airkan/common/video/VideoControlData;->TAG:Ljava/lang/String;

    .line 7
    iput-byte v1, p0, Lcom/duokan/airkan/common/video/VideoControlData;->resolution:B

    .line 8
    const/4 v0, -0x1

    iput v0, p0, Lcom/duokan/airkan/common/video/VideoControlData;->duration:I

    .line 9
    iput v1, p0, Lcom/duokan/airkan/common/video/VideoControlData;->position:I

    .line 10
    const/16 v0, 0xa

    iput-byte v0, p0, Lcom/duokan/airkan/common/video/VideoControlData;->volume:B

    .line 11
    iput-boolean v1, p0, Lcom/duokan/airkan/common/video/VideoControlData;->playing:Z

    .line 12
    iput-boolean v1, p0, Lcom/duokan/airkan/common/video/VideoControlData;->pausing:Z

    .line 16
    iput-byte p1, p0, Lcom/duokan/airkan/common/video/VideoControlData;->resolution:B

    .line 17
    return-void
.end method


# virtual methods
.method public getDuration()I
    .locals 3

    .prologue
    .line 29
    iget-object v0, p0, Lcom/duokan/airkan/common/video/VideoControlData;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "duration:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/duokan/airkan/common/video/VideoControlData;->duration:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/duokan/airkan/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    iget v0, p0, Lcom/duokan/airkan/common/video/VideoControlData;->duration:I

    return v0
.end method

.method public getPosition()I
    .locals 3

    .prologue
    .line 38
    iget-object v0, p0, Lcom/duokan/airkan/common/video/VideoControlData;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "position:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/duokan/airkan/common/video/VideoControlData;->position:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/duokan/airkan/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    iget v0, p0, Lcom/duokan/airkan/common/video/VideoControlData;->position:I

    return v0
.end method

.method public getResolution()B
    .locals 3

    .prologue
    .line 20
    iget-object v0, p0, Lcom/duokan/airkan/common/video/VideoControlData;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "resolution:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-byte v2, p0, Lcom/duokan/airkan/common/video/VideoControlData;->resolution:B

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/duokan/airkan/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    iget-byte v0, p0, Lcom/duokan/airkan/common/video/VideoControlData;->resolution:B

    return v0
.end method

.method public getURL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/duokan/airkan/common/video/VideoControlData;->url:Ljava/lang/String;

    return-object v0
.end method

.method public getVolume()B
    .locals 3

    .prologue
    .line 53
    iget-object v0, p0, Lcom/duokan/airkan/common/video/VideoControlData;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "volume:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-byte v2, p0, Lcom/duokan/airkan/common/video/VideoControlData;->volume:B

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/duokan/airkan/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    iget-byte v0, p0, Lcom/duokan/airkan/common/video/VideoControlData;->volume:B

    return v0
.end method

.method public isPlaying()Z
    .locals 1

    .prologue
    .line 62
    iget-boolean v0, p0, Lcom/duokan/airkan/common/video/VideoControlData;->playing:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/duokan/airkan/common/video/VideoControlData;->pausing:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public pausing()Z
    .locals 1

    .prologue
    .line 71
    iget-boolean v0, p0, Lcom/duokan/airkan/common/video/VideoControlData;->pausing:Z

    return v0
.end method

.method public playing()Z
    .locals 1

    .prologue
    .line 65
    iget-boolean v0, p0, Lcom/duokan/airkan/common/video/VideoControlData;->playing:Z

    return v0
.end method

.method public setDuration(I)V
    .locals 3
    .parameter "duration"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/duokan/airkan/common/video/VideoControlData;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setDuration:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/duokan/airkan/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    iput p1, p0, Lcom/duokan/airkan/common/video/VideoControlData;->duration:I

    .line 35
    return-void
.end method

.method public setPausing(Z)V
    .locals 0
    .parameter "pausing"

    .prologue
    .line 74
    iput-boolean p1, p0, Lcom/duokan/airkan/common/video/VideoControlData;->pausing:Z

    .line 75
    return-void
.end method

.method public setPlaying(Z)V
    .locals 0
    .parameter "playing"

    .prologue
    .line 68
    iput-boolean p1, p0, Lcom/duokan/airkan/common/video/VideoControlData;->playing:Z

    .line 69
    return-void
.end method

.method public setPosition(I)V
    .locals 3
    .parameter "position"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/duokan/airkan/common/video/VideoControlData;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setPosition:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/duokan/airkan/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    iput p1, p0, Lcom/duokan/airkan/common/video/VideoControlData;->position:I

    .line 44
    return-void
.end method

.method public setResolution(B)V
    .locals 3
    .parameter "resolution"

    .prologue
    .line 24
    iget-object v0, p0, Lcom/duokan/airkan/common/video/VideoControlData;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setResolution:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/duokan/airkan/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    iput-byte p1, p0, Lcom/duokan/airkan/common/video/VideoControlData;->resolution:B

    .line 26
    return-void
.end method

.method public setURL(Ljava/lang/String;)V
    .locals 0
    .parameter "url"

    .prologue
    .line 47
    iput-object p1, p0, Lcom/duokan/airkan/common/video/VideoControlData;->url:Ljava/lang/String;

    .line 48
    return-void
.end method

.method public setVolume(B)V
    .locals 3
    .parameter "volume"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/duokan/airkan/common/video/VideoControlData;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setVolume:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/duokan/airkan/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    iput-byte p1, p0, Lcom/duokan/airkan/common/video/VideoControlData;->volume:B

    .line 59
    return-void
.end method
