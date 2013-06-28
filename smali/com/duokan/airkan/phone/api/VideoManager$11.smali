.class Lcom/duokan/airkan/phone/api/VideoManager$11;
.super Ljava/util/TimerTask;
.source "VideoManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/duokan/airkan/phone/api/VideoManager;->starSeekPostTimer()V
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
    .line 1248
    iput-object p1, p0, Lcom/duokan/airkan/phone/api/VideoManager$11;->this$0:Lcom/duokan/airkan/phone/api/VideoManager;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1251
    iget-object v0, p0, Lcom/duokan/airkan/phone/api/VideoManager$11;->this$0:Lcom/duokan/airkan/phone/api/VideoManager;

    const/4 v1, 0x0

    #setter for: Lcom/duokan/airkan/phone/api/VideoManager;->mIsSeekPost:Z
    invoke-static {v0, v1}, Lcom/duokan/airkan/phone/api/VideoManager;->access$802(Lcom/duokan/airkan/phone/api/VideoManager;Z)Z

    .line 1252
    const-string v0, "AVM"

    const-string v1, "after seek complete"

    invoke-static {v0, v1}, Lcom/duokan/airkan/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1253
    return-void
.end method
