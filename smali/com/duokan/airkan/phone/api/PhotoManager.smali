.class public Lcom/duokan/airkan/phone/api/PhotoManager;
.super Lcom/duokan/airkan/phone/api/ConnectionManager;
.source "PhotoManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/duokan/airkan/phone/api/PhotoManager$OfferTimerTask;,
        Lcom/duokan/airkan/phone/api/PhotoManager$ConnectTimerTask;,
        Lcom/duokan/airkan/phone/api/PhotoManager$InternalListener;,
        Lcom/duokan/airkan/phone/api/PhotoManager$OnPhotoEventListener;
    }
.end annotation


# static fields
.field private static INDEX_OFFSET_A:I

.field private static INDEX_OFFSET_B:I

.field private static Max_Presend_Offset:I

.field public static bufferHandleList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static list4Pull:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/duokan/airkan/photo/SendoutFileInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static serviceHandle:I

.field public static volatile waitingShowHandle:I


# instance fields
.field private CONNECT_RSP_TIMER:I

.field private OFFER_TIMER:I

.field private TAG:Ljava/lang/String;

.field private volatile dataConnected:Z

.field private dataip:Ljava/lang/String;

.field private filelist:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/duokan/airkan/photo/SendoutFileInfo;",
            ">;"
        }
    .end annotation
.end field

.field private index:I

.field internalListener:Lcom/duokan/airkan/phone/api/PhotoManager$InternalListener;

.field private isSwitched2Video:Z

.field private volatile lastSentHandle:I

.field private volatile linkConnected:Z

.field private mBlockCounts:I

.field private mCallback:Lcom/duokan/airkan/phone/aidl/IPhotoServiceCallback;

.field private mConnectTimer:Ljava/util/Timer;

.field private mConnectTimerTask:Lcom/duokan/airkan/phone/api/PhotoManager$ConnectTimerTask;

.field private mContext:Landroid/content/Context;

.field private mCurrentIndexOffset:I

.field private mDeviceManager:Lcom/duokan/airkan/phone/api/DeviceManager;

.field private mFileName:Ljava/lang/String;

.field private mFirstFileName:Ljava/lang/String;

.field private mImageData:[B

.field private mIs2Connect:Z

.field private volatile mIsConnected:Z

.field private mIsFirstPhoto:Z

.field private mIsPhotoSendServiceBoundSuccess:Z

.field private mOfferTimer:Ljava/util/Timer;

.field private mOfferTimerTask:Lcom/duokan/airkan/phone/api/PhotoManager$OfferTimerTask;

.field private mPhotoSendService:Lcom/duokan/airkan/photosend/aidl/IPhotoSendService;

.field private mPhotoSendServiceCallback:Lcom/duokan/airkan/photosend/aidl/IPhotoSendServiceCallback;

.field private mPhotoSendServiceConnection:Landroid/content/ServiceConnection;

.field private mQuerySlideShowType:Z

.field private volatile mReleaseFromLoc:Z

.field private volatile mRequestWasSent:Z

.field private objHandler:Landroid/os/Handler;

.field private photoListener:Lcom/duokan/airkan/phone/api/PhotoManager$OnPhotoEventListener;

.field private remoteH:I

.field private remoteW:I

.field private volatile sendingHandle:I

.field private sleepInterval:I

.field private sliderShow:Z

.field private slidershowtypelist:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/duokan/airkan/common/aidl/photo/ParcelSliderType;",
            ">;"
        }
    .end annotation
.end field

