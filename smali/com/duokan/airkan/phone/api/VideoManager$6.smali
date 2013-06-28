.class Lcom/duokan/airkan/phone/api/VideoManager$6;
.super Ljava/lang/Object;
.source "VideoManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/duokan/airkan/phone/api/VideoManager;->postPause()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/duokan/airkan/phone/api/VideoManager;


# direct methods
.method constructor <init>(Lcom/duokan/airkan/phone/api/VideoManager;)V
    .locals 0
    .parameter

    .prologue
    .line 785
    iput-object p1, p0, Lcom/duokan/airkan/phone/api/VideoManager$6;->this$0:Lcom/duokan/airkan/phone/api/VideoManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 788
    iget-object v0, p0, Lcom/duokan/airkan/phone/api/VideoManager$6;->this$0:Lcom/duokan/airkan/phone/api/VideoManager;

    const/4 v1, 0x0

    #setter for: Lcom/duokan/airkan/phone/api/VideoManager;->mPauseRunnable:Ljava/lang/Runnable;
    invoke-static {v0, v1}, Lcom/duokan/airkan/phone/api/VideoManager;->access$602(Lcom/duokan/airkan/phone/api/VideoManager;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 789
    const-string v0, "AVM"

    const-string v1, "connecting, wait"

    invoke-static {v0, v1}, Lcom/duokan/airkan/common/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 790
    iget-object v0, p0, Lcom/duokan/airkan/phone/api/VideoManager$6;->this$0:Lcom/duokan/airkan/phone/api/VideoManager;

    #calls: Lcom/duokan/airkan/phone/api/VideoManager;->postPause()V
    invoke-static {v0}, Lcom/duokan/airkan/phone/api/VideoManager;->access$700(Lcom/duokan/airkan/phone/api/VideoManager;)V

    .line 791
    return-void
.end method
