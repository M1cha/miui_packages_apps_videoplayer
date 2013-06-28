.class Lcom/miui/videoplayer/framework/popup/OptionSubMenuPopupWindow$3;
.super Ljava/lang/Object;
.source "OptionSubMenuPopupWindow.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/videoplayer/framework/popup/OptionSubMenuPopupWindow;->setupViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/videoplayer/framework/popup/OptionSubMenuPopupWindow;


# direct methods
.method constructor <init>(Lcom/miui/videoplayer/framework/popup/OptionSubMenuPopupWindow;)V
    .locals 0
    .parameter

    .prologue
    .line 85
    iput-object p1, p0, Lcom/miui/videoplayer/framework/popup/OptionSubMenuPopupWindow$3;->this$0:Lcom/miui/videoplayer/framework/popup/OptionSubMenuPopupWindow;

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
    .line 89
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/miui/videoplayer/framework/popup/OptionSubMenuPopupWindow$3;->this$0:Lcom/miui/videoplayer/framework/popup/OptionSubMenuPopupWindow;

    #setter for: Lcom/miui/videoplayer/framework/popup/OptionSubMenuPopupWindow;->mLastSelectedIndex:I
    invoke-static {v0, p3}, Lcom/miui/videoplayer/framework/popup/OptionSubMenuPopupWindow;->access$002(Lcom/miui/videoplayer/framework/popup/OptionSubMenuPopupWindow;I)I

    .line 90
    iget-object v0, p0, Lcom/miui/videoplayer/framework/popup/OptionSubMenuPopupWindow$3;->this$0:Lcom/miui/videoplayer/framework/popup/OptionSubMenuPopupWindow;

    invoke-virtual {v0}, Lcom/miui/videoplayer/framework/popup/OptionSubMenuPopupWindow;->updateVideoPlayerSize()V

    .line 91
    iget-object v0, p0, Lcom/miui/videoplayer/framework/popup/OptionSubMenuPopupWindow$3;->this$0:Lcom/miui/videoplayer/framework/popup/OptionSubMenuPopupWindow;

    invoke-virtual {v0}, Lcom/miui/videoplayer/framework/popup/OptionSubMenuPopupWindow;->dismiss()V

    .line 92
    return-void
.end method
