.class Lcom/duokan/remotecontroller/phone/api/DeviceManager$2;
.super Ljava/lang/Object;
.source "DeviceManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/duokan/remotecontroller/phone/api/DeviceManager;->addDevice(Lcom/duokan/airkan/common/aidl/ParcelDeviceData;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/duokan/remotecontroller/phone/api/DeviceManager;

.field final synthetic val$device:Lcom/duokan/airkan/common/aidl/ParcelDeviceData;


# direct methods
.method constructor <init>(Lcom/duokan/remotecontroller/phone/api/DeviceManager;Lcom/duokan/airkan/common/aidl/ParcelDeviceData;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 257
    iput-object p1, p0, Lcom/duokan/remotecontroller/phone/api/DeviceManager$2;->this$0:Lcom/duokan/remotecontroller/phone/api/DeviceManager;

    iput-object p2, p0, Lcom/duokan/remotecontroller/phone/api/DeviceManager$2;->val$device:Lcom/duokan/airkan/common/aidl/ParcelDeviceData;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 260
    iget-object v0, p0, Lcom/duokan/remotecontroller/phone/api/DeviceManager$2;->this$0:Lcom/duokan/remotecontroller/phone/api/DeviceManager;

    #getter for: Lcom/duokan/remotecontroller/phone/api/DeviceManager;->mODCL:Lcom/duokan/remotecontroller/phone/api/DeviceManager$OnDeviceChangeListener;
    invoke-static {v0}, Lcom/duokan/remotecontroller/phone/api/DeviceManager;->access$600(Lcom/duokan/remotecontroller/phone/api/DeviceManager;)Lcom/duokan/remotecontroller/phone/api/DeviceManager$OnDeviceChangeListener;

    move-result-object v0

    iget-object v1, p0, Lcom/duokan/remotecontroller/phone/api/DeviceManager$2;->val$device:Lcom/duokan/airkan/common/aidl/ParcelDeviceData;

    invoke-interface {v0, v1}, Lcom/duokan/remotecontroller/phone/api/DeviceManager$OnDeviceChangeListener;->onDeviceAdded(Lcom/duokan/airkan/common/aidl/ParcelDeviceData;)V

    .line 261
    return-void
.end method
