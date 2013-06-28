.class public Lcom/duokan/remotecontroller/phone/api/ConnectionManager;
.super Ljava/lang/Object;
.source "ConnectionManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/duokan/remotecontroller/phone/api/ConnectionManager$OnConnectionStatusChangeListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ACM"


# instance fields
.field protected final BLUETOOTH_TYPE:Ljava/lang/String;

.field protected final RC_TYPE:Ljava/lang/String;

.field protected mAppName:Ljava/lang/String;

.field protected mHandler:Landroid/os/Handler;

.field protected mIsAuthPassed:Z

.field protected mIsConnecting:Z

.field private mOCSCL:Lcom/duokan/remotecontroller/phone/api/ConnectionManager$OnConnectionStatusChangeListener;

.field protected mRCDeviceManager:Lcom/duokan/remotecontroller/phone/api/DeviceManager;

.field protected mServiceHandle:I


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .locals 3
    .parameter "appName"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 26
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 12
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/duokan/remotecontroller/phone/api/ConnectionManager;->mHandler:Landroid/os/Handler;

    .line 13
    iput v1, p0, Lcom/duokan/remotecontroller/phone/api/ConnectionManager;->mServiceHandle:I

    .line 14
    iput-boolean v1, p0, Lcom/duokan/remotecontroller/phone/api/ConnectionManager;->mIsAuthPassed:Z

    .line 15
    iput-object v2, p0, Lcom/duokan/remotecontroller/phone/api/ConnectionManager;->mRCDeviceManager:Lcom/duokan/remotecontroller/phone/api/DeviceManager;

    .line 16
    iput-object v2, p0, Lcom/duokan/remotecontroller/phone/api/ConnectionManager;->mOCSCL:Lcom/duokan/remotecontroller/phone/api/ConnectionManager$OnConnectionStatusChangeListener;

    .line 17
    const-string v0, "_rc._tcp.local."

    iput-object v0, p0, Lcom/duokan/remotecontroller/phone/api/ConnectionManager;->RC_TYPE:Ljava/lang/String;

    .line 18
    const-string v0, "BTSpeaker"

    iput-object v0, p0, Lcom/duokan/remotecontroller/phone/api/ConnectionManager;->BLUETOOTH_TYPE:Ljava/lang/String;

    .line 19
    iput-boolean v1, p0, Lcom/duokan/remotecontroller/phone/api/ConnectionManager;->mIsConnecting:Z

    .line 20
    iput-object v2, p0, Lcom/duokan/remotecontroller/phone/api/ConnectionManager;->mAppName:Ljava/lang/String;

    .line 27
    invoke-direct {p0}, Lcom/duokan/remotecontroller/phone/api/ConnectionManager;->init()V

    .line 28
    iput-object p1, p0, Lcom/duokan/remotecontroller/phone/api/ConnectionManager;->mAppName:Ljava/lang/String;

    .line 29
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Lcom/duokan/remotecontroller/phone/api/DeviceManager;)V
    .locals 2
    .parameter "appName"
    .parameter "adm"

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/duokan/remotecontroller/phone/api/ConnectionManager;-><init>(Ljava/lang/String;)V

    .line 33
    iput-object p2, p0, Lcom/duokan/remotecontroller/phone/api/ConnectionManager;->mRCDeviceManager:Lcom/duokan/remotecontroller/phone/api/DeviceManager;

    .line 34
    iget-object v0, p0, Lcom/duokan/remotecontroller/phone/api/ConnectionManager;->mRCDeviceManager:Lcom/duokan/remotecontroller/phone/api/DeviceManager;

    if-nez v0, :cond_0

    .line 35
    const-string v0, "ACM"

    const-string v1, "device manager is null"

    invoke-static {v0, v1}, Lcom/duokan/airkan/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    :cond_0
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/duokan/remotecontroller/phone/api/DeviceManager;)V
    .locals 2
    .parameter "appName"
    .parameter "svrName"
    .parameter "adm"

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/duokan/remotecontroller/phone/api/ConnectionManager;-><init>(Ljava/lang/String;)V

    .line 40
    iput-object p3, p0, Lcom/duokan/remotecontroller/phone/api/ConnectionManager;->mRCDeviceManager:Lcom/duokan/remotecontroller/phone/api/DeviceManager;

    .line 41
    iget-object v0, p0, Lcom/duokan/remotecontroller/phone/api/ConnectionManager;->mRCDeviceManager:Lcom/duokan/remotecontroller/phone/api/DeviceManager;

    if-nez v0, :cond_0

    .line 42
    const-string v0, "ACM"

    const-string v1, "device manager is null"

    invoke-static {v0, v1}, Lcom/duokan/airkan/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    :goto_0
    return-void

    .line 44
    :cond_0
    iget-object v0, p0, Lcom/duokan/remotecontroller/phone/api/ConnectionManager;->mRCDeviceManager:Lcom/duokan/remotecontroller/phone/api/DeviceManager;

    invoke-virtual {v0, p2}, Lcom/duokan/remotecontroller/phone/api/DeviceManager;->setConnectDevice(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private init()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 23
    iput v0, p0, Lcom/duokan/remotecontroller/phone/api/ConnectionManager;->mServiceHandle:I

    .line 24
    iput-boolean v0, p0, Lcom/duokan/remotecontroller/phone/api/ConnectionManager;->mIsAuthPassed:Z

    .line 25
    return-void
.end method


# virtual methods
.method connect()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/duokan/airkan/common/AirkanException;
        }
    .end annotation

    .prologue
    .line 64
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/duokan/remotecontroller/phone/api/ConnectionManager;->mIsConnecting:Z

    .line 65
    iget-object v1, p0, Lcom/duokan/remotecontroller/phone/api/ConnectionManager;->mRCDeviceManager:Lcom/duokan/remotecontroller/phone/api/DeviceManager;

    if-nez v1, :cond_0

    .line 66
    new-instance v1, Lcom/duokan/airkan/common/AirkanException;

    const-string v2, "device manager is null"

    invoke-direct {v1, v2}, Lcom/duokan/airkan/common/AirkanException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 68
    :cond_0
    iget-object v1, p0, Lcom/duokan/remotecontroller/phone/api/ConnectionManager;->mRCDeviceManager:Lcom/duokan/remotecontroller/phone/api/DeviceManager;

    invoke-virtual {v1}, Lcom/duokan/remotecontroller/phone/api/DeviceManager;->getService()Lcom/duokan/remotecontroller/phone/aidl/IRCClientService;

    move-result-object v0

    .line 69
    .local v0, myService:Lcom/duokan/remotecontroller/phone/aidl/IRCClientService;
    if-eqz v0, :cond_1

    .line 70
    iget-object v1, p0, Lcom/duokan/remotecontroller/phone/api/ConnectionManager;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/duokan/remotecontroller/phone/api/ConnectionManager$1;

    invoke-direct {v2, p0, v0}, Lcom/duokan/remotecontroller/phone/api/ConnectionManager$1;-><init>(Lcom/duokan/remotecontroller/phone/api/ConnectionManager;Lcom/duokan/remotecontroller/phone/aidl/IRCClientService;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 95
    return-void

    .line 90
    :cond_1
    const-string v1, "ACM"

    const-string v2, "Service not bounded, can not start authentication.call DeviceManager.open() first and wait for onOpened()."

    invoke-static {v1, v2}, Lcom/duokan/airkan/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    new-instance v1, Lcom/duokan/airkan/common/AirkanException;

    const-string v2, "Service not bounded, can not start authentication.call DeviceManager.open() first and wait for onOpened()."

    invoke-direct {v1, v2}, Lcom/duokan/airkan/common/AirkanException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method connect(Ljava/lang/String;)V
    .locals 0
    .parameter "svrName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/duokan/airkan/common/AirkanException;
        }
    .end annotation

    .prologue
    .line 59
    invoke-virtual {p0, p1}, Lcom/duokan/remotecontroller/phone/api/ConnectionManager;->setSvrName(Ljava/lang/String;)V

    .line 60
    invoke-virtual {p0}, Lcom/duokan/remotecontroller/phone/api/ConnectionManager;->connect()V

    .line 61
    return-void
