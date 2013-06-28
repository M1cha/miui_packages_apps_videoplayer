.class Lcom/duokan/remotecontroller/phone/api/DeviceManager$1;
.super Ljava/lang/Object;
.source "DeviceManager.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/duokan/remotecontroller/phone/api/DeviceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/duokan/remotecontroller/phone/api/DeviceManager;


# direct methods
.method constructor <init>(Lcom/duokan/remotecontroller/phone/api/DeviceManager;)V
    .locals 0
    .parameter

    .prologue
    .line 195
    iput-object p1, p0, Lcom/duokan/remotecontroller/phone/api/DeviceManager$1;->this$0:Lcom/duokan/remotecontroller/phone/api/DeviceManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .parameter "name"
    .parameter "service"

    .prologue
    .line 198
    iget-object v0, p0, Lcom/duokan/remotecontroller/phone/api/DeviceManager$1;->this$0:Lcom/duokan/remotecontroller/phone/api/DeviceManager;

    invoke-static {p2}, Lcom/duokan/remotecontroller/phone/aidl/IRCClientService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/duokan/remotecontroller/phone/aidl/IRCClientService;

    move-result-object v1

    #setter for: Lcom/duokan/remotecontroller/phone/api/DeviceManager;->mRCClientService:Lcom/duokan/remotecontroller/phone/aidl/IRCClientService;
    invoke-static {v0, v1}, Lcom/duokan/remotecontroller/phone/api/DeviceManager;->access$002(Lcom/duokan/remotecontroller/phone/api/DeviceManager;Lcom/duokan/remotecontroller/phone/aidl/IRCClientService;)Lcom/duokan/remotecontroller/phone/aidl/IRCClientService;

    .line 199
    iget-object v0, p0, Lcom/duokan/remotecontroller/phone/api/DeviceManager$1;->this$0:Lcom/duokan/remotecontroller/phone/api/DeviceManager;

    const/4 v1, 0x1

    #setter for: Lcom/duokan/remotecontroller/phone/api/DeviceManager;->mIsBoundSuccess:Z
    invoke-static {v0, v1}, Lcom/duokan/remotecontroller/phone/api/DeviceManager;->access$102(Lcom/duokan/remotecontroller/phone/api/DeviceManager;Z)Z

    .line 200
    iget-object v0, p0, Lcom/duokan/remotecontroller/phone/api/DeviceManager$1;->this$0:Lcom/duokan/remotecontroller/phone/api/DeviceManager;

    #getter for: Lcom/duokan/remotecontroller/phone/api/DeviceManager;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/duokan/remotecontroller/phone/api/DeviceManager;->access$400(Lcom/duokan/remotecontroller/phone/api/DeviceManager;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/duokan/remotecontroller/phone/api/DeviceManager$1$1;

    invoke-direct {v1, p0}, Lcom/duokan/remotecontroller/phone/api/DeviceManager$1$1;-><init>(Lcom/duokan/remotecontroller/phone/api/DeviceManager$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 207
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .parameter "name"

    .prologue
    .line 211
    iget-object v0, p0, Lcom/duokan/remotecontroller/phone/api/DeviceManager$1;->this$0:Lcom/duokan/remotecontroller/phone/api/DeviceManager;

    #getter for: Lcom/duokan/remotecontroller/phone/api/DeviceManager;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/duokan/remotecontroller/phone/api/DeviceManager;->access$400(Lcom/duokan/remotecontroller/phone/api/DeviceManager;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/duokan/remotecontroller/phone/api/DeviceManager$1$2;

    invoke-direct {v1, p0}, Lcom/duokan/remotecontroller/phone/api/DeviceManager$1$2;-><init>(Lcom/duokan/remotecontroller/phone/api/DeviceManager$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 217
    iget-object v0, p0, Lcom/duokan/remotecontroller/phone/api/DeviceManager$1;->this$0:Lcom/duokan/remotecontroller/phone/api/DeviceManager;

    const/4 v1, 0x0

    #setter for: Lcom/duokan/remotecontroller/phone/api/DeviceManager;->mRCClientService:Lcom/duokan/remotecontroller/phone/aidl/IRCClientService;
    invoke-static {v0, v1}, Lcom/duokan/remotecontroller/phone/api/DeviceManager;->access$002(Lcom/duokan/remotecontroller/phone/api/DeviceManager;Lcom/duokan/remotecontroller/phone/aidl/IRCClientService;)Lcom/duokan/remotecontroller/phone/aidl/IRCClientService;

    .line 218
    iget-object v0, p0, Lcom/duokan/remotecontroller/phone/api/DeviceManager$1;->this$0:Lcom/duokan/remotecontroller/phone/api/DeviceManager;

    const/4 v1, 0x0

    #setter for: Lcom/duokan/remotecontroller/phone/api/DeviceManager;->mIsBoundSuccess:Z
    invoke-static {v0, v1}, Lcom/duokan/remotecontroller/phone/api/DeviceManager;->access$102(Lcom/duokan/remotecontroller/phone/api/DeviceManager;Z)Z

    .line 219
    return-void
.end method
