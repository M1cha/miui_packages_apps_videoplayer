.class Lcom/duokan/airkan/phone/api/VideoManager$5;
.super Ljava/lang/Object;
.source "VideoManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/duokan/airkan/phone/api/VideoManager;->stop()V
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
    .line 742
    iput-object p1, p0, Lcom/duokan/airkan/phone/api/VideoManager$5;->this$0:Lcom/duokan/airkan/phone/api/VideoManager;

    iput-object p2, p0, Lcom/duokan/airkan/phone/api/VideoManager$5;->val$myService:Lcom/duokan/airkan/phone/aidl/IAirkanClientService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 745
    const-string v1, "AVM"

    const-string v2, "to stop"

    invoke-static {v1, v2}, Lcom/duokan/airkan/common/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 746
    iget-object v1, p0, Lcom/duokan/airkan/phone/api/VideoManager$5;->this$0:Lcom/duokan/airkan/phone/api/VideoManager;

    #getter for: Lcom/duokan/airkan/phone/api/VideoManager;->mState:Lcom/duokan/airkan/phone/api/VideoManager$State;
    invoke-static {v1}, Lcom/duokan/airkan/phone/api/VideoManager;->access$500(Lcom/duokan/airkan/phone/api/VideoManager;)Lcom/duokan/airkan/phone/api/VideoManager$State;

    move-result-object v2

    monitor-enter v2

    .line 747
    :try_start_0
    sget-object v1, Lcom/duokan/airkan/phone/api/VideoManager$State;->STATE_IDLE:Lcom/duokan/airkan/phone/api/VideoManager$State;

    iget-object v3, p0, Lcom/duokan/airkan/phone/api/VideoManager$5;->this$0:Lcom/duokan/airkan/phone/api/VideoManager;

    #getter for: Lcom/duokan/airkan/phone/api/VideoManager;->mState:Lcom/duokan/airkan/phone/api/VideoManager$State;
    invoke-static {v3}, Lcom/duokan/airkan/phone/api/VideoManager;->access$500(Lcom/duokan/airkan/phone/api/VideoManager;)Lcom/duokan/airkan/phone/api/VideoManager$State;

    move-result-object v3

    if-eq v1, v3, :cond_0

    sget-object v1, Lcom/duokan/airkan/phone/api/VideoManager$State;->STATE_DATA:Lcom/duokan/airkan/phone/api/VideoManager$State;

    iget-object v3, p0, Lcom/duokan/airkan/phone/api/VideoManager$5;->this$0:Lcom/duokan/airkan/phone/api/VideoManager;

    #getter for: Lcom/duokan/airkan/phone/api/VideoManager;->mState:Lcom/duokan/airkan/phone/api/VideoManager$State;
    invoke-static {v3}, Lcom/duokan/airkan/phone/api/VideoManager;->access$500(Lcom/duokan/airkan/phone/api/VideoManager;)Lcom/duokan/airkan/phone/api/VideoManager$State;

    move-result-object v3

    if-eq v1, v3, :cond_0

    sget-object v1, Lcom/duokan/airkan/phone/api/VideoManager$State;->STATE_EEEOR:Lcom/duokan/airkan/phone/api/VideoManager$State;

    iget-object v3, p0, Lcom/duokan/airkan/phone/api/VideoManager$5;->this$0:Lcom/duokan/airkan/phone/api/VideoManager;

    #getter for: Lcom/duokan/airkan/phone/api/VideoManager;->mState:Lcom/duokan/airkan/phone/api/VideoManager$State;
    invoke-static {v3}, Lcom/duokan/airkan/phone/api/VideoManager;->access$500(Lcom/duokan/airkan/phone/api/VideoManager;)Lcom/duokan/airkan/phone/api/VideoManager$State;

    move-result-object v3

    if-ne v1, v3, :cond_1

    .line 749
    :cond_0
    const-string v1, "AVM"

    const-string v3, "not in working state"

    invoke-static {v1, v3}, Lcom/duokan/airkan/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 750
    monitor-exit v2

    .line 764
    :goto_0
    return-void

    .line 752
    :cond_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 754
    :try_start_1
    iget-object v1, p0, Lcom/duokan/airkan/phone/api/VideoManager$5;->val$myService:Lcom/duokan/airkan/phone/aidl/IAirkanClientService;

    iget-object v2, p0, Lcom/duokan/airkan/phone/api/VideoManager$5;->this$0:Lcom/duokan/airkan/phone/api/VideoManager;

    iget v2, v2, Lcom/duokan/airkan/phone/api/ConnectionManager;->mServiceHandle:I

    invoke-interface {v1, v2}, Lcom/duokan/airkan/phone/aidl/IAirkanClientService;->stop(I)I

    .line 755
    iget-object v1, p0, Lcom/duokan/airkan/phone/api/VideoManager$5;->this$0:Lcom/duokan/airkan/phone/api/VideoManager;

    #getter for: Lcom/duokan/airkan/phone/api/VideoManager;->mState:Lcom/duokan/airkan/phone/api/VideoManager$State;
    invoke-static {v1}, Lcom/duokan/airkan/phone/api/VideoManager;->access$500(Lcom/duokan/airkan/phone/api/VideoManager;)Lcom/duokan/airkan/phone/api/VideoManager$State;

    move-result-object v2

    monitor-enter v2
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 756
    :try_start_2
    iget-object v1, p0, Lcom/duokan/airkan/phone/api/VideoManager$5;->this$0:Lcom/duokan/airkan/phone/api/VideoManager;

    sget-object v3, Lcom/duokan/airkan/phone/api/VideoManager$State;->STATE_STOPPED:Lcom/duokan/airkan/phone/api/VideoManager$State;

    #setter for: Lcom/duokan/airkan/phone/api/VideoManager;->mState:Lcom/duokan/airkan/phone/api/VideoManager$State;
    invoke-static {v1, v3}, Lcom/duokan/airkan/phone/api/VideoManager;->access$502(Lcom/duokan/airkan/phone/api/VideoManager;Lcom/duokan/airkan/phone/api/VideoManager$State;)Lcom/duokan/airkan/phone/api/VideoManager$State;

    .line 757
    const-string v1, "AVM"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "stop, State:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/duokan/airkan/phone/api/VideoManager$5;->this$0:Lcom/duokan/airkan/phone/api/VideoManager;

    #getter for: Lcom/duokan/airkan/phone/api/VideoManager;->mState:Lcom/duokan/airkan/phone/api/VideoManager$State;
    invoke-static {v4}, Lcom/duokan/airkan/phone/api/VideoManager;->access$500(Lcom/duokan/airkan/phone/api/VideoManager;)Lcom/duokan/airkan/phone/api/VideoManager$State;

    move-result-object v4

    invoke-virtual {v4}, Lcom/duokan/airkan/phone/api/VideoManager$State;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/duokan/airkan/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 758
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v1
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 759
    :catch_0
    move-exception v0

    .line 760
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "AVM"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "stop error"

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

    .line 752
    .end local v0           #e:Landroid/os/RemoteException;
    :catchall_1
    move-exception v1

    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v1

    .line 761
    :catch_1
    move-exception v0

    .line 762
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "AVM"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "stop error"

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
