.class Lcom/miui/videoplayer/VideoPlayerActivity$1;
.super Ljava/lang/Object;
.source "VideoPlayerActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/videoplayer/VideoPlayerActivity;->popupNoWifiAlertDialog(Landroid/net/Uri;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/videoplayer/VideoPlayerActivity;

.field final synthetic val$dialog:Lcom/miui/videoplayer/dialog/NoWifiAlertDialog;


# direct methods
.method constructor <init>(Lcom/miui/videoplayer/VideoPlayerActivity;Lcom/miui/videoplayer/dialog/NoWifiAlertDialog;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 114
    iput-object p1, p0, Lcom/miui/videoplayer/VideoPlayerActivity$1;->this$0:Lcom/miui/videoplayer/VideoPlayerActivity;

    iput-object p2, p0, Lcom/miui/videoplayer/VideoPlayerActivity$1;->val$dialog:Lcom/miui/videoplayer/dialog/NoWifiAlertDialog;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 118
    iget-object v0, p0, Lcom/miui/videoplayer/VideoPlayerActivity$1;->this$0:Lcom/miui/videoplayer/VideoPlayerActivity;

    const/4 v1, 0x0

    #setter for: Lcom/miui/videoplayer/VideoPlayerActivity;->mAlertDialogShowing:Z
    invoke-static {v0, v1}, Lcom/miui/videoplayer/VideoPlayerActivity;->access$102(Lcom/miui/videoplayer/VideoPlayerActivity;Z)Z

    .line 119
    iget-object v0, p0, Lcom/miui/videoplayer/VideoPlayerActivity$1;->val$dialog:Lcom/miui/videoplayer/dialog/NoWifiAlertDialog;

    invoke-virtual {v0}, Lcom/miui/videoplayer/dialog/NoWifiAlertDialog;->dismiss()V

    .line 120
    iget-object v0, p0, Lcom/miui/videoplayer/VideoPlayerActivity$1;->this$0:Lcom/miui/videoplayer/VideoPlayerActivity;

    invoke-virtual {v0}, Lcom/miui/videoplayer/VideoPlayerActivity;->finish()V

    .line 121
    return-void
.end method
