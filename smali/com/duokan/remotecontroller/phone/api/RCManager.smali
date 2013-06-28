.class public Lcom/duokan/remotecontroller/phone/api/RCManager;
.super Lcom/duokan/remotecontroller/phone/api/ConnectionManager;
.source "RCManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/duokan/remotecontroller/phone/api/RCManager$InternalListener;,
        Lcom/duokan/remotecontroller/phone/api/RCManager$OnRCEventListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "RCManager"


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mInternalListener:Lcom/duokan/remotecontroller/phone/api/RCManager$InternalListener;

.field private mIsCallabackRegistered:Z

.field private mIsToPlay:Z

.field private mOnVideoEventListener:Lcom/duokan/remotecontroller/phone/api/RCManager$OnRCEventListener;

.field private mRCCallback:Lcom/duokan/remotecontroller/phone/api/RCServiceCallback;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/duokan/remotecontroller/phone/api/DeviceManager;Lcom/duokan/remotecontroller/phone/api/RCManager$OnRCEventListener;)V
    .locals 2
    .parameter "appName"
    .parameter "deviceManager"
    .parameter "listener"

    .prologue
    const/4 v1, 0x0

    .line 44
    invoke-direct {p0, p1, p2}, Lcom/duokan/remotecontroller/phone/api/ConnectionManager;-><init>(Ljava/lang/String;Lcom/duokan/remotecontroller/phone/api/DeviceManager;)V

    .line 24
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/duokan/remotecontroller/phone/api/RCManager;->mHandler:Landroid/os/Handler;

    .line 25
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/duokan/remotecontroller/phone/api/RCManager;->mOnVideoEventListener:Lcom/duokan/remotecontroller/phone/api/RCManager$OnRCEventListener;

    .line 26
    iput-boolean v1, p0, Lcom/duokan/remotecontroller/phone/api/RCManager;->mIsToPlay:Z

    .line 27
    iput-boolean v1, p0, Lcom/duokan/remotecontroller/phone/api/RCManager;->mIsCallabackRegistered:Z

    .line 28
    new-instance v0, Lcom/duokan/remotecontroller/phone/api/RCServiceCallback;

    invoke-direct {v0}, Lcom/duokan/remotecontroller/phone/api/RCServiceCallback;-><init>()V

    iput-object v0, p0, Lcom/duokan/remotecontroller/phone/api/RCManager;->mRCCallback:Lcom/duokan/remotecontroller/phone/api/RCServiceCallback;

    .line 29
    new-instance v0, Lcom/duokan/remotecontroller/phone/api/RCManager$InternalListener;

    invoke-direct {v0, p0}, Lcom/duokan/remotecontroller/phone/api/RCManager$InternalListener;-><init>(Lcom/duokan/remotecontroller/phone/api/RCManager;)V

    iput-object v0, p0, Lcom/duokan/remotecontroller/phone/api/RCManager;->mInternalListener:Lcom/duokan/remotecontroller/phone/api/RCManager$InternalListener;

    .line 45
    iput-object p3, p0, Lcom/duokan/remotecontroller/phone/api/RCManager;->mOnVideoEventListener:Lcom/duokan/remotecontroller/phone/api/RCManager$OnRCEventListener;

    .line 46
    iget-object v0, p0, Lcom/duokan/remotecontroller/phone/api/RCManager;->mInternalListener:Lcom/duokan/remotecontroller/phone/api/RCManager$InternalListener;

    invoke-virtual {p2, v0}, Lcom/duokan/remotecontroller/phone/api/DeviceManager;->setInternalListener(Lcom/duokan/remotecontroller/phone/api/DeviceManager$IInternalListener;)V

    .line 47
    invoke-direct {p0}, Lcom/duokan/remotecontroller/phone/api/RCManager;->init()V

    .line 48
    return-void
.end method

