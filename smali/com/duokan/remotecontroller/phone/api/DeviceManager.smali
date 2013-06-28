.class public Lcom/duokan/remotecontroller/phone/api/DeviceManager;
.super Ljava/lang/Object;
.source "DeviceManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/duokan/remotecontroller/phone/api/DeviceManager$IInternalListener;,
        Lcom/duokan/remotecontroller/phone/api/DeviceManager$OnDeviceChangeListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ADM"


# instance fields
.field private mCallback:Lcom/duokan/remotecontroller/phone/api/DeviceServiceCallback;

.field private mContext:Landroid/content/Context;

.field private mCurrentDev:Lcom/duokan/airkan/common/aidl/ParcelDeviceData;

.field private mHandler:Landroid/os/Handler;

.field private mInternalListener:Lcom/duokan/remotecontroller/phone/api/DeviceManager$IInternalListener;

.field private mIsBindCallSuccess:Z

.field private mIsBoundSuccess:Z

.field private mODCL:Lcom/duokan/remotecontroller/phone/api/DeviceManager$OnDeviceChangeListener;

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

.field private mRCClientService:Lcom/duokan/remotecontroller/phone/aidl/IRCClientService;

.field private serviceConnection:Landroid/content/ServiceConnection;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 49
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object v1, p0, Lcom/duokan/remotecontroller/phone/api/DeviceManager;->mODCL:Lcom/duokan/remotecontroller/phone/api/DeviceManager$OnDeviceChangeListener;

    .line 30
    iput-object v1, p0, Lcom/duokan/remotecontroller/phone/api/DeviceManager;->mRCClientService:Lcom/duokan/remotecontroller/phone/aidl/IRCClientService;

    .line 31
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/duokan/remotecontroller/phone/api/DeviceManager;->mHandler:Landroid/os/Handler;

    .line 32
    iput-boolean v2, p0, Lcom/duokan/remotecontroller/phone/api/DeviceManager;->mIsBoundSuccess:Z

    .line 33
    iput-boolean v2, p0, Lcom/duokan/remotecontroller/phone/api/DeviceManager;->mIsBindCallSuccess:Z

    .line 34
    iput-object v1, p0, Lcom/duokan/remotecontroller/phone/api/DeviceManager;->mContext:Landroid/content/Context;

    .line 35
    new-instance v0, Lcom/duokan/remotecontroller/phone/api/DeviceServiceCallback;

    invoke-direct {v0}, Lcom/duokan/remotecontroller/phone/api/DeviceServiceCallback;-><init>()V

    iput-object v0, p0, Lcom/duokan/remotecontroller/phone/api/DeviceManager;->mCallback:Lcom/duokan/remotecontroller/phone/api/DeviceServiceCallback;

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/duokan/remotecontroller/phone/api/DeviceManager;->mParcelDeviceDataList:Ljava/util/List;

    .line 38
    iput-object v1, p0, Lcom/duokan/remotecontroller/phone/api/DeviceManager;->mInternalListener:Lcom/duokan/remotecontroller/phone/api/DeviceManager$IInternalListener;

    .line 195
    new-instance v0, Lcom/duokan/remotecontroller/phone/api/DeviceManager$1;

    invoke-direct {v0, p0}, Lcom/duokan/remotecontroller/phone/api/DeviceManager$1;-><init>(Lcom/duokan/remotecontroller/phone/api/DeviceManager;)V

    iput-object v0, p0, Lcom/duokan/remotecontroller/phone/api/DeviceManager;->serviceConnection:Landroid/content/ServiceConnection;

    .line 50
    invoke-direct {p0}, Lcom/duokan/remotecontroller/phone/api/DeviceManager;->init()V

    .line 51
    iput-object p1, p0, Lcom/duokan/remotecontroller/phone/api/DeviceManager;->mContext:Landroid/content/Context;

    .line 52
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/duokan/remotecontroller/phone/api/DeviceManager$OnDeviceChangeListener;)V
    .locals 0
    .parameter "context"
    .parameter "onDeviceChangeListener"

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/duokan/remotecontroller/phone/api/DeviceManager;-><init>(Landroid/content/Context;)V

    .line 60
    iput-object p2, p0, Lcom/duokan/remotecontroller/phone/api/DeviceManager;->mODCL:Lcom/duokan/remotecontroller/phone/api/DeviceManager$OnDeviceChangeListener;

    .line 61
    return-void
