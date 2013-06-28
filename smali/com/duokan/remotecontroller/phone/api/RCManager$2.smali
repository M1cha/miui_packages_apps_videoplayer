.class Lcom/duokan/remotecontroller/phone/api/RCManager$2;
.super Ljava/lang/Object;
.source "RCManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/duokan/remotecontroller/phone/api/RCManager;->play(Ljava/lang/String;JIILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/duokan/remotecontroller/phone/api/RCManager;

.field final synthetic val$dvi:Lcom/duokan/airkan/common/video/DuokanVideoInfo;

.field final synthetic val$myService:Lcom/duokan/remotecontroller/phone/aidl/IRCClientService;

.field final synthetic val$vbi:Lcom/duokan/airkan/common/video/VideoBasicInfo;


# direct methods
.method constructor <init>(Lcom/duokan/remotecontroller/phone/api/RCManager;Lcom/duokan/airkan/common/video/VideoBasicInfo;Lcom/duokan/airkan/common/video/DuokanVideoInfo;Lcom/duokan/remotecontroller/phone/aidl/IRCClientService;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 233
    iput-object p1, p0, Lcom/duokan/remotecontroller/phone/api/RCManager$2;->this$0:Lcom/duokan/remotecontroller/phone/api/RCManager;

    iput-object p2, p0, Lcom/duokan/remotecontroller/phone/api/RCManager$2;->val$vbi:Lcom/duokan/airkan/common/video/VideoBasicInfo;

    iput-object p3, p0, Lcom/duokan/remotecontroller/phone/api/RCManager$2;->val$dvi:Lcom/duokan/airkan/common/video/DuokanVideoInfo;

    iput-object p4, p0, Lcom/duokan/remotecontroller/phone/api/RCManager$2;->val$myService:Lcom/duokan/remotecontroller/phone/aidl/IRCClientService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 236
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "To play:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/duokan/remotecontroller/phone/api/RCManager$2;->val$vbi:Lcom/duokan/airkan/common/video/VideoBasicInfo;

    iget-object v5, v5, Lcom/duokan/airkan/common/video/VideoBasicInfo;->title:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " url:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/duokan/remotecontroller/phone/api/RCManager$2;->val$vbi:Lcom/duokan/airkan/common/video/VideoBasicInfo;

    iget-object v5, v5, Lcom/duokan/airkan/common/video/VideoBasicInfo;->url:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " mediaID:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/duokan/remotecontroller/phone/api/RCManager$2;->val$dvi:Lcom/duokan/airkan/common/video/DuokanVideoInfo;

    iget-wide v5, v5, Lcom/duokan/airkan/common/video/DuokanVideoInfo;->mediaID:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ci:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/duokan/remotecontroller/phone/api/RCManager$2;->val$dvi:Lcom/duokan/airkan/common/video/DuokanVideoInfo;

    iget v5, v5, Lcom/duokan/airkan/common/video/DuokanVideoInfo;->ci:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " source:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/duokan/remotecontroller/phone/api/RCManager$2;->val$dvi:Lcom/duokan/airkan/common/video/DuokanVideoInfo;

    iget-byte v5, v5, Lcom/duokan/airkan/common/video/DuokanVideoInfo;->preferSource:B

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 238
    .local v1, msg:Ljava/lang/String;
    const-string v4, "RCManager"

    invoke-static {v4, v1}, Lcom/duokan/airkan/common/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    new-instance v3, Lcom/duokan/airkan/common/aidl/video/ParcelVideoBasicInfo;

    iget-object v4, p0, Lcom/duokan/remotecontroller/phone/api/RCManager$2;->val$vbi:Lcom/duokan/airkan/common/video/VideoBasicInfo;

    invoke-direct {v3, v4}, Lcom/duokan/airkan/common/aidl/video/ParcelVideoBasicInfo;-><init>(Lcom/duokan/airkan/common/video/VideoBasicInfo;)V

    .line 240
    .local v3, pvbi:Lcom/duokan/airkan/common/aidl/video/ParcelVideoBasicInfo;
    new-instance v2, Lcom/duokan/airkan/common/aidl/video/ParcelDuokanVideoInfo;

    iget-object v4, p0, Lcom/duokan/remotecontroller/phone/api/RCManager$2;->val$dvi:Lcom/duokan/airkan/common/video/DuokanVideoInfo;

    invoke-direct {v2, v4}, Lcom/duokan/airkan/common/aidl/video/ParcelDuokanVideoInfo;-><init>(Lcom/duokan/airkan/common/video/DuokanVideoInfo;)V

    .line 242
    .local v2, pdvi:Lcom/duokan/airkan/common/aidl/video/ParcelDuokanVideoInfo;
    :try_start_0
    iget-object v4, p0, Lcom/duokan/remotecontroller/phone/api/RCManager$2;->val$myService:Lcom/duokan/remotecontroller/phone/aidl/IRCClientService;

    iget-object v5, p0, Lcom/duokan/remotecontroller/phone/api/RCManager$2;->this$0:Lcom/duokan/remotecontroller/phone/api/RCManager;

    iget v5, v5, Lcom/duokan/remotecontroller/phone/api/ConnectionManager;->mServiceHandle:I

    invoke-interface {v4, v5, v3, v2}, Lcom/duokan/remotecontroller/phone/aidl/IRCClientService;->play(ILcom/duokan/airkan/common/aidl/video/ParcelVideoBasicInfo;Lcom/duokan/airkan/common/aidl/video/ParcelDuokanVideoInfo;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 248
    :goto_0
    return-void

    .line 243
    :catch_0
    move-exception v0

    .line 244
    .local v0, e:Landroid/os/RemoteException;
    const-string v4, "RCManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "play error"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/duokan/airkan/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 245
    .end local v0           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 246
    .local v0, e:Ljava/lang/Exception;
    const-string v4, "RCManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "play error"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/duokan/airkan/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