.method static synthetic access$000(Lcom/duokan/remotecontroller/phone/api/RCManager;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 22
    iget-object v0, p0, Lcom/duokan/remotecontroller/phone/api/RCManager;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private init()V
    .locals 1

    .prologue
    .line 32
    const/4 v0, 0x4

    invoke-static {v0}, Lcom/duokan/airkan/common/Log;->setLevel(I)V

    .line 33
    return-void
.end method

.method private registerRCCallback()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/duokan/airkan/common/AirkanException;
        }
    .end annotation

    .prologue
    .line 51
    const-string v3, "RCManager"

    const-string v4, "registerRCCallback enter"

    invoke-static {v3, v4}, Lcom/duokan/airkan/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    iget-boolean v3, p0, Lcom/duokan/remotecontroller/phone/api/RCManager;->mIsCallabackRegistered:Z

    if-eqz v3, :cond_0

    .line 53
    const-string v3, "RCManager"

    const-string v4, "already registered"

    invoke-static {v3, v4}, Lcom/duokan/airkan/common/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    :goto_0
    return-void

    .line 56
    :cond_0
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/duokan/remotecontroller/phone/api/RCManager;->mIsCallabackRegistered:Z

    .line 57
    iget-object v3, p0, Lcom/duokan/remotecontroller/phone/api/RCManager;->mRCCallback:Lcom/duokan/remotecontroller/phone/api/RCServiceCallback;

    invoke-virtual {v3, p0}, Lcom/duokan/remotecontroller/phone/api/RCServiceCallback;->setRCManager(Lcom/duokan/remotecontroller/phone/api/RCManager;)V

    .line 58
    iget-object v3, p0, Lcom/duokan/remotecontroller/phone/api/ConnectionManager;->mRCDeviceManager:Lcom/duokan/remotecontroller/phone/api/DeviceManager;

    if-nez v3, :cond_1

    .line 59
    new-instance v3, Lcom/duokan/airkan/common/AirkanException;

    const-string v4, "device manager is null"

    invoke-direct {v3, v4}, Lcom/duokan/airkan/common/AirkanException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 61
    :cond_1
    iget-object v3, p0, Lcom/duokan/remotecontroller/phone/api/ConnectionManager;->mRCDeviceManager:Lcom/duokan/remotecontroller/phone/api/DeviceManager;

    invoke-virtual {v3}, Lcom/duokan/remotecontroller/phone/api/DeviceManager;->getService()Lcom/duokan/remotecontroller/phone/aidl/IRCClientService;

    move-result-object v2

    .line 62
    .local v2, myService:Lcom/duokan/remotecontroller/phone/aidl/IRCClientService;
    if-eqz v2, :cond_2

    .line 64
    :try_start_0
    const-string v3, "RCManager"

    const-string v4, "register callback to service"

    invoke-static {v3, v4}, Lcom/duokan/airkan/common/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    iget-object v3, p0, Lcom/duokan/remotecontroller/phone/api/RCManager;->mRCCallback:Lcom/duokan/remotecontroller/phone/api/RCServiceCallback;

    invoke-interface {v2, v3}, Lcom/duokan/remotecontroller/phone/aidl/IRCClientService;->registerRCCallback(Lcom/duokan/remotecontroller/phone/aidl/IRCServiceCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 66
    :catch_0
    move-exception v0

    .line 67
    .local v0, e:Landroid/os/RemoteException;
    const-string v3, "RCManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "register callback to service error"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/duokan/airkan/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    new-instance v3, Lcom/duokan/airkan/common/AirkanException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "register callback to service error"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/duokan/airkan/common/AirkanException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 69
    .end local v0           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .line 70
    .local v1, e1:Ljava/lang/Exception;
    const-string v3, "RCManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "register callback to service error"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/duokan/airkan/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    new-instance v3, Lcom/duokan/airkan/common/AirkanException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "register callback to service error"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/duokan/airkan/common/AirkanException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 74
    .end local v1           #e1:Ljava/lang/Exception;
    :cond_2
    const-string v3, "RCManager"

    const-string v4, "service is not available yet"

    invoke-static {v3, v4}, Lcom/duokan/airkan/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    new-instance v3, Lcom/duokan/airkan/common/AirkanException;

    const-string v4, "service is not available yet"

    invoke-direct {v3, v4}, Lcom/duokan/airkan/common/AirkanException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private removeRCCallback()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/duokan/airkan/common/AirkanException;
        }
    .end annotation

    .prologue
    .line 80
    const-string v3, "RCManager"

    const-string v4, "removeVideoCallback enter"

    invoke-static {v3, v4}, Lcom/duokan/airkan/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    iget-boolean v3, p0, Lcom/duokan/remotecontroller/phone/api/RCManager;->mIsCallabackRegistered:Z

    if-nez v3, :cond_0

    .line 82
    const-string v3, "RCManager"

    const-string v4, "callback already removed"

    invoke-static {v3, v4}, Lcom/duokan/airkan/common/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    :goto_0
    return-void

    .line 85
    :cond_0
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/duokan/remotecontroller/phone/api/RCManager;->mIsCallabackRegistered:Z

    .line 86
    iget-object v3, p0, Lcom/duokan/remotecontroller/phone/api/ConnectionManager;->mRCDeviceManager:Lcom/duokan/remotecontroller/phone/api/DeviceManager;

    if-nez v3, :cond_1

    .line 87
    new-instance v3, Lcom/duokan/airkan/common/AirkanException;

    const-string v4, "device manager is null"

    invoke-direct {v3, v4}, Lcom/duokan/airkan/common/AirkanException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 89
    :cond_1
    iget-object v3, p0, Lcom/duokan/remotecontroller/phone/api/ConnectionManager;->mRCDeviceManager:Lcom/duokan/remotecontroller/phone/api/DeviceManager;

    invoke-virtual {v3}, Lcom/duokan/remotecontroller/phone/api/DeviceManager;->getService()Lcom/duokan/remotecontroller/phone/aidl/IRCClientService;

    move-result-object v2

    .line 90
    .local v2, myService:Lcom/duokan/remotecontroller/phone/aidl/IRCClientService;
    if-eqz v2, :cond_2

    .line 92
    :try_start_0
    const-string v3, "RCManager"

    const-string v4, "remove callback from service"

    invoke-static {v3, v4}, Lcom/duokan/airkan/common/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    invoke-interface {v2}, Lcom/duokan/remotecontroller/phone/aidl/IRCClientService;->removeRCCallback()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 105
    iget-object v3, p0, Lcom/duokan/remotecontroller/phone/api/RCManager;->mRCCallback:Lcom/duokan/remotecontroller/phone/api/RCServiceCallback;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/duokan/remotecontroller/phone/api/RCServiceCallback;->setRCManager(Lcom/duokan/remotecontroller/phone/api/RCManager;)V

    goto :goto_0

    .line 94
    :catch_0
    move-exception v0

    .line 95
    .local v0, e:Landroid/os/RemoteException;
    const-string v3, "RCManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "remove callback from service error"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/duokan/airkan/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    new-instance v3, Lcom/duokan/airkan/common/AirkanException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "remove callback from service error"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/duokan/airkan/common/AirkanException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 97
    .end local v0           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .line 98
    .local v1, e1:Ljava/lang/Exception;
    const-string v3, "RCManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "remove callback from service error"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/duokan/airkan/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    new-instance v3, Lcom/duokan/airkan/common/AirkanException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "remove callback from service error"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/duokan/airkan/common/AirkanException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 102
    .end local v1           #e1:Ljava/lang/Exception;
    :cond_2
    const-string v3, "RCManager"

    const-string v4, "service is not available yet"

    invoke-static {v3, v4}, Lcom/duokan/airkan/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    new-instance v3, Lcom/duokan/airkan/common/AirkanException;

    const-string v4, "service is not available yet"

    invoke-direct {v3, v4}, Lcom/duokan/airkan/common/AirkanException;-><init>(Ljava/lang/String;)V

    throw v3
