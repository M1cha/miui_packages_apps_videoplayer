.class Lcom/duokan/airkan/phone/api/VideoManager$9;
.super Ljava/lang/Object;
.source "VideoManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/duokan/airkan/phone/api/VideoManager;->setResolution(Lcom/duokan/airkan/common/video/VideoResolution$Resolution;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/duokan/airkan/phone/api/VideoManager;

.field final synthetic val$breso:B

.field final synthetic val$myService:Lcom/duokan/airkan/phone/aidl/IAirkanClientService;


# direct methods
.method constructor <init>(Lcom/duokan/airkan/phone/api/VideoManager;BLcom/duokan/airkan/phone/aidl/IAirkanClientService;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 961
    iput-object p1, p0, Lcom/duokan/airkan/phone/api/VideoManager$9;->this$0:Lcom/duokan/airkan/phone/api/VideoManager;

    iput-byte p2, p0, Lcom/duokan/airkan/phone/api/VideoManager$9;->val$breso:B

    iput-object p3, p0, Lcom/duokan/airkan/phone/api/VideoManager$9;->val$myService:Lcom/duokan/airkan/phone/aidl/IAirkanClientService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 965
    :try_start_0
    const-string v1, "AVM"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "to set resolution to:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-byte v3, p0, Lcom/duokan/airkan/phone/api/VideoManager$9;->val$breso:B

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/duokan/airkan/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 966
    iget-object v1, p0, Lcom/duokan/airkan/phone/api/VideoManager$9;->val$myService:Lcom/duokan/airkan/phone/aidl/IAirkanClientService;

    iget-object v2, p0, Lcom/duokan/airkan/phone/api/VideoManager$9;->this$0:Lcom/duokan/airkan/phone/api/VideoManager;

    iget v2, v2, Lcom/duokan/airkan/phone/api/ConnectionManager;->mServiceHandle:I

    iget-byte v3, p0, Lcom/duokan/airkan/phone/api/VideoManager$9;->val$breso:B

    invoke-interface {v1, v2, v3}, Lcom/duokan/airkan/phone/aidl/IAirkanClientService;->setResolution(IB)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 972
    :goto_0
    return-void

    .line 967
    :catch_0
    move-exception v0

    .line 968
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "AVM"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setResolution error"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/duokan/airkan/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 969
    .end local v0           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 970
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "AVM"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setResolution error"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/duokan/airkan/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
