.class public Lcom/duokan/airkan/phone/api/DeviceManager;
.super Ljava/lang/Object;
.source "DeviceManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/duokan/airkan/phone/api/DeviceManager$IInternalListener;,
        Lcom/duokan/airkan/phone/api/DeviceManager$OnDeviceChangeListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ADM"


# instance fields
.field private mAirkanClientService:Lcom/duokan/airkan/phone/aidl/IAirkanClientService;

.field private mBTSpeakerConnected:Z

.field private mCallback:Lcom/duokan/airkan/phone/api/DeviceServiceCallback;

.field private mContext:Landroid/content/Context;

.field private mCurrentDev:Lcom/duokan/airkan/common/aidl/ParcelDeviceData;

.field private mHandler:Landroid/os/Handler;

.field private mHttpService:Lcom/duokan/airkan/http/aidl/IHttpService;

.field private mHttpServiceConnection:Landroid/content/ServiceConnection;

.field private mInternalListener:Lcom/duokan/airkan/phone/api/DeviceManager$IInternalListener;

.field private mInternalListenerPhoto:Lcom/duokan/airkan/phone/api/DeviceManager$IInternalListener;

.field private mIsBindCallSuccess:Z

.field private mIsBoundSuccess:Z

.field private mIsHttpBindCallSuccess:Z

.field private mIsHttpBoundSuccess:Z

.field private mODCL:Lcom/duokan/airkan/phone/api/DeviceManager$OnDeviceChangeListener;

.field private mParcelDeviceDataList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/duokan/airkan/common/aidl/ParcelDeviceData;",
            ">;"
        }
    .end annotation
.end field

.field private serviceConnection:Landroid/content/ServiceConnection;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 59
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object v1, p0, Lcom/duokan/airkan/phone/api/DeviceManager;->mODCL:Lcom/duokan/airkan/phone/api/DeviceManager$OnDeviceChangeListener;

    .line 32
    iput-object v1, p0, Lcom/duokan/airkan/phone/api/DeviceManager;->mAirkanClientService:Lcom/duokan/airkan/phone/aidl/IAirkanClientService;

    .line 33
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/duokan/airkan/phone/api/DeviceManager;->mHandler:Landroid/os/Handler;

    .line 34
    iput-boolean v2, p0, Lcom/duokan/airkan/phone/api/DeviceManager;->mIsBoundSuccess:Z

    .line 35
    iput-boolean v2, p0, Lcom/duokan/airkan/phone/api/DeviceManager;->mIsBindCallSuccess:Z

    .line 36
    iput-object v1, p0, Lcom/duokan/airkan/phone/api/DeviceManager;->mContext:Landroid/content/Context;

    .line 37
    new-instance v0, Lcom/duokan/airkan/phone/api/DeviceServiceCallback;

    invoke-direct {v0}, Lcom/duokan/airkan/phone/api/DeviceServiceCallback;-><init>()V

    iput-object v0, p0, Lcom/duokan/airkan/phone/api/DeviceManager;->mCallback:Lcom/duokan/airkan/phone/api/DeviceServiceCallback;

    .line 38
    iput-boolean v2, p0, Lcom/duokan/airkan/phone/api/DeviceManager;->mBTSpeakerConnected:Z

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/duokan/airkan/phone/api/DeviceManager;->mParcelDeviceDataList:Ljava/util/List;

    .line 42
    iput-object v1, p0, Lcom/duokan/airkan/phone/api/DeviceManager;->mInternalListener:Lcom/duokan/airkan/phone/api/DeviceManager$IInternalListener;

    .line 43
    iput-object v1, p0, Lcom/duokan/airkan/phone/api/DeviceManager;->mInternalListenerPhoto:Lcom/duokan/airkan/phone/api/DeviceManager$IInternalListener;

    .line 44
    iput-object v1, p0, Lcom/duokan/airkan/phone/api/DeviceManager;->mHttpService:Lcom/duokan/airkan/http/aidl/IHttpService;

    .line 45
    iput-boolean v2, p0, Lcom/duokan/airkan/phone/api/DeviceManager;->mIsHttpBoundSuccess:Z

    .line 46
    iput-boolean v2, p0, Lcom/duokan/airkan/phone/api/DeviceManager;->mIsHttpBindCallSuccess:Z

    .line 240
    new-instance v0, Lcom/duokan/airkan/phone/api/DeviceManager$1;

    invoke-direct {v0, p0}, Lcom/duokan/airkan/phone/api/DeviceManager$1;-><init>(Lcom/duokan/airkan/phone/api/DeviceManager;)V

    iput-object v0, p0, Lcom/duokan/airkan/phone/api/DeviceManager;->serviceConnection:Landroid/content/ServiceConnection;

    .line 268
    new-instance v0, Lcom/duokan/airkan/phone/api/DeviceManager$2;

    invoke-direct {v0, p0}, Lcom/duokan/airkan/phone/api/DeviceManager$2;-><init>(Lcom/duokan/airkan/phone/api/DeviceManager;)V

    iput-object v0, p0, Lcom/duokan/airkan/phone/api/DeviceManager;->mHttpServiceConnection:Landroid/content/ServiceConnection;

    .line 60
    invoke-direct {p0}, Lcom/duokan/airkan/phone/api/DeviceManager;->init()V

    .line 61
    iput-object p1, p0, Lcom/duokan/airkan/phone/api/DeviceManager;->mContext:Landroid/content/Context;

    .line 62
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/duokan/airkan/phone/api/DeviceManager$OnDeviceChangeListener;)V
    .locals 0
    .parameter "context"
    .parameter "onDeviceChangeListener"

    .prologue
    .line 69
    invoke-direct {p0, p1}, Lcom/duokan/airkan/phone/api/DeviceManager;-><init>(Landroid/content/Context;)V

    .line 70
    iput-object p2, p0, Lcom/duokan/airkan/phone/api/DeviceManager;->mODCL:Lcom/duokan/airkan/phone/api/DeviceManager$OnDeviceChangeListener;

    .line 71
    return-void
