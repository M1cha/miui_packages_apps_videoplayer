.class Lcom/miui/videoplayer/framework/views/OriginMediaController$8;
.super Ljava/lang/Object;
.source "OriginMediaController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/videoplayer/framework/views/OriginMediaController;->showPauseFullScreenPopupWindow()V
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
    .line 624
    iput-object p1, p0, Lcom/miui/videoplayer/framework/views/OriginMediaController$8;->this$0:Lcom/miui/videoplayer/framework/views/OriginMediaController;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 628
    iget-object v0, p0, Lcom/miui/videoplayer/framework/views/OriginMediaController$8;->this$0:Lcom/miui/videoplayer/framework/views/OriginMediaController;

    #calls: Lcom/miui/videoplayer/framework/views/OriginMediaController;->doPauseResume()V
    invoke-static {v0}, Lcom/miui/videoplayer/framework/views/OriginMediaController;->access$1600(Lcom/miui/videoplayer/framework/views/OriginMediaController;)V

    .line 629
    iget-object v0, p0, Lcom/miui/videoplayer/framework/views/OriginMediaController$8;->this$0:Lcom/miui/videoplayer/framework/views/OriginMediaController;

    #getter for: Lcom/miui/videoplayer/framework/views/OriginMediaController;->mFullScreenPopupWindow:Lcom/miui/videoplayer/framework/popup/PauseFullScreenPopupWindow;
    invoke-static {v0}, Lcom/miui/videoplayer/framework/views/OriginMediaController;->access$1700(Lcom/miui/videoplayer/framework/views/OriginMediaController;)Lcom/miui/videoplayer/framework/popup/PauseFullScreenPopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/videoplayer/framework/popup/PauseFullScreenPopupWindow;->dismiss()V

    .line 630
    return-void
.end method
