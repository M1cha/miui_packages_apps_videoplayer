.class Lcom/duokan/airkan/phone/api/PhotoManager$1;
.super Lcom/duokan/airkan/photosend/aidl/IPhotoSendServiceCallback$Stub;
.source "PhotoManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/duokan/airkan/phone/api/PhotoManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/duokan/airkan/phone/api/PhotoManager;


# direct methods
.method constructor <init>(Lcom/duokan/airkan/phone/api/PhotoManager;)V
    .locals 0
    .parameter

    .prologue
    .line 432
    iput-object p1, p0, Lcom/duokan/airkan/phone/api/PhotoManager$1;->this$0:Lcom/duokan/airkan/phone/api/PhotoManager;

    invoke-direct {p0}, Lcom/duokan/airkan/photosend/aidl/IPhotoSendServiceCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public SaveMultiBlockDataInfo(Ljava/lang/String;III)V
    .locals 2
    .parameter "filename"
    .parameter "blockCount"
    .parameter "handle"
    .parameter "length"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 513
    iget-object v0, p0, Lcom/duokan/airkan/phone/api/PhotoManager$1;->this$0:Lcom/duokan/airkan/phone/api/PhotoManager;

    #setter for: Lcom/duokan/airkan/phone/api/PhotoManager;->mFileName:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/duokan/airkan/phone/api/PhotoManager;->access$1102(Lcom/duokan/airkan/phone/api/PhotoManager;Ljava/lang/String;)Ljava/lang/String;

    .line 514
    iget-object v0, p0, Lcom/duokan/airkan/phone/api/PhotoManager$1;->this$0:Lcom/duokan/airkan/phone/api/PhotoManager;

    new-array v1, p4, [B

    #setter for: Lcom/duokan/airkan/phone/api/PhotoManager;->mImageData:[B
    invoke-static {v0, v1}, Lcom/duokan/airkan/phone/api/PhotoManager;->access$902(Lcom/duokan/airkan/phone/api/PhotoManager;[B)[B

    .line 515
    iget-object v0, p0, Lcom/duokan/airkan/phone/api/PhotoManager$1;->this$0:Lcom/duokan/airkan/phone/api/PhotoManager;

    #setter for: Lcom/duokan/airkan/phone/api/PhotoManager;->mBlockCounts:I
    invoke-static {v0, p2}, Lcom/duokan/airkan/phone/api/PhotoManager;->access$1002(Lcom/duokan/airkan/phone/api/PhotoManager;I)I

    .line 516
    return-void
.end method

.method public onConnected(Z)V
    .locals 6
    .parameter "connected"

    .prologue
    .line 442
    iget-object v3, p0, Lcom/duokan/airkan/phone/api/PhotoManager$1;->this$0:Lcom/duokan/airkan/phone/api/PhotoManager;

    #getter for: Lcom/duokan/airkan/phone/api/PhotoManager;->TAG:Ljava/lang/String;
    invoke-static {v3}, Lcom/duokan/airkan/phone/api/PhotoManager;->access$000(Lcom/duokan/airkan/phone/api/PhotoManager;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onConnected of data link: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/duokan/airkan/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 445
    iget-object v3, p0, Lcom/duokan/airkan/phone/api/PhotoManager$1;->this$0:Lcom/duokan/airkan/phone/api/PhotoManager;

    #setter for: Lcom/duokan/airkan/phone/api/PhotoManager;->dataConnected:Z
    invoke-static {v3, p1}, Lcom/duokan/airkan/phone/api/PhotoManager;->access$202(Lcom/duokan/airkan/phone/api/PhotoManager;Z)Z

    .line 446
    iget-object v3, p0, Lcom/duokan/airkan/phone/api/PhotoManager$1;->this$0:Lcom/duokan/airkan/phone/api/PhotoManager;

    #getter for: Lcom/duokan/airkan/phone/api/PhotoManager;->linkConnected:Z
    invoke-static {v3}, Lcom/duokan/airkan/phone/api/PhotoManager;->access$300(Lcom/duokan/airkan/phone/api/PhotoManager;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/duokan/airkan/phone/api/PhotoManager$1;->this$0:Lcom/duokan/airkan/phone/api/PhotoManager;

    #getter for: Lcom/duokan/airkan/phone/api/PhotoManager;->dataConnected:Z
    invoke-static {v3}, Lcom/duokan/airkan/phone/api/PhotoManager;->access$200(Lcom/duokan/airkan/phone/api/PhotoManager;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 447
    const/4 v2, 0x1

    .line 467
    .local v2, isConnected:Z
    :goto_0
    iget-object v3, p0, Lcom/duokan/airkan/phone/api/PhotoManager$1;->this$0:Lcom/duokan/airkan/phone/api/PhotoManager;

    #getter for: Lcom/duokan/airkan/phone/api/PhotoManager;->mIsConnected:Z
    invoke-static {v3}, Lcom/duokan/airkan/phone/api/PhotoManager;->access$500(Lcom/duokan/airkan/phone/api/PhotoManager;)Z

    move-result v3

    if-eq v2, v3, :cond_1

    .line 468
    iget-object v3, p0, Lcom/duokan/airkan/phone/api/PhotoManager$1;->this$0:Lcom/duokan/airkan/phone/api/PhotoManager;

    #setter for: Lcom/duokan/airkan/phone/api/PhotoManager;->mIsConnected:Z
    invoke-static {v3, v2}, Lcom/duokan/airkan/phone/api/PhotoManager;->access$502(Lcom/duokan/airkan/phone/api/PhotoManager;Z)Z

    .line 469
    iget-object v3, p0, Lcom/duokan/airkan/phone/api/PhotoManager$1;->this$0:Lcom/duokan/airkan/phone/api/PhotoManager;

    #getter for: Lcom/duokan/airkan/phone/api/PhotoManager;->mIsConnected:Z
    invoke-static {v3}, Lcom/duokan/airkan/phone/api/PhotoManager;->access$500(Lcom/duokan/airkan/phone/api/PhotoManager;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/duokan/airkan/phone/api/PhotoManager$1;->this$0:Lcom/duokan/airkan/phone/api/PhotoManager;

    #getter for: Lcom/duokan/airkan/phone/api/PhotoManager;->mRequestWasSent:Z
    invoke-static {v3}, Lcom/duokan/airkan/phone/api/PhotoManager;->access$600(Lcom/duokan/airkan/phone/api/PhotoManager;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 470
    iget-object v3, p0, Lcom/duokan/airkan/phone/api/PhotoManager$1;->this$0:Lcom/duokan/airkan/phone/api/PhotoManager;

    const/4 v4, 0x1

    #setter for: Lcom/duokan/airkan/phone/api/PhotoManager;->mRequestWasSent:Z
    invoke-static {v3, v4}, Lcom/duokan/airkan/phone/api/PhotoManager;->access$602(Lcom/duokan/airkan/phone/api/PhotoManager;Z)Z

    .line 471
    iget-object v3, p0, Lcom/duokan/airkan/phone/api/PhotoManager$1;->this$0:Lcom/duokan/airkan/phone/api/PhotoManager;

    invoke-virtual {v3}, Lcom/duokan/airkan/phone/api/PhotoManager;->postrequest()V

    .line 472
    iget-object v3, p0, Lcom/duokan/airkan/phone/api/PhotoManager$1;->this$0:Lcom/duokan/airkan/phone/api/PhotoManager;

    invoke-virtual {v3}, Lcom/duokan/airkan/phone/api/PhotoManager;->startOfferTimer()V

    .line 474
    :cond_0
    iget-object v3, p0, Lcom/duokan/airkan/phone/api/PhotoManager$1;->this$0:Lcom/duokan/airkan/phone/api/PhotoManager;

    iget-object v4, p0, Lcom/duokan/airkan/phone/api/PhotoManager$1;->this$0:Lcom/duokan/airkan/phone/api/PhotoManager;

    #getter for: Lcom/duokan/airkan/phone/api/PhotoManager;->mIsConnected:Z
    invoke-static {v4}, Lcom/duokan/airkan/phone/api/PhotoManager;->access$500(Lcom/duokan/airkan/phone/api/PhotoManager;)Z

    move-result v4

    #calls: Lcom/duokan/airkan/phone/api/PhotoManager;->setConnStatus(Z)V
    invoke-static {v3, v4}, Lcom/duokan/airkan/phone/api/PhotoManager;->access$700(Lcom/duokan/airkan/phone/api/PhotoManager;Z)V

    .line 476
    :cond_1
    iget-object v3, p0, Lcom/duokan/airkan/phone/api/PhotoManager$1;->this$0:Lcom/duokan/airkan/phone/api/PhotoManager;

    #getter for: Lcom/duokan/airkan/phone/api/PhotoManager;->TAG:Ljava/lang/String;
    invoke-static {v3}, Lcom/duokan/airkan/phone/api/PhotoManager;->access$000(Lcom/duokan/airkan/phone/api/PhotoManager;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mIsConnected in onConnected: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/duokan/airkan/phone/api/PhotoManager$1;->this$0:Lcom/duokan/airkan/phone/api/PhotoManager;

    #getter for: Lcom/duokan/airkan/phone/api/PhotoManager;->mIsConnected:Z
    invoke-static {v5}, Lcom/duokan/airkan/phone/api/PhotoManager;->access$500(Lcom/duokan/airkan/phone/api/PhotoManager;)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/duokan/airkan/common/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 477
    .end local v2           #isConnected:Z
    :goto_1
    return-void

    .line 448
    :cond_2
    iget-object v3, p0, Lcom/duokan/airkan/phone/api/PhotoManager$1;->this$0:Lcom/duokan/airkan/phone/api/PhotoManager;

    #getter for: Lcom/duokan/airkan/phone/api/PhotoManager;->dataConnected:Z
    invoke-static {v3}, Lcom/duokan/airkan/phone/api/PhotoManager;->access$200(Lcom/duokan/airkan/phone/api/PhotoManager;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 449
    const/4 v2, 0x0

    .restart local v2       #isConnected:Z
    goto :goto_0

    .line 452
    .end local v2           #isConnected:Z
    :cond_3
    const/4 v1, 0x0

    .line 453
    .local v1, i:I
    :goto_2
    iget-object v3, p0, Lcom/duokan/airkan/phone/api/PhotoManager$1;->this$0:Lcom/duokan/airkan/phone/api/PhotoManager;

    #getter for: Lcom/duokan/airkan/phone/api/PhotoManager;->linkConnected:Z
    invoke-static {v3}, Lcom/duokan/airkan/phone/api/PhotoManager;->access$300(Lcom/duokan/airkan/phone/api/PhotoManager;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 454
    add-int/lit8 v1, v1, 0x1

    .line 455
    const/16 v3, 0x1e

    if-lt v1, v3, :cond_4

    .line 456
    iget-object v3, p0, Lcom/duokan/airkan/phone/api/PhotoManager$1;->this$0:Lcom/duokan/airkan/phone/api/PhotoManager;

    #getter for: Lcom/duokan/airkan/phone/api/PhotoManager;->TAG:Ljava/lang/String;
    invoke-static {v3}, Lcom/duokan/airkan/phone/api/PhotoManager;->access$000(Lcom/duokan/airkan/phone/api/PhotoManager;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "Timeout for control link connecte"

    invoke-static {v3, v4}, Lcom/duokan/airkan/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 460
    :cond_4
    :try_start_0
    iget-object v3, p0, Lcom/duokan/airkan/phone/api/PhotoManager$1;->this$0:Lcom/duokan/airkan/phone/api/PhotoManager;

    #getter for: Lcom/duokan/airkan/phone/api/PhotoManager;->sleepInterval:I
    invoke-static {v3}, Lcom/duokan/airkan/phone/api/PhotoManager;->access$400(Lcom/duokan/airkan/phone/api/PhotoManager;)I

    move-result v3

    int-to-long v3, v3

    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 461
    :catch_0
    move-exception v0

    .line 462
    .local v0, ex:Ljava/lang/Exception;
    iget-object v3, p0, Lcom/duokan/airkan/phone/api/PhotoManager$1;->this$0:Lcom/duokan/airkan/phone/api/PhotoManager;

    #getter for: Lcom/duokan/airkan/phone/api/PhotoManager;->TAG:Ljava/lang/String;
    invoke-static {v3}, Lcom/duokan/airkan/phone/api/PhotoManager;->access$000(Lcom/duokan/airkan/phone/api/PhotoManager;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/duokan/airkan/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 465
    .end local v0           #ex:Ljava/lang/Exception;
    :cond_5
    const/4 v2, 0x1

    .restart local v2       #isConnected:Z
    goto/16 :goto_0
.end method

.method public onError(I)V
    .locals 2
    .parameter "error"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 487
    iget-object v0, p0, Lcom/duokan/airkan/phone/api/PhotoManager$1;->this$0:Lcom/duokan/airkan/phone/api/PhotoManager;

    #getter for: Lcom/duokan/airkan/phone/api/PhotoManager;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/duokan/airkan/phone/api/PhotoManager;->access$000(Lcom/duokan/airkan/phone/api/PhotoManager;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "received error report"

    invoke-static {v0, v1}, Lcom/duokan/airkan/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 488
    iget-object v0, p0, Lcom/duokan/airkan/phone/api/PhotoManager$1;->this$0:Lcom/duokan/airkan/phone/api/PhotoManager;

    invoke-virtual {v0, p1}, Lcom/duokan/airkan/phone/api/PhotoManager;->errorProcess(I)V

    .line 489
    return-void
.end method

.method public onSendResult(ZI)V
    .locals 3
    .parameter "sendOk"
    .parameter "handle"

    .prologue
    .line 435
    iget-object v0, p0, Lcom/duokan/airkan/phone/api/PhotoManager$1;->this$0:Lcom/duokan/airkan/phone/api/PhotoManager;

    #getter for: Lcom/duokan/airkan/phone/api/PhotoManager;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/duokan/airkan/phone/api/PhotoManager;->access$000(Lcom/duokan/airkan/phone/api/PhotoManager;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "send result, for image Handle: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/duokan/airkan/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 436
    iget-object v0, p0, Lcom/duokan/airkan/phone/api/PhotoManager$1;->this$0:Lcom/duokan/airkan/phone/api/PhotoManager;

    #calls: Lcom/duokan/airkan/phone/api/PhotoManager;->postSendResult(ZI)V
    invoke-static {v0, p1, p2}, Lcom/duokan/airkan/phone/api/PhotoManager;->access$100(Lcom/duokan/airkan/phone/api/PhotoManager;ZI)V

    .line 438
    return-void
.end method

.method public onServiceClosed()V
    .locals 2

    .prologue
    .line 481
    iget-object v0, p0, Lcom/duokan/airkan/phone/api/PhotoManager$1;->this$0:Lcom/duokan/airkan/phone/api/PhotoManager;

    #getter for: Lcom/duokan/airkan/phone/api/PhotoManager;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/duokan/airkan/phone/api/PhotoManager;->access$000(Lcom/duokan/airkan/phone/api/PhotoManager;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "onServiceClosed from photo send service"

    invoke-static {v0, v1}, Lcom/duokan/airkan/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 482
    return-void
.end method

.method public savePhotoData([BILjava/lang/String;)I
    .locals 1
    .parameter "data"
    .parameter "handle"
    .parameter "filename"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 494
    iget-object v0, p0, Lcom/duokan/airkan/phone/api/PhotoManager$1;->this$0:Lcom/duokan/airkan/phone/api/PhotoManager;

    #calls: Lcom/duokan/airkan/phone/api/PhotoManager;->postSavePhotoData(Ljava/lang/String;[B)V
    invoke-static {v0, p3, p1}, Lcom/duokan/airkan/phone/api/PhotoManager;->access$800(Lcom/duokan/airkan/phone/api/PhotoManager;Ljava/lang/String;[B)V

    .line 495
    const/4 v0, 0x0

    return v0
.end method

.method public savePhotoDataM([BII)I
    .locals 4
    .parameter "data"
    .parameter "order"
    .parameter "length"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 501
    iget-object v0, p0, Lcom/duokan/airkan/phone/api/PhotoManager$1;->this$0:Lcom/duokan/airkan/phone/api/PhotoManager;

    #getter for: Lcom/duokan/airkan/phone/api/PhotoManager;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/duokan/airkan/phone/api/PhotoManager;->access$000(Lcom/duokan/airkan/phone/api/PhotoManager;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "receive one multi blocks photo: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/duokan/airkan/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 502
    iget-object v0, p0, Lcom/duokan/airkan/phone/api/PhotoManager$1;->this$0:Lcom/duokan/airkan/phone/api/PhotoManager;

    #getter for: Lcom/duokan/airkan/phone/api/PhotoManager;->mImageData:[B
    invoke-static {v0}, Lcom/duokan/airkan/phone/api/PhotoManager;->access$900(Lcom/duokan/airkan/phone/api/PhotoManager;)[B

    move-result-object v0

    const/high16 v1, 0x4

    mul-int/2addr v1, p2

    invoke-static {p1, v3, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 503
    iget-object v0, p0, Lcom/duokan/airkan/phone/api/PhotoManager$1;->this$0:Lcom/duokan/airkan/phone/api/PhotoManager;

    #getter for: Lcom/duokan/airkan/phone/api/PhotoManager;->mBlockCounts:I
    invoke-static {v0}, Lcom/duokan/airkan/phone/api/PhotoManager;->access$1000(Lcom/duokan/airkan/phone/api/PhotoManager;)I

    move-result v0

    add-int/lit8 v1, p2, 0x1

    if-ne v0, v1, :cond_0

    .line 504
    iget-object v0, p0, Lcom/duokan/airkan/phone/api/PhotoManager$1;->this$0:Lcom/duokan/airkan/phone/api/PhotoManager;

    iget-object v1, p0, Lcom/duokan/airkan/phone/api/PhotoManager$1;->this$0:Lcom/duokan/airkan/phone/api/PhotoManager;

    #getter for: Lcom/duokan/airkan/phone/api/PhotoManager;->mFileName:Ljava/lang/String;
    invoke-static {v1}, Lcom/duokan/airkan/phone/api/PhotoManager;->access$1100(Lcom/duokan/airkan/phone/api/PhotoManager;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/duokan/airkan/phone/api/PhotoManager$1;->this$0:Lcom/duokan/airkan/phone/api/PhotoManager;

    #getter for: Lcom/duokan/airkan/phone/api/PhotoManager;->mImageData:[B
    invoke-static {v2}, Lcom/duokan/airkan/phone/api/PhotoManager;->access$900(Lcom/duokan/airkan/phone/api/PhotoManager;)[B

    move-result-object v2

    #calls: Lcom/duokan/airkan/phone/api/PhotoManager;->postSavePhotoData(Ljava/lang/String;[B)V
    invoke-static {v0, v1, v2}, Lcom/duokan/airkan/phone/api/PhotoManager;->access$800(Lcom/duokan/airkan/phone/api/PhotoManager;Ljava/lang/String;[B)V

    .line 505
    iget-object v0, p0, Lcom/duokan/airkan/phone/api/PhotoManager$1;->this$0:Lcom/duokan/airkan/phone/api/PhotoManager;

    #getter for: Lcom/duokan/airkan/phone/api/PhotoManager;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/duokan/airkan/phone/api/PhotoManager;->access$000(Lcom/duokan/airkan/phone/api/PhotoManager;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "receive one multi blocks photo"

    invoke-static {v0, v1}, Lcom/duokan/airkan/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 507
    :cond_0
    return v3
.end method