.end method

.method static synthetic access$002(Lcom/duokan/remotecontroller/phone/api/DeviceManager;Lcom/duokan/remotecontroller/phone/aidl/IRCClientService;)Lcom/duokan/remotecontroller/phone/aidl/IRCClientService;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 27
    iput-object p1, p0, Lcom/duokan/remotecontroller/phone/api/DeviceManager;->mRCClientService:Lcom/duokan/remotecontroller/phone/aidl/IRCClientService;

    return-object p1
.end method

.method static synthetic access$102(Lcom/duokan/remotecontroller/phone/api/DeviceManager;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 27
    iput-boolean p1, p0, Lcom/duokan/remotecontroller/phone/api/DeviceManager;->mIsBoundSuccess:Z

    return p1
.end method

.method static synthetic access$200(Lcom/duokan/remotecontroller/phone/api/DeviceManager;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/duokan/remotecontroller/phone/api/DeviceManager;->onOpened()V

    return-void
.end method

.method static synthetic access$300(Lcom/duokan/remotecontroller/phone/api/DeviceManager;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/duokan/remotecontroller/phone/api/DeviceManager;->registerCallback()V

    return-void
.end method

.method static synthetic access$400(Lcom/duokan/remotecontroller/phone/api/DeviceManager;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/duokan/remotecontroller/phone/api/DeviceManager;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$500(Lcom/duokan/remotecontroller/phone/api/DeviceManager;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/duokan/remotecontroller/phone/api/DeviceManager;->removeCallback()V

    return-void
.end method

.method static synthetic access$600(Lcom/duokan/remotecontroller/phone/api/DeviceManager;)Lcom/duokan/remotecontroller/phone/api/DeviceManager$OnDeviceChangeListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/duokan/remotecontroller/phone/api/DeviceManager;->mODCL:Lcom/duokan/remotecontroller/phone/api/DeviceManager$OnDeviceChangeListener;

    return-object v0
.end method

.method private init()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 41
    iput-boolean v0, p0, Lcom/duokan/remotecontroller/phone/api/DeviceManager;->mIsBoundSuccess:Z

    .line 42
    iput-boolean v0, p0, Lcom/duokan/remotecontroller/phone/api/DeviceManager;->mIsBindCallSuccess:Z

    .line 43
    const-string v0, "ADM"

    const-string v1, "Remote Controller version: 2013-2-22"

    invoke-static {v0, v1}, Lcom/duokan/airkan/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    invoke-static {}, Lcom/duokan/remotecontroller/phone/api/DeviceName;->init()V

    .line 45
    return-void
.end method

.method private onOpened()V
    .locals 2

    .prologue
    .line 310
    const-string v0, "ADM"

    const-string v1, "onOpened"

    invoke-static {v0, v1}, Lcom/duokan/airkan/common/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 311
    iget-object v0, p0, Lcom/duokan/remotecontroller/phone/api/DeviceManager;->mODCL:Lcom/duokan/remotecontroller/phone/api/DeviceManager$OnDeviceChangeListener;

    if-eqz v0, :cond_0

    .line 312
    iget-object v0, p0, Lcom/duokan/remotecontroller/phone/api/DeviceManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/duokan/remotecontroller/phone/api/DeviceManager$4;

    invoke-direct {v1, p0}, Lcom/duokan/remotecontroller/phone/api/DeviceManager$4;-><init>(Lcom/duokan/remotecontroller/phone/api/DeviceManager;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 319
    :cond_0
    return-void
.end method

.method private registerCallback()V
    .locals 4

    .prologue
    .line 224
    :try_start_0
    iget-object v1, p0, Lcom/duokan/remotecontroller/phone/api/DeviceManager;->mRCClientService:Lcom/duokan/remotecontroller/phone/aidl/IRCClientService;

    if-eqz v1, :cond_0

    .line 225
    iget-object v1, p0, Lcom/duokan/remotecontroller/phone/api/DeviceManager;->mRCClientService:Lcom/duokan/remotecontroller/phone/aidl/IRCClientService;

    iget-object v2, p0, Lcom/duokan/remotecontroller/phone/api/DeviceManager;->mCallback:Lcom/duokan/remotecontroller/phone/api/DeviceServiceCallback;

    invoke-interface {v1, v2}, Lcom/duokan/remotecontroller/phone/aidl/IRCClientService;->registerDeviceCallback(Lcom/duokan/remotecontroller/phone/aidl/IDeviceServiceCallback;)V

    .line 233
    :goto_0
    return-void

    .line 227
    :cond_0
    const-string v1, "ADM"

    const-string v2, "Service not bounded."

    invoke-static {v1, v2}, Lcom/duokan/airkan/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 229
    :catch_0
    move-exception v0

    .line 230
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

    .line 231
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private removeCallback()V
    .locals 4

    .prologue
    .line 237
    :try_start_0
    iget-object v1, p0, Lcom/duokan/remotecontroller/phone/api/DeviceManager;->mRCClientService:Lcom/duokan/remotecontroller/phone/aidl/IRCClientService;

    if-eqz v1, :cond_0

    .line 238
    iget-object v1, p0, Lcom/duokan/remotecontroller/phone/api/DeviceManager;->mRCClientService:Lcom/duokan/remotecontroller/phone/aidl/IRCClientService;

    invoke-interface {v1}, Lcom/duokan/remotecontroller/phone/aidl/IRCClientService;->removeDeviceCallback()V

    .line 246
    :goto_0
    return-void

    .line 240
    :cond_0
    const-string v1, "ADM"

    const-string v2, "Service not bounded."

    invoke-static {v1, v2}, Lcom/duokan/airkan/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 242
    :catch_0
    move-exception v0

    .line 243
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

    .line 244
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method addDevice(Lcom/duokan/airkan/common/aidl/ParcelDeviceData;)V
    .locals 3
    .parameter "device"

    .prologue
    .line 249
    const-string v1, "ADM"

    const-string v2, "add device"

    invoke-static {v1, v2}, Lcom/duokan/airkan/common/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    new-instance v0, Lcom/duokan/airkan/common/aidl/ParcelDeviceData;

    invoke-direct {v0, p1}, Lcom/duokan/airkan/common/aidl/ParcelDeviceData;-><init>(Lcom/duokan/airkan/common/aidl/ParcelDeviceData;)V

    .line 252
    .local v0, newpdd:Lcom/duokan/airkan/common/aidl/ParcelDeviceData;
    iget-object v2, p0, Lcom/duokan/remotecontroller/phone/api/DeviceManager;->mParcelDeviceDataList:Ljava/util/List;

    monitor-enter v2

    .line 253
    :try_start_0
    iget-object v1, p0, Lcom/duokan/remotecontroller/phone/api/DeviceManager;->mParcelDeviceDataList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 254
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 256
    iget-object v1, p0, Lcom/duokan/remotecontroller/phone/api/DeviceManager;->mODCL:Lcom/duokan/remotecontroller/phone/api/DeviceManager$OnDeviceChangeListener;

    if-eqz v1, :cond_0

    .line 257
    iget-object v1, p0, Lcom/duokan/remotecontroller/phone/api/DeviceManager;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/duokan/remotecontroller/phone/api/DeviceManager$2;

    invoke-direct {v2, p0, p1}, Lcom/duokan/remotecontroller/phone/api/DeviceManager$2;-><init>(Lcom/duokan/remotecontroller/phone/api/DeviceManager;Lcom/duokan/airkan/common/aidl/ParcelDeviceData;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 264
    :cond_0
    return-void

    .line 254
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public close()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 133
    iget-object v0, p0, Lcom/duokan/remotecontroller/phone/api/DeviceManager;->mInternalListener:Lcom/duokan/remotecontroller/phone/api/DeviceManager$IInternalListener;

    if-eqz v0, :cond_0

    .line 134
    iget-object v0, p0, Lcom/duokan/remotecontroller/phone/api/DeviceManager;->mInternalListener:Lcom/duokan/remotecontroller/phone/api/DeviceManager$IInternalListener;

    invoke-interface {v0}, Lcom/duokan/remotecontroller/phone/api/DeviceManager$IInternalListener;->onClosed()V

    .line 137
    :cond_0
    iget-boolean v0, p0, Lcom/duokan/remotecontroller/phone/api/DeviceManager;->mIsBoundSuccess:Z

    if-eqz v0, :cond_2

    .line 138
    invoke-direct {p0}, Lcom/duokan/remotecontroller/phone/api/DeviceManager;->removeCallback()V

    .line 139
    iput-boolean v2, p0, Lcom/duokan/remotecontroller/phone/api/DeviceManager;->mIsBoundSuccess:Z

    .line 140
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/duokan/remotecontroller/phone/api/DeviceManager;->mRCClientService:Lcom/duokan/remotecontroller/phone/aidl/IRCClientService;

    .line 144
    :goto_0
    iget-boolean v0, p0, Lcom/duokan/remotecontroller/phone/api/DeviceManager;->mIsBindCallSuccess:Z

    if-eqz v0, :cond_1

    .line 145
    iget-object v0, p0, Lcom/duokan/remotecontroller/phone/api/DeviceManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/duokan/remotecontroller/phone/api/DeviceManager;->serviceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 146
    iput-boolean v2, p0, Lcom/duokan/remotecontroller/phone/api/DeviceManager;->mIsBindCallSuccess:Z

    .line 148
    :cond_1
    return-void

    .line 142
    :cond_2
    const-string v0, "ADM"

    const-string v1, "IRCClientService not bound."

    invoke-static {v0, v1}, Lcom/duokan/airkan/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method findDevice(Ljava/lang/String;)Lcom/duokan/airkan/common/aidl/ParcelDeviceData;
    .locals 6
    .parameter "name"

    .prologue
    .line 285
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

    .line 286
    iget-object v4, p0, Lcom/duokan/remotecontroller/phone/api/DeviceManager;->mParcelDeviceDataList:Ljava/util/List;

    monitor-enter v4

    .line 287
    :try_start_0
    iget-object v3, p0, Lcom/duokan/remotecontroller/phone/api/DeviceManager;->mParcelDeviceDataList:Ljava/util/List;

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
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 289
    .local v2, pdd:Lcom/duokan/airkan/common/aidl/ParcelDeviceData;
    :try_start_1
    iget-object v3, v2, Lcom/duokan/airkan/common/aidl/ParcelDeviceData;->mName:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v3

    if-eqz v3, :cond_0

    .line 290
    :try_start_2
    monitor-exit v4

    .line 298
    .end local v2           #pdd:Lcom/duokan/airkan/common/aidl/ParcelDeviceData;
    :goto_1
    return-object v2

    .line 292
    .restart local v2       #pdd:Lcom/duokan/airkan/common/aidl/ParcelDeviceData;
    :catch_0
    move-exception v0

    .line 293
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 296
    .end local v0           #e:Ljava/lang/Exception;
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #pdd:Lcom/duokan/airkan/common/aidl/ParcelDeviceData;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_1
    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 297
    const-string v3, "ADM"

    const-string v4, "findDevice return null"

    invoke-static {v3, v4}, Lcom/duokan/airkan/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    const/4 v2, 0x0

    goto :goto_1
.end method

.method getConnectDeviceIP()Ljava/lang/String;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/duokan/remotecontroller/phone/api/DeviceManager;->mCurrentDev:Lcom/duokan/airkan/common/aidl/ParcelDeviceData;

    if-eqz v0, :cond_0

    .line 92
    iget-object v0, p0, Lcom/duokan/remotecontroller/phone/api/DeviceManager;->mCurrentDev:Lcom/duokan/airkan/common/aidl/ParcelDeviceData;

    iget-object v0, v0, Lcom/duokan/airkan/common/aidl/ParcelDeviceData;->ip:Ljava/lang/String;

    .line 94
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method getConnectDeviceName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/duokan/remotecontroller/phone/api/DeviceManager;->mCurrentDev:Lcom/duokan/airkan/common/aidl/ParcelDeviceData;

    if-eqz v0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/duokan/remotecontroller/phone/api/DeviceManager;->mCurrentDev:Lcom/duokan/airkan/common/aidl/ParcelDeviceData;

    iget-object v0, v0, Lcom/duokan/airkan/common/aidl/ParcelDeviceData;->mName:Ljava/lang/String;

    .line 87
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method getConnectDeviceText()Ljava/lang/String;
    .locals 3

    .prologue
    .line 98
    iget-object v0, p0, Lcom/duokan/remotecontroller/phone/api/DeviceManager;->mCurrentDev:Lcom/duokan/airkan/common/aidl/ParcelDeviceData;

    if-eqz v0, :cond_0

    .line 99
    const-string v0, "ADM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "extratext: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/duokan/remotecontroller/phone/api/DeviceManager;->mCurrentDev:Lcom/duokan/airkan/common/aidl/ParcelDeviceData;

    iget-object v2, v2, Lcom/duokan/airkan/common/aidl/ParcelDeviceData;->extraText:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/duokan/airkan/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    iget-object v0, p0, Lcom/duokan/remotecontroller/phone/api/DeviceManager;->mCurrentDev:Lcom/duokan/airkan/common/aidl/ParcelDeviceData;

    iget-object v0, v0, Lcom/duokan/airkan/common/aidl/ParcelDeviceData;->extraText:Ljava/lang/String;

    .line 102
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getConnectDeviceType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/duokan/remotecontroller/phone/api/DeviceManager;->mCurrentDev:Lcom/duokan/airkan/common/aidl/ParcelDeviceData;

    if-eqz v0, :cond_0

    .line 78
    iget-object v0, p0, Lcom/duokan/remotecontroller/phone/api/DeviceManager;->mCurrentDev:Lcom/duokan/airkan/common/aidl/ParcelDeviceData;

    iget-object v0, v0, Lcom/duokan/airkan/common/aidl/ParcelDeviceData;->mType:Ljava/lang/String;

    .line 80
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/duokan/remotecontroller/phone/api/DeviceManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method getLocalDevicename()Ljava/lang/String;
    .locals 1

    .prologue
    .line 106
    invoke-static {}, Lcom/duokan/remotecontroller/phone/api/DeviceName;->getDeviceName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getService()Lcom/duokan/remotecontroller/phone/aidl/IRCClientService;
    .locals 1

    .prologue
    .line 192
    iget-object v0, p0, Lcom/duokan/remotecontroller/phone/api/DeviceManager;->mRCClientService:Lcom/duokan/remotecontroller/phone/aidl/IRCClientService;

    return-object v0
.end method

.method getServiceCallback()Lcom/duokan/remotecontroller/phone/api/DeviceServiceCallback;
    .locals 1

    .prologue
    .line 322
    iget-object v0, p0, Lcom/duokan/remotecontroller/phone/api/DeviceManager;->mCallback:Lcom/duokan/remotecontroller/phone/api/DeviceServiceCallback;

    return-object v0
.end method

.method getType(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "name"

    .prologue
    .line 302
    invoke-virtual {p0, p1}, Lcom/duokan/remotecontroller/phone/api/DeviceManager;->findDevice(Ljava/lang/String;)Lcom/duokan/airkan/common/aidl/ParcelDeviceData;

    move-result-object v0

    .line 303
    .local v0, pdd:Lcom/duokan/airkan/common/aidl/ParcelDeviceData;
    if-eqz v0, :cond_0

    .line 304
    iget-object v1, v0, Lcom/duokan/airkan/common/aidl/ParcelDeviceData;->mType:Ljava/lang/String;

    .line 306
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public open()Z
    .locals 4

    .prologue
    .line 114
    iget-object v0, p0, Lcom/duokan/remotecontroller/phone/api/DeviceManager;->mCallback:Lcom/duokan/remotecontroller/phone/api/DeviceServiceCallback;

    invoke-virtual {v0, p0}, Lcom/duokan/remotecontroller/phone/api/DeviceServiceCallback;->setRCDeviceManager(Lcom/duokan/remotecontroller/phone/api/DeviceManager;)V

    .line 115
    iget-boolean v0, p0, Lcom/duokan/remotecontroller/phone/api/DeviceManager;->mIsBoundSuccess:Z

    if-nez v0, :cond_0

    .line 116
    iget-object v0, p0, Lcom/duokan/remotecontroller/phone/api/DeviceManager;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.duokan.remotecontroller.phone.aidl.IRCClientService"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/duokan/remotecontroller/phone/api/DeviceManager;->serviceConnection:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/duokan/remotecontroller/phone/api/DeviceManager;->mIsBindCallSuccess:Z

    .line 120
    iget-boolean v0, p0, Lcom/duokan/remotecontroller/phone/api/DeviceManager;->mIsBindCallSuccess:Z

    if-eqz v0, :cond_1

    .line 121
    const-string v0, "ADM"

    const-string v1, "bind IRCClientService."

    invoke-static {v0, v1}, Lcom/duokan/airkan/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/duokan/remotecontroller/phone/api/DeviceManager;->mIsBindCallSuccess:Z

    return v0

    .line 123
    :cond_1
    const-string v0, "ADM"

    const-string v1, "bind IRCClientService failed."

    invoke-static {v0, v1}, Lcom/duokan/airkan/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
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
    .line 156
    .local p1, parcelDeviceDataList:Ljava/util/List;,"Ljava/util/List<Lcom/duokan/airkan/common/aidl/ParcelDeviceData;>;"
    const-string v5, "ADM"

    const-string v6, "to query services"

    invoke-static {v5, v6}, Lcom/duokan/airkan/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    iget-object v5, p0, Lcom/duokan/remotecontroller/phone/api/DeviceManager;->mRCClientService:Lcom/duokan/remotecontroller/phone/aidl/IRCClientService;

    if-eqz v5, :cond_1

    .line 159
    :try_start_0
    iget-object v5, p0, Lcom/duokan/remotecontroller/phone/api/DeviceManager;->mRCClientService:Lcom/duokan/remotecontroller/phone/aidl/IRCClientService;

    invoke-interface {v5, p1}, Lcom/duokan/remotecontroller/phone/aidl/IRCClientService;->queryDevices(Ljava/util/List;)I

    .line 160
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

    .line 161
    iget-object v6, p0, Lcom/duokan/remotecontroller/phone/api/DeviceManager;->mParcelDeviceDataList:Ljava/util/List;

    monitor-enter v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 162
    :try_start_1
    iget-object v5, p0, Lcom/duokan/remotecontroller/phone/api/DeviceManager;->mParcelDeviceDataList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->clear()V

    .line 163
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

    .line 164
    .local v4, pdd:Lcom/duokan/airkan/common/aidl/ParcelDeviceData;
    new-instance v3, Lcom/duokan/airkan/common/aidl/ParcelDeviceData;

    invoke-direct {v3, v4}, Lcom/duokan/airkan/common/aidl/ParcelDeviceData;-><init>(Lcom/duokan/airkan/common/aidl/ParcelDeviceData;)V

    .line 165
    .local v3, newpdd:Lcom/duokan/airkan/common/aidl/ParcelDeviceData;
    iget-object v5, p0, Lcom/duokan/remotecontroller/phone/api/DeviceManager;->mParcelDeviceDataList:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 167
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #newpdd:Lcom/duokan/airkan/common/aidl/ParcelDeviceData;
    .end local v4           #pdd:Lcom/duokan/airkan/common/aidl/ParcelDeviceData;
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 168
    :catch_0
    move-exception v0

    .line 169
    .local v0, e:Landroid/os/RemoteException;
    :try_start_3
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

    .line 170
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
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 175
    .end local v0           #e:Landroid/os/RemoteException;
    :catchall_1
    move-exception v5

    invoke-direct {p0}, Lcom/duokan/remotecontroller/phone/api/DeviceManager;->registerCallback()V

    throw v5

    .line 167
    .restart local v2       #i$:Ljava/util/Iterator;
    :cond_0
    :try_start_4
    monitor-exit v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 175
    invoke-direct {p0}, Lcom/duokan/remotecontroller/phone/api/DeviceManager;->registerCallback()V

    .line 181
    return-void

    .line 171
    .end local v2           #i$:Ljava/util/Iterator;
    :catch_1
    move-exception v1

    .line 172
    .local v1, e1:Ljava/lang/Exception;
    :try_start_5
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

    .line 173
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
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 178
    .end local v1           #e1:Ljava/lang/Exception;
    :cond_1
    const-string v5, "ADM"

    const-string v6, "Service not bounded."

    invoke-static {v5, v6}, Lcom/duokan/airkan/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    new-instance v5, Lcom/duokan/airkan/common/AirkanException;

    const-string v6, "service not bounded"

    invoke-direct {v5, v6}, Lcom/duokan/airkan/common/AirkanException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method removeDevice(Lcom/duokan/airkan/common/aidl/ParcelDeviceData;)V
    .locals 3
    .parameter "device"

    .prologue
    .line 267
    const-string v1, "ADM"

    const-string v2, "remove device"

    invoke-static {v1, v2}, Lcom/duokan/airkan/common/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    iget-object v1, p1, Lcom/duokan/airkan/common/aidl/ParcelDeviceData;->mName:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/duokan/remotecontroller/phone/api/DeviceManager;->findDevice(Ljava/lang/String;)Lcom/duokan/airkan/common/aidl/ParcelDeviceData;

    move-result-object v0

    .line 269
    .local v0, pdd:Lcom/duokan/airkan/common/aidl/ParcelDeviceData;
    if-eqz v0, :cond_0

    .line 270
    iget-object v2, p0, Lcom/duokan/remotecontroller/phone/api/DeviceManager;->mParcelDeviceDataList:Ljava/util/List;

    monitor-enter v2

    .line 271
    :try_start_0
    iget-object v1, p0, Lcom/duokan/remotecontroller/phone/api/DeviceManager;->mParcelDeviceDataList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 272
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 274
    :cond_0
    iget-object v1, p0, Lcom/duokan/remotecontroller/phone/api/DeviceManager;->mODCL:Lcom/duokan/remotecontroller/phone/api/DeviceManager$OnDeviceChangeListener;

    if-eqz v1, :cond_1

    .line 275
    iget-object v1, p0, Lcom/duokan/remotecontroller/phone/api/DeviceManager;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/duokan/remotecontroller/phone/api/DeviceManager$3;

    invoke-direct {v2, p0, p1}, Lcom/duokan/remotecontroller/phone/api/DeviceManager$3;-><init>(Lcom/duokan/remotecontroller/phone/api/DeviceManager;Lcom/duokan/airkan/common/aidl/ParcelDeviceData;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 282
    :cond_1
    return-void

    .line 272
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method setConnectDevice(Ljava/lang/String;)V
    .locals 3
    .parameter "aDevName"

    .prologue
    .line 72
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

    .line 73
    invoke-virtual {p0, p1}, Lcom/duokan/remotecontroller/phone/api/DeviceManager;->findDevice(Ljava/lang/String;)Lcom/duokan/airkan/common/aidl/ParcelDeviceData;

    move-result-object v0

    iput-object v0, p0, Lcom/duokan/remotecontroller/phone/api/DeviceManager;->mCurrentDev:Lcom/duokan/airkan/common/aidl/ParcelDeviceData;

    .line 74
    return-void
.end method

.method setInternalListener(Lcom/duokan/remotecontroller/phone/api/DeviceManager$IInternalListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 64
    iput-object p1, p0, Lcom/duokan/remotecontroller/phone/api/DeviceManager;->mInternalListener:Lcom/duokan/remotecontroller/phone/api/DeviceManager$IInternalListener;

    .line 65
    return-void
.end method

.method status()Z
    .locals 1

    .prologue
    .line 188
    iget-boolean v0, p0, Lcom/duokan/remotecontroller/phone/api/DeviceManager;->mIsBoundSuccess:Z

    return v0
.end method