.end method

.method static synthetic access$002(Lcom/duokan/airkan/phone/api/DeviceManager;Lcom/duokan/airkan/phone/aidl/IAirkanClientService;)Lcom/duokan/airkan/phone/aidl/IAirkanClientService;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 29
    iput-object p1, p0, Lcom/duokan/airkan/phone/api/DeviceManager;->mAirkanClientService:Lcom/duokan/airkan/phone/aidl/IAirkanClientService;

    return-object p1
.end method

.method static synthetic access$102(Lcom/duokan/airkan/phone/api/DeviceManager;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 29
    iput-boolean p1, p0, Lcom/duokan/airkan/phone/api/DeviceManager;->mIsBoundSuccess:Z

    return p1
.end method

.method static synthetic access$200(Lcom/duokan/airkan/phone/api/DeviceManager;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/duokan/airkan/phone/api/DeviceManager;->onOpened()V

    return-void
.end method

.method static synthetic access$300(Lcom/duokan/airkan/phone/api/DeviceManager;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/duokan/airkan/phone/api/DeviceManager;->registerCallback()V

    return-void
.end method

.method static synthetic access$400(Lcom/duokan/airkan/phone/api/DeviceManager;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/duokan/airkan/phone/api/DeviceManager;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$500(Lcom/duokan/airkan/phone/api/DeviceManager;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/duokan/airkan/phone/api/DeviceManager;->removeCallback()V

    return-void
.end method

.method static synthetic access$602(Lcom/duokan/airkan/phone/api/DeviceManager;Lcom/duokan/airkan/http/aidl/IHttpService;)Lcom/duokan/airkan/http/aidl/IHttpService;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 29
    iput-object p1, p0, Lcom/duokan/airkan/phone/api/DeviceManager;->mHttpService:Lcom/duokan/airkan/http/aidl/IHttpService;

    return-object p1
.end method

.method static synthetic access$702(Lcom/duokan/airkan/phone/api/DeviceManager;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 29
    iput-boolean p1, p0, Lcom/duokan/airkan/phone/api/DeviceManager;->mIsHttpBoundSuccess:Z

    return p1
.end method

.method static synthetic access$800(Lcom/duokan/airkan/phone/api/DeviceManager;)Lcom/duokan/airkan/phone/api/DeviceManager$OnDeviceChangeListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/duokan/airkan/phone/api/DeviceManager;->mODCL:Lcom/duokan/airkan/phone/api/DeviceManager$OnDeviceChangeListener;

    return-object v0
.end method

.method static synthetic access$902(Lcom/duokan/airkan/phone/api/DeviceManager;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 29
    iput-boolean p1, p0, Lcom/duokan/airkan/phone/api/DeviceManager;->mBTSpeakerConnected:Z

    return p1
.end method

.method private bindHttpService()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/duokan/airkan/common/AirkanException;
        }
    .end annotation

    .prologue
    .line 284
    iget-boolean v0, p0, Lcom/duokan/airkan/phone/api/DeviceManager;->mIsHttpBoundSuccess:Z

    if-nez v0, :cond_1

    .line 285
    iget-object v0, p0, Lcom/duokan/airkan/phone/api/DeviceManager;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 286
    new-instance v0, Lcom/duokan/airkan/common/AirkanException;

    const-string v1, "Context is null."

    invoke-direct {v0, v1}, Lcom/duokan/airkan/common/AirkanException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 288
    :cond_0
    iget-object v0, p0, Lcom/duokan/airkan/phone/api/DeviceManager;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "duokan.airkan.http.aidl.IHttpService"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/duokan/airkan/phone/api/DeviceManager;->mHttpServiceConnection:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/duokan/airkan/phone/api/DeviceManager;->mIsHttpBindCallSuccess:Z

    .line 291
    iget-boolean v0, p0, Lcom/duokan/airkan/phone/api/DeviceManager;->mIsHttpBindCallSuccess:Z

    if-eqz v0, :cond_2

    .line 292
    const-string v0, "ADM"

    const-string v1, "bind IHttpService."

    invoke-static {v0, v1}, Lcom/duokan/airkan/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    :cond_1
    :goto_0
    iget-boolean v0, p0, Lcom/duokan/airkan/phone/api/DeviceManager;->mIsHttpBindCallSuccess:Z

    return v0

    .line 294
    :cond_2
    const-string v0, "ADM"

    const-string v1, "bind IHttpService failed."

    invoke-static {v0, v1}, Lcom/duokan/airkan/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private init()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 49
    iput-boolean v0, p0, Lcom/duokan/airkan/phone/api/DeviceManager;->mIsBoundSuccess:Z

    .line 50
    iput-boolean v0, p0, Lcom/duokan/airkan/phone/api/DeviceManager;->mIsBindCallSuccess:Z

    .line 51
    iput-boolean v0, p0, Lcom/duokan/airkan/phone/api/DeviceManager;->mIsHttpBoundSuccess:Z

    .line 52
    iput-boolean v0, p0, Lcom/duokan/airkan/phone/api/DeviceManager;->mIsHttpBindCallSuccess:Z

    .line 53
    const-string v0, "ADM"

    const-string v1, "Airkan version: 2013-5-9"

    invoke-static {v0, v1}, Lcom/duokan/airkan/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    invoke-static {}, Lcom/duokan/airkan/phone/api/DeviceName;->init()V

    .line 55
    return-void
.end method

.method private onOpened()V
    .locals 2

    .prologue
    .line 402
    const-string v0, "ADM"

    const-string v1, "onOpened"

    invoke-static {v0, v1}, Lcom/duokan/airkan/common/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 403
    iget-object v0, p0, Lcom/duokan/airkan/phone/api/DeviceManager;->mODCL:Lcom/duokan/airkan/phone/api/DeviceManager$OnDeviceChangeListener;

    if-eqz v0, :cond_0

    .line 404
    iget-object v0, p0, Lcom/duokan/airkan/phone/api/DeviceManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/duokan/airkan/phone/api/DeviceManager$5;

    invoke-direct {v1, p0}, Lcom/duokan/airkan/phone/api/DeviceManager$5;-><init>(Lcom/duokan/airkan/phone/api/DeviceManager;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 411
    :cond_0
    return-void
.end method

.method private registerCallback()V
    .locals 4

    .prologue
    .line 322
    :try_start_0
    iget-object v1, p0, Lcom/duokan/airkan/phone/api/DeviceManager;->mAirkanClientService:Lcom/duokan/airkan/phone/aidl/IAirkanClientService;

    if-eqz v1, :cond_0

    .line 323
    iget-object v1, p0, Lcom/duokan/airkan/phone/api/DeviceManager;->mAirkanClientService:Lcom/duokan/airkan/phone/aidl/IAirkanClientService;

    iget-object v2, p0, Lcom/duokan/airkan/phone/api/DeviceManager;->mCallback:Lcom/duokan/airkan/phone/api/DeviceServiceCallback;

    invoke-interface {v1, v2}, Lcom/duokan/airkan/phone/aidl/IAirkanClientService;->registerDeviceCallback(Lcom/duokan/airkan/phone/aidl/IDeviceServiceCallback;)V

    .line 331
    :goto_0
    return-void

    .line 325
    :cond_0
    const-string v1, "ADM"

    const-string v2, "Service not bounded."

    invoke-static {v1, v2}, Lcom/duokan/airkan/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 327
    :catch_0
    move-exception v0

    .line 328
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "ADM"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "register callback error. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/duokan/airkan/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 329
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private removeCallback()V
    .locals 4

    .prologue
    .line 335
    :try_start_0
    iget-object v1, p0, Lcom/duokan/airkan/phone/api/DeviceManager;->mAirkanClientService:Lcom/duokan/airkan/phone/aidl/IAirkanClientService;

    if-eqz v1, :cond_0

    .line 336
    iget-object v1, p0, Lcom/duokan/airkan/phone/api/DeviceManager;->mAirkanClientService:Lcom/duokan/airkan/phone/aidl/IAirkanClientService;

    invoke-interface {v1}, Lcom/duokan/airkan/phone/aidl/IAirkanClientService;->removeDeviceCallback()V

    .line 344
    :goto_0
    return-void

    .line 338
    :cond_0
    const-string v1, "ADM"

    const-string v2, "Service not bounded."

    invoke-static {v1, v2}, Lcom/duokan/airkan/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 340
    :catch_0
    move-exception v0

    .line 341
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "ADM"

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

    .line 342
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private unbindHttpService()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/duokan/airkan/common/AirkanException;
        }
    .end annotation

    .prologue
    .line 301
    iget-boolean v1, p0, Lcom/duokan/airkan/phone/api/DeviceManager;->mIsHttpBoundSuccess:Z

    if-eqz v1, :cond_0

    .line 303
    :try_start_0
    iget-object v1, p0, Lcom/duokan/airkan/phone/api/DeviceManager;->mHttpService:Lcom/duokan/airkan/http/aidl/IHttpService;

    invoke-interface {v1}, Lcom/duokan/airkan/http/aidl/IHttpService;->stopHttpd()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 310
    :goto_0
    iget-boolean v1, p0, Lcom/duokan/airkan/phone/api/DeviceManager;->mIsHttpBindCallSuccess:Z

    if-eqz v1, :cond_2

    .line 311
    iget-object v1, p0, Lcom/duokan/airkan/phone/api/DeviceManager;->mContext:Landroid/content/Context;

    if-nez v1, :cond_1

    .line 312
    new-instance v1, Lcom/duokan/airkan/common/AirkanException;

    const-string v2, "Context is null."

    invoke-direct {v1, v2}, Lcom/duokan/airkan/common/AirkanException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 304
    :catch_0
    move-exception v0

    .line 305
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 308
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const-string v1, "ADM"

    const-string v2, "IHttpService not bound."

    invoke-static {v1, v2}, Lcom/duokan/airkan/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 314
    :cond_1
    iget-object v1, p0, Lcom/duokan/airkan/phone/api/DeviceManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/duokan/airkan/phone/api/DeviceManager;->mHttpServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 315
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/duokan/airkan/phone/api/DeviceManager;->mIsHttpBindCallSuccess:Z

    .line 317
    :cond_2
    const-string v1, "ADM"

    const-string v2, "unbindHttpService done"

    invoke-static {v1, v2}, Lcom/duokan/airkan/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 318
    return-void
.end method


# virtual methods
.method addConnectedDevice(Lcom/duokan/airkan/common/aidl/ParcelDeviceData;)V
    .locals 4
    .parameter "device"

    .prologue
    .line 414
    if-nez p1, :cond_1

    .line 415
    const-string v1, "ADM"

    const-string v2, "not valid device"

    invoke-static {v1, v2}, Lcom/duokan/airkan/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 432
    :cond_0
    :goto_0
    return-void

    .line 418
    :cond_1
    new-instance v0, Lcom/duokan/airkan/common/aidl/ParcelDeviceData;

    invoke-direct {v0, p1}, Lcom/duokan/airkan/common/aidl/ParcelDeviceData;-><init>(Lcom/duokan/airkan/common/aidl/ParcelDeviceData;)V

    .line 420
    .local v0, newpdd:Lcom/duokan/airkan/common/aidl/ParcelDeviceData;
    iget-object v1, p0, Lcom/duokan/airkan/phone/api/DeviceManager;->mParcelDeviceDataList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 421
    iput-object v0, p0, Lcom/duokan/airkan/phone/api/DeviceManager;->mCurrentDev:Lcom/duokan/airkan/common/aidl/ParcelDeviceData;

    .line 422
    const-string v1, "ADM"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "add connected device : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/duokan/airkan/common/aidl/ParcelDeviceData;->mName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " type : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/duokan/airkan/common/aidl/ParcelDeviceData;->mType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/duokan/airkan/common/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 423
    iget-object v1, p0, Lcom/duokan/airkan/phone/api/DeviceManager;->mODCL:Lcom/duokan/airkan/phone/api/DeviceManager$OnDeviceChangeListener;

    if-eqz v1, :cond_0

    .line 424
    iget-object v1, p0, Lcom/duokan/airkan/phone/api/DeviceManager;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/duokan/airkan/phone/api/DeviceManager$6;

    invoke-direct {v2, p0, p1}, Lcom/duokan/airkan/phone/api/DeviceManager$6;-><init>(Lcom/duokan/airkan/phone/api/DeviceManager;Lcom/duokan/airkan/common/aidl/ParcelDeviceData;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method addDevice(Lcom/duokan/airkan/common/aidl/ParcelDeviceData;)V
    .locals 3
    .parameter "device"

    .prologue
    .line 347
    const-string v1, "ADM"

    const-string v2, "add device"

    invoke-static {v1, v2}, Lcom/duokan/airkan/common/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 349
    new-instance v0, Lcom/duokan/airkan/common/aidl/ParcelDeviceData;

    invoke-direct {v0, p1}, Lcom/duokan/airkan/common/aidl/ParcelDeviceData;-><init>(Lcom/duokan/airkan/common/aidl/ParcelDeviceData;)V

    .line 350
    .local v0, newpdd:Lcom/duokan/airkan/common/aidl/ParcelDeviceData;
    iget-object v1, p0, Lcom/duokan/airkan/phone/api/DeviceManager;->mParcelDeviceDataList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 352
    iget-object v1, p0, Lcom/duokan/airkan/phone/api/DeviceManager;->mODCL:Lcom/duokan/airkan/phone/api/DeviceManager$OnDeviceChangeListener;

    if-eqz v1, :cond_0

    .line 353
    iget-object v1, p0, Lcom/duokan/airkan/phone/api/DeviceManager;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/duokan/airkan/phone/api/DeviceManager$3;

    invoke-direct {v2, p0, p1}, Lcom/duokan/airkan/phone/api/DeviceManager$3;-><init>(Lcom/duokan/airkan/phone/api/DeviceManager;Lcom/duokan/airkan/common/aidl/ParcelDeviceData;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 360
    :cond_0
    return-void
.end method

.method public close()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 153
    :try_start_0
    invoke-direct {p0}, Lcom/duokan/airkan/phone/api/DeviceManager;->unbindHttpService()V
    :try_end_0
    .catch Lcom/duokan/airkan/common/AirkanException; {:try_start_0 .. :try_end_0} :catch_0

    .line 158
    :goto_0
    iget-object v1, p0, Lcom/duokan/airkan/phone/api/DeviceManager;->mInternalListener:Lcom/duokan/airkan/phone/api/DeviceManager$IInternalListener;

    if-eqz v1, :cond_0

    .line 159
    iget-object v1, p0, Lcom/duokan/airkan/phone/api/DeviceManager;->mInternalListener:Lcom/duokan/airkan/phone/api/DeviceManager$IInternalListener;

    invoke-interface {v1}, Lcom/duokan/airkan/phone/api/DeviceManager$IInternalListener;->onClosed()V

    .line 162
    :cond_0
    iget-object v1, p0, Lcom/duokan/airkan/phone/api/DeviceManager;->mInternalListenerPhoto:Lcom/duokan/airkan/phone/api/DeviceManager$IInternalListener;

    if-eqz v1, :cond_1

    .line 163
    iget-object v1, p0, Lcom/duokan/airkan/phone/api/DeviceManager;->mInternalListenerPhoto:Lcom/duokan/airkan/phone/api/DeviceManager$IInternalListener;

    invoke-interface {v1}, Lcom/duokan/airkan/phone/api/DeviceManager$IInternalListener;->onClosed()V

    .line 166
    :cond_1
    iget-boolean v1, p0, Lcom/duokan/airkan/phone/api/DeviceManager;->mIsBoundSuccess:Z

    if-eqz v1, :cond_3

    .line 167
    invoke-direct {p0}, Lcom/duokan/airkan/phone/api/DeviceManager;->removeCallback()V

    .line 168
    iput-boolean v3, p0, Lcom/duokan/airkan/phone/api/DeviceManager;->mIsBoundSuccess:Z

    .line 169
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/duokan/airkan/phone/api/DeviceManager;->mAirkanClientService:Lcom/duokan/airkan/phone/aidl/IAirkanClientService;

    .line 173
    :goto_1
    iget-boolean v1, p0, Lcom/duokan/airkan/phone/api/DeviceManager;->mIsBindCallSuccess:Z

    if-eqz v1, :cond_2

    .line 174
    iget-object v1, p0, Lcom/duokan/airkan/phone/api/DeviceManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/duokan/airkan/phone/api/DeviceManager;->serviceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 175
    iput-boolean v3, p0, Lcom/duokan/airkan/phone/api/DeviceManager;->mIsBindCallSuccess:Z

    .line 177
    :cond_2
    return-void

    .line 154
    :catch_0
    move-exception v0

    .line 155
    .local v0, e:Lcom/duokan/airkan/common/AirkanException;
    invoke-virtual {v0}, Lcom/duokan/airkan/common/AirkanException;->printStackTrace()V

    goto :goto_0

    .line 171
    .end local v0           #e:Lcom/duokan/airkan/common/AirkanException;
    :cond_3
    const-string v1, "ADM"

    const-string v2, "IAirkanVideoClientService not bound."

    invoke-static {v1, v2}, Lcom/duokan/airkan/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method disconnect()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/duokan/airkan/common/AirkanException;
        }
    .end annotation

    .prologue
    .line 443
    :try_start_0
    iget-object v1, p0, Lcom/duokan/airkan/phone/api/DeviceManager;->mAirkanClientService:Lcom/duokan/airkan/phone/aidl/IAirkanClientService;

    if-eqz v1, :cond_0

    .line 444
    iget-object v1, p0, Lcom/duokan/airkan/phone/api/DeviceManager;->mAirkanClientService:Lcom/duokan/airkan/phone/aidl/IAirkanClientService;

    const/4 v2, -0x1

    invoke-interface {v1, v2}, Lcom/duokan/airkan/phone/aidl/IAirkanClientService;->disconnect(I)V

    .line 453
    :goto_0
    return-void

    .line 446
    :cond_0
    const-string v1, "ADM"

    const-string v2, "Service not bounded."

    invoke-static {v1, v2}, Lcom/duokan/airkan/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 447
    new-instance v1, Lcom/duokan/airkan/common/AirkanException;

    const-string v2, "Service not bounded."

    invoke-direct {v1, v2}, Lcom/duokan/airkan/common/AirkanException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 449
    :catch_0
    move-exception v0

    .line 450
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "ADM"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "stop service error. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/duokan/airkan/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 451
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method findDevice(Ljava/lang/String;)Lcom/duokan/airkan/common/aidl/ParcelDeviceData;
    .locals 6
    .parameter "name"

    .prologue
    .line 379
    const-string v3, "ADM"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "findDevice "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/duokan/airkan/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 380
    iget-object v3, p0, Lcom/duokan/airkan/phone/api/DeviceManager;->mParcelDeviceDataList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/duokan/airkan/common/aidl/ParcelDeviceData;

    .line 382
    .local v2, pdd:Lcom/duokan/airkan/common/aidl/ParcelDeviceData;
    :try_start_0
    iget-object v3, v2, Lcom/duokan/airkan/common/aidl/ParcelDeviceData;->mName:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_0

    .line 390
    .end local v2           #pdd:Lcom/duokan/airkan/common/aidl/ParcelDeviceData;
    :goto_1
    return-object v2

    .line 385
    .restart local v2       #pdd:Lcom/duokan/airkan/common/aidl/ParcelDeviceData;
    :catch_0
    move-exception v0

    .line 386
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 389
    .end local v0           #e:Ljava/lang/Exception;
    .end local v2           #pdd:Lcom/duokan/airkan/common/aidl/ParcelDeviceData;
    :cond_1
    const-string v3, "ADM"

    const-string v4, "findDevice return null"

    invoke-static {v3, v4}, Lcom/duokan/airkan/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 390
    const/4 v2, 0x0

    goto :goto_1
.end method

.method getConnectDeviceIP()Ljava/lang/String;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/duokan/airkan/phone/api/DeviceManager;->mCurrentDev:Lcom/duokan/airkan/common/aidl/ParcelDeviceData;

    if-eqz v0, :cond_0

    .line 109
    iget-object v0, p0, Lcom/duokan/airkan/phone/api/DeviceManager;->mCurrentDev:Lcom/duokan/airkan/common/aidl/ParcelDeviceData;

    iget-object v0, v0, Lcom/duokan/airkan/common/aidl/ParcelDeviceData;->ip:Ljava/lang/String;

    .line 111
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getConnectDeviceName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/duokan/airkan/phone/api/DeviceManager;->mCurrentDev:Lcom/duokan/airkan/common/aidl/ParcelDeviceData;

    if-eqz v0, :cond_0

    .line 102
    iget-object v0, p0, Lcom/duokan/airkan/phone/api/DeviceManager;->mCurrentDev:Lcom/duokan/airkan/common/aidl/ParcelDeviceData;

    iget-object v0, v0, Lcom/duokan/airkan/common/aidl/ParcelDeviceData;->mName:Ljava/lang/String;

    .line 104
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method getConnectDeviceText()Ljava/lang/String;
    .locals 3

    .prologue
    .line 115
    iget-object v0, p0, Lcom/duokan/airkan/phone/api/DeviceManager;->mCurrentDev:Lcom/duokan/airkan/common/aidl/ParcelDeviceData;

    if-eqz v0, :cond_0

    .line 116
    const-string v0, "ADM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "extratext: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/duokan/airkan/phone/api/DeviceManager;->mCurrentDev:Lcom/duokan/airkan/common/aidl/ParcelDeviceData;

    iget-object v2, v2, Lcom/duokan/airkan/common/aidl/ParcelDeviceData;->extraText:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/duokan/airkan/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    iget-object v0, p0, Lcom/duokan/airkan/phone/api/DeviceManager;->mCurrentDev:Lcom/duokan/airkan/common/aidl/ParcelDeviceData;

    iget-object v0, v0, Lcom/duokan/airkan/common/aidl/ParcelDeviceData;->extraText:Ljava/lang/String;

    .line 119
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getConnectDeviceType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/duokan/airkan/phone/api/DeviceManager;->mCurrentDev:Lcom/duokan/airkan/common/aidl/ParcelDeviceData;

    if-eqz v0, :cond_0

    .line 95
    iget-object v0, p0, Lcom/duokan/airkan/phone/api/DeviceManager;->mCurrentDev:Lcom/duokan/airkan/common/aidl/ParcelDeviceData;

    iget-object v0, v0, Lcom/duokan/airkan/common/aidl/ParcelDeviceData;->mType:Ljava/lang/String;

    .line 97
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/duokan/airkan/phone/api/DeviceManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method getHttpService()Lcom/duokan/airkan/http/aidl/IHttpService;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/duokan/airkan/phone/api/DeviceManager;->mHttpService:Lcom/duokan/airkan/http/aidl/IHttpService;

    return-object v0
.end method

.method getLocalDevicename()Ljava/lang/String;
    .locals 1

    .prologue
    .line 123
    invoke-static {}, Lcom/duokan/airkan/phone/api/DeviceName;->getDeviceName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getService()Lcom/duokan/airkan/phone/aidl/IAirkanClientService;
    .locals 1

    .prologue
    .line 237
    iget-object v0, p0, Lcom/duokan/airkan/phone/api/DeviceManager;->mAirkanClientService:Lcom/duokan/airkan/phone/aidl/IAirkanClientService;

    return-object v0
.end method

.method getServiceCallback()Lcom/duokan/airkan/phone/api/DeviceServiceCallback;
    .locals 1

    .prologue
    .line 435
    iget-object v0, p0, Lcom/duokan/airkan/phone/api/DeviceManager;->mCallback:Lcom/duokan/airkan/phone/api/DeviceServiceCallback;

    return-object v0
.end method

.method getType(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "name"

    .prologue
    .line 394
    invoke-virtual {p0, p1}, Lcom/duokan/airkan/phone/api/DeviceManager;->findDevice(Ljava/lang/String;)Lcom/duokan/airkan/common/aidl/ParcelDeviceData;

    move-result-object v0

    .line 395
    .local v0, pdd:Lcom/duokan/airkan/common/aidl/ParcelDeviceData;
    if-eqz v0, :cond_0

    .line 396
    iget-object v1, v0, Lcom/duokan/airkan/common/aidl/ParcelDeviceData;->mType:Ljava/lang/String;

    .line 398
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public open()Z
    .locals 5

    .prologue
    .line 132
    :try_start_0
    invoke-direct {p0}, Lcom/duokan/airkan/phone/api/DeviceManager;->bindHttpService()Z
    :try_end_0
    .catch Lcom/duokan/airkan/common/AirkanException; {:try_start_0 .. :try_end_0} :catch_0

    .line 136
    :goto_0
    iget-object v1, p0, Lcom/duokan/airkan/phone/api/DeviceManager;->mCallback:Lcom/duokan/airkan/phone/api/DeviceServiceCallback;

    invoke-virtual {v1, p0}, Lcom/duokan/airkan/phone/api/DeviceServiceCallback;->setAirkanDeviceManager(Lcom/duokan/airkan/phone/api/DeviceManager;)V

    .line 137
    iget-boolean v1, p0, Lcom/duokan/airkan/phone/api/DeviceManager;->mIsBoundSuccess:Z

    if-nez v1, :cond_0

    .line 138
    iget-object v1, p0, Lcom/duokan/airkan/phone/api/DeviceManager;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "duokan.airkan.phone.aidl.IAirkanClientService"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/duokan/airkan/phone/api/DeviceManager;->serviceConnection:Landroid/content/ServiceConnection;

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/duokan/airkan/phone/api/DeviceManager;->mIsBindCallSuccess:Z

    .line 139
    iget-boolean v1, p0, Lcom/duokan/airkan/phone/api/DeviceManager;->mIsBindCallSuccess:Z

    if-eqz v1, :cond_1

    .line 140
    const-string v1, "ADM"

    const-string v2, "bind IAirkanClientService."

    invoke-static {v1, v2}, Lcom/duokan/airkan/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    :cond_0
    :goto_1
    iget-boolean v1, p0, Lcom/duokan/airkan/phone/api/DeviceManager;->mIsBindCallSuccess:Z

    return v1

    .line 133
    :catch_0
    move-exception v0

    .line 134
    .local v0, e:Lcom/duokan/airkan/common/AirkanException;
    invoke-virtual {v0}, Lcom/duokan/airkan/common/AirkanException;->printStackTrace()V

    goto :goto_0

    .line 142
    .end local v0           #e:Lcom/duokan/airkan/common/AirkanException;
    :cond_1
    const-string v1, "ADM"

    const-string v2, "bind IAirkanClientService failed."

    invoke-static {v1, v2}, Lcom/duokan/airkan/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public queryCurrentService(Lcom/duokan/airkan/common/aidl/ParcelConnectedAppInfo;)V
    .locals 4
    .parameter "appInfo"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/duokan/airkan/common/AirkanException;
        }
    .end annotation

    .prologue
    .line 215
    const-string v1, "ADM"

    const-string v2, "to query current service type"

    invoke-static {v1, v2}, Lcom/duokan/airkan/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    iget-object v1, p0, Lcom/duokan/airkan/phone/api/DeviceManager;->mAirkanClientService:Lcom/duokan/airkan/phone/aidl/IAirkanClientService;

    if-eqz v1, :cond_0

    .line 218
    :try_start_0
    iget-object v1, p0, Lcom/duokan/airkan/phone/api/DeviceManager;->mAirkanClientService:Lcom/duokan/airkan/phone/aidl/IAirkanClientService;

    invoke-interface {v1, p1}, Lcom/duokan/airkan/phone/aidl/IAirkanClientService;->queryCurrentService(Lcom/duokan/airkan/common/aidl/ParcelConnectedAppInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 227
    return-void

    .line 219
    :catch_0
    move-exception v0

    .line 220
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "ADM"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "queryCurrentService error:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/duokan/airkan/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    new-instance v1, Lcom/duokan/airkan/common/AirkanException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "queryDevices error:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/duokan/airkan/common/AirkanException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 224
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const-string v1, "ADM"

    const-string v2, "Service not bounded."

    invoke-static {v1, v2}, Lcom/duokan/airkan/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    new-instance v1, Lcom/duokan/airkan/common/AirkanException;

    const-string v2, "service not bounded"

    invoke-direct {v1, v2}, Lcom/duokan/airkan/common/AirkanException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public queryDevices(Ljava/util/List;)V
    .locals 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/duokan/airkan/common/aidl/ParcelDeviceData;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/duokan/airkan/common/AirkanException;
        }
    .end annotation

    .prologue
    .line 185
    .local p1, parcelDeviceDataList:Ljava/util/List;,"Ljava/util/List<Lcom/duokan/airkan/common/aidl/ParcelDeviceData;>;"
    const-string v5, "ADM"

    const-string v6, "to query services"

    invoke-static {v5, v6}, Lcom/duokan/airkan/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    iget-object v5, p0, Lcom/duokan/airkan/phone/api/DeviceManager;->mAirkanClientService:Lcom/duokan/airkan/phone/aidl/IAirkanClientService;

    if-eqz v5, :cond_1

    .line 188
    :try_start_0
    iget-object v5, p0, Lcom/duokan/airkan/phone/api/DeviceManager;->mAirkanClientService:Lcom/duokan/airkan/phone/aidl/IAirkanClientService;

    invoke-interface {v5, p1}, Lcom/duokan/airkan/phone/aidl/IAirkanClientService;->queryDevices(Ljava/util/List;)I

    .line 189
    const-string v5, "ADM"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "total devices:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/duokan/airkan/common/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    iget-object v5, p0, Lcom/duokan/airkan/phone/api/DeviceManager;->mParcelDeviceDataList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->clear()V

    .line 191
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/duokan/airkan/common/aidl/ParcelDeviceData;

    .line 192
    .local v4, pdd:Lcom/duokan/airkan/common/aidl/ParcelDeviceData;
    new-instance v3, Lcom/duokan/airkan/common/aidl/ParcelDeviceData;

    invoke-direct {v3, v4}, Lcom/duokan/airkan/common/aidl/ParcelDeviceData;-><init>(Lcom/duokan/airkan/common/aidl/ParcelDeviceData;)V

    .line 193
    .local v3, newpdd:Lcom/duokan/airkan/common/aidl/ParcelDeviceData;
    iget-object v5, p0, Lcom/duokan/airkan/phone/api/DeviceManager;->mParcelDeviceDataList:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 195
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #newpdd:Lcom/duokan/airkan/common/aidl/ParcelDeviceData;
    .end local v4           #pdd:Lcom/duokan/airkan/common/aidl/ParcelDeviceData;
    :catch_0
    move-exception v0

    .line 196
    .local v0, e:Landroid/os/RemoteException;
    :try_start_1
    const-string v5, "ADM"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "queryDevices error:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/duokan/airkan/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    new-instance v5, Lcom/duokan/airkan/common/AirkanException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "queryDevices error:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/duokan/airkan/common/AirkanException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 202
    .end local v0           #e:Landroid/os/RemoteException;
    :catchall_0
    move-exception v5

    invoke-direct {p0}, Lcom/duokan/airkan/phone/api/DeviceManager;->registerCallback()V

    throw v5

    .restart local v2       #i$:Ljava/util/Iterator;
    :cond_0
    invoke-direct {p0}, Lcom/duokan/airkan/phone/api/DeviceManager;->registerCallback()V

    .line 208
    return-void

    .line 198
    .end local v2           #i$:Ljava/util/Iterator;
    :catch_1
    move-exception v1

    .line 199
    .local v1, e1:Ljava/lang/Exception;
    :try_start_2
    const-string v5, "ADM"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "queryDevices error:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/duokan/airkan/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    new-instance v5, Lcom/duokan/airkan/common/AirkanException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "queryDevices error:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/duokan/airkan/common/AirkanException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 205
    .end local v1           #e1:Ljava/lang/Exception;
    :cond_1
    const-string v5, "ADM"

    const-string v6, "Service not bounded."

    invoke-static {v5, v6}, Lcom/duokan/airkan/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    new-instance v5, Lcom/duokan/airkan/common/AirkanException;

    const-string v6, "service not bounded"

    invoke-direct {v5, v6}, Lcom/duokan/airkan/common/AirkanException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method removeDevice(Lcom/duokan/airkan/common/aidl/ParcelDeviceData;)V
    .locals 3
    .parameter "device"

    .prologue
    .line 363
    const-string v1, "ADM"

    const-string v2, "remove device"

    invoke-static {v1, v2}, Lcom/duokan/airkan/common/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 364
    iget-object v1, p1, Lcom/duokan/airkan/common/aidl/ParcelDeviceData;->mName:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/duokan/airkan/phone/api/DeviceManager;->findDevice(Ljava/lang/String;)Lcom/duokan/airkan/common/aidl/ParcelDeviceData;

    move-result-object v0

    .line 365
    .local v0, pdd:Lcom/duokan/airkan/common/aidl/ParcelDeviceData;
    if-eqz v0, :cond_0

    .line 366
    iget-object v1, p0, Lcom/duokan/airkan/phone/api/DeviceManager;->mParcelDeviceDataList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 368
    :cond_0
    iget-object v1, p0, Lcom/duokan/airkan/phone/api/DeviceManager;->mODCL:Lcom/duokan/airkan/phone/api/DeviceManager$OnDeviceChangeListener;

    if-eqz v1, :cond_1

    .line 369
    iget-object v1, p0, Lcom/duokan/airkan/phone/api/DeviceManager;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/duokan/airkan/phone/api/DeviceManager$4;

    invoke-direct {v2, p0, p1}, Lcom/duokan/airkan/phone/api/DeviceManager$4;-><init>(Lcom/duokan/airkan/phone/api/DeviceManager;Lcom/duokan/airkan/common/aidl/ParcelDeviceData;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 376
    :cond_1
    return-void
.end method

.method setConnectDevice(Ljava/lang/String;)V
    .locals 3
    .parameter "aDevName"

    .prologue
    .line 89
    const-string v0, "ADM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setConnectDevice : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/duokan/airkan/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    invoke-virtual {p0, p1}, Lcom/duokan/airkan/phone/api/DeviceManager;->findDevice(Ljava/lang/String;)Lcom/duokan/airkan/common/aidl/ParcelDeviceData;

    move-result-object v0

    iput-object v0, p0, Lcom/duokan/airkan/phone/api/DeviceManager;->mCurrentDev:Lcom/duokan/airkan/common/aidl/ParcelDeviceData;

    .line 91
    return-void
.end method

.method setInternalListener(Lcom/duokan/airkan/phone/api/DeviceManager$IInternalListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 74
    iput-object p1, p0, Lcom/duokan/airkan/phone/api/DeviceManager;->mInternalListener:Lcom/duokan/airkan/phone/api/DeviceManager$IInternalListener;

    .line 75
    return-void
.end method

.method setInternalListenerPhoto(Lcom/duokan/airkan/phone/api/DeviceManager$IInternalListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 78
    iput-object p1, p0, Lcom/duokan/airkan/phone/api/DeviceManager;->mInternalListenerPhoto:Lcom/duokan/airkan/phone/api/DeviceManager$IInternalListener;

    .line 79
    return-void
.end method

.method status()Z
    .locals 1

    .prologue
    .line 233
    iget-boolean v0, p0, Lcom/duokan/airkan/phone/api/DeviceManager;->mIsBoundSuccess:Z

    return v0
.end method
