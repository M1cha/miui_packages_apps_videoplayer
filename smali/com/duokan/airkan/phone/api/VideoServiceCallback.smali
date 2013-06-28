.class public Lcom/duokan/airkan/phone/api/VideoServiceCallback;
.super Lcom/duokan/airkan/phone/aidl/IVideoServiceCallback$Stub;
.source "VideoServiceCallback.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "VSC"


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mIsAuthPassed:Z

.field private mServiceHandle:I

.field private mVideoManager:Lcom/duokan/airkan/phone/api/VideoManager;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 15
    invoke-direct {p0}, Lcom/duokan/airkan/phone/aidl/IVideoServiceCallback$Stub;-><init>()V

    .line 17
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/duokan/airkan/phone/api/VideoServiceCallback;->mHandler:Landroid/os/Handler;

    .line 18
    iput v1, p0, Lcom/duokan/airkan/phone/api/VideoServiceCallback;->mServiceHandle:I

    .line 19
    iput-boolean v1, p0, Lcom/duokan/airkan/phone/api/VideoServiceCallback;->mIsAuthPassed:Z

    .line 20
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/duokan/airkan/phone/api/VideoServiceCallback;->mVideoManager:Lcom/duokan/airkan/phone/api/VideoManager;

    return-void
.end method

.method static synthetic access$000(Lcom/duokan/airkan/phone/api/VideoServiceCallback;)Lcom/duokan/airkan/phone/api/VideoManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 15
    iget-object v0, p0, Lcom/duokan/airkan/phone/api/VideoServiceCallback;->mVideoManager:Lcom/duokan/airkan/phone/api/VideoManager;

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
    .line 236
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

    .line 237
    iget-object v0, p0, Lcom/duokan/airkan/phone/api/VideoServiceCallback;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/duokan/airkan/phone/api/VideoServiceCallback$8;

    invoke-direct {v1, p0, p1}, Lcom/duokan/airkan/phone/api/VideoServiceCallback$8;-><init>(Lcom/duokan/airkan/phone/api/VideoServiceCallback;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 248
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
    .line 28
    const/4 v1, 0x0

    .line 29
    .local v1, text:Ljava/lang/String;
    if-nez p2, :cond_1

    .line 30
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Authentication Success. Handle: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 31
    iput p1, p0, Lcom/duokan/airkan/phone/api/VideoServiceCallback;->mServiceHandle:I

    .line 32
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/duokan/airkan/phone/api/VideoServiceCallback;->mIsAuthPassed:Z

    .line 33
    iget-object v2, p0, Lcom/duokan/airkan/phone/api/VideoServiceCallback;->mVideoManager:Lcom/duokan/airkan/phone/api/VideoManager;

    if-nez v2, :cond_0

    .line 34
    new-instance v0, Ljava/lang/Exception;

    const-string v2, "Video Manager is not available - "

    invoke-direct {v0, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 35
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

    .line 90
    .end local v0           #ex:Ljava/lang/Exception;
    :goto_0
    return-void

    .line 38
    :cond_0
    iget-object v2, p0, Lcom/duokan/airkan/phone/api/VideoServiceCallback;->mVideoManager:Lcom/duokan/airkan/phone/api/VideoManager;

    iget-boolean v3, p0, Lcom/duokan/airkan/phone/api/VideoServiceCallback;->mIsAuthPassed:Z

    iget v4, p0, Lcom/duokan/airkan/phone/api/VideoServiceCallback;->mServiceHandle:I

    invoke-virtual {v2, v3, v4}, Lcom/duokan/airkan/phone/api/VideoManager;->onAuthPassed(ZI)V

    .line 39
    iget-object v2, p0, Lcom/duokan/airkan/phone/api/VideoServiceCallback;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/duokan/airkan/phone/api/VideoServiceCallback$1;

    invoke-direct {v3, p0}, Lcom/duokan/airkan/phone/api/VideoServiceCallback$1;-><init>(Lcom/duokan/airkan/phone/api/VideoServiceCallback;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 89
    :goto_1
    const-string v2, "VSC"

    invoke-static {v2, v1}, Lcom/duokan/airkan/common/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 55
    :cond_1
    const/4 v2, -0x1

    if-ne v2, p2, :cond_2

    .line 56
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

    .line 57
    :cond_2
    const/4 v2, -0x2

    if-ne v2, p2, :cond_3

    .line 58
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

    .line 59
    :cond_3
    const/4 v2, -0x3

    if-ne v2, p2, :cond_4

    .line 60
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Connection Error. Ret: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 61
    iget-object v2, p0, Lcom/duokan/airkan/phone/api/VideoServiceCallback;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/duokan/airkan/phone/api/VideoServiceCallback$2;

    invoke-direct {v3, p0}, Lcom/duokan/airkan/phone/api/VideoServiceCallback$2;-><init>(Lcom/duokan/airkan/phone/api/VideoServiceCallback;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    .line 72
    :cond_4
    const/4 v2, -0x4

    if-ne v2, p2, :cond_5

    .line 73
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can not connect to TV. Ret: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 74
    iget-object v2, p0, Lcom/duokan/airkan/phone/api/VideoServiceCallback;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/duokan/airkan/phone/api/VideoServiceCallback$3;

    invoke-direct {v3, p0}, Lcom/duokan/airkan/phone/api/VideoServiceCallback$3;-><init>(Lcom/duokan/airkan/phone/api/VideoServiceCallback;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    .line 86
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
    .line 184
    const-string v0, "VSC"

    const-string v1, "disConnected"

    invoke-static {v0, v1}, Lcom/duokan/airkan/common/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    iget-object v0, p0, Lcom/duokan/airkan/phone/api/VideoServiceCallback;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/duokan/airkan/phone/api/VideoServiceCallback$5;

    invoke-direct {v1, p0}, Lcom/duokan/airkan/phone/api/VideoServiceCallback$5;-><init>(Lcom/duokan/airkan/phone/api/VideoServiceCallback;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 196
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
    .line 216
    const-string v0, "VSC"

    const-string v1, "network congestion"

    invoke-static {v0, v1}, Lcom/duokan/airkan/common/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    iget-object v0, p0, Lcom/duokan/airkan/phone/api/VideoServiceCallback;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/duokan/airkan/phone/api/VideoServiceCallback$7;

    invoke-direct {v1, p0}, Lcom/duokan/airkan/phone/api/VideoServiceCallback$7;-><init>(Lcom/duokan/airkan/phone/api/VideoServiceCallback;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 232
    return-void
.end method

.method public onPlayControlResponse(IBILjava/lang/String;)V
    .locals 6
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
    .line 95
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "code:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " result:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " msg:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 96
    .local v1, msg:Ljava/lang/String;
    const-string v2, "VSC"

    invoke-static {v2, v1}, Lcom/duokan/airkan/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    iget-object v2, p0, Lcom/duokan/airkan/phone/api/VideoServiceCallback;->mVideoManager:Lcom/duokan/airkan/phone/api/VideoManager;

    if-nez v2, :cond_1

    .line 98
    new-instance v0, Ljava/lang/Exception;

    const-string v2, "Video Manager is not available - "

    invoke-direct {v0, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 99
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

    .line 111
    .end local v0           #ex:Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void

    .line 102
    :cond_1
    const/4 v2, 0x1

    if-eq v2, p2, :cond_2

    const/16 v2, 0x10

    if-ne v2, p2, :cond_0

    .line 103
    :cond_2
    if-nez p3, :cond_3

    .line 104
    const-string v2, "VSC"

    const-string v3, "to inform play success"

    invoke-static {v2, v3}, Lcom/duokan/airkan/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    iget-object v2, p0, Lcom/duokan/airkan/phone/api/VideoServiceCallback;->mVideoManager:Lcom/duokan/airkan/phone/api/VideoManager;

    invoke-virtual {v2}, Lcom/duokan/airkan/phone/api/VideoManager;->onPlayToSuccess()V

    goto :goto_0

    .line 107
    :cond_3
    const-string v2, "VSC"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "RemoteError: playTo TV failed. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/duokan/airkan/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    iget-object v2, p0, Lcom/duokan/airkan/phone/api/VideoServiceCallback;->mVideoManager:Lcom/duokan/airkan/phone/api/VideoManager;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "RemoteError: playTo TV failed. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/duokan/airkan/phone/api/VideoManager;->error(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onQueryResult(ILcom/duokan/airkan/common/aidl/video/ParcelQueryData;)V
    .locals 2
    .parameter "handle"
    .parameter "queryData"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 116
    const-string v0, "VSC"

    const-string v1, "queryResult"

    invoke-static {v0, v1}, Lcom/duokan/airkan/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    iget-object v0, p0, Lcom/duokan/airkan/phone/api/VideoServiceCallback;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/duokan/airkan/phone/api/VideoServiceCallback$4;

    invoke-direct {v1, p0, p2}, Lcom/duokan/airkan/phone/api/VideoServiceCallback$4;-><init>(Lcom/duokan/airkan/phone/api/VideoServiceCallback;Lcom/duokan/airkan/common/aidl/video/ParcelQueryData;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 165
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
    .line 200
    const-string v0, "VSC"

    const-string v1, "released"

    invoke-static {v0, v1}, Lcom/duokan/airkan/common/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    iget-object v0, p0, Lcom/duokan/airkan/phone/api/VideoServiceCallback;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/duokan/airkan/phone/api/VideoServiceCallback$6;

    invoke-direct {v1, p0}, Lcom/duokan/airkan/phone/api/VideoServiceCallback$6;-><init>(Lcom/duokan/airkan/phone/api/VideoServiceCallback;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 212
    return-void
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 4
    .parameter "code"
    .parameter "data"
    .parameter "reply"
    .parameter "flags"

    .prologue
    .line 171
    :try_start_0
    invoke-super {p0, p1, p2, p3, p4}, Lcom/duokan/airkan/phone/aidl/IVideoServiceCallback$Stub;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 179
    :goto_0
    return v1

    .line 172
    :catch_0
    move-exception v0

    .line 173
    .local v0, e:Landroid/os/RemoteException;
    :try_start_1
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    .line 179
    const/4 v1, 0x0

    goto :goto_0

    .line 175
    .end local v0           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 176
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

    .line 177
    throw v0
.end method

.method public reverseReq(Lcom/duokan/airkan/common/aidl/video/ParcelReverseRequest;)I
    .locals 3
    .parameter "mParcelReverseRequest"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 253
    iget-byte v0, p1, Lcom/duokan/airkan/common/aidl/video/ParcelReverseRequest;->musicControl:B

    if-nez v0, :cond_1

    .line 254
    const-string v0, "VSC"

    const-string v1, "enter reverseReq, NEXT"

    invoke-static {v0, v1}, Lcom/duokan/airkan/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    iget-object v0, p0, Lcom/duokan/airkan/phone/api/VideoServiceCallback;->mVideoManager:Lcom/duokan/airkan/phone/api/VideoManager;

    instance-of v0, v0, Lcom/duokan/airkan/phone/api/MusicManager;

    if-eqz v0, :cond_0

    .line 256
    iget-object v0, p0, Lcom/duokan/airkan/phone/api/VideoServiceCallback;->mVideoManager:Lcom/duokan/airkan/phone/api/VideoManager;

    check-cast v0, Lcom/duokan/airkan/phone/api/MusicManager;

    invoke-virtual {v0}, Lcom/duokan/airkan/phone/api/MusicManager;->requestNextMediaItem()V

    .line 264
    :cond_0
    :goto_0
    return v2

    .line 258
    :cond_1
    iget-byte v0, p1, Lcom/duokan/airkan/common/aidl/video/ParcelReverseRequest;->musicControl:B

    if-ne v2, v0, :cond_2

    .line 259
    const-string v0, "VSC"

    const-string v1, "enter reverseReq, PREVIOUS"

    invoke-static {v0, v1}, Lcom/duokan/airkan/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    iget-object v0, p0, Lcom/duokan/airkan/phone/api/VideoServiceCallback;->mVideoManager:Lcom/duokan/airkan/phone/api/VideoManager;

    check-cast v0, Lcom/duokan/airkan/phone/api/MusicManager;

    invoke-virtual {v0}, Lcom/duokan/airkan/phone/api/MusicManager;->requestLastMediaItem()V

    goto :goto_0

    .line 262
    :cond_2
    const-string v0, "VSC"

    const-string v1, "enter reverseReq, error control code"

    invoke-static {v0, v1}, Lcom/duokan/airkan/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setAirkanVideoManager(Lcom/duokan/airkan/phone/api/VideoManager;)V
    .locals 0
    .parameter "avm"

    .prologue
    .line 23
    iput-object p1, p0, Lcom/duokan/airkan/phone/api/VideoServiceCallback;->mVideoManager:Lcom/duokan/airkan/phone/api/VideoManager;

    .line 24
    return-void
.end method
