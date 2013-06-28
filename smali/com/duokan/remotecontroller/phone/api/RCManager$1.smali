.class Lcom/duokan/remotecontroller/phone/api/RCManager$1;
.super Ljava/lang/Object;
.source "RCManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/duokan/remotecontroller/phone/api/RCManager;->sendKey(Landroid/view/KeyEvent;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/duokan/remotecontroller/phone/api/RCManager;

.field final synthetic val$extra:Ljava/lang/String;

.field final synthetic val$keyEvent:Landroid/view/KeyEvent;

.field final synthetic val$myService:Lcom/duokan/remotecontroller/phone/aidl/IRCClientService;


# direct methods
.method constructor <init>(Lcom/duokan/remotecontroller/phone/api/RCManager;Landroid/view/KeyEvent;Ljava/lang/String;Lcom/duokan/remotecontroller/phone/aidl/IRCClientService;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 175
    iput-object p1, p0, Lcom/duokan/remotecontroller/phone/api/RCManager$1;->this$0:Lcom/duokan/remotecontroller/phone/api/RCManager;

    iput-object p2, p0, Lcom/duokan/remotecontroller/phone/api/RCManager$1;->val$keyEvent:Landroid/view/KeyEvent;

    iput-object p3, p0, Lcom/duokan/remotecontroller/phone/api/RCManager$1;->val$extra:Ljava/lang/String;

    iput-object p4, p0, Lcom/duokan/remotecontroller/phone/api/RCManager$1;->val$myService:Lcom/duokan/remotecontroller/phone/aidl/IRCClientService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 178
    const-string v2, "RCManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "to send key - "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v1, p0, Lcom/duokan/remotecontroller/phone/api/RCManager$1;->val$keyEvent:Landroid/view/KeyEvent;

    if-nez v1, :cond_0

    const-string v1, "null"

    :goto_0
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/duokan/airkan/common/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    const-string v1, "RCManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "to send extra - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/duokan/remotecontroller/phone/api/RCManager$1;->val$extra:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/duokan/airkan/common/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    :try_start_0
    iget-object v1, p0, Lcom/duokan/remotecontroller/phone/api/RCManager$1;->val$myService:Lcom/duokan/remotecontroller/phone/aidl/IRCClientService;

    iget-object v2, p0, Lcom/duokan/remotecontroller/phone/api/RCManager$1;->this$0:Lcom/duokan/remotecontroller/phone/api/RCManager;

    iget v2, v2, Lcom/duokan/remotecontroller/phone/api/ConnectionManager;->mServiceHandle:I

    iget-object v3, p0, Lcom/duokan/remotecontroller/phone/api/RCManager$1;->val$keyEvent:Landroid/view/KeyEvent;

    iget-object v4, p0, Lcom/duokan/remotecontroller/phone/api/RCManager$1;->val$extra:Ljava/lang/String;

    invoke-interface {v1, v2, v3, v4}, Lcom/duokan/remotecontroller/phone/aidl/IRCClientService;->sendKey(ILandroid/view/KeyEvent;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 187
    :goto_1
    return-void

    .line 178
    :cond_0
    iget-object v1, p0, Lcom/duokan/remotecontroller/phone/api/RCManager$1;->val$keyEvent:Landroid/view/KeyEvent;

    invoke-virtual {v1}, Landroid/view/KeyEvent;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 182
    :catch_0
    move-exception v0

    .line 183
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "RCManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendKey error"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/duokan/airkan/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 184
    .end local v0           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 185
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "RCManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendKey error"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/duokan/airkan/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method
