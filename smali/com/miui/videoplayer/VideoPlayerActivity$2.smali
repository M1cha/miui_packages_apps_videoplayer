.class Lcom/miui/videoplayer/VideoPlayerActivity$2;
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

.field final synthetic val$videoUri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Lcom/miui/videoplayer/VideoPlayerActivity;Lcom/miui/videoplayer/dialog/NoWifiAlertDialog;Landroid/net/Uri;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 125
    iput-object p1, p0, Lcom/miui/videoplayer/VideoPlayerActivity$2;->this$0:Lcom/miui/videoplayer/VideoPlayerActivity;

    iput-object p2, p0, Lcom/miui/videoplayer/VideoPlayerActivity$2;->val$dialog:Lcom/miui/videoplayer/dialog/NoWifiAlertDialog;

    iput-object p3, p0, Lcom/miui/videoplayer/VideoPlayerActivity$2;->val$videoUri:Landroid/net/Uri;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 129
    iget-object v0, p0, Lcom/miui/videoplayer/VideoPlayerActivity$2;->this$0:Lcom/miui/videoplayer/VideoPlayerActivity;

    const/4 v1, 0x0

    #setter for: Lcom/miui/videoplayer/VideoPlayerActivity;->mAlertDialogShowing:Z
    invoke-static {v0, v1}, Lcom/miui/videoplayer/VideoPlayerActivity;->access$102(Lcom/miui/videoplayer/VideoPlayerActivity;Z)Z

    .line 130
    iget-object v0, p0, Lcom/miui/videoplayer/VideoPlayerActivity$2;->val$dialog:Lcom/miui/videoplayer/dialog/NoWifiAlertDialog;

    invoke-virtual {v0}, Lcom/miui/videoplayer/dialog/NoWifiAlertDialog;->dismiss()V

    .line 131
    iget-object v0, p0, Lcom/miui/videoplayer/VideoPlayerActivity$2;->this$0:Lcom/miui/videoplayer/VideoPlayerActivity;

    #getter for: Lcom/miui/videoplayer/VideoPlayerActivity;->mVideoView:Lcom/miui/videoplayer/views/ITempVideoView;
    invoke-static {v0}, Lcom/miui/videoplayer/VideoPlayerActivity;->access$200(Lcom/miui/videoplayer/VideoPlayerActivity;)Lcom/miui/videoplayer/views/ITempVideoView;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/videoplayer/VideoPlayerActivity$2;->val$videoUri:Landroid/net/Uri;

    invoke-interface {v0, v1}, Lcom/miui/videoplayer/views/ITempVideoView;->setVideoURI(Landroid/net/Uri;)V

    .line 133
    iget-object v0, p0, Lcom/miui/videoplayer/VideoPlayerActivity$2;->this$0:Lcom/miui/videoplayer/VideoPlayerActivity;

    #getter for: Lcom/miui/videoplayer/VideoPlayerActivity;->mVideoView:Lcom/miui/videoplayer/views/ITempVideoView;
    invoke-static {v0}, Lcom/miui/videoplayer/VideoPlayerActivity;->access$200(Lcom/miui/videoplayer/VideoPlayerActivity;)Lcom/miui/videoplayer/views/ITempVideoView;

    move-result-object v0

    invoke-interface {v0}, Lcom/miui/videoplayer/views/ITempVideoView;->start()V

    .line 134
    return-void
.end method