.end method


# virtual methods
.method public connect(Ljava/lang/String;)V
    .locals 4
    .parameter "deviceName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/duokan/airkan/common/AirkanException;
        }
    .end annotation

    .prologue
    .line 127
    const-string v1, "RCManager"

    const-string v2, "connect enter"

    invoke-static {v1, v2}, Lcom/duokan/airkan/common/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    invoke-direct {p0}, Lcom/duokan/remotecontroller/phone/api/RCManager;->registerRCCallback()V

    .line 129
    iget-object v1, p0, Lcom/duokan/remotecontroller/phone/api/ConnectionManager;->mRCDeviceManager:Lcom/duokan/remotecontroller/phone/api/DeviceManager;

    if-nez v1, :cond_0

    .line 130
    new-instance v1, Lcom/duokan/airkan/common/AirkanException;

    const-string v2, "device manager is null"

    invoke-direct {v1, v2}, Lcom/duokan/airkan/common/AirkanException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 132
    :cond_0
    iget-object v1, p0, Lcom/duokan/remotecontroller/phone/api/ConnectionManager;->mRCDeviceManager:Lcom/duokan/remotecontroller/phone/api/DeviceManager;

    invoke-virtual {v1, p1}, Lcom/duokan/remotecontroller/phone/api/DeviceManager;->getType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 133
    .local v0, deviceType:Ljava/lang/String;
    if-nez v0, :cond_1

    .line 134
    new-instance v1, Lcom/duokan/airkan/common/AirkanException;

    const-string v2, "device not found"

    invoke-direct {v1, v2}, Lcom/duokan/airkan/common/AirkanException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 136
    :cond_1
    const-string v1, "_rc._tcp.local."

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 137
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/duokan/remotecontroller/phone/api/RCManager;->mIsToPlay:Z

    .line 138
    const-string v1, "RCManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "connect airkan device:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/duokan/airkan/common/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    invoke-super {p0, p1}, Lcom/duokan/remotecontroller/phone/api/ConnectionManager;->connect(Ljava/lang/String;)V

    .line 143
    return-void

    .line 141
    :cond_2
    new-instance v1, Lcom/duokan/airkan/common/AirkanException;

    const-string v2, "device type is not valid"

    invoke-direct {v1, v2}, Lcom/duokan/airkan/common/AirkanException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public disconnect()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/duokan/airkan/common/AirkanException;
        }
    .end annotation

    .prologue
    .line 151
    const-string v0, "RCManager"

    const-string v1, "disconnect enter"

    invoke-static {v0, v1}, Lcom/duokan/airkan/common/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    invoke-direct {p0}, Lcom/duokan/remotecontroller/phone/api/RCManager;->removeRCCallback()V

    .line 153
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/duokan/remotecontroller/phone/api/RCManager;->mIsToPlay:Z

    .line 154
    const-string v0, "RCManager"

    const-string v1, "disconnect tv"

    invoke-static {v0, v1}, Lcom/duokan/airkan/common/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    invoke-super {p0}, Lcom/duokan/remotecontroller/phone/api/ConnectionManager;->disconnect()V

    .line 156
    return-void
