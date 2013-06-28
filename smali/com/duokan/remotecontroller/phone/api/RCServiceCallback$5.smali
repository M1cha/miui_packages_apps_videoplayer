.class Lcom/duokan/remotecontroller/phone/api/RCServiceCallback$5;
.super Ljava/lang/Object;
.source "RCServiceCallback.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/duokan/remotecontroller/phone/api/RCServiceCallback;->inform(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/duokan/remotecontroller/phone/api/RCServiceCallback;

.field final synthetic val$message:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/duokan/remotecontroller/phone/api/RCServiceCallback;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 146
    iput-object p1, p0, Lcom/duokan/remotecontroller/phone/api/RCServiceCallback$5;->this$0:Lcom/duokan/remotecontroller/phone/api/RCServiceCallback;

    iput-object p2, p0, Lcom/duokan/remotecontroller/phone/api/RCServiceCallback$5;->val$message:Ljava/lang/String;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 149
    iget-object v1, p0, Lcom/duokan/remotecontroller/phone/api/RCServiceCallback$5;->this$0:Lcom/duokan/remotecontroller/phone/api/RCServiceCallback;

    #getter for: Lcom/duokan/remotecontroller/phone/api/RCServiceCallback;->mRCManager:Lcom/duokan/remotecontroller/phone/api/RCManager;
    invoke-static {v1}, Lcom/duokan/remotecontroller/phone/api/RCServiceCallback;->access$000(Lcom/duokan/remotecontroller/phone/api/RCServiceCallback;)Lcom/duokan/remotecontroller/phone/api/RCManager;

    move-result-object v1

    if-nez v1, :cond_0

    .line 150
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Video Manager is not available - "

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 151
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

    .line 155
    .end local v0           #ex:Ljava/lang/Exception;
    :goto_0
    return-void

    .line 154
    :cond_0
    iget-object v1, p0, Lcom/duokan/remotecontroller/phone/api/RCServiceCallback$5;->this$0:Lcom/duokan/remotecontroller/phone/api/RCServiceCallback;

    #getter for: Lcom/duokan/remotecontroller/phone/api/RCServiceCallback;->mRCManager:Lcom/duokan/remotecontroller/phone/api/RCManager;
    invoke-static {v1}, Lcom/duokan/remotecontroller/phone/api/RCServiceCallback;->access$000(Lcom/duokan/remotecontroller/phone/api/RCServiceCallback;)Lcom/duokan/remotecontroller/phone/api/RCManager;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RemoteError: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/duokan/remotecontroller/phone/api/RCServiceCallback$5;->val$message:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/duokan/remotecontroller/phone/api/RCManager;->error(Ljava/lang/String;)V

    goto :goto_0
.end method
