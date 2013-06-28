.class public Lcom/miui/videoplayer/framework/history/PlayHistoryManager$PlayHistoryEntry;
.super Ljava/lang/Object;
.source "PlayHistoryManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/videoplayer/framework/history/PlayHistoryManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PlayHistoryEntry"
.end annotation


# instance fields
.field private mDatePlayInfoJsonObject:Lorg/json/JSONObject;

.field private mHtml5Page:Ljava/lang/String;

.field private mInBox:Ljava/lang/String;

.field private mIssueDate:Ljava/lang/String;

.field private mMediaCi:Ljava/lang/String;

.field private mMediaId:Ljava/lang/String;

.field private mMediaSetType:Ljava/lang/String;

.field private mPlayParameter:Ljava/lang/String;

.field private mPlaySource:Ljava/lang/String;

.field private mPosition:I

.field private mQuality:Ljava/lang/String;

.field private mTimeStamp:J

.field private mUri:Ljava/lang/String;

.field private mVideoName:Ljava/lang/String;

.field private mVideoRepoRequest:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "uri"

    .prologue
    .line 381
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 313
    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/videoplayer/framework/history/PlayHistoryManager$PlayHistoryEntry;->mPosition:I

    .line 382
    iput-object p1, p0, Lcom/miui/videoplayer/framework/history/PlayHistoryManager$PlayHistoryEntry;->mUri:Ljava/lang/String;

    .line 383
    return-void
.end method


# virtual methods
.method public getDatePlayInfoJsonObject()Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 470
    iget-object v0, p0, Lcom/miui/videoplayer/framework/history/PlayHistoryManager$PlayHistoryEntry;->mDatePlayInfoJsonObject:Lorg/json/JSONObject;

    return-object v0
.end method

.method public getHtml5Page()Ljava/lang/String;
    .locals 1

    .prologue
    .line 438
    iget-object v0, p0, Lcom/miui/videoplayer/framework/history/PlayHistoryManager$PlayHistoryEntry;->mHtml5Page:Ljava/lang/String;

    return-object v0
.end method

.method public getInBox()Ljava/lang/String;
    .locals 1

    .prologue
    .line 349
    iget-object v0, p0, Lcom/miui/videoplayer/framework/history/PlayHistoryManager$PlayHistoryEntry;->mInBox:Ljava/lang/String;

    return-object v0
.end method

.method public getIssueDate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 357
    iget-object v0, p0, Lcom/miui/videoplayer/framework/history/PlayHistoryManager$PlayHistoryEntry;->mIssueDate:Ljava/lang/String;

    return-object v0
.end method

.method public getMediaCi()Ljava/lang/String;
    .locals 1

    .prologue
    .line 406
    iget-object v0, p0, Lcom/miui/videoplayer/framework/history/PlayHistoryManager$PlayHistoryEntry;->mMediaCi:Ljava/lang/String;

    return-object v0
.end method

.method public getMediaId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 398
    iget-object v0, p0, Lcom/miui/videoplayer/framework/history/PlayHistoryManager$PlayHistoryEntry;->mMediaId:Ljava/lang/String;

    return-object v0
.end method

.method public getMediaSetType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 341
    iget-object v0, p0, Lcom/miui/videoplayer/framework/history/PlayHistoryManager$PlayHistoryEntry;->mMediaSetType:Ljava/lang/String;

    return-object v0
.end method

.method public getPlayParameter()Ljava/lang/String;
    .locals 1

    .prologue
    .line 365
    iget-object v0, p0, Lcom/miui/videoplayer/framework/history/PlayHistoryManager$PlayHistoryEntry;->mPlayParameter:Ljava/lang/String;

    return-object v0
.end method

.method public getPlaySource()Ljava/lang/String;
    .locals 1

    .prologue
    .line 414
    iget-object v0, p0, Lcom/miui/videoplayer/framework/history/PlayHistoryManager$PlayHistoryEntry;->mPlaySource:Ljava/lang/String;

    return-object v0
.end method

.method public getPosition()I
    .locals 1

    .prologue
    .line 394
    iget v0, p0, Lcom/miui/videoplayer/framework/history/PlayHistoryManager$PlayHistoryEntry;->mPosition:I

    return v0
.end method

.method public getQuality()Ljava/lang/String;
    .locals 1

    .prologue
    .line 430
    iget-object v0, p0, Lcom/miui/videoplayer/framework/history/PlayHistoryManager$PlayHistoryEntry;->mQuality:Ljava/lang/String;

    return-object v0
.end method

.method public getTimeStamp()J
    .locals 2

    .prologue
    .line 373
    iget-wide v0, p0, Lcom/miui/videoplayer/framework/history/PlayHistoryManager$PlayHistoryEntry;->mTimeStamp:J

    return-wide v0
.end method

.method public getUri()Ljava/lang/String;
    .locals 1

    .prologue
    .line 390
    iget-object v0, p0, Lcom/miui/videoplayer/framework/history/PlayHistoryManager$PlayHistoryEntry;->mUri:Ljava/lang/String;

    return-object v0
.end method

.method public getVideoName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 422
    iget-object v0, p0, Lcom/miui/videoplayer/framework/history/PlayHistoryManager$PlayHistoryEntry;->mVideoName:Ljava/lang/String;

    return-object v0
