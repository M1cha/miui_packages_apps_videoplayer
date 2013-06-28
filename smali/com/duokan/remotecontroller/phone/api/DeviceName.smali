.class Lcom/duokan/remotecontroller/phone/api/DeviceName;
.super Ljava/lang/Object;
.source "DeviceManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "DeviceName"

.field private static sDeviceBrandHashMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/duokan/remotecontroller/phone/api/DeviceBrand;",
            ">;"
        }
    .end annotation
.end field

.field private static sDeviceName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 357
    const/4 v0, 0x0

    sput-object v0, Lcom/duokan/remotecontroller/phone/api/DeviceName;->sDeviceName:Ljava/lang/String;

    .line 358
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/duokan/remotecontroller/phone/api/DeviceName;->sDeviceBrandHashMap:Ljava/util/HashMap;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 355
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static addHost(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "name"

    .prologue
    .line 390
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getDeviceName()Ljava/lang/String;
    .locals 6

    .prologue
    .line 370
    sget-object v3, Lcom/duokan/remotecontroller/phone/api/DeviceName;->sDeviceName:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 371
    const-string v3, "DeviceName"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "device name already know:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/duokan/remotecontroller/phone/api/DeviceName;->sDeviceName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/duokan/airkan/common/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 372
    sget-object v3, Lcom/duokan/remotecontroller/phone/api/DeviceName;->sDeviceName:Ljava/lang/String;

    .line 384
    .local v0, brand:Lcom/duokan/remotecontroller/phone/api/DeviceBrand;
    .local v1, manufact:Ljava/lang/String;
    .local v2, model:Ljava/lang/String;
    :goto_0
    return-object v3

    .line 374
    .end local v0           #brand:Lcom/duokan/remotecontroller/phone/api/DeviceBrand;
    .end local v1           #manufact:Ljava/lang/String;
    .end local v2           #model:Ljava/lang/String;
    :cond_0
    sget-object v3, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 375
    .restart local v1       #manufact:Ljava/lang/String;
    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 376
    .restart local v2       #model:Ljava/lang/String;
    const-string v3, "DeviceName"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "manufacturer:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " model:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/duokan/airkan/common/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 377
    sget-object v3, Lcom/duokan/remotecontroller/phone/api/DeviceName;->sDeviceBrandHashMap:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duokan/remotecontroller/phone/api/DeviceBrand;

    .line 378
    .restart local v0       #brand:Lcom/duokan/remotecontroller/phone/api/DeviceBrand;
    if-nez v0, :cond_1

    .line 379
    const-string v3, "DeviceName"

    const-string v4, "manufacturer not exist"

    invoke-static {v3, v4}, Lcom/duokan/airkan/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 380
    invoke-static {v1}, Lcom/duokan/remotecontroller/phone/api/DeviceName;->addHost(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 382
    :cond_1
    invoke-virtual {v0, v2}, Lcom/duokan/remotecontroller/phone/api/DeviceBrand;->getDisplayName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/duokan/remotecontroller/phone/api/DeviceName;->addHost(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/duokan/remotecontroller/phone/api/DeviceName;->sDeviceName:Ljava/lang/String;

    .line 383
    const-string v3, "DeviceName"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "device name:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/duokan/remotecontroller/phone/api/DeviceName;->sDeviceName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/duokan/airkan/common/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 384
    sget-object v3, Lcom/duokan/remotecontroller/phone/api/DeviceName;->sDeviceName:Ljava/lang/String;

    goto :goto_0
.end method

.method public static init()V
    .locals 3

    .prologue
    .line 361
    new-instance v0, Lcom/duokan/remotecontroller/phone/api/DeviceBrand;

    const-string v1, "xiaomi"

    const-string v2, "\u5c0f\u7c73\u624b\u673a"

    invoke-direct {v0, v1, v2}, Lcom/duokan/remotecontroller/phone/api/DeviceBrand;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 362
    .local v0, xiaomiBrand:Lcom/duokan/remotecontroller/phone/api/DeviceBrand;
    const-string v1, "MI-ONE"

    const-string v2, "\u5c0f\u7c73\u624b\u673a"

    invoke-virtual {v0, v1, v2}, Lcom/duokan/remotecontroller/phone/api/DeviceBrand;->addModel(Ljava/lang/String;Ljava/lang/String;)V

    .line 363
    const-string v1, "MI 2"

    const-string v2, "\u5c0f\u7c73\u624b\u673a2"

    invoke-virtual {v0, v1, v2}, Lcom/duokan/remotecontroller/phone/api/DeviceBrand;->addModel(Ljava/lang/String;Ljava/lang/String;)V

    .line 364
    const-string v1, "MI 1S"

    const-string v2, "\u5c0f\u7c73\u624b\u673a1S"

    invoke-virtual {v0, v1, v2}, Lcom/duokan/remotecontroller/phone/api/DeviceBrand;->addModel(Ljava/lang/String;Ljava/lang/String;)V

    .line 365
    sget-object v1, Lcom/duokan/remotecontroller/phone/api/DeviceName;->sDeviceBrandHashMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Lcom/duokan/remotecontroller/phone/api/DeviceBrand;->getManufacturer()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 366
    const-string v1, "DeviceName"

    const-string v2, "init done"

    invoke-static {v1, v2}, Lcom/duokan/airkan/common/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 367
    return-void
.end method
