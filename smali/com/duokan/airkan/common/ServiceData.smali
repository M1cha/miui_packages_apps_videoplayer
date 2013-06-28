.class public Lcom/duokan/airkan/common/ServiceData;
.super Ljava/lang/Object;
.source "ServiceData.java"


# static fields
.field public static final KBTSpeaker:Ljava/lang/String; = "BTSpeaker"

.field private static TAG:Ljava/lang/String;


# instance fields
.field public displayName:Ljava/lang/String;

.field public extraText:Ljava/lang/String;

.field public ip:[Ljava/lang/String;

.field public name:Ljava/lang/String;

.field public port:I

.field public type:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 7
    const-string v0, "ServiceData"

    sput-object v0, Lcom/duokan/airkan/common/ServiceData;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 16
    return-void
.end method

.method public constructor <init>(Lcom/duokan/airkan/common/ServiceData;)V
    .locals 1
    .parameter "serviceData"

    .prologue
    .line 30
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iget-object v0, p1, Lcom/duokan/airkan/common/ServiceData;->name:Ljava/lang/String;

    iput-object v0, p0, Lcom/duokan/airkan/common/ServiceData;->name:Ljava/lang/String;

    .line 32
    iget-object v0, p1, Lcom/duokan/airkan/common/ServiceData;->type:Ljava/lang/String;

    iput-object v0, p0, Lcom/duokan/airkan/common/ServiceData;->type:Ljava/lang/String;

    .line 33
    iget v0, p1, Lcom/duokan/airkan/common/ServiceData;->port:I

    iput v0, p0, Lcom/duokan/airkan/common/ServiceData;->port:I

    .line 34
    iget-object v0, p1, Lcom/duokan/airkan/common/ServiceData;->ip:[Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 35
    iget-object v0, p1, Lcom/duokan/airkan/common/ServiceData;->ip:[Ljava/lang/String;

    invoke-virtual {v0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/duokan/airkan/common/ServiceData;->ip:[Ljava/lang/String;

    .line 36
    :cond_0
    iget-object v0, p1, Lcom/duokan/airkan/common/ServiceData;->displayName:Ljava/lang/String;

    iput-object v0, p0, Lcom/duokan/airkan/common/ServiceData;->displayName:Ljava/lang/String;

    .line 37
    iget-object v0, p1, Lcom/duokan/airkan/common/ServiceData;->extraText:Ljava/lang/String;

    iput-object v0, p0, Lcom/duokan/airkan/common/ServiceData;->extraText:Ljava/lang/String;

    .line 38
    return-void
.end method

.method public constructor <init>(Lcom/duokan/airkan/common/aidl/ParcelService;)V
    .locals 1
    .parameter "parcelService"

    .prologue
    .line 18
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iget-object v0, p1, Lcom/duokan/airkan/common/aidl/ParcelService;->name:Ljava/lang/String;

    iput-object v0, p0, Lcom/duokan/airkan/common/ServiceData;->name:Ljava/lang/String;

    .line 20
    iget-object v0, p1, Lcom/duokan/airkan/common/aidl/ParcelService;->type:Ljava/lang/String;

    iput-object v0, p0, Lcom/duokan/airkan/common/ServiceData;->type:Ljava/lang/String;

    .line 21
    iget v0, p1, Lcom/duokan/airkan/common/aidl/ParcelService;->port:I

    iput v0, p0, Lcom/duokan/airkan/common/ServiceData;->port:I

    .line 22
    iget-object v0, p1, Lcom/duokan/airkan/common/aidl/ParcelService;->ip:[Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 23
    iget-object v0, p1, Lcom/duokan/airkan/common/aidl/ParcelService;->ip:[Ljava/lang/String;

    invoke-virtual {v0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/duokan/airkan/common/ServiceData;->ip:[Ljava/lang/String;

    .line 26
    :goto_0
    iget-object v0, p0, Lcom/duokan/airkan/common/ServiceData;->name:Ljava/lang/String;

    iput-object v0, p0, Lcom/duokan/airkan/common/ServiceData;->displayName:Ljava/lang/String;

    .line 27
    iget-object v0, p1, Lcom/duokan/airkan/common/aidl/ParcelService;->extraText:Ljava/lang/String;

    iput-object v0, p0, Lcom/duokan/airkan/common/ServiceData;->extraText:Ljava/lang/String;

    .line 28
    return-void

    .line 25
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/duokan/airkan/common/ServiceData;->ip:[Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public equals(Lcom/duokan/airkan/common/ServiceData;)Z
    .locals 5
    .parameter "srv"

    .prologue
    .line 46
    invoke-virtual {p0}, Lcom/duokan/airkan/common/ServiceData;->hash()I

    move-result v0

    .line 47
    .local v0, hash:I
    invoke-virtual {p1}, Lcom/duokan/airkan/common/ServiceData;->hash()I

    move-result v1

    .line 48
    .local v1, srvhash:I
    sget-object v2, Lcom/duokan/airkan/common/ServiceData;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "source hash:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " dest hash:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/duokan/airkan/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    if-ne v0, v1, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public equalsIgnoreIP(Lcom/duokan/airkan/common/ServiceData;)Z
    .locals 5
    .parameter "srv"

    .prologue
    .line 40
    invoke-virtual {p0}, Lcom/duokan/airkan/common/ServiceData;->hashWithoutIP()I

    move-result v0

    .line 41
    .local v0, hash:I
    invoke-virtual {p1}, Lcom/duokan/airkan/common/ServiceData;->hashWithoutIP()I

    move-result v1

    .line 42
    .local v1, srvhash:I
    sget-object v2, Lcom/duokan/airkan/common/ServiceData;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ignore ip, source hash:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " dest hash:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/duokan/airkan/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    if-ne v0, v1, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getIP()Ljava/lang/String;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 67
    iget-object v1, p0, Lcom/duokan/airkan/common/ServiceData;->ip:[Ljava/lang/String;

    if-nez v1, :cond_1

    .line 72
    :cond_0
    :goto_0
    return-object v0

    .line 69
    :cond_1
    iget-object v1, p0, Lcom/duokan/airkan/common/ServiceData;->ip:[Ljava/lang/String;

    array-length v1, v1

    if-lez v1, :cond_0

    .line 70
    iget-object v0, p0, Lcom/duokan/airkan/common/ServiceData;->ip:[Ljava/lang/String;

    iget-object v1, p0, Lcom/duokan/airkan/common/ServiceData;->ip:[Ljava/lang/String;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    goto :goto_0
.end method

.method public hash()I
    .locals 5

    .prologue
    .line 53
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/duokan/airkan/common/ServiceData;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/duokan/airkan/common/ServiceData;->type:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/duokan/airkan/common/ServiceData;->port:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/duokan/airkan/common/ServiceData;->getIP()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/duokan/airkan/common/ServiceData;->extraText:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 54
    .local v1, value:Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 55
    .local v0, hash:I
    sget-object v2, Lcom/duokan/airkan/common/ServiceData;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "hash:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " fulltext:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/duokan/airkan/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    return v0
.end method

.method public hashWithoutIP()I
    .locals 5

    .prologue
    .line 60
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/duokan/airkan/common/ServiceData;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/duokan/airkan/common/ServiceData;->type:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/duokan/airkan/common/ServiceData;->port:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 61
    .local v1, value:Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 62
    .local v0, hash:I
    sget-object v2, Lcom/duokan/airkan/common/ServiceData;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "hash:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " without ip:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/duokan/airkan/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    return v0
.end method