.end method

.method public getVideoRepoRequest()Ljava/lang/String;
    .locals 1

    .prologue
    .line 446
    iget-object v0, p0, Lcom/miui/videoplayer/framework/history/PlayHistoryManager$PlayHistoryEntry;->mVideoRepoRequest:Ljava/lang/String;

    return-object v0
.end method

.method public setDatePlayInfoJsonObject(Lorg/json/JSONObject;)V
    .locals 0
    .parameter "datePlayInfoJsonObject"

    .prologue
    .line 474
    iput-object p1, p0, Lcom/miui/videoplayer/framework/history/PlayHistoryManager$PlayHistoryEntry;->mDatePlayInfoJsonObject:Lorg/json/JSONObject;

    .line 475
    return-void
.end method

.method public setHtml5Page(Ljava/lang/String;)V
    .locals 0
    .parameter "html5Page"

    .prologue
    .line 442
    iput-object p1, p0, Lcom/miui/videoplayer/framework/history/PlayHistoryManager$PlayHistoryEntry;->mHtml5Page:Ljava/lang/String;

    .line 443
    return-void
.end method

.method public setInBox(Ljava/lang/String;)V
    .locals 0
    .parameter "inBox"

    .prologue
    .line 353
    iput-object p1, p0, Lcom/miui/videoplayer/framework/history/PlayHistoryManager$PlayHistoryEntry;->mInBox:Ljava/lang/String;

    .line 354
    return-void
.end method

.method public setIssueDate(Ljava/lang/String;)V
    .locals 0
    .parameter "issueDate"

    .prologue
    .line 361
    iput-object p1, p0, Lcom/miui/videoplayer/framework/history/PlayHistoryManager$PlayHistoryEntry;->mIssueDate:Ljava/lang/String;

    .line 362
    return-void
.end method

.method public setMediaCi(Ljava/lang/String;)V
    .locals 0
    .parameter "mediaCi"

    .prologue
    .line 410
    iput-object p1, p0, Lcom/miui/videoplayer/framework/history/PlayHistoryManager$PlayHistoryEntry;->mMediaCi:Ljava/lang/String;

    .line 411
    return-void
.end method

.method public setMediaId(Ljava/lang/String;)V
    .locals 0
    .parameter "mediaId"

    .prologue
    .line 402
    iput-object p1, p0, Lcom/miui/videoplayer/framework/history/PlayHistoryManager$PlayHistoryEntry;->mMediaId:Ljava/lang/String;

    .line 403
    return-void
.end method

.method public setMediaSetType(Ljava/lang/String;)V
    .locals 0
    .parameter "mediaSetType"

    .prologue
    .line 345
    iput-object p1, p0, Lcom/miui/videoplayer/framework/history/PlayHistoryManager$PlayHistoryEntry;->mMediaSetType:Ljava/lang/String;

    .line 346
    return-void
.end method

.method public setPlayParameter(Ljava/lang/String;)V
    .locals 0
    .parameter "playParameter"

    .prologue
    .line 369
    iput-object p1, p0, Lcom/miui/videoplayer/framework/history/PlayHistoryManager$PlayHistoryEntry;->mPlayParameter:Ljava/lang/String;

    .line 370
    return-void
.end method

.method public setPlaySource(Ljava/lang/String;)V
    .locals 0
    .parameter "playSource"

    .prologue
    .line 418
    iput-object p1, p0, Lcom/miui/videoplayer/framework/history/PlayHistoryManager$PlayHistoryEntry;->mPlaySource:Ljava/lang/String;

    .line 419
    return-void
.end method

.method public setPosition(I)V
    .locals 0
    .parameter "position"

    .prologue
    .line 387
    iput p1, p0, Lcom/miui/videoplayer/framework/history/PlayHistoryManager$PlayHistoryEntry;->mPosition:I

    .line 388
    return-void
.end method

.method public setQuality(Ljava/lang/String;)V
    .locals 0
    .parameter "quality"

    .prologue
    .line 434
    iput-object p1, p0, Lcom/miui/videoplayer/framework/history/PlayHistoryManager$PlayHistoryEntry;->mQuality:Ljava/lang/String;

    .line 435
    return-void
.end method

.method public setTimeStamp(J)V
    .locals 0
    .parameter "timeStamp"

    .prologue
    .line 378
    iput-wide p1, p0, Lcom/miui/videoplayer/framework/history/PlayHistoryManager$PlayHistoryEntry;->mTimeStamp:J

    .line 379
    return-void
.end method

.method public setVideoName(Ljava/lang/String;)V
    .locals 0
    .parameter "videoName"

    .prologue
    .line 426
    iput-object p1, p0, Lcom/miui/videoplayer/framework/history/PlayHistoryManager$PlayHistoryEntry;->mVideoName:Ljava/lang/String;

    .line 427
    return-void
.end method

.method public setVideoRepoRequest(Ljava/lang/String;)V
    .locals 0
    .parameter "videoRepoRequest"

    .prologue
    .line 450
    iput-object p1, p0, Lcom/miui/videoplayer/framework/history/PlayHistoryManager$PlayHistoryEntry;->mVideoRepoRequest:Ljava/lang/String;

    .line 451
    return-void
.end method
