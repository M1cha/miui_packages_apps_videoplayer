.class Lcom/duokan/remotecontroller/phone/api/RCManager$InternalListener;
.super Ljava/lang/Object;
.source "RCManager.java"

# interfaces
.implements Lcom/duokan/remotecontroller/phone/api/DeviceManager$IInternalListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/duokan/remotecontroller/phone/api/RCManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "InternalListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/duokan/remotecontroller/phone/api/RCManager;


# direct methods
.method constructor <init>(Lcom/duokan/remotecontroller/phone/api/RCManager;)V
    .locals 0
    .parameter

    .prologue
    .line 285
    iput-object p1, p0, Lcom/duokan/remotecontroller/phone/api/RCManager$InternalListener;->this$0:Lcom/duokan/remotecontroller/phone/api/RCManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClosed()V
    .locals 2

    .prologue
    .line 288
    const-string v0, "RCManager"

    const-string v1, "InternalListener, to stop http server"

    invoke-static {v0, v1}, Lcom/duokan/airkan/common/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    iget-object v0, p0, Lcom/duokan/remotecontroller/phone/api/RCManager$InternalListener;->this$0:Lcom/duokan/remotecontroller/phone/api/RCManager;

    #getter for: Lcom/duokan/remotecontroller/phone/api/RCManager;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/duokan/remotecontroller/phone/api/RCManager;->access$000(Lcom/duokan/remotecontroller/phone/api/RCManager;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/duokan/remotecontroller/phone/api/RCManager$InternalListener$1;

    invoke-direct {v1, p0}, Lcom/duokan/remotecontroller/phone/api/RCManager$InternalListener$1;-><init>(Lcom/duokan/remotecontroller/phone/api/RCManager$InternalListener;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 294
    return-void
.end method
