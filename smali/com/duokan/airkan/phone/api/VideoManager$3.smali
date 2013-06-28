.class Lcom/duokan/airkan/phone/api/VideoManager$3;
.super Ljava/lang/Object;
.source "VideoManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/duokan/airkan/phone/api/VideoManager;->play()V
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
    .line 623
    iput-object p1, p0, Lcom/duokan/airkan/phone/api/VideoManager$3;->this$0:Lcom/duokan/airkan/phone/api/VideoManager;

    iput-object p2, p0, Lcom/duokan/airkan/phone/api/VideoManager$3;->val$myService:Lcom/duokan/airkan/phone/aidl/IAirkanClientService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 22

    .prologue
    .line 626
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/duokan/airkan/phone/api/VideoManager$3;->this$0:Lcom/duokan/airkan/phone/api/VideoManager;

    move-object/from16 v19, v0

    #getter for: Lcom/duokan/airkan/phone/api/VideoManager;->mVideoMetaData:Lcom/duokan/airkan/common/video/VideoMetaData;
    invoke-static/range {v19 .. v19}, Lcom/duokan/airkan/phone/api/VideoManager;->access$200(Lcom/duokan/airkan/phone/api/VideoManager;)Lcom/duokan/airkan/common/video/VideoMetaData;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/duokan/airkan/common/video/VideoMetaData;->getSpParameters()Lorg/json/JSONObject;

    move-result-object v13

    .line 627
    .local v13, spPara:Lorg/json/JSONObject;
    if-eqz v13, :cond_0

    .line 628
    invoke-virtual {v13}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v7

    .line 629
    .local v7, paramaters:Ljava/lang/String;
    const-string v19, "AVM"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "to play - "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/duokan/airkan/common/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 631
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/duokan/airkan/phone/api/VideoManager$3;->val$myService:Lcom/duokan/airkan/phone/aidl/IAirkanClientService;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/duokan/airkan/phone/api/VideoManager$3;->this$0:Lcom/duokan/airkan/phone/api/VideoManager;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lcom/duokan/airkan/phone/api/ConnectionManager;->mServiceHandle:I

    move/from16 v20, v0

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-interface {v0, v1, v7}, Lcom/duokan/airkan/phone/aidl/IAirkanClientService;->playSp(ILjava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 670
    .end local v7           #paramaters:Ljava/lang/String;
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/duokan/airkan/phone/api/VideoManager$3;->this$0:Lcom/duokan/airkan/phone/api/VideoManager;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    #setter for: Lcom/duokan/airkan/phone/api/VideoManager;->mInitialQueryCount:I
    invoke-static/range {v19 .. v20}, Lcom/duokan/airkan/phone/api/VideoManager;->access$402(Lcom/duokan/airkan/phone/api/VideoManager;I)I

    .line 672
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/duokan/airkan/phone/api/VideoManager$3;->this$0:Lcom/duokan/airkan/phone/api/VideoManager;

    move-object/from16 v19, v0

    #calls: Lcom/duokan/airkan/phone/api/VideoManager;->initialQuery()V
    invoke-static/range {v19 .. v19}, Lcom/duokan/airkan/phone/api/VideoManager;->access$100(Lcom/duokan/airkan/phone/api/VideoManager;)V
    :try_end_1
    .catch Lcom/duokan/airkan/common/AirkanException; {:try_start_1 .. :try_end_1} :catch_4

    .line 676
    :goto_1
    return-void

    .line 632
    .restart local v7       #paramaters:Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 633
    .local v3, e:Landroid/os/RemoteException;
    const-string v19, "AVM"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "play error"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual {v3}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/duokan/airkan/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 634
    .end local v3           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v3

    .line 635
    .local v3, e:Ljava/lang/Exception;
    const-string v19, "AVM"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "play error"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/duokan/airkan/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 638
    .end local v3           #e:Ljava/lang/Exception;
    .end local v7           #paramaters:Ljava/lang/String;
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/duokan/airkan/phone/api/VideoManager$3;->this$0:Lcom/duokan/airkan/phone/api/VideoManager;

    move-object/from16 v19, v0

    #getter for: Lcom/duokan/airkan/phone/api/VideoManager;->mVideoMetaData:Lcom/duokan/airkan/common/video/VideoMetaData;
    invoke-static/range {v19 .. v19}, Lcom/duokan/airkan/phone/api/VideoManager;->access$200(Lcom/duokan/airkan/phone/api/VideoManager;)Lcom/duokan/airkan/common/video/VideoMetaData;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/duokan/airkan/common/video/VideoMetaData;->getPlaylength()I

    move-result v5

    .line 639
    .local v5, length:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/duokan/airkan/phone/api/VideoManager$3;->this$0:Lcom/duokan/airkan/phone/api/VideoManager;

    move-object/from16 v19, v0

    #getter for: Lcom/duokan/airkan/phone/api/VideoManager;->mVideoMetaData:Lcom/duokan/airkan/common/video/VideoMetaData;
    invoke-static/range {v19 .. v19}, Lcom/duokan/airkan/phone/api/VideoManager;->access$200(Lcom/duokan/airkan/phone/api/VideoManager;)Lcom/duokan/airkan/common/video/VideoMetaData;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/duokan/airkan/common/video/VideoMetaData;->getURL()Ljava/lang/String;

    move-result-object v15

    .line 640
    .local v15, url:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/duokan/airkan/phone/api/VideoManager$3;->this$0:Lcom/duokan/airkan/phone/api/VideoManager;

    move-object/from16 v19, v0

    #getter for: Lcom/duokan/airkan/phone/api/VideoManager;->mVideoMetaData:Lcom/duokan/airkan/common/video/VideoMetaData;
    invoke-static/range {v19 .. v19}, Lcom/duokan/airkan/phone/api/VideoManager;->access$200(Lcom/duokan/airkan/phone/api/VideoManager;)Lcom/duokan/airkan/common/video/VideoMetaData;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/duokan/airkan/common/video/VideoMetaData;->getTitle()Ljava/lang/String;

    move-result-object v14

    .line 641
    .local v14, title:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/duokan/airkan/phone/api/VideoManager$3;->this$0:Lcom/duokan/airkan/phone/api/VideoManager;

    move-object/from16 v19, v0

    #getter for: Lcom/duokan/airkan/phone/api/VideoManager;->mVCDPlayPostCtrl:Lcom/duokan/airkan/common/video/VideoControlData;
    invoke-static/range {v19 .. v19}, Lcom/duokan/airkan/phone/api/VideoManager;->access$300(Lcom/duokan/airkan/phone/api/VideoManager;)Lcom/duokan/airkan/common/video/VideoControlData;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/duokan/airkan/common/video/VideoControlData;->getPosition()I

    move-result v9

    .line 642
    .local v9, pos:I
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "To play:"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " url:"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " play length:"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " start:"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 644
    .local v6, msg:Ljava/lang/String;
    const-string v19, "AVM"

    move-object/from16 v0, v19

    invoke-static {v0, v6}, Lcom/duokan/airkan/common/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 645
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/duokan/airkan/phone/api/VideoManager$3;->this$0:Lcom/duokan/airkan/phone/api/VideoManager;

    move-object/from16 v19, v0

    #getter for: Lcom/duokan/airkan/phone/api/VideoManager;->mVideoMetaData:Lcom/duokan/airkan/common/video/VideoMetaData;
    invoke-static/range {v19 .. v19}, Lcom/duokan/airkan/phone/api/VideoManager;->access$200(Lcom/duokan/airkan/phone/api/VideoManager;)Lcom/duokan/airkan/common/video/VideoMetaData;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/duokan/airkan/common/video/VideoMetaData;->getVideoBasicInfo()Lcom/duokan/airkan/common/video/VideoBasicInfo;

    move-result-object v16

    .line 646
    .local v16, vbi:Lcom/duokan/airkan/common/video/VideoBasicInfo;
    move-object/from16 v0, v16

    iput v9, v0, Lcom/duokan/airkan/common/video/VideoBasicInfo;->position:I

    .line 647
    new-instance v10, Lcom/duokan/airkan/common/aidl/video/ParcelVideoBasicInfo;

    move-object/from16 v0, v16

    invoke-direct {v10, v0}, Lcom/duokan/airkan/common/aidl/video/ParcelVideoBasicInfo;-><init>(Lcom/duokan/airkan/common/video/VideoBasicInfo;)V

    .line 649
    .local v10, pvbi:Lcom/duokan/airkan/common/aidl/video/ParcelVideoBasicInfo;
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 650
    .local v12, pvul:Ljava/util/List;,"Ljava/util/List<Lcom/duokan/airkan/common/aidl/video/ParcelVideoURL;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/duokan/airkan/phone/api/VideoManager$3;->this$0:Lcom/duokan/airkan/phone/api/VideoManager;

    move-object/from16 v19, v0

    #getter for: Lcom/duokan/airkan/phone/api/VideoManager;->mVideoMetaData:Lcom/duokan/airkan/common/video/VideoMetaData;
    invoke-static/range {v19 .. v19}, Lcom/duokan/airkan/phone/api/VideoManager;->access$200(Lcom/duokan/airkan/phone/api/VideoManager;)Lcom/duokan/airkan/common/video/VideoMetaData;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/duokan/airkan/common/video/VideoMetaData;->getVideoUrlList()Ljava/util/ArrayList;

    move-result-object v18

    .line 651
    .local v18, vul:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/duokan/airkan/common/video/VideoURL;>;"
    const/4 v4, 0x0

    .local v4, i:I
    :goto_2
    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v19

    move/from16 v0, v19

    if-ge v4, v0, :cond_1

    .line 652
    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/duokan/airkan/common/video/VideoURL;

    .line 653
    .local v17, vu:Lcom/duokan/airkan/common/video/VideoURL;
    new-instance v11, Lcom/duokan/airkan/common/aidl/video/ParcelVideoURL;

    move-object/from16 v0, v17

    invoke-direct {v11, v0}, Lcom/duokan/airkan/common/aidl/video/ParcelVideoURL;-><init>(Lcom/duokan/airkan/common/video/VideoURL;)V

    .line 654
    .local v11, pvu:Lcom/duokan/airkan/common/aidl/video/ParcelVideoURL;
    invoke-interface {v12, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 651
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 656
    .end local v11           #pvu:Lcom/duokan/airkan/common/aidl/video/ParcelVideoURL;
    .end local v17           #vu:Lcom/duokan/airkan/common/video/VideoURL;
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/duokan/airkan/phone/api/VideoManager$3;->this$0:Lcom/duokan/airkan/phone/api/VideoManager;

    move-object/from16 v19, v0

    #getter for: Lcom/duokan/airkan/phone/api/VideoManager;->mVideoMetaData:Lcom/duokan/airkan/common/video/VideoMetaData;
    invoke-static/range {v19 .. v19}, Lcom/duokan/airkan/phone/api/VideoManager;->access$200(Lcom/duokan/airkan/phone/api/VideoManager;)Lcom/duokan/airkan/common/video/VideoMetaData;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/duokan/airkan/common/video/VideoMetaData;->getDuokanVideoInfo()Lcom/duokan/airkan/common/video/DuokanVideoInfo;

    move-result-object v2

    .line 657
    .local v2, dvi:Lcom/duokan/airkan/common/video/DuokanVideoInfo;
    new-instance v8, Lcom/duokan/airkan/common/aidl/video/ParcelDuokanVideoInfo;

    invoke-direct {v8, v2}, Lcom/duokan/airkan/common/aidl/video/ParcelDuokanVideoInfo;-><init>(Lcom/duokan/airkan/common/video/DuokanVideoInfo;)V

    .line 659
    .local v8, pdvi:Lcom/duokan/airkan/common/aidl/video/ParcelDuokanVideoInfo;
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/duokan/airkan/phone/api/VideoManager$3;->this$0:Lcom/duokan/airkan/phone/api/VideoManager;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-boolean v0, v0, Lcom/duokan/airkan/phone/api/VideoManager;->mIsMusic:Z

    move/from16 v19, v0

    if-eqz v19, :cond_2

    .line 660
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/duokan/airkan/phone/api/VideoManager$3;->val$myService:Lcom/duokan/airkan/phone/aidl/IAirkanClientService;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/duokan/airkan/phone/api/VideoManager$3;->this$0:Lcom/duokan/airkan/phone/api/VideoManager;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lcom/duokan/airkan/phone/api/ConnectionManager;->mServiceHandle:I

    move/from16 v20, v0

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-interface {v0, v1, v10, v12, v8}, Lcom/duokan/airkan/phone/aidl/IAirkanClientService;->musicPlay(ILcom/duokan/airkan/common/aidl/video/ParcelVideoBasicInfo;Ljava/util/List;Lcom/duokan/airkan/common/aidl/video/ParcelDuokanVideoInfo;)I
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    goto/16 :goto_0

    .line 664
    :catch_2
    move-exception v3

    .line 665
    .local v3, e:Landroid/os/RemoteException;
    const-string v19, "AVM"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "play error"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual {v3}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/duokan/airkan/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 662
    .end local v3           #e:Landroid/os/RemoteException;
    :cond_2
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/duokan/airkan/phone/api/VideoManager$3;->val$myService:Lcom/duokan/airkan/phone/aidl/IAirkanClientService;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/duokan/airkan/phone/api/VideoManager$3;->this$0:Lcom/duokan/airkan/phone/api/VideoManager;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lcom/duokan/airkan/phone/api/ConnectionManager;->mServiceHandle:I

    move/from16 v20, v0

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-interface {v0, v1, v10, v12, v8}, Lcom/duokan/airkan/phone/aidl/IAirkanClientService;->play(ILcom/duokan/airkan/common/aidl/video/ParcelVideoBasicInfo;Ljava/util/List;Lcom/duokan/airkan/common/aidl/video/ParcelDuokanVideoInfo;)I
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto/16 :goto_0

    .line 666
    :catch_3
    move-exception v3

    .line 667
    .local v3, e:Ljava/lang/Exception;
    const-string v19, "AVM"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "play error"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/duokan/airkan/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 673
    .end local v2           #dvi:Lcom/duokan/airkan/common/video/DuokanVideoInfo;
    .end local v3           #e:Ljava/lang/Exception;
    .end local v4           #i:I
    .end local v5           #length:I
    .end local v6           #msg:Ljava/lang/String;
    .end local v8           #pdvi:Lcom/duokan/airkan/common/aidl/video/ParcelDuokanVideoInfo;
    .end local v9           #pos:I
    .end local v10           #pvbi:Lcom/duokan/airkan/common/aidl/video/ParcelVideoBasicInfo;
    .end local v12           #pvul:Ljava/util/List;,"Ljava/util/List<Lcom/duokan/airkan/common/aidl/video/ParcelVideoURL;>;"
    .end local v14           #title:Ljava/lang/String;
    .end local v15           #url:Ljava/lang/String;
    .end local v16           #vbi:Lcom/duokan/airkan/common/video/VideoBasicInfo;
    .end local v18           #vul:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/duokan/airkan/common/video/VideoURL;>;"
    :catch_4
    move-exception v3

    .line 674
    .local v3, e:Lcom/duokan/airkan/common/AirkanException;
    invoke-virtual {v3}, Lcom/duokan/airkan/common/AirkanException;->printStackTrace()V

    goto/16 :goto_1
.end method