.field private tcpport:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 65
    const/4 v0, 0x3

    sput v0, Lcom/duokan/airkan/phone/api/PhotoManager;->Max_Presend_Offset:I

    .line 68
    sput v1, Lcom/duokan/airkan/phone/api/PhotoManager;->serviceHandle:I

    .line 92
    const/4 v0, -0x1

    sput v0, Lcom/duokan/airkan/phone/api/PhotoManager;->waitingShowHandle:I

    .line 97
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/duokan/airkan/phone/api/PhotoManager;->bufferHandleList:Ljava/util/ArrayList;

    .line 100
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/duokan/airkan/phone/api/PhotoManager;->list4Pull:Ljava/util/ArrayList;

    .line 115
    sput v1, Lcom/duokan/airkan/phone/api/PhotoManager;->INDEX_OFFSET_A:I

    .line 116
    const/16 v0, 0x7530

    sput v0, Lcom/duokan/airkan/phone/api/PhotoManager;->INDEX_OFFSET_B:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/duokan/airkan/phone/api/DeviceManager;Lcom/duokan/airkan/phone/api/PhotoManager$OnPhotoEventListener;)V
    .locals 6
    .parameter "context"
    .parameter "appName"
    .parameter "deviceManager"
    .parameter "listener"

    .prologue
    const/16 v5, 0x1388

    const/4 v4, 0x1

    const/4 v3, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 188
    invoke-direct {p0, p2, p3}, Lcom/duokan/airkan/phone/api/ConnectionManager;-><init>(Ljava/lang/String;Lcom/duokan/airkan/phone/api/DeviceManager;)V

    .line 64
    const-string v0, "PhotoManager"

    iput-object v0, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->TAG:Ljava/lang/String;

    .line 67
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->objHandler:Landroid/os/Handler;

    .line 69
    const/16 v0, 0x780

    iput v0, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->remoteW:I

    .line 70
    const/16 v0, 0x438

    iput v0, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->remoteH:I

    .line 71
    const-string v0, "10.1.1.104"

    iput-object v0, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->dataip:Ljava/lang/String;

    .line 72
    const/16 v0, 0x17c9

    iput v0, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->tcpport:I

    .line 73
    iput-boolean v1, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->mIsConnected:Z

    .line 74
    iput-boolean v1, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->dataConnected:Z

    .line 75
    iput-boolean v1, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->linkConnected:Z

    .line 76
    iput-object v2, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->slidershowtypelist:Ljava/util/ArrayList;

    .line 79
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->filelist:Ljava/util/ArrayList;

    .line 80
    iput v1, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->index:I

    .line 81
    iput-boolean v1, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->sliderShow:Z

    .line 82
    const/16 v0, 0x64

    iput v0, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->sleepInterval:I

    .line 83
    new-instance v0, Lcom/duokan/airkan/phone/api/PhotoManager$InternalListener;

    invoke-direct {v0, p0}, Lcom/duokan/airkan/phone/api/PhotoManager$InternalListener;-><init>(Lcom/duokan/airkan/phone/api/PhotoManager;)V

    iput-object v0, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->internalListener:Lcom/duokan/airkan/phone/api/PhotoManager$InternalListener;

    .line 85
    iput v5, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->CONNECT_RSP_TIMER:I

    .line 86
    iput v5, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->OFFER_TIMER:I

    .line 93
    iput v3, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->sendingHandle:I

    .line 94
    iput v3, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->lastSentHandle:I

    .line 101
    iput-object v2, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->mPhotoSendService:Lcom/duokan/airkan/photosend/aidl/IPhotoSendService;

    .line 102
    iput-boolean v1, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->mIsPhotoSendServiceBoundSuccess:Z

    .line 103
    iput-object v2, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->mContext:Landroid/content/Context;

    .line 104
    iput-boolean v1, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->isSwitched2Video:Z

    .line 105
    iput-boolean v1, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->mReleaseFromLoc:Z

    .line 106
    iput-boolean v4, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->mIsFirstPhoto:Z

    .line 107
    iput-boolean v1, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->mQuerySlideShowType:Z

    .line 108
    iput-object v2, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->mDeviceManager:Lcom/duokan/airkan/phone/api/DeviceManager;

    .line 109
    iput-object v2, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->mFirstFileName:Ljava/lang/String;

    .line 110
    iput-boolean v1, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->mIs2Connect:Z

    .line 111
    iput-boolean v1, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->mRequestWasSent:Z

    .line 112
    iput-object v2, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->mImageData:[B

    .line 113
    iput v1, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->mBlockCounts:I

    .line 114
    iput-object v2, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->mFileName:Ljava/lang/String;

    .line 117
    sget v0, Lcom/duokan/airkan/phone/api/PhotoManager;->INDEX_OFFSET_A:I

    iput v0, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->mCurrentIndexOffset:I

    .line 432
    new-instance v0, Lcom/duokan/airkan/phone/api/PhotoManager$1;

    invoke-direct {v0, p0}, Lcom/duokan/airkan/phone/api/PhotoManager$1;-><init>(Lcom/duokan/airkan/phone/api/PhotoManager;)V

    iput-object v0, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->mPhotoSendServiceCallback:Lcom/duokan/airkan/photosend/aidl/IPhotoSendServiceCallback;

    .line 519
    new-instance v0, Lcom/duokan/airkan/phone/api/PhotoManager$2;

    invoke-direct {v0, p0}, Lcom/duokan/airkan/phone/api/PhotoManager$2;-><init>(Lcom/duokan/airkan/phone/api/PhotoManager;)V

    iput-object v0, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->mPhotoSendServiceConnection:Landroid/content/ServiceConnection;

    .line 538
    new-instance v0, Lcom/duokan/airkan/phone/api/PhotoManager$3;

    invoke-direct {v0, p0}, Lcom/duokan/airkan/phone/api/PhotoManager$3;-><init>(Lcom/duokan/airkan/phone/api/PhotoManager;)V

    iput-object v0, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->mCallback:Lcom/duokan/airkan/phone/aidl/IPhotoServiceCallback;

    .line 189
    const/4 v0, 0x4

    invoke-static {v0}, Lcom/duokan/airkan/common/Log;->setLevel(I)V

    .line 190
    iput-object p4, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->photoListener:Lcom/duokan/airkan/phone/api/PhotoManager$OnPhotoEventListener;

    .line 191
    invoke-virtual {p0}, Lcom/duokan/airkan/phone/api/PhotoManager;->registerCallback()V

    .line 193
    if-eqz p3, :cond_0

    .line 194
    iget-object v0, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->internalListener:Lcom/duokan/airkan/phone/api/PhotoManager$InternalListener;

    invoke-virtual {p3, v0}, Lcom/duokan/airkan/phone/api/DeviceManager;->setInternalListenerPhoto(Lcom/duokan/airkan/phone/api/DeviceManager$IInternalListener;)V

    .line 195
    iput-object p3, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->mDeviceManager:Lcom/duokan/airkan/phone/api/DeviceManager;

    .line 198
    :cond_0
    iput-boolean v1, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->mIsConnected:Z

    .line 199
    iput-boolean v1, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->linkConnected:Z

    .line 200
    iput-boolean v1, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->dataConnected:Z

    .line 201
    iput-boolean v4, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->mIsFirstPhoto:Z

    .line 202
    iput-boolean v1, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->mIs2Connect:Z

    .line 203
    iput-object p1, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->mContext:Landroid/content/Context;

    .line 204
    iput v1, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->mBlockCounts:I

    .line 205
    iput-object v2, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->mImageData:[B

    .line 206
    iput-object v2, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->mFileName:Ljava/lang/String;

    .line 208
    invoke-direct {p0}, Lcom/duokan/airkan/phone/api/PhotoManager;->bindPhotoSendService()V

    .line 210
    return-void
.end method

.method private DataConnect()V
    .locals 8

    .prologue
    .line 1232
    iget-object v3, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->mDeviceManager:Lcom/duokan/airkan/phone/api/DeviceManager;

    if-eqz v3, :cond_4

    .line 1233
    iget-object v3, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->mDeviceManager:Lcom/duokan/airkan/phone/api/DeviceManager;

    invoke-virtual {v3}, Lcom/duokan/airkan/phone/api/DeviceManager;->getConnectDeviceIP()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->dataip:Ljava/lang/String;

    .line 1234
    iget-object v3, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->mDeviceManager:Lcom/duokan/airkan/phone/api/DeviceManager;

    invoke-virtual {v3}, Lcom/duokan/airkan/phone/api/DeviceManager;->getConnectDeviceText()Ljava/lang/String;

    move-result-object v1

    .line 1236
    .local v1, info:Ljava/lang/String;
    iget-object v3, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->dataip:Ljava/lang/String;

    if-eqz v3, :cond_0

    if-nez v1, :cond_3

    .line 1237
    :cond_0
    iget-object v3, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->dataip:Ljava/lang/String;

    if-nez v3, :cond_2

    .line 1238
    iget-object v3, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->TAG:Ljava/lang/String;

    const-string v4, "device info error exception, dataip is null"

    invoke-static {v3, v4}, Lcom/duokan/airkan/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1271
    .end local v1           #info:Ljava/lang/String;
    :cond_1
    :goto_0
    return-void

    .line 1240
    .restart local v1       #info:Ljava/lang/String;
    :cond_2
    iget-object v3, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->TAG:Ljava/lang/String;

    const-string v4, "device info null exception"

    invoke-static {v3, v4}, Lcom/duokan/airkan/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1245
    :cond_3
    iget-object v3, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->dataip:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/duokan/airkan/common/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1247
    new-instance v2, Lcom/duokan/airkan/common/MdnsExtraData;

    invoke-direct {v2}, Lcom/duokan/airkan/common/MdnsExtraData;-><init>()V

    .line 1248
    .local v2, mMdnsExtraData:Lcom/duokan/airkan/common/MdnsExtraData;
    invoke-virtual {v2, v1}, Lcom/duokan/airkan/common/MdnsExtraData;->parse(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1252
    invoke-virtual {v2}, Lcom/duokan/airkan/common/MdnsExtraData;->getPhotoSendPort()I

    move-result v3

    iput v3, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->tcpport:I

    .line 1253
    invoke-virtual {v2}, Lcom/duokan/airkan/common/MdnsExtraData;->getRemoteScreenWidth()I

    move-result v3

    iput v3, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->remoteW:I

    .line 1254
    invoke-virtual {v2}, Lcom/duokan/airkan/common/MdnsExtraData;->getRemoteScreenHeight()I

    move-result v3

    iput v3, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->remoteH:I

    .line 1255
    iget-object v3, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ip: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->dataip:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " port: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->tcpport:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " w: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->remoteW:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " h: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->remoteH:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/duokan/airkan/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1257
    .end local v1           #info:Ljava/lang/String;
    .end local v2           #mMdnsExtraData:Lcom/duokan/airkan/common/MdnsExtraData;
    :cond_4
    iget-object v3, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->mPhotoSendService:Lcom/duokan/airkan/photosend/aidl/IPhotoSendService;

    if-eqz v3, :cond_5

    .line 1259
    :try_start_0
    iget-object v3, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->mPhotoSendService:Lcom/duokan/airkan/photosend/aidl/IPhotoSendService;

    iget-object v4, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->dataip:Ljava/lang/String;

    iget v5, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->tcpport:I

    iget v6, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->remoteW:I

    iget v7, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->remoteH:I

    invoke-interface {v3, v4, v5, v6, v7}, Lcom/duokan/airkan/photosend/aidl/IPhotoSendService;->startPhotoSend(Ljava/lang/String;III)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1267
    :goto_1
    iget-object v3, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->mFirstFileName:Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 1268
    iget-object v3, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->mFirstFileName:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Lcom/duokan/airkan/phone/api/PhotoManager;->showPhoto(Ljava/lang/String;Z)I

    goto/16 :goto_0

    .line 1260
    :catch_0
    move-exception v0

    .line 1261
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1

    .line 1264
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_5
    iget-object v3, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->TAG:Ljava/lang/String;

    const-string v4, "mPhotoSendService is not available"

    invoke-static {v3, v4}, Lcom/duokan/airkan/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private DataDisConnect()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1274
    iget-object v1, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->mPhotoSendService:Lcom/duokan/airkan/photosend/aidl/IPhotoSendService;

    if-eqz v1, :cond_0

    .line 1276
    :try_start_0
    iget-object v1, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->mPhotoSendService:Lcom/duokan/airkan/photosend/aidl/IPhotoSendService;

    invoke-interface {v1}, Lcom/duokan/airkan/photosend/aidl/IPhotoSendService;->stopPhotoSend()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1287
    :goto_0
    return-void

    .line 1277
    :catch_0
    move-exception v0

    .line 1278
    .local v0, e1:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1279
    iget-object v1, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->TAG:Ljava/lang/String;

    const-string v2, "data link is disconnected already"

    invoke-static {v1, v2}, Lcom/duokan/airkan/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1280
    iput-boolean v3, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->dataConnected:Z

    goto :goto_0

    .line 1283
    .end local v0           #e1:Landroid/os/RemoteException;
    :cond_0
    iget-object v1, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->TAG:Ljava/lang/String;

    const-string v2, "data link is disconnected already"

    invoke-static {v1, v2}, Lcom/duokan/airkan/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1284
    iput-boolean v3, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->dataConnected:Z

    goto :goto_0
.end method

.method private ShownImageNotExist()V
    .locals 7

    .prologue
    .line 1450
    iget-boolean v1, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->sliderShow:Z

    if-nez v1, :cond_0

    .line 1451
    iget v1, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->lastSentHandle:I

    sget v2, Lcom/duokan/airkan/phone/api/PhotoManager;->waitingShowHandle:I

    if-ne v1, v2, :cond_2

    .line 1452
    iget-object v1, p0, Lcom/duokan/airkan/phone/api/ConnectionManager;->mAirkanDeviceManager:Lcom/duokan/airkan/phone/api/DeviceManager;

    invoke-virtual {v1}, Lcom/duokan/airkan/phone/api/DeviceManager;->getService()Lcom/duokan/airkan/phone/aidl/IAirkanClientService;

    move-result-object v0

    .line 1453
    .local v0, myService:Lcom/duokan/airkan/phone/aidl/IAirkanClientService;
    if-eqz v0, :cond_1

    .line 1455
    :try_start_0
    iget-object v1, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "showphoto in ShownImageNotExist: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/duokan/airkan/phone/api/PhotoManager;->waitingShowHandle:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/duokan/airkan/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1456
    sget v1, Lcom/duokan/airkan/phone/api/PhotoManager;->serviceHandle:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    sget v4, Lcom/duokan/airkan/phone/api/PhotoManager;->waitingShowHandle:I

    const/4 v5, 0x0

    invoke-interface/range {v0 .. v5}, Lcom/duokan/airkan/phone/aidl/IAirkanClientService;->photoShow(IZIIZ)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1467
    .end local v0           #myService:Lcom/duokan/airkan/phone/aidl/IAirkanClientService;
    :cond_0
    :goto_0
    return-void

    .line 1457
    .restart local v0       #myService:Lcom/duokan/airkan/phone/aidl/IAirkanClientService;
    :catch_0
    move-exception v6

    .line 1458
    .local v6, e:Landroid/os/RemoteException;
    invoke-virtual {v6}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 1461
    .end local v6           #e:Landroid/os/RemoteException;
    :cond_1
    iget-object v1, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->TAG:Ljava/lang/String;

    const-string v2, "Service not bounded."

    invoke-static {v1, v2}, Lcom/duokan/airkan/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1464
    .end local v0           #myService:Lcom/duokan/airkan/phone/aidl/IAirkanClientService;
    :cond_2
    invoke-direct {p0}, Lcom/duokan/airkan/phone/api/PhotoManager;->sendImage()V

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/duokan/airkan/phone/api/PhotoManager;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/duokan/airkan/phone/api/PhotoManager;ZI)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 63
    invoke-direct {p0, p1, p2}, Lcom/duokan/airkan/phone/api/PhotoManager;->postSendResult(ZI)V

    return-void
.end method

.method static synthetic access$1000(Lcom/duokan/airkan/phone/api/PhotoManager;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget v0, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->mBlockCounts:I

    return v0
.end method

.method static synthetic access$1002(Lcom/duokan/airkan/phone/api/PhotoManager;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    iput p1, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->mBlockCounts:I

    return p1
.end method

.method static synthetic access$1100(Lcom/duokan/airkan/phone/api/PhotoManager;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->mFileName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/duokan/airkan/phone/api/PhotoManager;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    iput-object p1, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->mFileName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1202(Lcom/duokan/airkan/phone/api/PhotoManager;Lcom/duokan/airkan/photosend/aidl/IPhotoSendService;)Lcom/duokan/airkan/photosend/aidl/IPhotoSendService;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    iput-object p1, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->mPhotoSendService:Lcom/duokan/airkan/photosend/aidl/IPhotoSendService;

    return-object p1
.end method

.method static synthetic access$1302(Lcom/duokan/airkan/phone/api/PhotoManager;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    iput-boolean p1, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->mIsPhotoSendServiceBoundSuccess:Z

    return p1
.end method

.method static synthetic access$1400(Lcom/duokan/airkan/phone/api/PhotoManager;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/duokan/airkan/phone/api/PhotoManager;->removePhotoSendServiceCallback()V

    return-void
.end method

.method static synthetic access$1500(Lcom/duokan/airkan/phone/api/PhotoManager;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-boolean v0, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->isSwitched2Video:Z

    return v0
.end method

.method static synthetic access$1600()I
    .locals 1

    .prologue
    .line 63
    sget v0, Lcom/duokan/airkan/phone/api/PhotoManager;->serviceHandle:I

    return v0
.end method

.method static synthetic access$1602(I)I
    .locals 0
    .parameter "x0"

    .prologue
    .line 63
    sput p0, Lcom/duokan/airkan/phone/api/PhotoManager;->serviceHandle:I

    return p0
.end method

.method static synthetic access$1700(Lcom/duokan/airkan/phone/api/PhotoManager;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-boolean v0, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->mIs2Connect:Z

    return v0
.end method

.method static synthetic access$1702(Lcom/duokan/airkan/phone/api/PhotoManager;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    iput-boolean p1, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->mIs2Connect:Z

    return p1
.end method

.method static synthetic access$1800(Lcom/duokan/airkan/phone/api/PhotoManager;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-boolean v0, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->sliderShow:Z

    return v0
.end method

.method static synthetic access$1900(Lcom/duokan/airkan/phone/api/PhotoManager;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/duokan/airkan/phone/api/PhotoManager;->ShownImageNotExist()V

    return-void
.end method

.method static synthetic access$200(Lcom/duokan/airkan/phone/api/PhotoManager;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-boolean v0, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->dataConnected:Z

    return v0
.end method

.method static synthetic access$2002(Lcom/duokan/airkan/phone/api/PhotoManager;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    iput p1, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->lastSentHandle:I

    return p1
.end method

.method static synthetic access$202(Lcom/duokan/airkan/phone/api/PhotoManager;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    iput-boolean p1, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->dataConnected:Z

    return p1
.end method

.method static synthetic access$2100(Lcom/duokan/airkan/phone/api/PhotoManager;Lcom/duokan/airkan/common/aidl/photo/ParcelPhotoQueryData;[Lcom/duokan/airkan/common/aidl/photo/ParcelSliderType;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 63
    invoke-direct {p0, p1, p2}, Lcom/duokan/airkan/phone/api/PhotoManager;->queryResult(Lcom/duokan/airkan/common/aidl/photo/ParcelPhotoQueryData;[Lcom/duokan/airkan/common/aidl/photo/ParcelSliderType;)V

    return-void
.end method

.method static synthetic access$2200(Lcom/duokan/airkan/phone/api/PhotoManager;[I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lcom/duokan/airkan/phone/api/PhotoManager;->send4Pull([I)V

    return-void
.end method

.method static synthetic access$2300(Lcom/duokan/airkan/phone/api/PhotoManager;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-boolean v0, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->mReleaseFromLoc:Z

    return v0
.end method

.method static synthetic access$2400(Lcom/duokan/airkan/phone/api/PhotoManager;)Lcom/duokan/airkan/phone/api/PhotoManager$OnPhotoEventListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->photoListener:Lcom/duokan/airkan/phone/api/PhotoManager$OnPhotoEventListener;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/duokan/airkan/phone/api/PhotoManager;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/duokan/airkan/phone/api/PhotoManager;->unbindPhotoSendService()V

    return-void
.end method

.method static synthetic access$2600(Lcom/duokan/airkan/phone/api/PhotoManager;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lcom/duokan/airkan/phone/api/PhotoManager;->postConnectResult(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/duokan/airkan/phone/api/PhotoManager;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-boolean v0, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->linkConnected:Z

    return v0
.end method

.method static synthetic access$302(Lcom/duokan/airkan/phone/api/PhotoManager;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    iput-boolean p1, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->linkConnected:Z

    return p1
.end method

.method static synthetic access$400(Lcom/duokan/airkan/phone/api/PhotoManager;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget v0, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->sleepInterval:I

    return v0
.end method

.method static synthetic access$500(Lcom/duokan/airkan/phone/api/PhotoManager;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-boolean v0, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->mIsConnected:Z

    return v0
.end method

.method static synthetic access$502(Lcom/duokan/airkan/phone/api/PhotoManager;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    iput-boolean p1, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->mIsConnected:Z

    return p1
.end method

.method static synthetic access$600(Lcom/duokan/airkan/phone/api/PhotoManager;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-boolean v0, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->mRequestWasSent:Z

    return v0
.end method

.method static synthetic access$602(Lcom/duokan/airkan/phone/api/PhotoManager;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    iput-boolean p1, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->mRequestWasSent:Z

    return p1
.end method

.method static synthetic access$700(Lcom/duokan/airkan/phone/api/PhotoManager;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lcom/duokan/airkan/phone/api/PhotoManager;->setConnStatus(Z)V

    return-void
.end method

.method static synthetic access$800(Lcom/duokan/airkan/phone/api/PhotoManager;Ljava/lang/String;[B)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 63
    invoke-direct {p0, p1, p2}, Lcom/duokan/airkan/phone/api/PhotoManager;->postSavePhotoData(Ljava/lang/String;[B)V

    return-void
.end method

.method static synthetic access$900(Lcom/duokan/airkan/phone/api/PhotoManager;)[B
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->mImageData:[B

    return-object v0
.end method

.method static synthetic access$902(Lcom/duokan/airkan/phone/api/PhotoManager;[B)[B
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    iput-object p1, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->mImageData:[B

    return-object p1
.end method

.method private addFile(Ljava/lang/String;S)Lcom/duokan/airkan/photo/SendoutFileInfo;
    .locals 9
    .parameter "path"
    .parameter "handle"

    .prologue
    const/4 v6, 0x0

    .line 401
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 402
    .local v2, f:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 403
    new-instance v4, Lcom/duokan/airkan/photo/SendoutFileInfo;

    invoke-direct {v4}, Lcom/duokan/airkan/photo/SendoutFileInfo;-><init>()V

    .line 404
    .local v4, sfi:Lcom/duokan/airkan/photo/SendoutFileInfo;
    iput-object p1, v4, Lcom/duokan/airkan/photo/SendoutFileInfo;->filename:Ljava/lang/String;

    .line 405
    iput-short p2, v4, Lcom/duokan/airkan/photo/SendoutFileInfo;->handle:S

    .line 406
    invoke-virtual {v2}, Ljava/io/File;->lastModified()J

    move-result-wide v7

    iput-wide v7, v4, Lcom/duokan/airkan/photo/SendoutFileInfo;->lastModifiedTime:J

    .line 407
    const/4 v7, 0x0

    iput-boolean v7, v4, Lcom/duokan/airkan/photo/SendoutFileInfo;->changed:Z

    .line 410
    :try_start_0
    new-instance v5, Landroid/media/ExifInterface;

    invoke-direct {v5, p1}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    .line 411
    .local v5, sourceExif:Landroid/media/ExifInterface;
    const-string v7, "Orientation"

    invoke-virtual {v5, v7}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 412
    .local v3, orientation:Ljava/lang/String;
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 413
    .local v1, exifDegree:I
    iput v1, v4, Lcom/duokan/airkan/photo/SendoutFileInfo;->rotation:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 418
    .end local v1           #exifDegree:I
    .end local v3           #orientation:Ljava/lang/String;
    .end local v5           #sourceExif:Landroid/media/ExifInterface;
    :goto_0
    invoke-static {p1}, Lcom/duokan/airkan/photo/MediaFile;->isVideoFileType(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 419
    const/4 v6, 0x3

    iput-byte v6, v4, Lcom/duokan/airkan/photo/SendoutFileInfo;->format:B

    .line 429
    .end local v4           #sfi:Lcom/duokan/airkan/photo/SendoutFileInfo;
    :cond_0
    :goto_1
    return-object v4

    .line 414
    .restart local v4       #sfi:Lcom/duokan/airkan/photo/SendoutFileInfo;
    :catch_0
    move-exception v0

    .line 415
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 420
    .end local v0           #e:Ljava/io/IOException;
    :cond_1
    invoke-static {p1}, Lcom/duokan/airkan/photo/MediaFile;->isImageFileType(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 421
    const/4 v6, 0x1

    iput-byte v6, v4, Lcom/duokan/airkan/photo/SendoutFileInfo;->format:B

    .line 422
    invoke-static {p1}, Lcom/duokan/airkan/photo/MediaFile;->isGIF(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 423
    const/4 v6, 0x2

    iput-byte v6, v4, Lcom/duokan/airkan/photo/SendoutFileInfo;->format:B

    goto :goto_1

    :cond_2
    move-object v4, v6

    .line 425
    goto :goto_1

    .end local v4           #sfi:Lcom/duokan/airkan/photo/SendoutFileInfo;
    :cond_3
    move-object v4, v6

    .line 429
    goto :goto_1
.end method

.method private bindPhotoSendService()V
    .locals 5

    .prologue
    .line 753
    iget-object v1, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->TAG:Ljava/lang/String;

    const-string v2, "enter bindPhotoSendService"

    invoke-static {v1, v2}, Lcom/duokan/airkan/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 754
    iget-boolean v1, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->mIsPhotoSendServiceBoundSuccess:Z

    if-nez v1, :cond_0

    .line 755
    iget-object v1, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "duokan.airkan.photosend.aidl.IPhotoSendService"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->mPhotoSendServiceConnection:Landroid/content/ServiceConnection;

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    .line 758
    .local v0, mIsBindCallSuccess:Z
    if-eqz v0, :cond_1

    .line 759
    iget-object v1, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->TAG:Ljava/lang/String;

    const-string v2, "bind photosendService."

    invoke-static {v1, v2}, Lcom/duokan/airkan/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 764
    .end local v0           #mIsBindCallSuccess:Z
    :cond_0
    :goto_0
    return-void

    .line 761
    .restart local v0       #mIsBindCallSuccess:Z
    :cond_1
    iget-object v1, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->TAG:Ljava/lang/String;

    const-string v2, "bind photosendService failed."

    invoke-static {v1, v2}, Lcom/duokan/airkan/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private buildBufferList()V
    .locals 6

    .prologue
    .line 1307
    iget-object v3, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->filelist:Ljava/util/ArrayList;

    monitor-enter v3

    .line 1308
    :try_start_0
    iget v2, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->index:I

    iget v4, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->mCurrentIndexOffset:I

    sub-int v1, v2, v4

    .line 1309
    .local v1, mTmpIndex:I
    iget-object v2, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->filelist:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v4, 0x1

    if-le v2, v4, :cond_2

    .line 1310
    const/4 v0, 0x1

    .local v0, i:I
    :goto_0
    sget v2, Lcom/duokan/airkan/phone/api/PhotoManager;->Max_Presend_Offset:I

    if-ge v0, v2, :cond_2

    .line 1311
    add-int v2, v1, v0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/duokan/airkan/phone/api/PhotoManager;->fileExist(Ljava/lang/Integer;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lcom/duokan/airkan/phone/api/PhotoManager;->bufferHandleList:Ljava/util/ArrayList;

    iget v4, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->index:I

    add-int/2addr v4, v0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1312
    :cond_0
    sub-int v2, v1, v0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/duokan/airkan/phone/api/PhotoManager;->fileExist(Ljava/lang/Integer;)Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v2, Lcom/duokan/airkan/phone/api/PhotoManager;->bufferHandleList:Ljava/util/ArrayList;

    iget v4, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->index:I

    sub-int/2addr v4, v0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1310
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1315
    .end local v0           #i:I
    :cond_2
    iget-object v2, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "bufferhandlelist size: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/duokan/airkan/phone/api/PhotoManager;->bufferHandleList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "index: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->index:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "filelist size: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->filelist:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/duokan/airkan/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1316
    monitor-exit v3

    .line 1317
    return-void

    .line 1316
    .end local v1           #mTmpIndex:I
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private buildlist4Pull([I)V
    .locals 11
    .parameter "list"

    .prologue
    .line 1329
    iget-object v7, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->filelist:Ljava/util/ArrayList;

    monitor-enter v7

    .line 1331
    :try_start_0
    iget-object v6, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->filelist:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 1332
    .local v4, size:I
    array-length v3, p1

    .line 1333
    .local v3, listsize:I
    const/4 v2, 0x0

    .local v2, k:I
    :goto_0
    if-ge v2, v3, :cond_1

    .line 1334
    aget v6, p1, v2

    iget v8, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->mCurrentIndexOffset:I

    sub-int/2addr v6, v8

    if-lt v6, v4, :cond_0

    .line 1335
    aget v6, p1, v2

    iget v8, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->mCurrentIndexOffset:I

    sub-int/2addr v6, v8

    rem-int/2addr v6, v4

    aput v6, p1, v2

    .line 1333
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1337
    :cond_0
    aget v6, p1, v2

    iget v8, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->mCurrentIndexOffset:I

    sub-int/2addr v6, v8

    aput v6, p1, v2

    goto :goto_1

    .line 1358
    .end local v2           #k:I
    .end local v3           #listsize:I
    .end local v4           #size:I
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6

    .line 1340
    .restart local v2       #k:I
    .restart local v3       #listsize:I
    .restart local v4       #size:I
    :cond_1
    :try_start_1
    iget-object v6, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "add pull image :"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Lcom/duokan/airkan/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1341
    sget-object v8, Lcom/duokan/airkan/phone/api/PhotoManager;->list4Pull:Ljava/util/ArrayList;

    monitor-enter v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1344
    const/4 v1, 0x0

    .local v1, j:I
    :goto_2
    if-ge v1, v3, :cond_4

    .line 1345
    const/4 v0, 0x0

    .local v0, i:I
    :goto_3
    if-ge v0, v4, :cond_2

    .line 1346
    :try_start_2
    iget-object v6, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->filelist:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/duokan/airkan/photo/SendoutFileInfo;

    .line 1347
    .local v5, tmp:Lcom/duokan/airkan/photo/SendoutFileInfo;
    iget-short v6, v5, Lcom/duokan/airkan/photo/SendoutFileInfo;->handle:S

    aget v9, p1, v1

    if-ne v6, v9, :cond_3

    .line 1348
    new-instance v6, Ljava/io/File;

    iget-object v9, v5, Lcom/duokan/airkan/photo/SendoutFileInfo;->filename:Ljava/lang/String;

    invoke-direct {v6, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1350
    iget-object v6, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "add pull image handle:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    aget v10, p1, v1

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Lcom/duokan/airkan/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1351
    sget-object v6, Lcom/duokan/airkan/phone/api/PhotoManager;->list4Pull:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1344
    .end local v5           #tmp:Lcom/duokan/airkan/photo/SendoutFileInfo;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1345
    .restart local v5       #tmp:Lcom/duokan/airkan/photo/SendoutFileInfo;
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 1357
    .end local v0           #i:I
    .end local v5           #tmp:Lcom/duokan/airkan/photo/SendoutFileInfo;
    :cond_4
    monitor-exit v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1358
    :try_start_3
    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1359
    return-void

    .line 1357
    :catchall_1
    move-exception v6

    :try_start_4
    monitor-exit v8
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    throw v6
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method

.method private cleanOneImage(S)V
    .locals 5
    .parameter "handle"

    .prologue
    .line 1412
    iget-object v2, p0, Lcom/duokan/airkan/phone/api/ConnectionManager;->mAirkanDeviceManager:Lcom/duokan/airkan/phone/api/DeviceManager;

    invoke-virtual {v2}, Lcom/duokan/airkan/phone/api/DeviceManager;->getService()Lcom/duokan/airkan/phone/aidl/IAirkanClientService;

    move-result-object v1

    .line 1414
    .local v1, myService:Lcom/duokan/airkan/phone/aidl/IAirkanClientService;
    if-eqz v1, :cond_0

    .line 1416
    :try_start_0
    iget-object v2, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "send photoclean: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/duokan/airkan/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1417
    sget v2, Lcom/duokan/airkan/phone/api/PhotoManager;->serviceHandle:I

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3, p1}, Lcom/duokan/airkan/phone/aidl/IAirkanClientService;->photoClean(IZI)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1422
    :cond_0
    :goto_0
    return-void

    .line 1418
    :catch_0
    move-exception v0

    .line 1419
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method private fileExist(Ljava/lang/Integer;)Z
    .locals 3
    .parameter "handle"

    .prologue
    .line 1320
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, -0x1

    if-le v0, v1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->filelist:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 1321
    new-instance v1, Ljava/io/File;

    iget-object v0, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->filelist:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duokan/airkan/photo/SendoutFileInfo;

    iget-object v0, v0, Lcom/duokan/airkan/photo/SendoutFileInfo;->filename:Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    .line 1323
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private findFileInList(Ljava/lang/String;)S
    .locals 6
    .parameter "filename"

    .prologue
    .line 1362
    iget-object v4, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->filelist:Ljava/util/ArrayList;

    monitor-enter v4

    .line 1363
    :try_start_0
    iget-object v3, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->filelist:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1364
    .local v2, size:I
    if-lez v2, :cond_2

    .line 1365
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v2, :cond_2

    .line 1366
    iget-object v3, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->filelist:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/duokan/airkan/photo/SendoutFileInfo;

    iget-object v3, v3, Lcom/duokan/airkan/photo/SendoutFileInfo;->filename:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_1

    .line 1367
    invoke-direct {p0, v0}, Lcom/duokan/airkan/phone/api/PhotoManager;->updateFileInfo(I)V

    .line 1368
    iget-object v3, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->filelist:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/duokan/airkan/photo/SendoutFileInfo;

    iget-boolean v3, v3, Lcom/duokan/airkan/photo/SendoutFileInfo;->changed:Z

    if-eqz v3, :cond_0

    .line 1369
    iget-object v3, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->TAG:Ljava/lang/String;

    const-string v5, "photo changed, clean it before to show"

    invoke-static {v3, v5}, Lcom/duokan/airkan/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1370
    iget-object v3, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->filelist:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/duokan/airkan/photo/SendoutFileInfo;

    iget-short v3, v3, Lcom/duokan/airkan/photo/SendoutFileInfo;->handle:S

    invoke-direct {p0, v3}, Lcom/duokan/airkan/phone/api/PhotoManager;->cleanOneImage(S)V

    .line 1372
    :cond_0
    iget-object v3, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->filelist:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/duokan/airkan/photo/SendoutFileInfo;

    iget-short v3, v3, Lcom/duokan/airkan/photo/SendoutFileInfo;->handle:S

    monitor-exit v4

    .line 1380
    .end local v0           #i:I
    :goto_1
    return v3

    .line 1365
    .restart local v0       #i:I
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1375
    .end local v0           #i:I
    :cond_2
    int-to-short v3, v2

    invoke-direct {p0, p1, v3}, Lcom/duokan/airkan/phone/api/PhotoManager;->addFile(Ljava/lang/String;S)Lcom/duokan/airkan/photo/SendoutFileInfo;

    move-result-object v1

    .line 1376
    .local v1, sfi:Lcom/duokan/airkan/photo/SendoutFileInfo;
    if-eqz v1, :cond_3

    .line 1377
    iget-object v3, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->filelist:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1378
    int-to-short v3, v2

    monitor-exit v4

    goto :goto_1

    .line 1381
    .end local v1           #sfi:Lcom/duokan/airkan/photo/SendoutFileInfo;
    .end local v2           #size:I
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 1380
    .restart local v1       #sfi:Lcom/duokan/airkan/photo/SendoutFileInfo;
    .restart local v2       #size:I
    :cond_3
    const/4 v3, -0x1

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method private photoClose()V
    .locals 5

    .prologue
    .line 949
    :try_start_0
    iget-object v2, p0, Lcom/duokan/airkan/phone/api/ConnectionManager;->mAirkanDeviceManager:Lcom/duokan/airkan/phone/api/DeviceManager;

    invoke-virtual {v2}, Lcom/duokan/airkan/phone/api/DeviceManager;->getService()Lcom/duokan/airkan/phone/aidl/IAirkanClientService;

    move-result-object v1

    .line 951
    .local v1, myService:Lcom/duokan/airkan/phone/aidl/IAirkanClientService;
    if-eqz v1, :cond_1

    .line 952
    sget v2, Lcom/duokan/airkan/phone/api/PhotoManager;->serviceHandle:I

    invoke-interface {v1, v2}, Lcom/duokan/airkan/phone/aidl/IAirkanClientService;->photoClose(I)I

    .line 953
    iget-object v2, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->TAG:Ljava/lang/String;

    const-string v3, "closed."

    invoke-static {v2, v3}, Lcom/duokan/airkan/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 962
    .end local v1           #myService:Lcom/duokan/airkan/phone/aidl/IAirkanClientService;
    :goto_0
    iget-boolean v2, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->sliderShow:Z

    if-eqz v2, :cond_0

    .line 963
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->sliderShow:Z

    .line 966
    :cond_0
    return-void

    .line 955
    .restart local v1       #myService:Lcom/duokan/airkan/phone/aidl/IAirkanClientService;
    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->TAG:Ljava/lang/String;

    const-string v3, "Service not bounded."

    invoke-static {v2, v3}, Lcom/duokan/airkan/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 957
    .end local v1           #myService:Lcom/duokan/airkan/phone/aidl/IAirkanClientService;
    :catch_0
    move-exception v0

    .line 958
    .local v0, e:Ljava/lang/Exception;
    iget-object v2, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Release error. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/duokan/airkan/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 959
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private postCleanFile(I)V
    .locals 4
    .parameter "handle"

    .prologue
    .line 970
    :try_start_0
    iget-object v2, p0, Lcom/duokan/airkan/phone/api/ConnectionManager;->mAirkanDeviceManager:Lcom/duokan/airkan/phone/api/DeviceManager;

    invoke-virtual {v2}, Lcom/duokan/airkan/phone/api/DeviceManager;->getService()Lcom/duokan/airkan/phone/aidl/IAirkanClientService;

    move-result-object v1

    .line 972
    .local v1, myService:Lcom/duokan/airkan/phone/aidl/IAirkanClientService;
    if-eqz v1, :cond_0

    .line 973
    sget v2, Lcom/duokan/airkan/phone/api/PhotoManager;->serviceHandle:I

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3, p1}, Lcom/duokan/airkan/phone/aidl/IAirkanClientService;->photoClean(IZI)I

    .line 982
    .end local v1           #myService:Lcom/duokan/airkan/phone/aidl/IAirkanClientService;
    :goto_0
    return-void

    .line 975
    .restart local v1       #myService:Lcom/duokan/airkan/phone/aidl/IAirkanClientService;
    :cond_0
    iget-object v2, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->TAG:Ljava/lang/String;

    const-string v3, "Service not bounded."

    invoke-static {v2, v3}, Lcom/duokan/airkan/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 977
    .end local v1           #myService:Lcom/duokan/airkan/phone/aidl/IAirkanClientService;
    :catch_0
    move-exception v0

    .line 978
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method private postCleanList()V
    .locals 5

    .prologue
    .line 988
    :try_start_0
    iget-object v2, p0, Lcom/duokan/airkan/phone/api/ConnectionManager;->mAirkanDeviceManager:Lcom/duokan/airkan/phone/api/DeviceManager;

    invoke-virtual {v2}, Lcom/duokan/airkan/phone/api/DeviceManager;->getService()Lcom/duokan/airkan/phone/aidl/IAirkanClientService;

    move-result-object v1

    .line 990
    .local v1, myService:Lcom/duokan/airkan/phone/aidl/IAirkanClientService;
    if-eqz v1, :cond_1

    .line 991
    sget v2, Lcom/duokan/airkan/phone/api/PhotoManager;->serviceHandle:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {v1, v2, v3, v4}, Lcom/duokan/airkan/phone/aidl/IAirkanClientService;->photoClean(IZI)I

    .line 993
    iget v2, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->mCurrentIndexOffset:I

    sget v3, Lcom/duokan/airkan/phone/api/PhotoManager;->INDEX_OFFSET_A:I

    if-ne v2, v3, :cond_0

    .line 994
    sget v2, Lcom/duokan/airkan/phone/api/PhotoManager;->INDEX_OFFSET_B:I

    iput v2, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->mCurrentIndexOffset:I

    .line 1004
    .end local v1           #myService:Lcom/duokan/airkan/phone/aidl/IAirkanClientService;
    :goto_0
    return-void

    .line 996
    .restart local v1       #myService:Lcom/duokan/airkan/phone/aidl/IAirkanClientService;
    :cond_0
    sget v2, Lcom/duokan/airkan/phone/api/PhotoManager;->INDEX_OFFSET_A:I

    iput v2, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->mCurrentIndexOffset:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1001
    .end local v1           #myService:Lcom/duokan/airkan/phone/aidl/IAirkanClientService;
    :catch_0
    move-exception v0

    .line 1002
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 999
    .end local v0           #e:Landroid/os/RemoteException;
    .restart local v1       #myService:Lcom/duokan/airkan/phone/aidl/IAirkanClientService;
    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->TAG:Ljava/lang/String;

    const-string v3, "Service not bounded."

    invoke-static {v2, v3}, Lcom/duokan/airkan/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method private postConnectResult(I)V
    .locals 1
    .parameter "result"

    .prologue
    .line 1502
    iget-object v0, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->photoListener:Lcom/duokan/airkan/phone/api/PhotoManager$OnPhotoEventListener;

    if-eqz v0, :cond_0

    .line 1503
    iget-object v0, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->photoListener:Lcom/duokan/airkan/phone/api/PhotoManager$OnPhotoEventListener;

    invoke-interface {v0, p1}, Lcom/duokan/airkan/phone/api/PhotoManager$OnPhotoEventListener;->onConnectResponse(I)V

    .line 1505
    :cond_0
    return-void
.end method

.method private postSavePhotoData(Ljava/lang/String;[B)V
    .locals 3
    .parameter "filename"
    .parameter "data"

    .prologue
    .line 1007
    iget-object v0, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->photoListener:Lcom/duokan/airkan/phone/api/PhotoManager$OnPhotoEventListener;

    iget v1, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->remoteW:I

    iget v2, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->remoteH:I

    invoke-interface {v0, p1, p2, v1, v2}, Lcom/duokan/airkan/phone/api/PhotoManager$OnPhotoEventListener;->onSetImageData(Ljava/lang/String;[BII)V

    .line 1008
    return-void
.end method

.method private postSendResult(ZI)V
    .locals 7
    .parameter "result"
    .parameter "handle"

    .prologue
    const/4 v2, -0x1

    .line 1185
    iget-boolean v1, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->mIsConnected:Z

    if-nez v1, :cond_1

    .line 1228
    :cond_0
    :goto_0
    return-void

    .line 1187
    :cond_1
    iput p2, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->lastSentHandle:I

    .line 1188
    iget-boolean v1, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->sliderShow:Z

    if-nez v1, :cond_5

    .line 1189
    iput v2, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->sendingHandle:I

    .line 1190
    sget v1, Lcom/duokan/airkan/phone/api/PhotoManager;->waitingShowHandle:I

    if-ne v1, p2, :cond_3

    .line 1192
    :try_start_0
    iget-object v1, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "show image in postSendResult: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/duokan/airkan/common/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1193
    iget-object v1, p0, Lcom/duokan/airkan/phone/api/ConnectionManager;->mAirkanDeviceManager:Lcom/duokan/airkan/phone/api/DeviceManager;

    invoke-virtual {v1}, Lcom/duokan/airkan/phone/api/DeviceManager;->getService()Lcom/duokan/airkan/phone/aidl/IAirkanClientService;

    move-result-object v0

    .line 1195
    .local v0, myService:Lcom/duokan/airkan/phone/aidl/IAirkanClientService;
    if-eqz v0, :cond_2

    .line 1196
    iget-object v1, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "showphoto in postSendResult: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/duokan/airkan/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1197
    sget v1, Lcom/duokan/airkan/phone/api/PhotoManager;->serviceHandle:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    move v4, p2

    invoke-interface/range {v0 .. v5}, Lcom/duokan/airkan/phone/aidl/IAirkanClientService;->photoShow(IZIIZ)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1201
    .end local v0           #myService:Lcom/duokan/airkan/phone/aidl/IAirkanClientService;
    :catch_0
    move-exception v6

    .line 1202
    .local v6, e:Landroid/os/RemoteException;
    invoke-virtual {v6}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 1199
    .end local v6           #e:Landroid/os/RemoteException;
    .restart local v0       #myService:Lcom/duokan/airkan/phone/aidl/IAirkanClientService;
    :cond_2
    :try_start_1
    iget-object v1, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->TAG:Ljava/lang/String;

    const-string v2, "Service not bounded."

    invoke-static {v1, v2}, Lcom/duokan/airkan/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1204
    .end local v0           #myService:Lcom/duokan/airkan/phone/aidl/IAirkanClientService;
    :cond_3
    sget v1, Lcom/duokan/airkan/phone/api/PhotoManager;->waitingShowHandle:I

    if-ne v2, v1, :cond_0

    .line 1205
    sget-object v2, Lcom/duokan/airkan/phone/api/PhotoManager;->bufferHandleList:Ljava/util/ArrayList;

    monitor-enter v2

    .line 1206
    :try_start_2
    sget-object v1, Lcom/duokan/airkan/phone/api/PhotoManager;->bufferHandleList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_4

    .line 1207
    iget-object v1, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->TAG:Ljava/lang/String;

    const-string v3, "file send ok, try to query next"

    invoke-static {v1, v3}, Lcom/duokan/airkan/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1208
    sget-object v1, Lcom/duokan/airkan/phone/api/PhotoManager;->bufferHandleList:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne p2, v1, :cond_4

    .line 1209
    sget-object v1, Lcom/duokan/airkan/phone/api/PhotoManager;->bufferHandleList:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1211
    :cond_4
    invoke-virtual {p0}, Lcom/duokan/airkan/phone/api/PhotoManager;->queryNextBufferImage()V

    .line 1212
    monitor-exit v2

    goto/16 :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 1215
    :cond_5
    iget-object v1, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "slide show send ok: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/duokan/airkan/common/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1216
    sget-object v2, Lcom/duokan/airkan/phone/api/PhotoManager;->list4Pull:Ljava/util/ArrayList;

    monitor-enter v2

    .line 1217
    :try_start_3
    sget-object v1, Lcom/duokan/airkan/phone/api/PhotoManager;->list4Pull:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_6

    .line 1218
    sget-object v1, Lcom/duokan/airkan/phone/api/PhotoManager;->list4Pull:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/duokan/airkan/photo/SendoutFileInfo;

    iget-short v1, v1, Lcom/duokan/airkan/photo/SendoutFileInfo;->handle:S

    iget v3, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->mCurrentIndexOffset:I

    add-int/2addr v1, v3

    if-ne p2, v1, :cond_7

    .line 1219
    iget-object v1, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "pull file sendok, remove it: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/duokan/airkan/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1220
    sget-object v1, Lcom/duokan/airkan/phone/api/PhotoManager;->list4Pull:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1221
    invoke-virtual {p0}, Lcom/duokan/airkan/phone/api/PhotoManager;->sendPhoto4Pull()V

    .line 1226
    :cond_6
    :goto_1
    monitor-exit v2

    goto/16 :goto_0

    :catchall_1
    move-exception v1

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1

    .line 1223
    :cond_7
    :try_start_4
    iget-object v1, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "pull file sendok, handle not the sent one: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/duokan/airkan/common/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_1
.end method

.method private postShowPhoto()V
    .locals 8

    .prologue
    .line 913
    sget-object v7, Lcom/duokan/airkan/phone/api/PhotoManager;->bufferHandleList:Ljava/util/ArrayList;

    monitor-enter v7

    .line 915
    :try_start_0
    sget-object v1, Lcom/duokan/airkan/phone/api/PhotoManager;->bufferHandleList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 916
    invoke-direct {p0}, Lcom/duokan/airkan/phone/api/PhotoManager;->buildBufferList()V

    .line 917
    iget-boolean v1, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->mIsFirstPhoto:Z

    if-eqz v1, :cond_1

    .line 918
    iget-boolean v1, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->sliderShow:Z

    if-nez v1, :cond_0

    .line 919
    iget-object v1, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->TAG:Ljava/lang/String;

    const-string v2, "send first directly"

    invoke-static {v1, v2}, Lcom/duokan/airkan/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 920
    invoke-direct {p0}, Lcom/duokan/airkan/phone/api/PhotoManager;->sendFirstImage()V

    .line 922
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->mIsFirstPhoto:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 924
    :try_start_1
    iget v1, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->sleepInterval:I

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 943
    :goto_0
    :try_start_2
    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 945
    return-void

    .line 925
    :catch_0
    move-exception v6

    .line 926
    .local v6, e:Ljava/lang/InterruptedException;
    :try_start_3
    invoke-virtual {v6}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 940
    .end local v6           #e:Ljava/lang/InterruptedException;
    :catch_1
    move-exception v6

    .line 941
    .local v6, e:Landroid/os/RemoteException;
    :try_start_4
    invoke-virtual {v6}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 943
    .end local v6           #e:Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v1

    .line 929
    :cond_1
    :try_start_5
    iget v1, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->index:I

    sput v1, Lcom/duokan/airkan/phone/api/PhotoManager;->waitingShowHandle:I

    .line 930
    iget-object v1, p0, Lcom/duokan/airkan/phone/api/ConnectionManager;->mAirkanDeviceManager:Lcom/duokan/airkan/phone/api/DeviceManager;

    invoke-virtual {v1}, Lcom/duokan/airkan/phone/api/DeviceManager;->getService()Lcom/duokan/airkan/phone/aidl/IAirkanClientService;

    move-result-object v0

    .line 932
    .local v0, myService:Lcom/duokan/airkan/phone/aidl/IAirkanClientService;
    if-eqz v0, :cond_2

    .line 934
    iget-object v1, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "showphoto in postShowPhoto: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->index:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/duokan/airkan/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 935
    sget v1, Lcom/duokan/airkan/phone/api/PhotoManager;->serviceHandle:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget v4, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->index:I

    const/4 v5, 0x0

    invoke-interface/range {v0 .. v5}, Lcom/duokan/airkan/phone/aidl/IAirkanClientService;->photoShow(IZIIZ)I

    goto :goto_0

    .line 937
    :cond_2
    iget-object v1, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->TAG:Ljava/lang/String;

    const-string v2, "Service not bounded."

    invoke-static {v1, v2}, Lcom/duokan/airkan/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_0
.end method

.method private queryResult(Lcom/duokan/airkan/common/aidl/photo/ParcelPhotoQueryData;[Lcom/duokan/airkan/common/aidl/photo/ParcelSliderType;)V
    .locals 9
    .parameter "photoQueryData"
    .parameter "sstl"

    .prologue
    const/4 v8, -0x1

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1125
    iget-byte v2, p1, Lcom/duokan/airkan/common/aidl/photo/ParcelPhotoQueryData;->queryslidertype:B

    if-ne v3, v2, :cond_2

    .line 1126
    iget-byte v0, p1, Lcom/duokan/airkan/common/aidl/photo/ParcelPhotoQueryData;->slidertypecount:B

    .line 1127
    .local v0, count:I
    if-eqz v0, :cond_2

    .line 1128
    iget-object v2, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->slidershowtypelist:Ljava/util/ArrayList;

    if-nez v2, :cond_0

    .line 1129
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->slidershowtypelist:Ljava/util/ArrayList;

    .line 1131
    :cond_0
    iget-object v2, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->slidershowtypelist:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 1132
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 1133
    iget-object v2, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "slider show tpye "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "name:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, p2, v1

    iget-object v6, v6, Lcom/duokan/airkan/common/aidl/photo/ParcelSliderType;->title:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/duokan/airkan/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1135
    iget-object v2, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->slidershowtypelist:Ljava/util/ArrayList;

    aget-object v5, p2, v1

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1132
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1137
    :cond_1
    iget-object v2, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->photoListener:Lcom/duokan/airkan/phone/api/PhotoManager$OnPhotoEventListener;

    invoke-interface {v2, p2}, Lcom/duokan/airkan/phone/api/PhotoManager$OnPhotoEventListener;->onSlideshowTypeList([Lcom/duokan/airkan/common/aidl/photo/ParcelSliderType;)V

    .line 1140
    .end local v0           #count:I
    .end local v1           #i:I
    :cond_2
    iget-byte v2, p1, Lcom/duokan/airkan/common/aidl/photo/ParcelPhotoQueryData;->queryshow:B

    if-ne v3, v2, :cond_3

    .line 1144
    :cond_3
    iget-byte v2, p1, Lcom/duokan/airkan/common/aidl/photo/ParcelPhotoQueryData;->checkavailability:B

    if-ne v3, v2, :cond_5

    .line 1145
    sget-object v6, Lcom/duokan/airkan/phone/api/PhotoManager;->bufferHandleList:Ljava/util/ArrayList;

    monitor-enter v6

    .line 1147
    :try_start_0
    iget-byte v2, p1, Lcom/duokan/airkan/common/aidl/photo/ParcelPhotoQueryData;->status:B

    if-nez v2, :cond_6

    .line 1148
    sget-object v2, Lcom/duokan/airkan/phone/api/PhotoManager;->bufferHandleList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_4

    .line 1149
    sget-object v2, Lcom/duokan/airkan/phone/api/PhotoManager;->bufferHandleList:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/duokan/airkan/phone/api/PhotoManager;->sendBufferImage(I)V

    .line 1163
    :cond_4
    :goto_1
    monitor-exit v6

    .line 1165
    :cond_5
    return-void

    .line 1151
    :cond_6
    sget-object v2, Lcom/duokan/airkan/phone/api/PhotoManager;->bufferHandleList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_7

    .line 1152
    iget-short v5, p1, Lcom/duokan/airkan/common/aidl/photo/ParcelPhotoQueryData;->checkinghandle:S

    sget-object v2, Lcom/duokan/airkan/phone/api/PhotoManager;->bufferHandleList:Ljava/util/ArrayList;

    const/4 v7, 0x0

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->shortValue()S

    move-result v2

    if-ne v5, v2, :cond_8

    move v5, v3

    :goto_2
    iget-short v2, p1, Lcom/duokan/airkan/common/aidl/photo/ParcelPhotoQueryData;->checkinghandle:S

    if-ne v2, v8, :cond_9

    move v2, v3

    :goto_3
    or-int/2addr v2, v5

    if-eqz v2, :cond_7

    .line 1153
    iget-object v3, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "remove buffer 0 since exist: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v2, Lcom/duokan/airkan/phone/api/PhotoManager;->bufferHandleList:Ljava/util/ArrayList;

    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->shortValue()S

    move-result v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/duokan/airkan/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1154
    sget-object v2, Lcom/duokan/airkan/phone/api/PhotoManager;->bufferHandleList:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1158
    :cond_7
    sget v2, Lcom/duokan/airkan/phone/api/PhotoManager;->waitingShowHandle:I

    if-ne v2, v8, :cond_4

    .line 1160
    invoke-virtual {p0}, Lcom/duokan/airkan/phone/api/PhotoManager;->queryNextBufferImage()V

    goto :goto_1

    .line 1163
    :catchall_0
    move-exception v2

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    :cond_8
    move v5, v4

    .line 1152
    goto :goto_2

    :cond_9
    move v2, v4

    goto :goto_3
.end method

.method private removeCallback()V
    .locals 5

    .prologue
    .line 706
    :try_start_0
    iget-object v2, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->TAG:Ljava/lang/String;

    const-string v3, "removeCallback"

    invoke-static {v2, v3}, Lcom/duokan/airkan/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 707
    iget-object v2, p0, Lcom/duokan/airkan/phone/api/ConnectionManager;->mAirkanDeviceManager:Lcom/duokan/airkan/phone/api/DeviceManager;

    invoke-virtual {v2}, Lcom/duokan/airkan/phone/api/DeviceManager;->getService()Lcom/duokan/airkan/phone/aidl/IAirkanClientService;

    move-result-object v1

    .line 709
    .local v1, myService:Lcom/duokan/airkan/phone/aidl/IAirkanClientService;
    if-eqz v1, :cond_0

    .line 710
    invoke-interface {v1}, Lcom/duokan/airkan/phone/aidl/IAirkanClientService;->removePhotoCallback()V

    .line 711
    iget-object v2, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->TAG:Ljava/lang/String;

    const-string v3, "remove callback done."

    invoke-static {v2, v3}, Lcom/duokan/airkan/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 719
    .end local v1           #myService:Lcom/duokan/airkan/phone/aidl/IAirkanClientService;
    :goto_0
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->linkConnected:Z

    .line 720
    return-void

    .line 713
    .restart local v1       #myService:Lcom/duokan/airkan/phone/aidl/IAirkanClientService;
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->TAG:Ljava/lang/String;

    const-string v3, "Service not bounded."

    invoke-static {v2, v3}, Lcom/duokan/airkan/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 715
    .end local v1           #myService:Lcom/duokan/airkan/phone/aidl/IAirkanClientService;
    :catch_0
    move-exception v0

    .line 716
    .local v0, e:Ljava/lang/Exception;
    iget-object v2, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Remove callback error. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/duokan/airkan/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 717
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private removePhotoSendServiceCallback()V
    .locals 4

    .prologue
    .line 739
    :try_start_0
    iget-object v1, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->TAG:Ljava/lang/String;

    const-string v2, "removePhotoSendServiceCallback"

    invoke-static {v1, v2}, Lcom/duokan/airkan/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 740
    iget-object v1, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->mPhotoSendService:Lcom/duokan/airkan/photosend/aidl/IPhotoSendService;

    if-eqz v1, :cond_0

    .line 741
    iget-object v1, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->mPhotoSendService:Lcom/duokan/airkan/photosend/aidl/IPhotoSendService;

    invoke-interface {v1}, Lcom/duokan/airkan/photosend/aidl/IPhotoSendService;->removeCallback()V

    .line 742
    iget-object v1, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->TAG:Ljava/lang/String;

    const-string v2, "remove photo send callback done."

    invoke-static {v1, v2}, Lcom/duokan/airkan/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 750
    :goto_0
    return-void

    .line 744
    :cond_0
    iget-object v1, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->TAG:Ljava/lang/String;

    const-string v2, "Service not bounded."

    invoke-static {v1, v2}, Lcom/duokan/airkan/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 746
    :catch_0
    move-exception v0

    .line 747
    .local v0, e:Ljava/lang/Exception;
    iget-object v1, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Remove callback error. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/duokan/airkan/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 748
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private send4Pull([I)V
    .locals 4
    .parameter "list"

    .prologue
    .line 1290
    sget-object v3, Lcom/duokan/airkan/phone/api/PhotoManager;->bufferHandleList:Ljava/util/ArrayList;

    monitor-enter v3

    .line 1291
    :try_start_0
    sget-object v2, Lcom/duokan/airkan/phone/api/PhotoManager;->bufferHandleList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 1292
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1294
    invoke-virtual {p1}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    .line 1295
    .local v0, li:[I
    const/4 v1, 0x0

    .line 1296
    .local v1, start2send:Z
    sget-object v3, Lcom/duokan/airkan/phone/api/PhotoManager;->list4Pull:Ljava/util/ArrayList;

    monitor-enter v3

    .line 1297
    :try_start_1
    sget-object v2, Lcom/duokan/airkan/phone/api/PhotoManager;->list4Pull:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-gtz v2, :cond_0

    .line 1298
    const/4 v1, 0x1

    .line 1299
    :cond_0
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1300
    invoke-direct {p0, v0}, Lcom/duokan/airkan/phone/api/PhotoManager;->buildlist4Pull([I)V

    .line 1301
    if-eqz v1, :cond_1

    .line 1302
    invoke-virtual {p0}, Lcom/duokan/airkan/phone/api/PhotoManager;->sendPhoto4Pull()V

    .line 1304
    :cond_1
    return-void

    .line 1292
    .end local v0           #li:[I
    .end local v1           #start2send:Z
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 1299
    .restart local v0       #li:[I
    .restart local v1       #start2send:Z
    :catchall_1
    move-exception v2

    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v2
.end method

.method private sendBufferImage(I)V
    .locals 10
    .parameter "handle"

    .prologue
    const/4 v4, 0x0

    .line 1096
    iget v0, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->sendingHandle:I

    if-ne v0, p1, :cond_0

    .line 1121
    :goto_0
    return-void

    .line 1098
    :cond_0
    iget-object v0, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "buffer file not exit, send it: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v3, Lcom/duokan/airkan/phone/api/PhotoManager;->bufferHandleList:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " sendingHandle: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->sendingHandle:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/duokan/airkan/common/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1101
    iput p1, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->sendingHandle:I

    .line 1102
    iget-object v0, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->filelist:Ljava/util/ArrayList;

    iget v1, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->mCurrentIndexOffset:I

    sub-int v1, p1, v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/duokan/airkan/photo/SendoutFileInfo;

    .line 1103
    .local v8, mFileInfo:Lcom/duokan/airkan/photo/SendoutFileInfo;
    iget-object v0, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->photoListener:Lcom/duokan/airkan/phone/api/PhotoManager$OnPhotoEventListener;

    iget-object v1, v8, Lcom/duokan/airkan/photo/SendoutFileInfo;->filename:Ljava/lang/String;

    iget v3, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->remoteW:I

    iget v4, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->remoteH:I

    invoke-interface {v0, v1, v3, v4}, Lcom/duokan/airkan/phone/api/PhotoManager$OnPhotoEventListener;->onGetImageData(Ljava/lang/String;II)[B

    move-result-object v2

    .line 1104
    .local v2, data:[B
    iget-object v9, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->filelist:Ljava/util/ArrayList;

    monitor-enter v9

    .line 1105
    if-nez v2, :cond_1

    .line 1107
    :try_start_0
    iget-object v0, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->mPhotoSendService:Lcom/duokan/airkan/photosend/aidl/IPhotoSendService;

    iget-object v1, v8, Lcom/duokan/airkan/photo/SendoutFileInfo;->filename:Ljava/lang/String;

    int-to-short v2, p1

    iget-byte v3, v8, Lcom/duokan/airkan/photo/SendoutFileInfo;->format:B

    .end local v2           #data:[B
    const/4 v4, 0x0

    iget-boolean v5, v8, Lcom/duokan/airkan/photo/SendoutFileInfo;->changed:Z

    invoke-interface/range {v0 .. v5}, Lcom/duokan/airkan/photosend/aidl/IPhotoSendService;->sendPhoto(Ljava/lang/String;IIZZ)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1119
    :goto_1
    const/4 v0, 0x0

    :try_start_1
    iput-boolean v0, v8, Lcom/duokan/airkan/photo/SendoutFileInfo;->changed:Z

    .line 1120
    monitor-exit v9

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 1110
    :catch_0
    move-exception v7

    .line 1111
    .local v7, e:Landroid/os/RemoteException;
    :try_start_2
    invoke-virtual {v7}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1

    .line 1115
    .end local v7           #e:Landroid/os/RemoteException;
    .restart local v2       #data:[B
    :cond_1
    iget-object v1, v8, Lcom/duokan/airkan/photo/SendoutFileInfo;->filename:Ljava/lang/String;

    iget-byte v3, v8, Lcom/duokan/airkan/photo/SendoutFileInfo;->format:B

    int-to-short v4, p1

    const/4 v5, 0x0

    iget-boolean v6, v8, Lcom/duokan/airkan/photo/SendoutFileInfo;->changed:Z

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/duokan/airkan/phone/api/PhotoManager;->SendImageData(Ljava/lang/String;[BIIZZ)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method private sendFirstImage()V
    .locals 11

    .prologue
    .line 1058
    const/4 v0, -0x1

    sput v0, Lcom/duokan/airkan/phone/api/PhotoManager;->waitingShowHandle:I

    .line 1059
    iget v0, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->index:I

    iput v0, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->sendingHandle:I

    .line 1060
    iget v0, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->sendingHandle:I

    iget v1, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->mCurrentIndexOffset:I

    sub-int v9, v0, v1

    .line 1061
    .local v9, mHandle:I
    iget-object v0, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->filelist:Ljava/util/ArrayList;

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/duokan/airkan/photo/SendoutFileInfo;

    .line 1063
    .local v8, mFileInfo:Lcom/duokan/airkan/photo/SendoutFileInfo;
    iget-object v0, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->photoListener:Lcom/duokan/airkan/phone/api/PhotoManager$OnPhotoEventListener;

    iget-object v1, v8, Lcom/duokan/airkan/photo/SendoutFileInfo;->filename:Ljava/lang/String;

    iget v3, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->remoteW:I

    iget v4, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->remoteH:I

    invoke-interface {v0, v1, v3, v4}, Lcom/duokan/airkan/phone/api/PhotoManager$OnPhotoEventListener;->onGetImageData(Ljava/lang/String;II)[B

    move-result-object v2

    .line 1065
    .local v2, data:[B
    iget-object v10, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->filelist:Ljava/util/ArrayList;

    monitor-enter v10

    .line 1066
    if-nez v2, :cond_1

    .line 1068
    :try_start_0
    iget-object v0, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->mPhotoSendService:Lcom/duokan/airkan/photosend/aidl/IPhotoSendService;

    if-eqz v0, :cond_0

    .line 1069
    iget-object v0, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->mPhotoSendService:Lcom/duokan/airkan/photosend/aidl/IPhotoSendService;

    iget-object v1, v8, Lcom/duokan/airkan/photo/SendoutFileInfo;->filename:Ljava/lang/String;

    iget v3, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->sendingHandle:I

    int-to-short v2, v3

    iget-byte v3, v8, Lcom/duokan/airkan/photo/SendoutFileInfo;->format:B

    .end local v2           #data:[B
    const/4 v4, 0x1

    iget-boolean v5, v8, Lcom/duokan/airkan/photo/SendoutFileInfo;->changed:Z

    invoke-interface/range {v0 .. v5}, Lcom/duokan/airkan/photosend/aidl/IPhotoSendService;->sendPhoto(Ljava/lang/String;IIZZ)I

    .line 1074
    iget-object v0, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sent the first image: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->index:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " sendingHandle: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/duokan/airkan/common/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1090
    :goto_0
    const/4 v0, 0x0

    :try_start_1
    iput-boolean v0, v8, Lcom/duokan/airkan/photo/SendoutFileInfo;->changed:Z

    .line 1091
    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1092
    :goto_1
    return-void

    .line 1076
    .restart local v2       #data:[B
    :cond_0
    :try_start_2
    iget-object v0, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->TAG:Ljava/lang/String;

    const-string v1, "mPhotoSendService is not available"

    invoke-static {v0, v1}, Lcom/duokan/airkan/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 1077
    :try_start_3
    monitor-exit v10

    goto :goto_1

    .line 1091
    .end local v2           #data:[B
    :catchall_0
    move-exception v0

    monitor-exit v10
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    .line 1079
    :catch_0
    move-exception v7

    .line 1080
    .local v7, e:Landroid/os/RemoteException;
    :try_start_4
    invoke-virtual {v7}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 1084
    .end local v7           #e:Landroid/os/RemoteException;
    .restart local v2       #data:[B
    :cond_1
    iget-object v0, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->TAG:Ljava/lang/String;

    const-string v1, "send image data in sendFirstImage"

    invoke-static {v0, v1}, Lcom/duokan/airkan/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1085
    iget-object v1, v8, Lcom/duokan/airkan/photo/SendoutFileInfo;->filename:Ljava/lang/String;

    iget-byte v3, v8, Lcom/duokan/airkan/photo/SendoutFileInfo;->format:B

    iget v0, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->sendingHandle:I

    int-to-short v4, v0

    const/4 v5, 0x1

    iget-boolean v6, v8, Lcom/duokan/airkan/photo/SendoutFileInfo;->changed:Z

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/duokan/airkan/phone/api/PhotoManager;->SendImageData(Ljava/lang/String;[BIIZZ)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0
.end method

.method private sendImage()V
    .locals 11

    .prologue
    .line 1023
    sget v9, Lcom/duokan/airkan/phone/api/PhotoManager;->waitingShowHandle:I

    .line 1024
    .local v9, mHandle:I
    iget v0, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->sendingHandle:I

    if-ne v0, v9, :cond_0

    .line 1054
    :goto_0
    return-void

    .line 1026
    :cond_0
    iget-object v0, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "send the inexist image: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " sendingHandle: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->sendingHandle:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/duokan/airkan/common/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1029
    iput v9, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->sendingHandle:I

    .line 1030
    iget v0, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->mCurrentIndexOffset:I

    sub-int/2addr v9, v0

    .line 1031
    iget-object v0, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->filelist:Ljava/util/ArrayList;

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/duokan/airkan/photo/SendoutFileInfo;

    .line 1032
    .local v8, mFileInfo:Lcom/duokan/airkan/photo/SendoutFileInfo;
    iget-object v0, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->photoListener:Lcom/duokan/airkan/phone/api/PhotoManager$OnPhotoEventListener;

    iget-object v1, v8, Lcom/duokan/airkan/photo/SendoutFileInfo;->filename:Ljava/lang/String;

    iget v3, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->remoteW:I

    iget v4, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->remoteH:I

    invoke-interface {v0, v1, v3, v4}, Lcom/duokan/airkan/phone/api/PhotoManager$OnPhotoEventListener;->onGetImageData(Ljava/lang/String;II)[B

    move-result-object v2

    .line 1033
    .local v2, data:[B
    iget-object v10, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->filelist:Ljava/util/ArrayList;

    monitor-enter v10

    .line 1034
    if-nez v2, :cond_1

    .line 1036
    :try_start_0
    iget-object v0, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->mPhotoSendService:Lcom/duokan/airkan/photosend/aidl/IPhotoSendService;

    iget-object v1, v8, Lcom/duokan/airkan/photo/SendoutFileInfo;->filename:Ljava/lang/String;

    iget v3, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->sendingHandle:I

    int-to-short v2, v3

    iget-byte v3, v8, Lcom/duokan/airkan/photo/SendoutFileInfo;->format:B

    .end local v2           #data:[B
    const/4 v4, 0x1

    iget-boolean v5, v8, Lcom/duokan/airkan/photo/SendoutFileInfo;->changed:Z

    invoke-interface/range {v0 .. v5}, Lcom/duokan/airkan/photosend/aidl/IPhotoSendService;->sendPhoto(Ljava/lang/String;IIZZ)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1052
    :goto_1
    const/4 v0, 0x0

    :try_start_1
    iput-boolean v0, v8, Lcom/duokan/airkan/photo/SendoutFileInfo;->changed:Z

    .line 1053
    monitor-exit v10

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 1041
    :catch_0
    move-exception v7

    .line 1042
    .local v7, e:Landroid/os/RemoteException;
    :try_start_2
    invoke-virtual {v7}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1

    .line 1046
    .end local v7           #e:Landroid/os/RemoteException;
    .restart local v2       #data:[B
    :cond_1
    iget-object v0, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->TAG:Ljava/lang/String;

    const-string v1, "send image data in sendImage"

    invoke-static {v0, v1}, Lcom/duokan/airkan/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1047
    iget-object v1, v8, Lcom/duokan/airkan/photo/SendoutFileInfo;->filename:Ljava/lang/String;

    iget-byte v3, v8, Lcom/duokan/airkan/photo/SendoutFileInfo;->format:B

    iget v0, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->sendingHandle:I

    int-to-short v4, v0

    const/4 v5, 0x1

    iget-boolean v6, v8, Lcom/duokan/airkan/photo/SendoutFileInfo;->changed:Z

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/duokan/airkan/phone/api/PhotoManager;->SendImageData(Ljava/lang/String;[BIIZZ)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method private setConnStatus(Z)V
    .locals 4
    .parameter "conn"

    .prologue
    const/4 v3, 0x0

    .line 1168
    iget-object v0, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->TAG:Ljava/lang/String;

    const-string v1, "setConnStatus for connection"

    invoke-static {v0, v1}, Lcom/duokan/airkan/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1169
    if-eqz p1, :cond_1

    .line 1170
    const-string v0, "connect status is OK"

    invoke-virtual {p0, v0}, Lcom/duokan/airkan/phone/api/PhotoManager;->cancelConnectRspTimer(Ljava/lang/String;)V

    .line 1171
    iget-object v0, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->photoListener:Lcom/duokan/airkan/phone/api/PhotoManager$OnPhotoEventListener;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/duokan/airkan/phone/api/PhotoManager$OnPhotoEventListener;->onConnectResponse(I)V

    .line 1182
    :cond_0
    :goto_0
    return-void

    .line 1173
    :cond_1
    iget-object v0, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "in setConnStatus(), mReleaseFromLoc: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->mReleaseFromLoc:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/duokan/airkan/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1174
    iget-boolean v0, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->mReleaseFromLoc:Z

    if-nez v0, :cond_2

    .line 1175
    iget-object v0, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->photoListener:Lcom/duokan/airkan/phone/api/PhotoManager$OnPhotoEventListener;

    invoke-interface {v0, v3}, Lcom/duokan/airkan/phone/api/PhotoManager$OnPhotoEventListener;->onConnectResponse(I)V

    .line 1180
    :goto_1
    iget-boolean v0, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->sliderShow:Z

    if-eqz v0, :cond_0

    iput-boolean v3, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->sliderShow:Z

    goto :goto_0

    .line 1177
    :cond_2
    iput-boolean v3, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->mReleaseFromLoc:Z

    goto :goto_1
.end method

.method private showResponse()V
    .locals 2

    .prologue
    .line 1012
    iget-boolean v0, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->sliderShow:Z

    if-eqz v0, :cond_0

    .line 1013
    iget-object v0, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->TAG:Ljava/lang/String;

    const-string v1, "start slide show"

    invoke-static {v0, v1}, Lcom/duokan/airkan/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1019
    :goto_0
    return-void

    .line 1016
    :cond_0
    iget-object v0, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->TAG:Ljava/lang/String;

    const-string v1, "start manual show"

    invoke-static {v0, v1}, Lcom/duokan/airkan/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private unbindPhotoSendService()V
    .locals 3

    .prologue
    .line 767
    iget-object v1, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->TAG:Ljava/lang/String;

    const-string v2, "enter unbindPhotoSendService"

    invoke-static {v1, v2}, Lcom/duokan/airkan/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 769
    :try_start_0
    iget v1, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->sleepInterval:I

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 773
    :goto_0
    iget-boolean v1, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->mIsPhotoSendServiceBoundSuccess:Z

    if-eqz v1, :cond_1

    .line 774
    invoke-direct {p0}, Lcom/duokan/airkan/phone/api/PhotoManager;->removePhotoSendServiceCallback()V

    .line 775
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->mIsPhotoSendServiceBoundSuccess:Z

    .line 779
    :goto_1
    iget-object v1, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->mPhotoSendService:Lcom/duokan/airkan/photosend/aidl/IPhotoSendService;

    if-eqz v1, :cond_0

    .line 780
    iget-object v1, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->TAG:Ljava/lang/String;

    const-string v2, "to unbind photo send service"

    invoke-static {v1, v2}, Lcom/duokan/airkan/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 781
    iget-object v1, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->mPhotoSendServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 782
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->mPhotoSendService:Lcom/duokan/airkan/photosend/aidl/IPhotoSendService;

    .line 784
    :cond_0
    return-void

    .line 770
    :catch_0
    move-exception v0

    .line 771
    .local v0, e:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 777
    .end local v0           #e:Ljava/lang/InterruptedException;
    :cond_1
    iget-object v1, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->TAG:Ljava/lang/String;

    const-string v2, "mPhotoSendService not bound."

    invoke-static {v1, v2}, Lcom/duokan/airkan/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private updateFileInfo(I)V
    .locals 10
    .parameter "handle"

    .prologue
    const/4 v9, 0x1

    .line 1386
    iget-object v7, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->TAG:Ljava/lang/String;

    const-string v8, "enter updateFileInfo"

    invoke-static {v7, v8}, Lcom/duokan/airkan/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1387
    iget-object v7, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->filelist:Ljava/util/ArrayList;

    invoke-virtual {v7, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/duokan/airkan/photo/SendoutFileInfo;

    iget-object v2, v7, Lcom/duokan/airkan/photo/SendoutFileInfo;->filename:Ljava/lang/String;

    .line 1388
    .local v2, filename:Ljava/lang/String;
    iget-object v7, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->filelist:Ljava/util/ArrayList;

    invoke-virtual {v7, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/duokan/airkan/photo/SendoutFileInfo;

    const/4 v8, 0x0

    iput-boolean v8, v7, Lcom/duokan/airkan/photo/SendoutFileInfo;->changed:Z

    .line 1391
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->lastModified()J

    move-result-wide v3

    .line 1392
    .local v3, newLastModifiedTime:J
    iget-object v7, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->filelist:Ljava/util/ArrayList;

    invoke-virtual {v7, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/duokan/airkan/photo/SendoutFileInfo;

    iget-wide v7, v7, Lcom/duokan/airkan/photo/SendoutFileInfo;->lastModifiedTime:J

    cmp-long v7, v3, v7

    if-eqz v7, :cond_0

    .line 1393
    iget-object v7, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->filelist:Ljava/util/ArrayList;

    invoke-virtual {v7, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/duokan/airkan/photo/SendoutFileInfo;

    iput-wide v3, v7, Lcom/duokan/airkan/photo/SendoutFileInfo;->lastModifiedTime:J

    .line 1394
    iget-object v7, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->filelist:Ljava/util/ArrayList;

    invoke-virtual {v7, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/duokan/airkan/photo/SendoutFileInfo;

    iput-boolean v9, v7, Lcom/duokan/airkan/photo/SendoutFileInfo;->changed:Z

    .line 1395
    iget-object v7, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->TAG:Ljava/lang/String;

    const-string v8, "last modified time changed"

    invoke-static {v7, v8}, Lcom/duokan/airkan/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1399
    :cond_0
    :try_start_0
    new-instance v6, Landroid/media/ExifInterface;

    invoke-direct {v6, v2}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    .line 1400
    .local v6, sourceExif:Landroid/media/ExifInterface;
    const-string v7, "Orientation"

    invoke-virtual {v6, v7}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1401
    .local v5, orientation:Ljava/lang/String;
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 1402
    .local v1, exifDegree:I
    iget-object v7, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->filelist:Ljava/util/ArrayList;

    invoke-virtual {v7, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/duokan/airkan/photo/SendoutFileInfo;

    iget v7, v7, Lcom/duokan/airkan/photo/SendoutFileInfo;->rotation:I

    if-eq v1, v7, :cond_1

    .line 1403
    iget-object v7, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->filelist:Ljava/util/ArrayList;

    invoke-virtual {v7, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/duokan/airkan/photo/SendoutFileInfo;

    iput v1, v7, Lcom/duokan/airkan/photo/SendoutFileInfo;->rotation:I

    .line 1404
    iget-object v7, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->filelist:Ljava/util/ArrayList;

    invoke-virtual {v7, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/duokan/airkan/photo/SendoutFileInfo;

    const/4 v8, 0x1

    iput-boolean v8, v7, Lcom/duokan/airkan/photo/SendoutFileInfo;->changed:Z

    .line 1405
    iget-object v7, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->TAG:Ljava/lang/String;

    const-string v8, "exif check rotation changed"

    invoke-static {v7, v8}, Lcom/duokan/airkan/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1410
    .end local v1           #exifDegree:I
    .end local v5           #orientation:Ljava/lang/String;
    .end local v6           #sourceExif:Landroid/media/ExifInterface;
    :cond_1
    :goto_0
    return-void

    .line 1407
    :catch_0
    move-exception v0

    .line 1408
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public Release(Z)I
    .locals 4
    .parameter "isSwitch2Video"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 374
    iget-object v2, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->TAG:Ljava/lang/String;

    const-string v3, "Release from APP"

    invoke-static {v2, v3}, Lcom/duokan/airkan/common/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 375
    const/4 p1, 0x0

    .line 376
    iget-boolean v2, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->linkConnected:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->dataConnected:Z

    if-nez v2, :cond_0

    .line 377
    iget-object v1, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->TAG:Ljava/lang/String;

    const-string v2, "already released"

    invoke-static {v1, v2}, Lcom/duokan/airkan/common/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 397
    :goto_0
    return v0

    .line 381
    :cond_0
    if-eqz p1, :cond_1

    .line 382
    iput-boolean p1, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->isSwitched2Video:Z

    move v0, v1

    .line 383
    goto :goto_0

    .line 385
    :cond_1
    iput-boolean v0, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->mReleaseFromLoc:Z

    .line 388
    iget-object v2, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->filelist:Ljava/util/ArrayList;

    monitor-enter v2

    .line 389
    :try_start_0
    iget-object v0, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->filelist:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 390
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 392
    invoke-direct {p0}, Lcom/duokan/airkan/phone/api/PhotoManager;->DataDisConnect()V

    .line 393
    iget-object v0, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->TAG:Ljava/lang/String;

    const-string v2, "to close"

    invoke-static {v0, v2}, Lcom/duokan/airkan/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 394
    invoke-direct {p0}, Lcom/duokan/airkan/phone/api/PhotoManager;->photoClose()V

    .line 396
    invoke-direct {p0}, Lcom/duokan/airkan/phone/api/PhotoManager;->removeCallback()V

    move v0, v1

    .line 397
    goto :goto_0

    .line 390
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method SendImageData(Ljava/lang/String;[BIIZZ)V
    .locals 14
    .parameter "fileName"
    .parameter "data"
    .parameter "format"
    .parameter "handle"
    .parameter "highPriority"
    .parameter "isChanged"

    .prologue
    .line 1508
    iget-object v1, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "send image from gallery cache, length: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p2

    array-length v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " handle: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p4

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/duokan/airkan/common/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1511
    :try_start_0
    move-object/from16 v0, p2

    array-length v1, v0

    const/high16 v2, 0x4

    if-ge v1, v2, :cond_2

    .line 1512
    iget-object v1, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->mPhotoSendService:Lcom/duokan/airkan/photosend/aidl/IPhotoSendService;

    if-eqz v1, :cond_1

    .line 1513
    iget-object v1, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->mPhotoSendService:Lcom/duokan/airkan/photosend/aidl/IPhotoSendService;

    move-object v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p4

    move/from16 v5, p3

    move/from16 v6, p5

    move/from16 v7, p6

    invoke-interface/range {v1 .. v7}, Lcom/duokan/airkan/photosend/aidl/IPhotoSendService;->sendPhotoData(Ljava/lang/String;[BIIZZ)I

    .line 1564
    :cond_0
    :goto_0
    return-void

    .line 1515
    :cond_1
    iget-object v1, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->TAG:Ljava/lang/String;

    const-string v2, "photo send service not exist"

    invoke-static {v1, v2}, Lcom/duokan/airkan/common/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 1557
    :catch_0
    move-exception v9

    .line 1558
    .local v9, e:Landroid/os/DeadObjectException;
    iget-object v1, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mPhotoSendService dead:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v9}, Landroid/os/DeadObjectException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/duokan/airkan/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1559
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->mPhotoSendService:Lcom/duokan/airkan/photosend/aidl/IPhotoSendService;

    goto :goto_0

    .line 1518
    .end local v9           #e:Landroid/os/DeadObjectException;
    :cond_2
    const/high16 v11, 0x4

    .line 1519
    .local v11, size:I
    :try_start_1
    move-object/from16 v0, p2

    array-length v1, v0

    div-int v4, v1, v11

    .line 1520
    .local v4, count:I
    move-object/from16 v0, p2

    array-length v1, v0

    rem-int v13, v1, v11

    .line 1521
    .local v13, value:I
    if-eqz v13, :cond_3

    .line 1522
    add-int/lit8 v4, v4, 0x1

    .line 1524
    :cond_3
    move-object/from16 v0, p2

    array-length v6, v0

    .line 1525
    .local v6, length:I
    iget-object v1, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "send photo data in blocks on aidl: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/duokan/airkan/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1527
    iget-object v1, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->mPhotoSendService:Lcom/duokan/airkan/photosend/aidl/IPhotoSendService;

    if-eqz v1, :cond_4

    .line 1528
    iget-object v1, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->mPhotoSendService:Lcom/duokan/airkan/photosend/aidl/IPhotoSendService;

    move-object v2, p1

    move/from16 v3, p3

    move/from16 v5, p4

    move/from16 v7, p5

    move/from16 v8, p6

    invoke-interface/range {v1 .. v8}, Lcom/duokan/airkan/photosend/aidl/IPhotoSendService;->MultiBlockDataInfo(Ljava/lang/String;IIIIZZ)V

    .line 1533
    :goto_1
    const/4 v10, 0x0

    .local v10, i:I
    :goto_2
    if-ge v10, v4, :cond_0

    .line 1534
    if-le v6, v11, :cond_6

    .line 1535
    new-array v12, v11, [B

    .line 1536
    .local v12, temp:[B
    mul-int v1, v10, v11

    const/4 v2, 0x0

    move-object/from16 v0, p2

    invoke-static {v0, v1, v12, v2, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1538
    iget-object v1, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->mPhotoSendService:Lcom/duokan/airkan/photosend/aidl/IPhotoSendService;

    if-eqz v1, :cond_5

    .line 1539
    iget-object v1, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->mPhotoSendService:Lcom/duokan/airkan/photosend/aidl/IPhotoSendService;

    invoke-interface {v1, v12, v10, v11}, Lcom/duokan/airkan/photosend/aidl/IPhotoSendService;->sendPhotoDataM([BII)I

    .line 1553
    :goto_3
    sub-int/2addr v6, v11

    .line 1533
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 1530
    .end local v10           #i:I
    .end local v12           #temp:[B
    :cond_4
    iget-object v1, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->TAG:Ljava/lang/String;

    const-string v2, "photo send service not exist"

    invoke-static {v1, v2}, Lcom/duokan/airkan/common/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/DeadObjectException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 1561
    .end local v4           #count:I
    .end local v6           #length:I
    .end local v11           #size:I
    .end local v13           #value:I
    :catch_1
    move-exception v9

    .line 1562
    .local v9, e:Landroid/os/RemoteException;
    invoke-virtual {v9}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_0

    .line 1541
    .end local v9           #e:Landroid/os/RemoteException;
    .restart local v4       #count:I
    .restart local v6       #length:I
    .restart local v10       #i:I
    .restart local v11       #size:I
    .restart local v12       #temp:[B
    .restart local v13       #value:I
    :cond_5
    :try_start_2
    iget-object v1, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->TAG:Ljava/lang/String;

    const-string v2, "photo send service not exist"

    invoke-static {v1, v2}, Lcom/duokan/airkan/common/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 1544
    .end local v12           #temp:[B
    :cond_6
    new-array v12, v6, [B

    .line 1545
    .restart local v12       #temp:[B
    mul-int v1, v10, v11

    const/4 v2, 0x0

    move-object/from16 v0, p2

    invoke-static {v0, v1, v12, v2, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1547
    iget-object v1, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->mPhotoSendService:Lcom/duokan/airkan/photosend/aidl/IPhotoSendService;

    if-eqz v1, :cond_7

    .line 1548
    iget-object v1, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->mPhotoSendService:Lcom/duokan/airkan/photosend/aidl/IPhotoSendService;

    invoke-interface {v1, v12, v10, v6}, Lcom/duokan/airkan/photosend/aidl/IPhotoSendService;->sendPhotoDataM([BII)I

    goto :goto_3

    .line 1550
    :cond_7
    iget-object v1, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->TAG:Ljava/lang/String;

    const-string v2, "photo send service not exist"

    invoke-static {v1, v2}, Lcom/duokan/airkan/common/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Landroid/os/DeadObjectException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_3
.end method

.method public addList(Ljava/util/ArrayList;)I
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 276
    .local p1, fl:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 278
    .local v3, size:I
    iget-object v5, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->filelist:Ljava/util/ArrayList;

    monitor-enter v5

    .line 279
    :try_start_0
    iget-object v4, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->filelist:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_1

    .line 280
    iget-object v4, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->filelist:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    int-to-short v0, v4

    .line 283
    .local v0, handle:S
    :goto_0
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v3, :cond_2

    .line 286
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-direct {p0, v4, v0}, Lcom/duokan/airkan/phone/api/PhotoManager;->addFile(Ljava/lang/String;S)Lcom/duokan/airkan/photo/SendoutFileInfo;

    move-result-object v2

    .line 287
    .local v2, sfi:Lcom/duokan/airkan/photo/SendoutFileInfo;
    if-eqz v2, :cond_0

    .line 288
    add-int/lit8 v4, v0, 0x1

    int-to-short v0, v4

    .line 289
    iget-object v4, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->filelist:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 283
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 282
    .end local v0           #handle:S
    .end local v1           #i:I
    .end local v2           #sfi:Lcom/duokan/airkan/photo/SendoutFileInfo;
    :cond_1
    const/4 v0, 0x0

    .restart local v0       #handle:S
    goto :goto_0

    .line 293
    .restart local v1       #i:I
    :cond_2
    monitor-exit v5

    .line 294
    const/4 v4, 0x0

    return v4

    .line 293
    .end local v0           #handle:S
    .end local v1           #i:I
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method public cancelConnectRspTimer(Ljava/lang/String;)V
    .locals 3
    .parameter "str"

    .prologue
    .line 1581
    iget-object v0, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->mConnectTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 1582
    iget-object v0, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->mConnectTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 1583
    iget-object v0, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->mConnectTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    .line 1584
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->mConnectTimer:Ljava/util/Timer;

    .line 1586
    :cond_0
    iget-object v0, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "connect respond timer is canceled. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/duokan/airkan/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1587
    return-void
.end method

.method public cancelOfferTimer(Ljava/lang/String;)V
    .locals 3
    .parameter "str"

    .prologue
    .line 1613
    iget-object v0, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->mOfferTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 1614
    iget-object v0, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->mOfferTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 1615
    iget-object v0, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->mOfferTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    .line 1616
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->mOfferTimer:Ljava/util/Timer;

    .line 1618
    :cond_0
    iget-object v0, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Offer timer is canceled. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/duokan/airkan/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1619
    return-void
.end method

.method public cleanList()I
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 353
    iput-boolean v2, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->sliderShow:Z

    .line 354
    iget-object v1, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->filelist:Ljava/util/ArrayList;

    monitor-enter v1

    .line 355
    :try_start_0
    iget-object v0, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->filelist:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 356
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 357
    invoke-direct {p0}, Lcom/duokan/airkan/phone/api/PhotoManager;->postCleanList()V

    .line 358
    return v2

    .line 356
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public connect(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter "servicename"
    .parameter "FirstFile"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/duokan/airkan/common/AirkanException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 223
    iget-object v1, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "New connect coming, mIsConnected: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->mIsConnected:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/duokan/airkan/common/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    iput-object p2, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->mFirstFileName:Ljava/lang/String;

    .line 225
    iget-boolean v1, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->isSwitched2Video:Z

    if-eqz v1, :cond_0

    .line 226
    iput-boolean v4, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->isSwitched2Video:Z

    .line 227
    iget-object v1, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->photoListener:Lcom/duokan/airkan/phone/api/PhotoManager$OnPhotoEventListener;

    invoke-interface {v1, v5}, Lcom/duokan/airkan/phone/api/PhotoManager$OnPhotoEventListener;->onConnectResponse(I)V

    .line 242
    :goto_0
    return-void

    .line 230
    :cond_0
    iput-boolean v5, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->mIsFirstPhoto:Z

    .line 231
    iput-boolean v5, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->mQuerySlideShowType:Z

    .line 232
    iput-boolean v4, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->mReleaseFromLoc:Z

    .line 233
    const/4 v1, -0x1

    iput v1, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->lastSentHandle:I

    .line 234
    iput-boolean v4, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->mRequestWasSent:Z

    .line 237
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/duokan/airkan/phone/api/PhotoManager;->postConnect(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/duokan/airkan/common/AirkanException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 238
    :catch_0
    move-exception v0

    .line 239
    .local v0, e:Lcom/duokan/airkan/common/AirkanException;
    invoke-virtual {v0}, Lcom/duokan/airkan/common/AirkanException;->printStackTrace()V

    goto :goto_0
.end method

.method public errorProcess(I)V
    .locals 1
    .parameter "error"

    .prologue
    .line 1630
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/duokan/airkan/phone/api/PhotoManager;->Release(Z)I

    .line 1631
    iget-object v0, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->photoListener:Lcom/duokan/airkan/phone/api/PhotoManager$OnPhotoEventListener;

    invoke-interface {v0, p1}, Lcom/duokan/airkan/phone/api/PhotoManager$OnPhotoEventListener;->onError(I)V

    .line 1632
    return-void
.end method

.method postConnect(Ljava/lang/String;)V
    .locals 6
    .parameter "srvName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/duokan/airkan/common/AirkanException;
        }
    .end annotation

    .prologue
    .line 838
    move-object v3, p1

    .line 839
    .local v3, servicename:Ljava/lang/String;
    const/4 v2, 0x0

    .line 841
    .local v2, i:I
    iget-boolean v4, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->linkConnected:Z

    if-nez v4, :cond_0

    iget-boolean v4, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->dataConnected:Z

    if-nez v4, :cond_0

    .line 842
    iget-object v4, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->TAG:Ljava/lang/String;

    const-string v5, "already released"

    invoke-static {v4, v5}, Lcom/duokan/airkan/common/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 843
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->mIsConnected:Z

    .line 846
    :cond_0
    :goto_0
    iget-boolean v4, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->mIsConnected:Z

    if-eqz v4, :cond_2

    .line 847
    add-int/lit8 v2, v2, 0x1

    .line 848
    const/16 v4, 0x1e

    if-lt v2, v4, :cond_1

    .line 849
    iget-object v4, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->TAG:Ljava/lang/String;

    const-string v5, "Timeout for existing link to disconnecte"

    invoke-static {v4, v5}, Lcom/duokan/airkan/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 874
    :goto_1
    return-void

    .line 853
    :cond_1
    :try_start_0
    iget v4, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->sleepInterval:I

    int-to-long v4, v4

    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 854
    :catch_0
    move-exception v1

    .line 855
    .local v1, ex:Ljava/lang/Exception;
    iget-object v4, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->TAG:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/duokan/airkan/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 858
    .end local v1           #ex:Ljava/lang/Exception;
    :cond_2
    invoke-virtual {p0}, Lcom/duokan/airkan/phone/api/PhotoManager;->startConnectRspTimer()V

    .line 859
    invoke-virtual {p0}, Lcom/duokan/airkan/phone/api/PhotoManager;->registerCallback()V

    .line 860
    iget-object v4, p0, Lcom/duokan/airkan/phone/api/ConnectionManager;->mAirkanDeviceManager:Lcom/duokan/airkan/phone/api/DeviceManager;

    invoke-virtual {v4, v3}, Lcom/duokan/airkan/phone/api/DeviceManager;->getType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 861
    .local v0, deviceType:Ljava/lang/String;
    if-nez v0, :cond_3

    .line 862
    iget-object v4, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->TAG:Ljava/lang/String;

    const-string v5, "device not found"

    invoke-static {v4, v5}, Lcom/duokan/airkan/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 863
    new-instance v4, Lcom/duokan/airkan/common/AirkanException;

    const-string v5, "Device not found"

    invoke-direct {v4, v5}, Lcom/duokan/airkan/common/AirkanException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 865
    :cond_3
    const-string v4, "_airkan._tcp.local."

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 866
    invoke-super {p0, v3}, Lcom/duokan/airkan/phone/api/ConnectionManager;->connect(Ljava/lang/String;)V

    .line 867
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->mIs2Connect:Z

    .line 873
    invoke-direct {p0}, Lcom/duokan/airkan/phone/api/PhotoManager;->DataConnect()V

    goto :goto_1

    .line 869
    :cond_4
    iget-object v4, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->TAG:Ljava/lang/String;

    const-string v5, "device type is not valid"

    invoke-static {v4, v5}, Lcom/duokan/airkan/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 870
    new-instance v4, Lcom/duokan/airkan/common/AirkanException;

    const-string v5, "device type is not valid"

    invoke-direct {v4, v5}, Lcom/duokan/airkan/common/AirkanException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method postPhotoShow(I)V
    .locals 8
    .parameter "sst"

    .prologue
    .line 879
    :try_start_0
    iget-object v1, p0, Lcom/duokan/airkan/phone/api/ConnectionManager;->mAirkanDeviceManager:Lcom/duokan/airkan/phone/api/DeviceManager;

    invoke-virtual {v1}, Lcom/duokan/airkan/phone/api/DeviceManager;->getService()Lcom/duokan/airkan/phone/aidl/IAirkanClientService;

    move-result-object v0

    .line 881
    .local v0, myService:Lcom/duokan/airkan/phone/aidl/IAirkanClientService;
    if-eqz v0, :cond_3

    .line 882
    iget-object v1, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "To slider show with type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/duokan/airkan/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 883
    iget-boolean v1, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->sliderShow:Z

    if-eqz v1, :cond_1

    .line 884
    sget-object v2, Lcom/duokan/airkan/phone/api/PhotoManager;->list4Pull:Ljava/util/ArrayList;

    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 885
    :try_start_1
    sget-object v1, Lcom/duokan/airkan/phone/api/PhotoManager;->list4Pull:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 886
    sget-object v1, Lcom/duokan/airkan/phone/api/PhotoManager;->list4Pull:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 888
    :cond_0
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 892
    :cond_1
    :try_start_2
    sget v1, Lcom/duokan/airkan/phone/api/PhotoManager;->serviceHandle:I

    iget-boolean v2, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->sliderShow:Z

    const/4 v4, 0x0

    const/4 v5, 0x1

    move v3, p1

    invoke-interface/range {v0 .. v5}, Lcom/duokan/airkan/phone/aidl/IAirkanClientService;->photoShow(IZIIZ)I

    move-result v7

    .line 893
    .local v7, ret:I
    if-nez v7, :cond_2

    .line 894
    iget-object v1, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->TAG:Ljava/lang/String;

    const-string v2, "send photo show success."

    invoke-static {v1, v2}, Lcom/duokan/airkan/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 909
    .end local v0           #myService:Lcom/duokan/airkan/phone/aidl/IAirkanClientService;
    .end local v7           #ret:I
    :goto_0
    return-void

    .line 888
    .restart local v0       #myService:Lcom/duokan/airkan/phone/aidl/IAirkanClientService;
    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 905
    .end local v0           #myService:Lcom/duokan/airkan/phone/aidl/IAirkanClientService;
    :catch_0
    move-exception v6

    .line 906
    .local v6, e:Ljava/lang/Exception;
    iget-object v1, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "photo show error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v6}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/duokan/airkan/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 907
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 896
    .end local v6           #e:Ljava/lang/Exception;
    .restart local v0       #myService:Lcom/duokan/airkan/phone/aidl/IAirkanClientService;
    .restart local v7       #ret:I
    :cond_2
    :try_start_5
    iget-object v1, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->TAG:Ljava/lang/String;

    const-string v2, "send photo show failed."

    invoke-static {v1, v2}, Lcom/duokan/airkan/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_0

    .line 898
    .end local v7           #ret:I
    :catch_1
    move-exception v6

    .line 899
    .local v6, e:Landroid/os/RemoteException;
    :try_start_6
    invoke-virtual {v6}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 903
    .end local v6           #e:Landroid/os/RemoteException;
    :cond_3
    iget-object v1, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->TAG:Ljava/lang/String;

    const-string v2, "Service not bounded, can not photo show."

    invoke-static {v1, v2}, Lcom/duokan/airkan/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    goto :goto_0
.end method

.method postquery(ZZZS)V
    .locals 6
    .parameter "slideshowtype"
    .parameter "currentshow"
    .parameter "availibility"
    .parameter "ahandle"

    .prologue
    const/4 v5, 0x1

    .line 812
    iget-object v3, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->TAG:Ljava/lang/String;

    const-string v4, "post query"

    invoke-static {v3, v4}, Lcom/duokan/airkan/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 813
    new-instance v2, Lcom/duokan/airkan/common/aidl/photo/ParcelPhotoQueryData;

    invoke-direct {v2}, Lcom/duokan/airkan/common/aidl/photo/ParcelPhotoQueryData;-><init>()V

    .line 814
    .local v2, photoQueryData:Lcom/duokan/airkan/common/aidl/photo/ParcelPhotoQueryData;
    if-eqz p1, :cond_0

    .line 815
    iput-byte v5, v2, Lcom/duokan/airkan/common/aidl/photo/ParcelPhotoQueryData;->queryslidertype:B

    .line 816
    :cond_0
    if-eqz p2, :cond_1

    .line 817
    iput-byte v5, v2, Lcom/duokan/airkan/common/aidl/photo/ParcelPhotoQueryData;->queryshow:B

    .line 818
    :cond_1
    if-eqz p3, :cond_2

    .line 819
    iput-byte v5, v2, Lcom/duokan/airkan/common/aidl/photo/ParcelPhotoQueryData;->checkavailability:B

    .line 820
    iput-short p4, v2, Lcom/duokan/airkan/common/aidl/photo/ParcelPhotoQueryData;->checkinghandle:S

    .line 823
    :cond_2
    :try_start_0
    iget-object v3, p0, Lcom/duokan/airkan/phone/api/ConnectionManager;->mAirkanDeviceManager:Lcom/duokan/airkan/phone/api/DeviceManager;

    invoke-virtual {v3}, Lcom/duokan/airkan/phone/api/DeviceManager;->getService()Lcom/duokan/airkan/phone/aidl/IAirkanClientService;

    move-result-object v1

    .line 825
    .local v1, myService:Lcom/duokan/airkan/phone/aidl/IAirkanClientService;
    if-eqz v1, :cond_3

    .line 826
    sget v3, Lcom/duokan/airkan/phone/api/PhotoManager;->serviceHandle:I

    invoke-interface {v1, v3, v2}, Lcom/duokan/airkan/phone/aidl/IAirkanClientService;->photoQuery(ILcom/duokan/airkan/common/aidl/photo/ParcelPhotoQueryData;)I

    .line 827
    iget-object v3, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->TAG:Ljava/lang/String;

    const-string v4, "call success"

    invoke-static {v3, v4}, Lcom/duokan/airkan/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 835
    .end local v1           #myService:Lcom/duokan/airkan/phone/aidl/IAirkanClientService;
    :goto_0
    return-void

    .line 829
    .restart local v1       #myService:Lcom/duokan/airkan/phone/aidl/IAirkanClientService;
    :cond_3
    iget-object v3, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->TAG:Ljava/lang/String;

    const-string v4, "Service not bounded."

    invoke-static {v3, v4}, Lcom/duokan/airkan/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 832
    .end local v1           #myService:Lcom/duokan/airkan/phone/aidl/IAirkanClientService;
    :catch_0
    move-exception v0

    .line 833
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method postrequest()V
    .locals 7

    .prologue
    .line 788
    :try_start_0
    iget-object v4, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->mDeviceManager:Lcom/duokan/airkan/phone/api/DeviceManager;

    invoke-virtual {v4}, Lcom/duokan/airkan/phone/api/DeviceManager;->getLocalDevicename()Ljava/lang/String;

    move-result-object v1

    .line 789
    .local v1, mDeviceName:Ljava/lang/String;
    iget-object v4, p0, Lcom/duokan/airkan/phone/api/ConnectionManager;->mAirkanDeviceManager:Lcom/duokan/airkan/phone/api/DeviceManager;

    invoke-virtual {v4}, Lcom/duokan/airkan/phone/api/DeviceManager;->getService()Lcom/duokan/airkan/phone/aidl/IAirkanClientService;

    move-result-object v3

    .line 791
    .local v3, myService:Lcom/duokan/airkan/phone/aidl/IAirkanClientService;
    if-eqz v3, :cond_0

    .line 792
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "To post request, device name: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 793
    .local v2, msg:Ljava/lang/String;
    iget-object v4, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->TAG:Ljava/lang/String;

    invoke-static {v4, v2}, Lcom/duokan/airkan/common/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 795
    :try_start_1
    sget v4, Lcom/duokan/airkan/phone/api/PhotoManager;->serviceHandle:I

    invoke-interface {v3, v4, v1}, Lcom/duokan/airkan/phone/aidl/IAirkanClientService;->photoRequest(ILjava/lang/String;)I

    .line 796
    iget-object v4, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->TAG:Ljava/lang/String;

    const-string v5, "call photo request success"

    invoke-static {v4, v5}, Lcom/duokan/airkan/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 808
    .end local v1           #mDeviceName:Ljava/lang/String;
    .end local v2           #msg:Ljava/lang/String;
    .end local v3           #myService:Lcom/duokan/airkan/phone/aidl/IAirkanClientService;
    :goto_0
    return-void

    .line 797
    .restart local v1       #mDeviceName:Ljava/lang/String;
    .restart local v2       #msg:Ljava/lang/String;
    .restart local v3       #myService:Lcom/duokan/airkan/phone/aidl/IAirkanClientService;
    :catch_0
    move-exception v0

    .line 798
    .local v0, e:Landroid/os/RemoteException;
    :try_start_2
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 804
    .end local v0           #e:Landroid/os/RemoteException;
    .end local v1           #mDeviceName:Ljava/lang/String;
    .end local v2           #msg:Ljava/lang/String;
    .end local v3           #myService:Lcom/duokan/airkan/phone/aidl/IAirkanClientService;
    :catch_1
    move-exception v0

    .line 805
    .local v0, e:Ljava/lang/Exception;
    iget-object v4, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "send photo request error. "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/duokan/airkan/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 806
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 802
    .end local v0           #e:Ljava/lang/Exception;
    .restart local v1       #mDeviceName:Ljava/lang/String;
    .restart local v3       #myService:Lcom/duokan/airkan/phone/aidl/IAirkanClientService;
    :cond_0
    :try_start_3
    iget-object v4, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->TAG:Ljava/lang/String;

    const-string v5, "Service not bounded."

    invoke-static {v4, v5}, Lcom/duokan/airkan/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0
.end method

.method public queryNextBufferImage()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 1425
    sget-object v3, Lcom/duokan/airkan/phone/api/PhotoManager;->bufferHandleList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 1426
    new-instance v2, Lcom/duokan/airkan/common/aidl/photo/ParcelPhotoQueryData;

    invoke-direct {v2}, Lcom/duokan/airkan/common/aidl/photo/ParcelPhotoQueryData;-><init>()V

    .line 1427
    .local v2, photoQueryData:Lcom/duokan/airkan/common/aidl/photo/ParcelPhotoQueryData;
    iget-object v4, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Query next buffer image: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v3, Lcom/duokan/airkan/phone/api/PhotoManager;->bufferHandleList:Ljava/util/ArrayList;

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->shortValue()S

    move-result v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/duokan/airkan/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1429
    const/4 v3, 0x1

    iput-byte v3, v2, Lcom/duokan/airkan/common/aidl/photo/ParcelPhotoQueryData;->checkavailability:B

    .line 1430
    sget-object v3, Lcom/duokan/airkan/phone/api/PhotoManager;->bufferHandleList:Ljava/util/ArrayList;

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->shortValue()S

    move-result v3

    iput-short v3, v2, Lcom/duokan/airkan/common/aidl/photo/ParcelPhotoQueryData;->checkinghandle:S

    .line 1433
    :try_start_0
    iget-object v3, p0, Lcom/duokan/airkan/phone/api/ConnectionManager;->mAirkanDeviceManager:Lcom/duokan/airkan/phone/api/DeviceManager;

    invoke-virtual {v3}, Lcom/duokan/airkan/phone/api/DeviceManager;->getService()Lcom/duokan/airkan/phone/aidl/IAirkanClientService;

    move-result-object v1

    .line 1435
    .local v1, myService:Lcom/duokan/airkan/phone/aidl/IAirkanClientService;
    if-eqz v1, :cond_1

    .line 1436
    sget v3, Lcom/duokan/airkan/phone/api/PhotoManager;->serviceHandle:I

    invoke-interface {v1, v3, v2}, Lcom/duokan/airkan/phone/aidl/IAirkanClientService;->photoQuery(ILcom/duokan/airkan/common/aidl/photo/ParcelPhotoQueryData;)I

    .line 1444
    .end local v1           #myService:Lcom/duokan/airkan/phone/aidl/IAirkanClientService;
    .end local v2           #photoQueryData:Lcom/duokan/airkan/common/aidl/photo/ParcelPhotoQueryData;
    :cond_0
    :goto_0
    return-void

    .line 1438
    .restart local v1       #myService:Lcom/duokan/airkan/phone/aidl/IAirkanClientService;
    .restart local v2       #photoQueryData:Lcom/duokan/airkan/common/aidl/photo/ParcelPhotoQueryData;
    :cond_1
    iget-object v3, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->TAG:Ljava/lang/String;

    const-string v4, "Service not bounded."

    invoke-static {v3, v4}, Lcom/duokan/airkan/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1440
    .end local v1           #myService:Lcom/duokan/airkan/phone/aidl/IAirkanClientService;
    :catch_0
    move-exception v0

    .line 1441
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method registerCallback()V
    .locals 5

    .prologue
    .line 689
    :try_start_0
    iget-object v2, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->TAG:Ljava/lang/String;

    const-string v3, "registerCallback"

    invoke-static {v2, v3}, Lcom/duokan/airkan/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 690
    iget-object v2, p0, Lcom/duokan/airkan/phone/api/ConnectionManager;->mAirkanDeviceManager:Lcom/duokan/airkan/phone/api/DeviceManager;

    invoke-virtual {v2}, Lcom/duokan/airkan/phone/api/DeviceManager;->getService()Lcom/duokan/airkan/phone/aidl/IAirkanClientService;

    move-result-object v1

    .line 692
    .local v1, myService:Lcom/duokan/airkan/phone/aidl/IAirkanClientService;
    if-eqz v1, :cond_0

    .line 693
    iget-object v2, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->mCallback:Lcom/duokan/airkan/phone/aidl/IPhotoServiceCallback;

    invoke-interface {v1, v2}, Lcom/duokan/airkan/phone/aidl/IAirkanClientService;->registerPhotoCallback(Lcom/duokan/airkan/phone/aidl/IPhotoServiceCallback;)V

    .line 694
    iget-object v2, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->TAG:Ljava/lang/String;

    const-string v3, "register callback done."

    invoke-static {v2, v3}, Lcom/duokan/airkan/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 702
    .end local v1           #myService:Lcom/duokan/airkan/phone/aidl/IAirkanClientService;
    :goto_0
    return-void

    .line 696
    .restart local v1       #myService:Lcom/duokan/airkan/phone/aidl/IAirkanClientService;
    :cond_0
    iget-object v2, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->TAG:Ljava/lang/String;

    const-string v3, "Service not bounded."

    invoke-static {v2, v3}, Lcom/duokan/airkan/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 698
    .end local v1           #myService:Lcom/duokan/airkan/phone/aidl/IAirkanClientService;
    :catch_0
    move-exception v0

    .line 699
    .local v0, e:Ljava/lang/Exception;
    iget-object v2, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "register callback error. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/duokan/airkan/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 700
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method registerPhotoSendServiceCallback()V
    .locals 4

    .prologue
    .line 724
    :try_start_0
    iget-object v1, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->TAG:Ljava/lang/String;

    const-string v2, "registerPhotoSendServiceCallback"

    invoke-static {v1, v2}, Lcom/duokan/airkan/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 725
    iget-object v1, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->mPhotoSendService:Lcom/duokan/airkan/photosend/aidl/IPhotoSendService;

    if-eqz v1, :cond_0

    .line 726
    iget-object v1, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->mPhotoSendService:Lcom/duokan/airkan/photosend/aidl/IPhotoSendService;

    iget-object v2, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->mPhotoSendServiceCallback:Lcom/duokan/airkan/photosend/aidl/IPhotoSendServiceCallback;

    invoke-interface {v1, v2}, Lcom/duokan/airkan/photosend/aidl/IPhotoSendService;->registerCallback(Lcom/duokan/airkan/photosend/aidl/IPhotoSendServiceCallback;)V

    .line 727
    iget-object v1, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->TAG:Ljava/lang/String;

    const-string v2, "register photo send callback done."

    invoke-static {v1, v2}, Lcom/duokan/airkan/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 735
    :goto_0
    return-void

    .line 729
    :cond_0
    iget-object v1, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->TAG:Ljava/lang/String;

    const-string v2, "Service not bounded."

    invoke-static {v1, v2}, Lcom/duokan/airkan/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 731
    :catch_0
    move-exception v0

    .line 732
    .local v0, e:Ljava/lang/Exception;
    iget-object v1, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "register photo send callback error. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/duokan/airkan/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 733
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public sendPhoto4Pull()V
    .locals 9

    .prologue
    .line 1472
    iget-boolean v0, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->sliderShow:Z

    if-eqz v0, :cond_1

    .line 1473
    sget-object v8, Lcom/duokan/airkan/phone/api/PhotoManager;->list4Pull:Ljava/util/ArrayList;

    monitor-enter v8

    .line 1474
    :try_start_0
    sget-object v0, Lcom/duokan/airkan/phone/api/PhotoManager;->list4Pull:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 1475
    iget-object v1, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->photoListener:Lcom/duokan/airkan/phone/api/PhotoManager$OnPhotoEventListener;

    sget-object v0, Lcom/duokan/airkan/phone/api/PhotoManager;->list4Pull:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duokan/airkan/photo/SendoutFileInfo;

    iget-object v0, v0, Lcom/duokan/airkan/photo/SendoutFileInfo;->filename:Ljava/lang/String;

    iget v3, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->remoteW:I

    iget v4, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->remoteH:I

    invoke-interface {v1, v0, v3, v4}, Lcom/duokan/airkan/phone/api/PhotoManager$OnPhotoEventListener;->onGetImageData(Ljava/lang/String;II)[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 1479
    .local v2, data:[B
    if-nez v2, :cond_2

    .line 1481
    :try_start_1
    iget-object v0, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->mPhotoSendService:Lcom/duokan/airkan/photosend/aidl/IPhotoSendService;

    sget-object v1, Lcom/duokan/airkan/phone/api/PhotoManager;->list4Pull:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/duokan/airkan/photo/SendoutFileInfo;

    iget-object v1, v1, Lcom/duokan/airkan/photo/SendoutFileInfo;->filename:Ljava/lang/String;

    sget-object v3, Lcom/duokan/airkan/phone/api/PhotoManager;->list4Pull:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/duokan/airkan/photo/SendoutFileInfo;

    iget-short v3, v3, Lcom/duokan/airkan/photo/SendoutFileInfo;->handle:S

    iget v4, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->mCurrentIndexOffset:I

    add-int v2, v3, v4

    sget-object v3, Lcom/duokan/airkan/phone/api/PhotoManager;->list4Pull:Ljava/util/ArrayList;

    .end local v2           #data:[B
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/duokan/airkan/photo/SendoutFileInfo;

    iget-byte v3, v3, Lcom/duokan/airkan/photo/SendoutFileInfo;->format:B

    const/4 v4, 0x0

    sget-object v5, Lcom/duokan/airkan/phone/api/PhotoManager;->list4Pull:Ljava/util/ArrayList;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/duokan/airkan/photo/SendoutFileInfo;

    iget-boolean v5, v5, Lcom/duokan/airkan/photo/SendoutFileInfo;->changed:Z

    invoke-interface/range {v0 .. v5}, Lcom/duokan/airkan/photosend/aidl/IPhotoSendService;->sendPhoto(Ljava/lang/String;IIZZ)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1494
    :goto_0
    :try_start_2
    iget-object v1, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "send pull image: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v0, Lcom/duokan/airkan/phone/api/PhotoManager;->list4Pull:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duokan/airkan/photo/SendoutFileInfo;

    iget-short v0, v0, Lcom/duokan/airkan/photo/SendoutFileInfo;->handle:S

    iget v4, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->mCurrentIndexOffset:I

    add-int/2addr v0, v4

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/duokan/airkan/common/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1496
    :cond_0
    monitor-exit v8

    .line 1498
    :cond_1
    return-void

    .line 1485
    :catch_0
    move-exception v7

    .line 1486
    .local v7, e:Landroid/os/RemoteException;
    invoke-virtual {v7}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 1496
    .end local v7           #e:Landroid/os/RemoteException;
    :catchall_0
    move-exception v0

    monitor-exit v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 1490
    .restart local v2       #data:[B
    :cond_2
    :try_start_3
    sget-object v0, Lcom/duokan/airkan/phone/api/PhotoManager;->list4Pull:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duokan/airkan/photo/SendoutFileInfo;

    iget-object v1, v0, Lcom/duokan/airkan/photo/SendoutFileInfo;->filename:Ljava/lang/String;

    sget-object v0, Lcom/duokan/airkan/phone/api/PhotoManager;->list4Pull:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duokan/airkan/photo/SendoutFileInfo;

    iget-byte v3, v0, Lcom/duokan/airkan/photo/SendoutFileInfo;->format:B

    sget-object v0, Lcom/duokan/airkan/phone/api/PhotoManager;->list4Pull:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duokan/airkan/photo/SendoutFileInfo;

    iget-short v0, v0, Lcom/duokan/airkan/photo/SendoutFileInfo;->handle:S

    iget v4, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->mCurrentIndexOffset:I

    add-int/2addr v4, v0

    const/4 v5, 0x0

    sget-object v0, Lcom/duokan/airkan/phone/api/PhotoManager;->list4Pull:Ljava/util/ArrayList;

    const/4 v6, 0x0

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duokan/airkan/photo/SendoutFileInfo;

    iget-boolean v6, v0, Lcom/duokan/airkan/photo/SendoutFileInfo;->changed:Z

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/duokan/airkan/phone/api/PhotoManager;->SendImageData(Ljava/lang/String;[BIIZZ)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method public showPhoto(Ljava/lang/String;Z)I
    .locals 6
    .parameter "filename"
    .parameter "isChanged"

    .prologue
    const/4 v2, 0x0

    .line 311
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 312
    .local v1, f:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_1

    .line 313
    iget-object v2, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "in showPhoto, file not exist :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/duokan/airkan/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 314
    const/4 v2, -0x2

    .line 338
    .end local v1           #f:Ljava/io/File;
    :cond_0
    :goto_0
    return v2

    .line 317
    :catch_0
    move-exception v0

    .line 318
    .local v0, e:Ljava/lang/NullPointerException;
    iget-object v2, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->TAG:Ljava/lang/String;

    const-string v3, " show photo file name is null"

    invoke-static {v2, v3}, Lcom/duokan/airkan/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 319
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 320
    const/4 v2, -0x3

    goto :goto_0

    .line 323
    .end local v0           #e:Ljava/lang/NullPointerException;
    .restart local v1       #f:Ljava/io/File;
    :cond_1
    iget-boolean v3, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->mIsConnected:Z

    iget-boolean v4, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->mIsFirstPhoto:Z

    or-int/2addr v3, v4

    if-eqz v3, :cond_3

    .line 324
    iget-object v3, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "in showPhoto, show file: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/duokan/airkan/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 327
    invoke-direct {p0, p1}, Lcom/duokan/airkan/phone/api/PhotoManager;->findFileInList(Ljava/lang/String;)S

    move-result v3

    iput v3, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->index:I

    .line 328
    iget v3, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->index:I

    iget v4, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->mCurrentIndexOffset:I

    add-int/2addr v3, v4

    iput v3, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->index:I

    .line 329
    if-eqz p2, :cond_2

    .line 330
    iget v3, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->index:I

    invoke-direct {p0, v3}, Lcom/duokan/airkan/phone/api/PhotoManager;->postCleanFile(I)V

    .line 332
    :cond_2
    invoke-direct {p0}, Lcom/duokan/airkan/phone/api/PhotoManager;->postShowPhoto()V

    goto :goto_0

    .line 334
    :cond_3
    iget-boolean v3, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->mIsConnected:Z

    if-nez v3, :cond_0

    .line 335
    iget-object v2, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->TAG:Ljava/lang/String;

    const-string v3, "in showPhoto, data link not connected"

    invoke-static {v2, v3}, Lcom/duokan/airkan/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 336
    const/4 v2, -0x1

    goto :goto_0
.end method

.method public showType(ZI)I
    .locals 1
    .parameter "isSlideshow"
    .parameter "slideshowType"

    .prologue
    .line 255
    iget-boolean v0, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->sliderShow:Z

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 256
    :cond_0
    iput-boolean p1, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->sliderShow:Z

    .line 257
    iget-boolean v0, p0, Lcom/duokan/airkan/phone/api/ConnectionManager;->mIsAuthPassed:Z

    if-eqz v0, :cond_1

    .line 258
    invoke-virtual {p0, p2}, Lcom/duokan/airkan/phone/api/PhotoManager;->postPhotoShow(I)V

    .line 261
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public startConnectRspTimer()V
    .locals 4

    .prologue
    .line 1567
    iget-object v0, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->mConnectTimer:Ljava/util/Timer;

    if-eqz v0, :cond_1

    .line 1568
    iget-object v0, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->TAG:Ljava/lang/String;

    const-string v1, "connect timer start"

    invoke-static {v0, v1}, Lcom/duokan/airkan/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1569
    iget-object v0, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->mConnectTimerTask:Lcom/duokan/airkan/phone/api/PhotoManager$ConnectTimerTask;

    if-eqz v0, :cond_0

    .line 1570
    iget-object v0, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->mConnectTimerTask:Lcom/duokan/airkan/phone/api/PhotoManager$ConnectTimerTask;

    invoke-virtual {v0}, Lcom/duokan/airkan/phone/api/PhotoManager$ConnectTimerTask;->cancel()Z

    .line 1576
    :cond_0
    :goto_0
    new-instance v0, Lcom/duokan/airkan/phone/api/PhotoManager$ConnectTimerTask;

    invoke-direct {v0, p0}, Lcom/duokan/airkan/phone/api/PhotoManager$ConnectTimerTask;-><init>(Lcom/duokan/airkan/phone/api/PhotoManager;)V

    iput-object v0, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->mConnectTimerTask:Lcom/duokan/airkan/phone/api/PhotoManager$ConnectTimerTask;

    .line 1577
    iget-object v0, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->mConnectTimer:Ljava/util/Timer;

    iget-object v1, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->mConnectTimerTask:Lcom/duokan/airkan/phone/api/PhotoManager$ConnectTimerTask;

    iget v2, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->CONNECT_RSP_TIMER:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 1578
    return-void

    .line 1572
    :cond_1
    iget-object v0, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->TAG:Ljava/lang/String;

    const-string v1, "start new connect timer"

    invoke-static {v0, v1}, Lcom/duokan/airkan/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1573
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->mConnectTimer:Ljava/util/Timer;

    goto :goto_0
.end method

.method public startOfferTimer()V
    .locals 4

    .prologue
    .line 1599
    iget-object v0, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->mOfferTimer:Ljava/util/Timer;

    if-eqz v0, :cond_1

    .line 1600
    iget-object v0, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->TAG:Ljava/lang/String;

    const-string v1, "Offer timer start"

    invoke-static {v0, v1}, Lcom/duokan/airkan/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1601
    iget-object v0, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->mOfferTimerTask:Lcom/duokan/airkan/phone/api/PhotoManager$OfferTimerTask;

    if-eqz v0, :cond_0

    .line 1602
    iget-object v0, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->mOfferTimerTask:Lcom/duokan/airkan/phone/api/PhotoManager$OfferTimerTask;

    invoke-virtual {v0}, Lcom/duokan/airkan/phone/api/PhotoManager$OfferTimerTask;->cancel()Z

    .line 1608
    :cond_0
    :goto_0
    new-instance v0, Lcom/duokan/airkan/phone/api/PhotoManager$OfferTimerTask;

    invoke-direct {v0, p0}, Lcom/duokan/airkan/phone/api/PhotoManager$OfferTimerTask;-><init>(Lcom/duokan/airkan/phone/api/PhotoManager;)V

    iput-object v0, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->mOfferTimerTask:Lcom/duokan/airkan/phone/api/PhotoManager$OfferTimerTask;

    .line 1609
    iget-object v0, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->mOfferTimer:Ljava/util/Timer;

    iget-object v1, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->mOfferTimerTask:Lcom/duokan/airkan/phone/api/PhotoManager$OfferTimerTask;

    iget v2, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->OFFER_TIMER:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 1610
    return-void

    .line 1604
    :cond_1
    iget-object v0, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->TAG:Ljava/lang/String;

    const-string v1, "start new Offer timer"

    invoke-static {v0, v1}, Lcom/duokan/airkan/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1605
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->mOfferTimer:Ljava/util/Timer;

    goto :goto_0
.end method