.end method

.method error(Ljava/lang/String;)V
    .locals 2
    .parameter "message"

    .prologue
    .line 259
    const-string v0, "RCManager"

    const-string v1, "error enter"

    invoke-static {v0, v1}, Lcom/duokan/airkan/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    iget-object v0, p0, Lcom/duokan/remotecontroller/phone/api/RCManager;->mOnVideoEventListener:Lcom/duokan/remotecontroller/phone/api/RCManager$OnRCEventListener;

    if-nez v0, :cond_0

    .line 261
    const-string v0, "RCManager"

    const-string v1, "video event listener is not available, ignore"

    invoke-static {v0, v1}, Lcom/duokan/airkan/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    :goto_0
    return-void

    .line 264
    :cond_0
    iget-object v0, p0, Lcom/duokan/remotecontroller/phone/api/RCManager;->mOnVideoEventListener:Lcom/duokan/remotecontroller/phone/api/RCManager$OnRCEventListener;

    invoke-interface {v0, p1}, Lcom/duokan/remotecontroller/phone/api/RCManager$OnRCEventListener;->onError(Ljava/lang/String;)V

    goto :goto_0
.end method

.method handleAuthSuccess()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/duokan/airkan/common/AirkanException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 109
    iput-boolean v1, p0, Lcom/duokan/remotecontroller/phone/api/ConnectionManager;->mIsConnecting:Z

    .line 110
    iget-boolean v0, p0, Lcom/duokan/remotecontroller/phone/api/RCManager;->mIsToPlay:Z

    if-nez v0, :cond_1

    .line 118
    :cond_0
    :goto_0
    return-void

    .line 113
    :cond_1
    iput-boolean v1, p0, Lcom/duokan/remotecontroller/phone/api/RCManager;->mIsToPlay:Z

    .line 114
    iget-object v0, p0, Lcom/duokan/remotecontroller/phone/api/RCManager;->mOnVideoEventListener:Lcom/duokan/remotecontroller/phone/api/RCManager$OnRCEventListener;

    if-eqz v0, :cond_0

    .line 115
    const-string v0, "RCManager"

    const-string v1, "inform listener on connected"

    invoke-static {v0, v1}, Lcom/duokan/airkan/common/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    iget-object v0, p0, Lcom/duokan/remotecontroller/phone/api/RCManager;->mOnVideoEventListener:Lcom/duokan/remotecontroller/phone/api/RCManager$OnRCEventListener;

    invoke-interface {v0}, Lcom/duokan/remotecontroller/phone/api/RCManager$OnRCEventListener;->onConnected()V

    goto :goto_0
