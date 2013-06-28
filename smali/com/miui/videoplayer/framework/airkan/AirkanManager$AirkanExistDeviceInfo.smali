.class public Lcom/miui/videoplayer/framework/airkan/AirkanManager$AirkanExistDeviceInfo;
.super Ljava/lang/Object;
.source "AirkanManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/videoplayer/framework/airkan/AirkanManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AirkanExistDeviceInfo"
.end annotation


# instance fields
.field private mExistDeviceManager:Lcom/duokan/airkan/phone/api/DeviceManager;

.field private mExistDeviceName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/duokan/airkan/phone/api/DeviceManager;)V
    .locals 0
    .parameter "existDeviceName"
    .parameter "existDeviceManager"

    .prologue
    .line 582
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 583
    iput-object p1, p0, Lcom/miui/videoplayer/framework/airkan/AirkanManager$AirkanExistDeviceInfo;->mExistDeviceName:Ljava/lang/String;

    .line 584
    iput-object p2, p0, Lcom/miui/videoplayer/framework/airkan/AirkanManager$AirkanExistDeviceInfo;->mExistDeviceManager:Lcom/duokan/airkan/phone/api/DeviceManager;

    .line 585
    return-void
.end method


# virtual methods
.method public getExistDeviceManager()Lcom/duokan/airkan/phone/api/DeviceManager;
    .locals 1

    .prologue
    .line 592
    iget-object v0, p0, Lcom/miui/videoplayer/framework/airkan/AirkanManager$AirkanExistDeviceInfo;->mExistDeviceManager:Lcom/duokan/airkan/phone/api/DeviceManager;

    return-object v0
.end method

.method public getExistDeviceName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 588
    iget-object v0, p0, Lcom/miui/videoplayer/framework/airkan/AirkanManager$AirkanExistDeviceInfo;->mExistDeviceName:Ljava/lang/String;

    return-object v0
.end method
