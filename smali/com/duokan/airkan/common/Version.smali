.class public Lcom/duokan/airkan/common/Version;
.super Ljava/lang/Object;
.source "Version.java"


# instance fields
.field private mText:Ljava/lang/String;

.field private mVersion:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 7
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/high16 v0, 0x100

    iput v0, p0, Lcom/duokan/airkan/common/Version;->mVersion:I

    .line 5
    const-string v0, "Airkan Protocol Version 1.0"

    iput-object v0, p0, Lcom/duokan/airkan/common/Version;->mText:Ljava/lang/String;

    .line 9
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 1
    .parameter "version"
    .parameter "text"

    .prologue
    .line 10
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/high16 v0, 0x100

    iput v0, p0, Lcom/duokan/airkan/common/Version;->mVersion:I

    .line 5
    const-string v0, "Airkan Protocol Version 1.0"

    iput-object v0, p0, Lcom/duokan/airkan/common/Version;->mText:Ljava/lang/String;

    .line 11
    iput p1, p0, Lcom/duokan/airkan/common/Version;->mVersion:I

    .line 12
    iput-object p2, p0, Lcom/duokan/airkan/common/Version;->mText:Ljava/lang/String;

    .line 13
    return-void
.end method


# virtual methods
.method public equal(Lcom/duokan/airkan/common/Version;)Z
    .locals 3
    .parameter "version"

    .prologue
    const/4 v0, 0x0

    .line 27
    if-nez p1, :cond_1

    .line 32
    :cond_0
    :goto_0
    return v0

    .line 29
    :cond_1
    iget v1, p0, Lcom/duokan/airkan/common/Version;->mVersion:I

    invoke-virtual {p1}, Lcom/duokan/airkan/common/Version;->getVersion()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 30
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/duokan/airkan/common/Version;->mText:Ljava/lang/String;

    return-object v0
.end method

.method public getVersion()I
    .locals 1

    .prologue
    .line 18
    iget v0, p0, Lcom/duokan/airkan/common/Version;->mVersion:I

    return v0
.end method

.method public greater(Lcom/duokan/airkan/common/Version;)Z
    .locals 3
    .parameter "version"

    .prologue
    const/4 v0, 0x0

    .line 36
    if-nez p1, :cond_1

    .line 41
    :cond_0
    :goto_0
    return v0

    .line 38
    :cond_1
    iget v1, p0, Lcom/duokan/airkan/common/Version;->mVersion:I

    invoke-virtual {p1}, Lcom/duokan/airkan/common/Version;->getVersion()I

    move-result v2

    if-le v1, v2, :cond_0

    .line 39
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setText(Ljava/lang/String;)V
    .locals 0
    .parameter "text"

    .prologue
    .line 21
    iput-object p1, p0, Lcom/duokan/airkan/common/Version;->mText:Ljava/lang/String;

    .line 22
    return-void
.end method

.method public setVersion(I)V
    .locals 0
    .parameter "version"

    .prologue
    .line 15
    iput p1, p0, Lcom/duokan/airkan/common/Version;->mVersion:I

    .line 16
    return-void
.end method