.end method

.method disconnect()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/duokan/airkan/common/AirkanException;
        }
    .end annotation

    .prologue
    .line 101
    iget-object v3, p0, Lcom/duokan/remotecontroller/phone/api/ConnectionManager;->mRCDeviceManager:Lcom/duokan/remotecontroller/phone/api/DeviceManager;

    if-nez v3, :cond_0

    .line 102
    new-instance v3, Lcom/duokan/airkan/common/AirkanException;

    const-string v4, "device manager is null"

    invoke-direct {v3, v4}, Lcom/duokan/airkan/common/AirkanException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 104
    :cond_0
    iget-object v3, p0, Lcom/duokan/remotecontroller/phone/api/ConnectionManager;->mRCDeviceManager:Lcom/duokan/remotecontroller/phone/api/DeviceManager;

    invoke-virtual {v3}, Lcom/duokan/remotecontroller/phone/api/DeviceManager;->getService()Lcom/duokan/remotecontroller/phone/aidl/IRCClientService;

    move-result-object v2

    .line 105
    .local v2, myService:Lcom/duokan/remotecontroller/phone/aidl/IRCClientService;
    if-eqz v2, :cond_1

    .line 106
    const-string v3, "ACM"

    const-string v4, "to disconnect"

    invoke-static {v3, v4}, Lcom/duokan/airkan/common/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    :try_start_0
    iget v3, p0, Lcom/duokan/remotecontroller/phone/api/ConnectionManager;->mServiceHandle:I

    invoke-interface {v2, v3}, Lcom/duokan/remotecontroller/phone/aidl/IRCClientService;->disconnect(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 123
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/duokan/remotecontroller/phone/api/ConnectionManager;->mIsAuthPassed:Z

    .line 124
    return-void

    .line 109
    :catch_0
    move-exception v0

    .line 110
    .local v0, e:Landroid/os/RemoteException;
    const-string v3, "ACM"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "call disconnect error"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/duokan/airkan/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    new-instance v3, Lcom/duokan/airkan/common/AirkanException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "call disconnect error"

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

    .line 112
    .end local v0           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .line 113
    .local v1, e1:Ljava/lang/Exception;
    const-string v3, "ACM"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "call disconnect error"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/duokan/airkan/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    new-instance v3, Lcom/duokan/airkan/common/AirkanException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "call disconnect error"

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

    .line 117
    .end local v1           #e1:Ljava/lang/Exception;
    :cond_1
    const-string v3, "ACM"

    const-string v4, "disconnect, Service not bounded.call DeviceManager.open() first and wait for onOpened()."

    invoke-static {v3, v4}, Lcom/duokan/airkan/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    new-instance v3, Lcom/duokan/airkan/common/AirkanException;

    const-string v4, "disconnect, Service not bounded.call DeviceManager.open() first and wait for onOpened()."

    invoke-direct {v3, v4}, Lcom/duokan/airkan/common/AirkanException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method isAuthPassed()Z
    .locals 1

    .prologue
    .line 137
    iget-boolean v0, p0, Lcom/duokan/remotecontroller/phone/api/ConnectionManager;->mIsAuthPassed:Z

    return v0
.end method

.method onAuthPassed(ZI)V
    .locals 0
    .parameter "passed"
    .parameter "serviceHandle"

    .prologue
    .line 133
    iput-boolean p1, p0, Lcom/duokan/remotecontroller/phone/api/ConnectionManager;->mIsAuthPassed:Z

    .line 134
    iput p2, p0, Lcom/duokan/remotecontroller/phone/api/ConnectionManager;->mServiceHandle:I

    .line 135
    return-void
.end method

.method onDisconnected()V
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/duokan/remotecontroller/phone/api/ConnectionManager;->mOCSCL:Lcom/duokan/remotecontroller/phone/api/ConnectionManager$OnConnectionStatusChangeListener;

    if-eqz v0, :cond_0

    .line 128
    iget-object v0, p0, Lcom/duokan/remotecontroller/phone/api/ConnectionManager;->mOCSCL:Lcom/duokan/remotecontroller/phone/api/ConnectionManager$OnConnectionStatusChangeListener;

    invoke-interface {v0}, Lcom/duokan/remotecontroller/phone/api/ConnectionManager$OnConnectionStatusChangeListener;->onDisconnected()V

    .line 130
    :cond_0
    return-void
.end method

.method setAirkanConnectionCallback(Lcom/duokan/remotecontroller/phone/api/ConnectionManager$OnConnectionStatusChangeListener;)V
    .locals 0
    .parameter "airkanConnectionCallback"

    .prologue
    .line 48
    iput-object p1, p0, Lcom/duokan/remotecontroller/phone/api/ConnectionManager;->mOCSCL:Lcom/duokan/remotecontroller/phone/api/ConnectionManager$OnConnectionStatusChangeListener;

    .line 49
    return-void
.end method

.method setSvrName(Ljava/lang/String;)V
    .locals 2
    .parameter "svrName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/duokan/airkan/common/AirkanException;
        }
    .end annotation

    .prologue
    .line 52
    iget-object v0, p0, Lcom/duokan/remotecontroller/phone/api/ConnectionManager;->mRCDeviceManager:Lcom/duokan/remotecontroller/phone/api/DeviceManager;

    if-nez v0, :cond_0

    .line 53
    new-instance v0, Lcom/duokan/airkan/common/AirkanException;

    const-string v1, "device manager is null"

    invoke-direct {v0, v1}, Lcom/duokan/airkan/common/AirkanException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 55
    :cond_0
    iget-object v0, p0, Lcom/duokan/remotecontroller/phone/api/ConnectionManager;->mRCDeviceManager:Lcom/duokan/remotecontroller/phone/api/DeviceManager;

    invoke-virtual {v0, p1}, Lcom/duokan/remotecontroller/phone/api/DeviceManager;->setConnectDevice(Ljava/lang/String;)V

    .line 56
    return-void
.end method
