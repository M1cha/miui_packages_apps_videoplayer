.class Lcom/duokan/remotecontroller/phone/api/DeviceBrand;
.super Ljava/lang/Object;
.source "DeviceManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "DeviceBrand"


# instance fields
.field private mDefaultName:Ljava/lang/String;

.field private mDeviceMapList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/duokan/remotecontroller/phone/api/DeviceMap;",
            ">;"
        }
    .end annotation
.end field

.field private mManufacturer:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "manufacturer"
    .parameter "defaultName"

    .prologue
    const/4 v0, 0x0

    .line 403
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 399
    iput-object v0, p0, Lcom/duokan/remotecontroller/phone/api/DeviceBrand;->mManufacturer:Ljava/lang/String;

    .line 400
    iput-object v0, p0, Lcom/duokan/remotecontroller/phone/api/DeviceBrand;->mDefaultName:Ljava/lang/String;

    .line 401
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/duokan/remotecontroller/phone/api/DeviceBrand;->mDeviceMapList:Ljava/util/List;

    .line 404
    iput-object p1, p0, Lcom/duokan/remotecontroller/phone/api/DeviceBrand;->mManufacturer:Ljava/lang/String;

    .line 405
    iput-object p2, p0, Lcom/duokan/remotecontroller/phone/api/DeviceBrand;->mDefaultName:Ljava/lang/String;

    .line 406
    iget-object v0, p0, Lcom/duokan/remotecontroller/phone/api/DeviceBrand;->mDeviceMapList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 407
    return-void
.end method


# virtual methods
.method public addModel(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "model"
    .parameter "display"

    .prologue
    .line 414
    new-instance v0, Lcom/duokan/remotecontroller/phone/api/DeviceMap;

    invoke-direct {v0}, Lcom/duokan/remotecontroller/phone/api/DeviceMap;-><init>()V

    .line 415
    .local v0, xiaomi:Lcom/duokan/remotecontroller/phone/api/DeviceMap;
    iput-object p1, v0, Lcom/duokan/remotecontroller/phone/api/DeviceMap;->modle:Ljava/lang/String;

    .line 416
    iput-object p2, v0, Lcom/duokan/remotecontroller/phone/api/DeviceMap;->display:Ljava/lang/String;

    .line 417
    iget-object v1, p0, Lcom/duokan/remotecontroller/phone/api/DeviceBrand;->mDeviceMapList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 418
    return-void
.end method

.method public getDisplayName(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "model"

    .prologue
    .line 421
    iget-object v2, p0, Lcom/duokan/remotecontroller/phone/api/DeviceBrand;->mDeviceMapList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duokan/remotecontroller/phone/api/DeviceMap;

    .line 422
    .local v0, dm:Lcom/duokan/remotecontroller/phone/api/DeviceMap;
    const-string v2, "DeviceBrand"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dm modle:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/duokan/remotecontroller/phone/api/DeviceMap;->modle:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " dm disp: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/duokan/remotecontroller/phone/api/DeviceMap;->display:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/duokan/airkan/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 423
    iget-object v2, v0, Lcom/duokan/remotecontroller/phone/api/DeviceMap;->modle:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 424
    const-string v2, "DeviceBrand"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "device name:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/duokan/remotecontroller/phone/api/DeviceMap;->display:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/duokan/airkan/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 425
    iget-object v2, v0, Lcom/duokan/remotecontroller/phone/api/DeviceMap;->display:Ljava/lang/String;

    .line 428
    .end local v0           #dm:Lcom/duokan/remotecontroller/phone/api/DeviceMap;
    :goto_0
    return-object v2

    :cond_1
    iget-object v2, p0, Lcom/duokan/remotecontroller/phone/api/DeviceBrand;->mDefaultName:Ljava/lang/String;

    goto :goto_0
.end method

.method public getManufacturer()Ljava/lang/String;
    .locals 1

    .prologue
    .line 410
    iget-object v0, p0, Lcom/duokan/remotecontroller/phone/api/DeviceBrand;->mManufacturer:Ljava/lang/String;

    return-object v0
.end method
