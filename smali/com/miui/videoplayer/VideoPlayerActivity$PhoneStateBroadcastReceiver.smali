.class Lcom/miui/videoplayer/VideoPlayerActivity$PhoneStateBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "VideoPlayerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/videoplayer/VideoPlayerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PhoneStateBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/videoplayer/VideoPlayerActivity;


# direct methods
.method private constructor <init>(Lcom/miui/videoplayer/VideoPlayerActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 326
    iput-object p1, p0, Lcom/miui/videoplayer/VideoPlayerActivity$PhoneStateBroadcastReceiver;->this$0:Lcom/miui/videoplayer/VideoPlayerActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/videoplayer/VideoPlayerActivity;Lcom/miui/videoplayer/VideoPlayerActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 326
    invoke-direct {p0, p1}, Lcom/miui/videoplayer/VideoPlayerActivity$PhoneStateBroadcastReceiver;-><init>(Lcom/miui/videoplayer/VideoPlayerActivity;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 330
    invoke-static {}, Lcom/miui/videoplayer/VideoPlayerActivity;->access$400()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PhoneStateBroadcastReceiver intent action : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    iget-object v1, p0, Lcom/miui/videoplayer/VideoPlayerActivity$PhoneStateBroadcastReceiver;->this$0:Lcom/miui/videoplayer/VideoPlayerActivity;

    const-string v2, "phone"

    invoke-virtual {v1, v2}, Lcom/miui/videoplayer/VideoPlayerActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 332
    .local v0, tm:Landroid/telephony/TelephonyManager;
    new-instance v1, Lcom/miui/videoplayer/VideoPlayerActivity$PhoneStateBroadcastReceiver$1;

    invoke-direct {v1, p0}, Lcom/miui/videoplayer/VideoPlayerActivity$PhoneStateBroadcastReceiver$1;-><init>(Lcom/miui/videoplayer/VideoPlayerActivity$PhoneStateBroadcastReceiver;)V

    const/16 v2, 0x20

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 368
    return-void
.end method
