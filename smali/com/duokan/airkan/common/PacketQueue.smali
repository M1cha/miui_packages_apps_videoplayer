.class public Lcom/duokan/airkan/common/PacketQueue;
.super Ljava/lang/Object;
.source "PacketQueue.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "AirkanCliThd-SQ"


# instance fields
.field private sendqueue:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Lcom/duokan/airkan/common/BufferData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .parameter "size"

    .prologue
    .line 14
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 12
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/duokan/airkan/common/PacketQueue;->sendqueue:Ljava/util/concurrent/BlockingQueue;

    .line 15
    new-instance v0, Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-direct {v0, p1}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    iput-object v0, p0, Lcom/duokan/airkan/common/PacketQueue;->sendqueue:Ljava/util/concurrent/BlockingQueue;

    .line 16
    return-void
.end method


# virtual methods
.method public addToQueue(B[BI)I
    .locals 7
    .parameter "type"
    .parameter "buff"
    .parameter "timeout"

    .prologue
    const/4 v3, -0x1

    .line 19
    new-instance v0, Lcom/duokan/airkan/common/BufferData;

    invoke-direct {v0}, Lcom/duokan/airkan/common/BufferData;-><init>()V

    .line 21
    .local v0, data:Lcom/duokan/airkan/common/BufferData;
    iput p1, v0, Lcom/duokan/airkan/common/BufferData;->type:I

    .line 22
    invoke-virtual {p2}, [B->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    iput-object v2, v0, Lcom/duokan/airkan/common/BufferData;->data:[B

    .line 25
    :try_start_0
    iget-object v2, p0, Lcom/duokan/airkan/common/PacketQueue;->sendqueue:Ljava/util/concurrent/BlockingQueue;

    int-to-long v4, p3

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v2, v0, v4, v5, v6}, Ljava/util/concurrent/BlockingQueue;->offer(Ljava/lang/Object;JLjava/util/concurrent/TimeUnit;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 26
    const-string v2, "AirkanCliThd-SQ"

    const-string v4, "put data into fail."

    invoke-static {v2, v4}, Lcom/duokan/airkan/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    move v2, v3

    .line 36
    :goto_0
    return v2

    .line 30
    :catch_0
    move-exception v1

    .line 31
    .local v1, e:Ljava/lang/InterruptedException;
    const-string v2, "AirkanCliThd-SQ"

    const-string v4, "put to queue failed"

    invoke-static {v2, v4}, Lcom/duokan/airkan/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    move v2, v3

    .line 33
    goto :goto_0

    .line 36
    .end local v1           #e:Ljava/lang/InterruptedException;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/duokan/airkan/common/PacketQueue;->sendqueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->clear()V

    .line 59
    return-void
.end method

.method public fetchFromQueue(I)Lcom/duokan/airkan/common/BufferData;
    .locals 8
    .parameter "timeout"

    .prologue
    const/4 v4, 0x0

    .line 40
    const/4 v1, 0x0

    .line 43
    .local v1, data:Lcom/duokan/airkan/common/BufferData;
    :try_start_0
    iget-object v3, p0, Lcom/duokan/airkan/common/PacketQueue;->sendqueue:Ljava/util/concurrent/BlockingQueue;

    int-to-long v5, p1

    sget-object v7, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v3, v5, v6, v7}, Ljava/util/concurrent/BlockingQueue;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/duokan/airkan/common/BufferData;

    move-object v1, v0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 44
    if-nez v1, :cond_0

    move-object v3, v4

    .line 54
    :goto_0
    return-object v3

    .line 48
    :catch_0
    move-exception v2

    .line 49
    .local v2, e:Ljava/lang/InterruptedException;
    const-string v3, "AirkanCliThd-SQ"

    const-string v5, "put to queue failed"

    invoke-static {v3, v5}, Lcom/duokan/airkan/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    invoke-virtual {v2}, Ljava/lang/InterruptedException;->printStackTrace()V

    move-object v3, v4

    .line 51
    goto :goto_0

    .end local v2           #e:Ljava/lang/InterruptedException;
    :cond_0
    move-object v3, v1

    .line 54
    goto :goto_0
.end method
