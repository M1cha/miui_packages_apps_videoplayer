.class Lcom/duokan/airkan/phone/api/VideoServiceCallback$7;
.super Ljava/lang/Object;
.source "VideoServiceCallback.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/duokan/airkan/phone/api/VideoServiceCallback;->onNetworkCongestion()V
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
    .line 217
    iput-object p1, p0, Lcom/duokan/airkan/phone/api/VideoServiceCallback$7;->this$0:Lcom/duokan/airkan/phone/api/VideoServiceCallback;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 220
    iget-object v2, p0, Lcom/duokan/airkan/phone/api/VideoServiceCallback$7;->this$0:Lcom/duokan/airkan/phone/api/VideoServiceCallback;

    #getter for: Lcom/duokan/airkan/phone/api/VideoServiceCallback;->mVideoManager:Lcom/duokan/airkan/phone/api/VideoManager;
    invoke-static {v2}, Lcom/duokan/airkan/phone/api/VideoServiceCallback;->access$000(Lcom/duokan/airkan/phone/api/VideoServiceCallback;)Lcom/duokan/airkan/phone/api/VideoManager;

    move-result-object v2

    if-nez v2, :cond_0

    .line 221
    new-instance v1, Ljava/lang/Exception;

    const-string v2, "Video Manager is not available - "

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 222
    .local v1, ex:Ljava/lang/Exception;
    const-string v2, "VSC"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v4

    const/4 v5, 0x0

    aget-object v4, v4, v5

    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/duokan/airkan/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    .end local v1           #ex:Ljava/lang/Exception;
    :goto_0
    return-void

    .line 226
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/duokan/airkan/phone/api/VideoServiceCallback$7;->this$0:Lcom/duokan/airkan/phone/api/VideoServiceCallback;

    #getter for: Lcom/duokan/airkan/phone/api/VideoServiceCallback;->mVideoManager:Lcom/duokan/airkan/phone/api/VideoManager;
    invoke-static {v2}, Lcom/duokan/airkan/phone/api/VideoServiceCallback;->access$000(Lcom/duokan/airkan/phone/api/VideoServiceCallback;)Lcom/duokan/airkan/phone/api/VideoManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/duokan/airkan/phone/api/VideoManager;->closeHttpSession()V
    :try_end_0
    .catch Lcom/duokan/airkan/common/AirkanException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 227
    :catch_0
    move-exception v0

    .line 228
    .local v0, e:Lcom/duokan/airkan/common/AirkanException;
    invoke-virtual {v0}, Lcom/duokan/airkan/common/AirkanException;->printStackTrace()V

    goto :goto_0
.end method