.end method

.method onDisconnected()V
    .locals 2

    .prologue
    .line 269
    const-string v0, "RCManager"

    const-string v1, "network disconnected"

    invoke-static {v0, v1}, Lcom/duokan/airkan/common/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    iget-object v0, p0, Lcom/duokan/remotecontroller/phone/api/RCManager;->mOnVideoEventListener:Lcom/duokan/remotecontroller/phone/api/RCManager$OnRCEventListener;

    if-nez v0, :cond_0

    .line 271
    const-string v0, "RCManager"

    const-string v1, "video event listener is not available, ignore"

    invoke-static {v0, v1}, Lcom/duokan/airkan/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    :goto_0
    return-void

    .line 274
    :cond_0
    iget-object v0, p0, Lcom/duokan/remotecontroller/phone/api/RCManager;->mOnVideoEventListener:Lcom/duokan/remotecontroller/phone/api/RCManager$OnRCEventListener;

    invoke-interface {v0}, Lcom/duokan/remotecontroller/phone/api/RCManager$OnRCEventListener;->onDisconnected()V

    goto :goto_0
.end method

.method public play(Ljava/lang/String;JIILjava/lang/String;)V
    .locals 5
    .parameter "title"
    .parameter "mediaID"
    .parameter "ci"
    .parameter "preferedSource"
    .parameter "url"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/duokan/airkan/common/AirkanException;
        }
    .end annotation

    .prologue
    .line 207
    if-nez p1, :cond_0

    .line 208
    const-string v3, "RCManager"

    const-string v4, "title is null"

    invoke-static {v3, v4}, Lcom/duokan/airkan/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    new-instance v3, Lcom/duokan/airkan/common/AirkanException;

    const-string v4, "title is not valid"

    invoke-direct {v3, v4}, Lcom/duokan/airkan/common/AirkanException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 212
    :cond_0
    iget-object v3, p0, Lcom/duokan/remotecontroller/phone/api/ConnectionManager;->mRCDeviceManager:Lcom/duokan/remotecontroller/phone/api/DeviceManager;

    if-nez v3, :cond_1

    .line 213
    new-instance v3, Lcom/duokan/airkan/common/AirkanException;

    const-string v4, "device manager is null"

    invoke-direct {v3, v4}, Lcom/duokan/airkan/common/AirkanException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 216
    :cond_1
    new-instance v2, Lcom/duokan/airkan/common/video/VideoBasicInfo;

    invoke-direct {v2}, Lcom/duokan/airkan/common/video/VideoBasicInfo;-><init>()V

    .line 217
    .local v2, vbi:Lcom/duokan/airkan/common/video/VideoBasicInfo;
    const-string v3, ""

    iput-object v3, v2, Lcom/duokan/airkan/common/video/VideoBasicInfo;->header:Ljava/lang/String;

    .line 218
    iput-object p1, v2, Lcom/duokan/airkan/common/video/VideoBasicInfo;->title:Ljava/lang/String;

    .line 219
    const/4 v3, 0x0

    iput v3, v2, Lcom/duokan/airkan/common/video/VideoBasicInfo;->position:I

    .line 220
    if-nez p6, :cond_2

    .line 221
    const-string v3, ""

    iput-object v3, v2, Lcom/duokan/airkan/common/video/VideoBasicInfo;->url:Ljava/lang/String;

    .line 225
    :goto_0
    iget-object v3, p0, Lcom/duokan/remotecontroller/phone/api/ConnectionManager;->mRCDeviceManager:Lcom/duokan/remotecontroller/phone/api/DeviceManager;

    invoke-virtual {v3}, Lcom/duokan/remotecontroller/phone/api/DeviceManager;->getLocalDevicename()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/duokan/airkan/common/video/VideoBasicInfo;->deviceName:Ljava/lang/String;

    .line 226
    new-instance v0, Lcom/duokan/airkan/common/video/DuokanVideoInfo;

    invoke-direct {v0}, Lcom/duokan/airkan/common/video/DuokanVideoInfo;-><init>()V

    .line 227
    .local v0, dvi:Lcom/duokan/airkan/common/video/DuokanVideoInfo;
    iput-wide p2, v0, Lcom/duokan/airkan/common/video/DuokanVideoInfo;->mediaID:J

    .line 228
    iput p4, v0, Lcom/duokan/airkan/common/video/DuokanVideoInfo;->ci:I

    .line 229
    int-to-byte v3, p5

    iput-byte v3, v0, Lcom/duokan/airkan/common/video/DuokanVideoInfo;->preferSource:B

    .line 231
    iget-object v3, p0, Lcom/duokan/remotecontroller/phone/api/ConnectionManager;->mRCDeviceManager:Lcom/duokan/remotecontroller/phone/api/DeviceManager;

    invoke-virtual {v3}, Lcom/duokan/remotecontroller/phone/api/DeviceManager;->getService()Lcom/duokan/remotecontroller/phone/aidl/IRCClientService;

    move-result-object v1

    .line 232
    .local v1, myService:Lcom/duokan/remotecontroller/phone/aidl/IRCClientService;
    if-eqz v1, :cond_3

    .line 233
    iget-object v3, p0, Lcom/duokan/remotecontroller/phone/api/RCManager;->mHandler:Landroid/os/Handler;

    new-instance v4, Lcom/duokan/remotecontroller/phone/api/RCManager$2;

    invoke-direct {v4, p0, v2, v0, v1}, Lcom/duokan/remotecontroller/phone/api/RCManager$2;-><init>(Lcom/duokan/remotecontroller/phone/api/RCManager;Lcom/duokan/airkan/common/video/VideoBasicInfo;Lcom/duokan/airkan/common/video/DuokanVideoInfo;Lcom/duokan/remotecontroller/phone/aidl/IRCClientService;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 256
    return-void

    .line 223
    .end local v0           #dvi:Lcom/duokan/airkan/common/video/DuokanVideoInfo;
    .end local v1           #myService:Lcom/duokan/remotecontroller/phone/aidl/IRCClientService;
    :cond_2
    iput-object p6, v2, Lcom/duokan/airkan/common/video/VideoBasicInfo;->url:Ljava/lang/String;

    goto :goto_0

    .line 251
    .restart local v0       #dvi:Lcom/duokan/airkan/common/video/DuokanVideoInfo;
    .restart local v1       #myService:Lcom/duokan/remotecontroller/phone/aidl/IRCClientService;
    :cond_3
    const-string v3, "RCManager"

    const-string v4, "play, Service not bounded. call DeviceManager.open() first and wait for onOpened()."

    invoke-static {v3, v4}, Lcom/duokan/airkan/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    new-instance v3, Lcom/duokan/airkan/common/AirkanException;

    const-string v4, "play, Service not bounded. call DeviceManager.open() first and wait for onOpened()."

    invoke-direct {v3, v4}, Lcom/duokan/airkan/common/AirkanException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public sendKey(Landroid/view/KeyEvent;Ljava/lang/String;)V
    .locals 3
    .parameter "keyEvent"
    .parameter "extra"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/duokan/airkan/common/AirkanException;
        }
    .end annotation

    .prologue
    .line 165
    const-string v1, "RCManager"

    const-string v2, "sendKey enter"

    invoke-static {v1, v2}, Lcom/duokan/airkan/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    iget-object v1, p0, Lcom/duokan/remotecontroller/phone/api/ConnectionManager;->mRCDeviceManager:Lcom/duokan/remotecontroller/phone/api/DeviceManager;

    if-nez v1, :cond_0

    .line 167
    new-instance v1, Lcom/duokan/airkan/common/AirkanException;

    const-string v2, "device manager is null"

    invoke-direct {v1, v2}, Lcom/duokan/airkan/common/AirkanException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 169
    :cond_0
    if-nez p1, :cond_1

    .line 170
    new-instance v1, Lcom/duokan/airkan/common/AirkanException;

    const-string v2, "key event can not be null"

    invoke-direct {v1, v2}, Lcom/duokan/airkan/common/AirkanException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 172
    :cond_1
    iget-object v1, p0, Lcom/duokan/remotecontroller/phone/api/ConnectionManager;->mRCDeviceManager:Lcom/duokan/remotecontroller/phone/api/DeviceManager;

    invoke-virtual {v1}, Lcom/duokan/remotecontroller/phone/api/DeviceManager;->getService()Lcom/duokan/remotecontroller/phone/aidl/IRCClientService;

    move-result-object v0

    .line 173
    .local v0, myService:Lcom/duokan/remotecontroller/phone/aidl/IRCClientService;
    if-eqz v0, :cond_2

    .line 175
    iget-object v1, p0, Lcom/duokan/remotecontroller/phone/api/RCManager;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/duokan/remotecontroller/phone/api/RCManager$1;

    invoke-direct {v2, p0, p1, p2, v0}, Lcom/duokan/remotecontroller/phone/api/RCManager$1;-><init>(Lcom/duokan/remotecontroller/phone/api/RCManager;Landroid/view/KeyEvent;Ljava/lang/String;Lcom/duokan/remotecontroller/phone/aidl/IRCClientService;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 195
    return-void

    .line 190
    :cond_2
    const-string v1, "RCManager"

    const-string v2, "sendKey, Service not bounded. call DeviceManager.open() first and wait for onOpened()."

    invoke-static {v1, v2}, Lcom/duokan/airkan/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    new-instance v1, Lcom/duokan/airkan/common/AirkanException;

    const-string v2, "sendKey, Service not bounded. call DeviceManager.open() first and wait for onOpened()."

    invoke-direct {v1, v2}, Lcom/duokan/airkan/common/AirkanException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
