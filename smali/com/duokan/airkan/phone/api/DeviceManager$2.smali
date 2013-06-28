.class Lcom/duokan/airkan/phone/api/DeviceManager$2;
.super Ljava/lang/Object;
.source "DeviceManager.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/duokan/airkan/phone/api/DeviceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/duokan/airkan/phone/api/DeviceManager;


# direct methods
.method constructor <init>(Lcom/duokan/airkan/phone/api/DeviceManager;)V
    .locals 0
    .parameter

    .prologue
    .line 268
    iput-object p1, p0, Lcom/duokan/airkan/phone/api/DeviceManager$2;->this$0:Lcom/duokan/airkan/phone/api/DeviceManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .parameter "name"
    .parameter "service"

    .prologue
    .line 271
    iget-object v0, p0, Lcom/duokan/airkan/phone/api/DeviceManager$2;->this$0:Lcom/duokan/airkan/phone/api/DeviceManager;

    invoke-static {p2}, Lcom/duokan/airkan/http/aidl/IHttpService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/duokan/airkan/http/aidl/IHttpService;

    move-result-object v1

    #setter for: Lcom/duokan/airkan/phone/api/DeviceManager;->mHttpService:Lcom/duokan/airkan/http/aidl/IHttpService;
    invoke-static {v0, v1}, Lcom/duokan/airkan/phone/api/DeviceManager;->access$602(Lcom/duokan/airkan/phone/api/DeviceManager;Lcom/duokan/airkan/http/aidl/IHttpService;)Lcom/duokan/airkan/http/aidl/IHttpService;

    .line 272
    iget-object v0, p0, Lcom/duokan/airkan/phone/api/DeviceManager$2;->this$0:Lcom/duokan/airkan/phone/api/DeviceManager;

    const/4 v1, 0x1

    #setter for: Lcom/duokan/airkan/phone/api/DeviceManager;->mIsHttpBoundSuccess:Z
    invoke-static {v0, v1}, Lcom/duokan/airkan/phone/api/DeviceManager;->access$702(Lcom/duokan/airkan/phone/api/DeviceManager;Z)Z

    .line 273
    const-string v0, "ADM"

    const-string v1, "HttpService bounded"

    invoke-static {v0, v1}, Lcom/duokan/airkan/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .parameter "name"

    .prologue
    .line 278
    iget-object v0, p0, Lcom/duokan/airkan/phone/api/DeviceManager$2;->this$0:Lcom/duokan/airkan/phone/api/DeviceManager;

    const/4 v1, 0x0

    #setter for: Lcom/duokan/airkan/phone/api/DeviceManager;->mHttpService:Lcom/duokan/airkan/http/aidl/IHttpService;
    invoke-static {v0, v1}, Lcom/duokan/airkan/phone/api/DeviceManager;->access$602(Lcom/duokan/airkan/phone/api/DeviceManager;Lcom/duokan/airkan/http/aidl/IHttpService;)Lcom/duokan/airkan/http/aidl/IHttpService;

    .line 279
    iget-object v0, p0, Lcom/duokan/airkan/phone/api/DeviceManager$2;->this$0:Lcom/duokan/airkan/phone/api/DeviceManager;

    const/4 v1, 0x0

    #setter for: Lcom/duokan/airkan/phone/api/DeviceManager;->mIsHttpBoundSuccess:Z
    invoke-static {v0, v1}, Lcom/duokan/airkan/phone/api/DeviceManager;->access$702(Lcom/duokan/airkan/phone/api/DeviceManager;Z)Z

    .line 280
    return-void
.end method
