.class Lcom/duokan/airkan/phone/api/VideoServiceCallback$5;
.super Ljava/lang/Object;
.source "VideoServiceCallback.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/duokan/airkan/phone/api/VideoServiceCallback;->onDisconnected()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/duokan/airkan/phone/api/VideoServiceCallback;


# direct methods
.method constructor <init>(Lcom/duokan/airkan/phone/api/VideoServiceCallback;)V
    .locals 0
    .parameter

    .prologue
    .line 185
    iput-object p1, p0, Lcom/duokan/airkan/phone/api/VideoServiceCallback$5;->this$0:Lcom/duokan/airkan/phone/api/VideoServiceCallback;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 188
    iget-object v1, p0, Lcom/duokan/airkan/phone/api/VideoServiceCallback$5;->this$0:Lcom/duokan/airkan/phone/api/VideoServiceCallback;

    #getter for: Lcom/duokan/airkan/phone/api/VideoServiceCallback;->mVideoManager:Lcom/duokan/airkan/phone/api/VideoManager;
    invoke-static {v1}, Lcom/duokan/airkan/phone/api/VideoServiceCallback;->access$000(Lcom/duokan/airkan/phone/api/VideoServiceCallback;)Lcom/duokan/airkan/phone/api/VideoManager;

    move-result-object v1

    if-nez v1, :cond_0

    .line 189
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Video Manager is not available - "

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 190
    .local v0, ex:Ljava/lang/Exception;
    const-string v1, "VSC"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v3

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/duokan/airkan/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    .end local v0           #ex:Ljava/lang/Exception;
    :goto_0
    return-void

    .line 193
    :cond_0
    iget-object v1, p0, Lcom/duokan/airkan/phone/api/VideoServiceCallback$5;->this$0:Lcom/duokan/airkan/phone/api/VideoServiceCallback;

    #getter for: Lcom/duokan/airkan/phone/api/VideoServiceCallback;->mVideoManager:Lcom/duokan/airkan/phone/api/VideoManager;
    invoke-static {v1}, Lcom/duokan/airkan/phone/api/VideoServiceCallback;->access$000(Lcom/duokan/airkan/phone/api/VideoServiceCallback;)Lcom/duokan/airkan/phone/api/VideoManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/duokan/airkan/phone/api/VideoManager;->onDisconnected()V

    goto :goto_0
.end method
