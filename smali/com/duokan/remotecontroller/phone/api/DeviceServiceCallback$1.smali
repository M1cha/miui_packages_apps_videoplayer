.class Lcom/duokan/remotecontroller/phone/api/DeviceServiceCallback$1;
.super Ljava/lang/Object;
.source "DeviceServiceCallback.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/duokan/remotecontroller/phone/api/DeviceServiceCallback;->onDeviceAdded(Lcom/duokan/airkan/common/aidl/ParcelDeviceData;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/duokan/remotecontroller/phone/api/DeviceServiceCallback;

.field final synthetic val$device:Lcom/duokan/airkan/common/aidl/ParcelDeviceData;


# direct methods
.method constructor <init>(Lcom/duokan/remotecontroller/phone/api/DeviceServiceCallback;Lcom/duokan/airkan/common/aidl/ParcelDeviceData;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 37
    iput-object p1, p0, Lcom/duokan/remotecontroller/phone/api/DeviceServiceCallback$1;->this$0:Lcom/duokan/remotecontroller/phone/api/DeviceServiceCallback;

    iput-object p2, p0, Lcom/duokan/remotecontroller/phone/api/DeviceServiceCallback$1;->val$device:Lcom/duokan/airkan/common/aidl/ParcelDeviceData;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 40
    const-string v0, "DSC"

    const-string v1, "to call addDevice"

    invoke-static {v0, v1}, Lcom/duokan/airkan/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    iget-object v0, p0, Lcom/duokan/remotecontroller/phone/api/DeviceServiceCallback$1;->this$0:Lcom/duokan/remotecontroller/phone/api/DeviceServiceCallback;

    #getter for: Lcom/duokan/remotecontroller/phone/api/DeviceServiceCallback;->mDeviceManager:Lcom/duokan/remotecontroller/phone/api/DeviceManager;
    invoke-static {v0}, Lcom/duokan/remotecontroller/phone/api/DeviceServiceCallback;->access$000(Lcom/duokan/remotecontroller/phone/api/DeviceServiceCallback;)Lcom/duokan/remotecontroller/phone/api/DeviceManager;

    move-result-object v0

    iget-object v1, p0, Lcom/duokan/remotecontroller/phone/api/DeviceServiceCallback$1;->val$device:Lcom/duokan/airkan/common/aidl/ParcelDeviceData;

    invoke-virtual {v0, v1}, Lcom/duokan/remotecontroller/phone/api/DeviceManager;->addDevice(Lcom/duokan/airkan/common/aidl/ParcelDeviceData;)V

    .line 42
    return-void
.end method
