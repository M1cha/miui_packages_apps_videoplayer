.class public Lcom/duokan/remotecontroller/phone/api/RCServiceCallback;
.super Lcom/duokan/remotecontroller/phone/aidl/IRCServiceCallback$Stub;
.source "RCServiceCallback.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "VSC"


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mIsAuthPassed:Z

.field private mRCManager:Lcom/duokan/remotecontroller/phone/api/RCManager;

.field private mServiceHandle:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 11
    invoke-direct {p0}, Lcom/duokan/remotecontroller/phone/aidl/IRCServiceCallback$Stub;-><init>()V

    .line 13
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/duokan/remotecontroller/phone/api/RCServiceCallback;->mHandler:Landroid/os/Handler;

    .line 14
    iput v1, p0, Lcom/duokan/remotecontroller/phone/api/RCServiceCallback;->mServiceHandle:I

    .line 15
    iput-boolean v1, p0, Lcom/duokan/remotecontroller/phone/api/RCServiceCallback;->mIsAuthPassed:Z

    .line 16
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/duokan/remotecontroller/phone/api/RCServiceCallback;->mRCManager:Lcom/duokan/remotecontroller/phone/api/RCManager;

    return-void
.end method

.method static synthetic access$000(Lcom/duokan/remotecontroller/phone/api/RCServiceCallback;)Lcom/duokan/remotecontroller/phone/api/RCManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 11
    iget-object v0, p0, Lcom/duokan/remotecontroller/phone/api/RCServiceCallback;->mRCManager:Lcom/duokan/remotecontroller/phone/api/RCManager;

    return-object v0
.end method


