.class Lcom/duokan/airkan/phone/api/VideoManager$7;
.super Ljava/lang/Object;
.source "VideoManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/duokan/airkan/phone/api/VideoManager;->pause()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/duokan/airkan/phone/api/VideoManager;

.field final synthetic val$myService:Lcom/duokan/airkan/phone/aidl/IAirkanClientService;


# direct methods
.method constructor <init>(Lcom/duokan/airkan/phone/api/VideoManager;Lcom/duokan/airkan/phone/aidl/IAirkanClientService;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 818
    iput-object p1, p0, Lcom/duokan/airkan/phone/api/VideoManager$7;->this$0:Lcom/duokan/airkan/phone/api/VideoManager;

    iput-object p2, p0, Lcom/duokan/airkan/phone/api/VideoManager$7;->val$myService:Lcom/duokan/airkan/phone/aidl/IAirkanClientService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 822
    :try_start_0
    const-string v1, "AVM"

    const-string v2, "to pause"

    invoke-static {v1, v2}, Lcom/duokan/airkan/common/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 823
    iget-object v1, p0, Lcom/duokan/airkan/phone/api/VideoManager$7;->val$myService:Lcom/duokan/airkan/phone/aidl/IAirkanClientService;

    iget-object v2, p0, Lcom/duokan/airkan/phone/api/VideoManager$7;->this$0:Lcom/duokan/airkan/phone/api/VideoManager;

    iget v2, v2, Lcom/duokan/airkan/phone/api/ConnectionManager;->mServiceHandle:I

    invoke-interface {v1, v2}, Lcom/duokan/airkan/phone/aidl/IAirkanClientService;->pause(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 829
    :goto_0
    return-void

    .line 824
    :catch_0
    move-exception v0

    .line 825
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "AVM"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "pause error"

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

    .line 826
    .end local v0           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 827
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "AVM"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "pause error"

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
