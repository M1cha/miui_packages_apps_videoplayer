.class Lcom/duokan/airkan/phone/api/VideoManager$InternalListener;
.super Ljava/lang/Object;
.source "VideoManager.java"

# interfaces
.implements Lcom/duokan/airkan/phone/api/DeviceManager$IInternalListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/duokan/airkan/phone/api/VideoManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "InternalListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/duokan/airkan/phone/api/VideoManager;


# direct methods
.method constructor <init>(Lcom/duokan/airkan/phone/api/VideoManager;)V
    .locals 0
    .parameter

    .prologue
    .line 1420
    iput-object p1, p0, Lcom/duokan/airkan/phone/api/VideoManager$InternalListener;->this$0:Lcom/duokan/airkan/phone/api/VideoManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClosed()V
    .locals 2

    .prologue
    .line 1423
    const-string v0, "AVM"

    const-string v1, "InternalListener, to stop http server"

    invoke-static {v0, v1}, Lcom/duokan/airkan/common/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1424
    iget-object v0, p0, Lcom/duokan/airkan/phone/api/VideoManager$InternalListener;->this$0:Lcom/duokan/airkan/phone/api/VideoManager;

    #getter for: Lcom/duokan/airkan/phone/api/VideoManager;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/duokan/airkan/phone/api/VideoManager;->access$900(Lcom/duokan/airkan/phone/api/VideoManager;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/duokan/airkan/phone/api/VideoManager$InternalListener$1;

    invoke-direct {v1, p0}, Lcom/duokan/airkan/phone/api/VideoManager$InternalListener$1;-><init>(Lcom/duokan/airkan/phone/api/VideoManager$InternalListener;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1429
    return-void
.end method
