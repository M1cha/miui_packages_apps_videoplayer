.class Lcom/miui/videoplayer/framework/views/OriginMediaController$10;
.super Ljava/lang/Object;
.source "OriginMediaController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/videoplayer/framework/views/OriginMediaController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/videoplayer/framework/views/OriginMediaController;


# direct methods
.method constructor <init>(Lcom/miui/videoplayer/framework/views/OriginMediaController;)V
    .locals 0
    .parameter

    .prologue
    .line 746
    iput-object p1, p0, Lcom/miui/videoplayer/framework/views/OriginMediaController$10;->this$0:Lcom/miui/videoplayer/framework/views/OriginMediaController;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    .line 750
    iget-object v0, p0, Lcom/miui/videoplayer/framework/views/OriginMediaController$10;->this$0:Lcom/miui/videoplayer/framework/views/OriginMediaController;

    #getter for: Lcom/miui/videoplayer/framework/views/OriginMediaController;->mControlListPopupWindow:Lcom/miui/videoplayer/framework/popup/ControlListPopupWindow;
    invoke-static {v0}, Lcom/miui/videoplayer/framework/views/OriginMediaController;->access$2200(Lcom/miui/videoplayer/framework/views/OriginMediaController;)Lcom/miui/videoplayer/framework/popup/ControlListPopupWindow;

    move-result-object v0

    if-nez v0, :cond_0

    .line 751
    iget-object v0, p0, Lcom/miui/videoplayer/framework/views/OriginMediaController$10;->this$0:Lcom/miui/videoplayer/framework/views/OriginMediaController;

    new-instance v1, Lcom/miui/videoplayer/framework/popup/ControlListPopupWindow;

    iget-object v2, p0, Lcom/miui/videoplayer/framework/views/OriginMediaController$10;->this$0:Lcom/miui/videoplayer/framework/views/OriginMediaController;

    #getter for: Lcom/miui/videoplayer/framework/views/OriginMediaController;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/miui/videoplayer/framework/views/OriginMediaController;->access$1500(Lcom/miui/videoplayer/framework/views/OriginMediaController;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/videoplayer/framework/views/OriginMediaController$10;->this$0:Lcom/miui/videoplayer/framework/views/OriginMediaController;

    #getter for: Lcom/miui/videoplayer/framework/views/OriginMediaController;->mUriArray:[Ljava/lang/String;
    invoke-static {v3}, Lcom/miui/videoplayer/framework/views/OriginMediaController;->access$1300(Lcom/miui/videoplayer/framework/views/OriginMediaController;)[Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/miui/videoplayer/framework/views/OriginMediaController$10;->this$0:Lcom/miui/videoplayer/framework/views/OriginMediaController;

    invoke-direct {v1, v2, v3, v4}, Lcom/miui/videoplayer/framework/popup/ControlListPopupWindow;-><init>(Landroid/content/Context;[Ljava/lang/String;Lcom/miui/videoplayer/framework/views/OriginMediaController;)V

    #setter for: Lcom/miui/videoplayer/framework/views/OriginMediaController;->mControlListPopupWindow:Lcom/miui/videoplayer/framework/popup/ControlListPopupWindow;
    invoke-static {v0, v1}, Lcom/miui/videoplayer/framework/views/OriginMediaController;->access$2202(Lcom/miui/videoplayer/framework/views/OriginMediaController;Lcom/miui/videoplayer/framework/popup/ControlListPopupWindow;)Lcom/miui/videoplayer/framework/popup/ControlListPopupWindow;

    .line 752
    iget-object v0, p0, Lcom/miui/videoplayer/framework/views/OriginMediaController$10;->this$0:Lcom/miui/videoplayer/framework/views/OriginMediaController;

    #getter for: Lcom/miui/videoplayer/framework/views/OriginMediaController;->mControlListPopupWindow:Lcom/miui/videoplayer/framework/popup/ControlListPopupWindow;
    invoke-static {v0}, Lcom/miui/videoplayer/framework/views/OriginMediaController;->access$2200(Lcom/miui/videoplayer/framework/views/OriginMediaController;)Lcom/miui/videoplayer/framework/popup/ControlListPopupWindow;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/videoplayer/framework/views/OriginMediaController$10;->this$0:Lcom/miui/videoplayer/framework/views/OriginMediaController;

    #getter for: Lcom/miui/videoplayer/framework/views/OriginMediaController;->mPlayingIndex:I
    invoke-static {v1}, Lcom/miui/videoplayer/framework/views/OriginMediaController;->access$1400(Lcom/miui/videoplayer/framework/views/OriginMediaController;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/miui/videoplayer/framework/popup/ControlListPopupWindow;->setPlayingIndex(I)V

    .line 754
    :cond_0
    iget-object v0, p0, Lcom/miui/videoplayer/framework/views/OriginMediaController$10;->this$0:Lcom/miui/videoplayer/framework/views/OriginMediaController;

    #getter for: Lcom/miui/videoplayer/framework/views/OriginMediaController;->mControlListPopupWindow:Lcom/miui/videoplayer/framework/popup/ControlListPopupWindow;
    invoke-static {v0}, Lcom/miui/videoplayer/framework/views/OriginMediaController;->access$2200(Lcom/miui/videoplayer/framework/views/OriginMediaController;)Lcom/miui/videoplayer/framework/popup/ControlListPopupWindow;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/videoplayer/framework/views/OriginMediaController$10;->this$0:Lcom/miui/videoplayer/framework/views/OriginMediaController;

    #getter for: Lcom/miui/videoplayer/framework/views/OriginMediaController;->mAnchor:Landroid/view/View;
    invoke-static {v1}, Lcom/miui/videoplayer/framework/views/OriginMediaController;->access$2000(Lcom/miui/videoplayer/framework/views/OriginMediaController;)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/videoplayer/framework/views/OriginMediaController$10;->this$0:Lcom/miui/videoplayer/framework/views/OriginMediaController;

    #getter for: Lcom/miui/videoplayer/framework/views/OriginMediaController;->mPlayer:Lcom/miui/videoplayer/framework/ui/MediaPlayerControl;
    invoke-static {v2}, Lcom/miui/videoplayer/framework/views/OriginMediaController;->access$500(Lcom/miui/videoplayer/framework/views/OriginMediaController;)Lcom/miui/videoplayer/framework/ui/MediaPlayerControl;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/miui/videoplayer/framework/popup/ControlListPopupWindow;->show(Landroid/view/View;Lcom/miui/videoplayer/framework/ui/MediaPlayerControl;)V

    .line 755
    return-void
.end method
