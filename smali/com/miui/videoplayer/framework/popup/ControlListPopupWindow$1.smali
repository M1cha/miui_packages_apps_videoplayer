.class Lcom/miui/videoplayer/framework/popup/ControlListPopupWindow$1;
.super Ljava/lang/Object;
.source "ControlListPopupWindow.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/videoplayer/framework/popup/ControlListPopupWindow;->setupViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/videoplayer/framework/popup/ControlListPopupWindow;


# direct methods
.method constructor <init>(Lcom/miui/videoplayer/framework/popup/ControlListPopupWindow;)V
    .locals 0
    .parameter

    .prologue
    .line 59
    iput-object p1, p0, Lcom/miui/videoplayer/framework/popup/ControlListPopupWindow$1;->this$0:Lcom/miui/videoplayer/framework/popup/ControlListPopupWindow;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 63
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/miui/videoplayer/framework/popup/ControlListPopupWindow$1;->this$0:Lcom/miui/videoplayer/framework/popup/ControlListPopupWindow;

    #getter for: Lcom/miui/videoplayer/framework/popup/ControlListPopupWindow;->mPlayingIndex:I
    invoke-static {v0}, Lcom/miui/videoplayer/framework/popup/ControlListPopupWindow;->access$000(Lcom/miui/videoplayer/framework/popup/ControlListPopupWindow;)I

    move-result v0

    if-ne p3, v0, :cond_0

    .line 68
    :goto_0
    return-void

    .line 66
    :cond_0
    iget-object v0, p0, Lcom/miui/videoplayer/framework/popup/ControlListPopupWindow$1;->this$0:Lcom/miui/videoplayer/framework/popup/ControlListPopupWindow;

    #getter for: Lcom/miui/videoplayer/framework/popup/ControlListPopupWindow;->mMediaController:Lcom/miui/videoplayer/framework/views/OriginMediaController;
    invoke-static {v0}, Lcom/miui/videoplayer/framework/popup/ControlListPopupWindow;->access$100(Lcom/miui/videoplayer/framework/popup/ControlListPopupWindow;)Lcom/miui/videoplayer/framework/views/OriginMediaController;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/miui/videoplayer/framework/views/OriginMediaController;->switchMedia(I)V

    .line 67
    iget-object v0, p0, Lcom/miui/videoplayer/framework/popup/ControlListPopupWindow$1;->this$0:Lcom/miui/videoplayer/framework/popup/ControlListPopupWindow;

    invoke-virtual {v0}, Lcom/miui/videoplayer/framework/popup/ControlListPopupWindow;->dismiss()V

    goto :goto_0
.end method