# virtual methods
.method public inform(Ljava/lang/String;)V
    .locals 3
    .parameter "message"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 145
    const-string v0, "VSC"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RemoteError: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/duokan/airkan/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    iget-object v0, p0, Lcom/duokan/remotecontroller/phone/api/RCServiceCallback;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/duokan/remotecontroller/phone/api/RCServiceCallback$5;

    invoke-direct {v1, p0, p1}, Lcom/duokan/remotecontroller/phone/api/RCServiceCallback$5;-><init>(Lcom/duokan/remotecontroller/phone/api/RCServiceCallback;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 157
    return-void
.end method

.method public onAuthReqResponse(II)V
    .locals 6
    .parameter "handle"
    .parameter "result"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 24
    const/4 v1, 0x0

    .line 25
    .local v1, text:Ljava/lang/String;
    if-nez p2, :cond_1

    .line 26
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Authentication Success. Handle: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 27
    iput p1, p0, Lcom/duokan/remotecontroller/phone/api/RCServiceCallback;->mServiceHandle:I

    .line 28
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/duokan/remotecontroller/phone/api/RCServiceCallback;->mIsAuthPassed:Z

    .line 29
    iget-object v2, p0, Lcom/duokan/remotecontroller/phone/api/RCServiceCallback;->mRCManager:Lcom/duokan/remotecontroller/phone/api/RCManager;

    if-nez v2, :cond_0

    .line 30
    new-instance v0, Ljava/lang/Exception;

    const-string v2, "Video Manager is not available - "

    invoke-direct {v0, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 31
    .local v0, ex:Ljava/lang/Exception;
    const-string v2, "VSC"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

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

    .line 86
    .end local v0           #ex:Ljava/lang/Exception;
    :goto_0
    return-void

    .line 34
    :cond_0
    iget-object v2, p0, Lcom/duokan/remotecontroller/phone/api/RCServiceCallback;->mRCManager:Lcom/duokan/remotecontroller/phone/api/RCManager;

    iget-boolean v3, p0, Lcom/duokan/remotecontroller/phone/api/RCServiceCallback;->mIsAuthPassed:Z

    iget v4, p0, Lcom/duokan/remotecontroller/phone/api/RCServiceCallback;->mServiceHandle:I

    invoke-virtual {v2, v3, v4}, Lcom/duokan/remotecontroller/phone/api/RCManager;->onAuthPassed(ZI)V

    .line 35
    iget-object v2, p0, Lcom/duokan/remotecontroller/phone/api/RCServiceCallback;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/duokan/remotecontroller/phone/api/RCServiceCallback$1;

    invoke-direct {v3, p0}, Lcom/duokan/remotecontroller/phone/api/RCServiceCallback$1;-><init>(Lcom/duokan/remotecontroller/phone/api/RCServiceCallback;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 85
    :goto_1
    const-string v2, "VSC"

    invoke-static {v2, v1}, Lcom/duokan/airkan/common/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 51
    :cond_1
    const/4 v2, -0x1

    if-ne v2, p2, :cond_2

    .line 52
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Authentication Failed. Ret: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 53
    :cond_2
    const/4 v2, -0x2

    if-ne v2, p2, :cond_3

    .line 54
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Authentication init Failed. Ret: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 55
    :cond_3
    const/4 v2, -0x3

    if-ne v2, p2, :cond_4

    .line 56
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Connection Error. Ret: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 57
    iget-object v2, p0, Lcom/duokan/remotecontroller/phone/api/RCServiceCallback;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/duokan/remotecontroller/phone/api/RCServiceCallback$2;

    invoke-direct {v3, p0}, Lcom/duokan/remotecontroller/phone/api/RCServiceCallback$2;-><init>(Lcom/duokan/remotecontroller/phone/api/RCServiceCallback;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    .line 68
    :cond_4
    const/4 v2, -0x4

    if-ne v2, p2, :cond_5

    .line 69
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can not connect to TV. Ret: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 70
    iget-object v2, p0, Lcom/duokan/remotecontroller/phone/api/RCServiceCallback;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/duokan/remotecontroller/phone/api/RCServiceCallback$3;

    invoke-direct {v3, p0}, Lcom/duokan/remotecontroller/phone/api/RCServiceCallback$3;-><init>(Lcom/duokan/remotecontroller/phone/api/RCServiceCallback;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    .line 82
    :cond_5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Authentication Failed. Ret: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1
.end method

.method public onDisconnected()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 119
    const-string v0, "VSC"

    const-string v1, "disConnected"

    invoke-static {v0, v1}, Lcom/duokan/airkan/common/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    iget-object v0, p0, Lcom/duokan/remotecontroller/phone/api/RCServiceCallback;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/duokan/remotecontroller/phone/api/RCServiceCallback$4;

    invoke-direct {v1, p0}, Lcom/duokan/remotecontroller/phone/api/RCServiceCallback$4;-><init>(Lcom/duokan/remotecontroller/phone/api/RCServiceCallback;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 131
    return-void
.end method

.method public onNetworkCongestion()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 140
    const-string v0, "VSC"

    const-string v1, "network congestion"

    invoke-static {v0, v1}, Lcom/duokan/airkan/common/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    return-void
.end method

.method public onPlayControlResponse(IBILjava/lang/String;)V
    .locals 3
    .parameter "handle"
    .parameter "code"
    .parameter "result"
    .parameter "message"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 98
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "play control response, code:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " result:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " msg:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 99
    .local v0, msg:Ljava/lang/String;
    const-string v1, "VSC"

    invoke-static {v1, v0}, Lcom/duokan/airkan/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    return-void
.end method

.method public onReleased()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 135
    const-string v0, "VSC"

    const-string v1, "released"

    invoke-static {v0, v1}, Lcom/duokan/airkan/common/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    return-void
.end method

.method public onSendKeyResponse(IBILjava/lang/String;)V
    .locals 3
    .parameter "handle"
    .parameter "code"
    .parameter "result"
    .parameter "message"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 91
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendkey response, code:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " result:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " msg:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 92
    .local v0, msg:Ljava/lang/String;
    const-string v1, "VSC"

    invoke-static {v1, v0}, Lcom/duokan/airkan/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    return-void
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 4
    .parameter "code"
    .parameter "data"
    .parameter "reply"
    .parameter "flags"

    .prologue
    .line 106
    :try_start_0
    invoke-super {p0, p1, p2, p3, p4}, Lcom/duokan/remotecontroller/phone/aidl/IRCServiceCallback$Stub;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 114
    :goto_0
    return v1

    .line 107
    :catch_0
    move-exception v0

    .line 108
    .local v0, e:Landroid/os/RemoteException;
    :try_start_1
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    .line 114
    const/4 v1, 0x0

    goto :goto_0

    .line 110
    .end local v0           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 111
    .local v0, e:Ljava/lang/RuntimeException;
    const-string v1, "VSC"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected remote exception"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/duokan/airkan/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    throw v0
.end method

.method public setRCManager(Lcom/duokan/remotecontroller/phone/api/RCManager;)V
    .locals 0
    .parameter "avm"

    .prologue
    .line 19
    iput-object p1, p0, Lcom/duokan/remotecontroller/phone/api/RCServiceCallback;->mRCManager:Lcom/duokan/remotecontroller/phone/api/RCManager;

    .line 20
    return-void
.end method
