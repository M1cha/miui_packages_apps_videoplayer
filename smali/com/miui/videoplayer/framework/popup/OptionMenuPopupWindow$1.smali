.class Lcom/miui/videoplayer/framework/popup/OptionMenuPopupWindow$1;
.super Ljava/lang/Object;
.source "OptionMenuPopupWindow.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/videoplayer/framework/popup/OptionMenuPopupWindow;->setupViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/videoplayer/framework/popup/OptionMenuPopupWindow;


# direct methods
.method constructor <init>(Lcom/miui/videoplayer/framework/popup/OptionMenuPopupWindow;)V
    .locals 0
    .parameter

    .prologue
    .line 82
    iput-object p1, p0, Lcom/miui/videoplayer/framework/popup/OptionMenuPopupWindow$1;->this$0:Lcom/miui/videoplayer/framework/popup/OptionMenuPopupWindow;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 5
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
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 87
    sget-boolean v0, Lcom/miui/videoplayer/framework/DuoKanCodecConstants;->sUseDuokanCodec:Z

    if-eqz v0, :cond_5

    .line 88
    if-nez p3, :cond_0

    .line 89
    iget-object v0, p0, Lcom/miui/videoplayer/framework/popup/OptionMenuPopupWindow$1;->this$0:Lcom/miui/videoplayer/framework/popup/OptionMenuPopupWindow;

    #calls: Lcom/miui/videoplayer/framework/popup/OptionMenuPopupWindow;->onMediaInfoClick(Landroid/view/View;)V
    invoke-static {v0, p2}, Lcom/miui/videoplayer/framework/popup/OptionMenuPopupWindow;->access$000(Lcom/miui/videoplayer/framework/popup/OptionMenuPopupWindow;Landroid/view/View;)V

    .line 90
    iget-object v0, p0, Lcom/miui/videoplayer/framework/popup/OptionMenuPopupWindow$1;->this$0:Lcom/miui/videoplayer/framework/popup/OptionMenuPopupWindow;

    invoke-virtual {v0}, Lcom/miui/videoplayer/framework/popup/OptionMenuPopupWindow;->dismiss()V

    .line 93
    :cond_0
    if-ne p3, v2, :cond_1

    .line 94
    iget-object v0, p0, Lcom/miui/videoplayer/framework/popup/OptionMenuPopupWindow$1;->this$0:Lcom/miui/videoplayer/framework/popup/OptionMenuPopupWindow;

    #calls: Lcom/miui/videoplayer/framework/popup/OptionMenuPopupWindow;->onOrientationSelectClicked()V
    invoke-static {v0}, Lcom/miui/videoplayer/framework/popup/OptionMenuPopupWindow;->access$100(Lcom/miui/videoplayer/framework/popup/OptionMenuPopupWindow;)V

    .line 95
    iget-object v0, p0, Lcom/miui/videoplayer/framework/popup/OptionMenuPopupWindow$1;->this$0:Lcom/miui/videoplayer/framework/popup/OptionMenuPopupWindow;

    invoke-virtual {v0}, Lcom/miui/videoplayer/framework/popup/OptionMenuPopupWindow;->dismiss()V

    .line 98
    :cond_1
    if-ne p3, v3, :cond_2

    .line 99
    iget-object v0, p0, Lcom/miui/videoplayer/framework/popup/OptionMenuPopupWindow$1;->this$0:Lcom/miui/videoplayer/framework/popup/OptionMenuPopupWindow;

    #calls: Lcom/miui/videoplayer/framework/popup/OptionMenuPopupWindow;->onScreenShotClicked()V
    invoke-static {v0}, Lcom/miui/videoplayer/framework/popup/OptionMenuPopupWindow;->access$200(Lcom/miui/videoplayer/framework/popup/OptionMenuPopupWindow;)V

    .line 102
    :cond_2
    if-ne p3, v4, :cond_3

    iget-object v0, p0, Lcom/miui/videoplayer/framework/popup/OptionMenuPopupWindow$1;->this$0:Lcom/miui/videoplayer/framework/popup/OptionMenuPopupWindow;

    #getter for: Lcom/miui/videoplayer/framework/popup/OptionMenuPopupWindow;->mSizeAdjustable:Lcom/miui/videoplayer/framework/ui/LocalVideoPlaySizeAdjustable;
    invoke-static {v0}, Lcom/miui/videoplayer/framework/popup/OptionMenuPopupWindow;->access$300(Lcom/miui/videoplayer/framework/popup/OptionMenuPopupWindow;)Lcom/miui/videoplayer/framework/ui/LocalVideoPlaySizeAdjustable;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 103
    iget-object v0, p0, Lcom/miui/videoplayer/framework/popup/OptionMenuPopupWindow$1;->this$0:Lcom/miui/videoplayer/framework/popup/OptionMenuPopupWindow;

    invoke-virtual {v0, v1}, Lcom/miui/videoplayer/framework/popup/OptionMenuPopupWindow;->setMenuDismissed(Z)V

    .line 104
    iget-object v0, p0, Lcom/miui/videoplayer/framework/popup/OptionMenuPopupWindow$1;->this$0:Lcom/miui/videoplayer/framework/popup/OptionMenuPopupWindow;

    #calls: Lcom/miui/videoplayer/framework/popup/OptionMenuPopupWindow;->onSwitchVideoWhClicked()V
    invoke-static {v0}, Lcom/miui/videoplayer/framework/popup/OptionMenuPopupWindow;->access$400(Lcom/miui/videoplayer/framework/popup/OptionMenuPopupWindow;)V

    .line 107
    :cond_3
    const/4 v0, 0x4

    if-ne p3, v0, :cond_4

    .line 109
    iget-object v0, p0, Lcom/miui/videoplayer/framework/popup/OptionMenuPopupWindow$1;->this$0:Lcom/miui/videoplayer/framework/popup/OptionMenuPopupWindow;

    invoke-virtual {v0}, Lcom/miui/videoplayer/framework/popup/OptionMenuPopupWindow;->dismiss()V

    .line 110
    iget-object v0, p0, Lcom/miui/videoplayer/framework/popup/OptionMenuPopupWindow$1;->this$0:Lcom/miui/videoplayer/framework/popup/OptionMenuPopupWindow;

    #calls: Lcom/miui/videoplayer/framework/popup/OptionMenuPopupWindow;->onAboutClicked()V
    invoke-static {v0}, Lcom/miui/videoplayer/framework/popup/OptionMenuPopupWindow;->access$500(Lcom/miui/videoplayer/framework/popup/OptionMenuPopupWindow;)V

    .line 132
    :cond_4
    :goto_0
    return-void

    .line 115
    :cond_5
    if-nez p3, :cond_6

    .line 116
    iget-object v0, p0, Lcom/miui/videoplayer/framework/popup/OptionMenuPopupWindow$1;->this$0:Lcom/miui/videoplayer/framework/popup/OptionMenuPopupWindow;

    #calls: Lcom/miui/videoplayer/framework/popup/OptionMenuPopupWindow;->onOrientationSelectClicked()V
    invoke-static {v0}, Lcom/miui/videoplayer/framework/popup/OptionMenuPopupWindow;->access$100(Lcom/miui/videoplayer/framework/popup/OptionMenuPopupWindow;)V

    .line 117
    iget-object v0, p0, Lcom/miui/videoplayer/framework/popup/OptionMenuPopupWindow$1;->this$0:Lcom/miui/videoplayer/framework/popup/OptionMenuPopupWindow;

    invoke-virtual {v0}, Lcom/miui/videoplayer/framework/popup/OptionMenuPopupWindow;->dismiss()V

    .line 119
    :cond_6
    if-ne p3, v2, :cond_7

    .line 120
    iget-object v0, p0, Lcom/miui/videoplayer/framework/popup/OptionMenuPopupWindow$1;->this$0:Lcom/miui/videoplayer/framework/popup/OptionMenuPopupWindow;

    #calls: Lcom/miui/videoplayer/framework/popup/OptionMenuPopupWindow;->onScreenShotClicked()V
    invoke-static {v0}, Lcom/miui/videoplayer/framework/popup/OptionMenuPopupWindow;->access$200(Lcom/miui/videoplayer/framework/popup/OptionMenuPopupWindow;)V

    .line 122
    :cond_7
    if-ne p3, v3, :cond_8

    iget-object v0, p0, Lcom/miui/videoplayer/framework/popup/OptionMenuPopupWindow$1;->this$0:Lcom/miui/videoplayer/framework/popup/OptionMenuPopupWindow;

    #getter for: Lcom/miui/videoplayer/framework/popup/OptionMenuPopupWindow;->mSizeAdjustable:Lcom/miui/videoplayer/framework/ui/LocalVideoPlaySizeAdjustable;
    invoke-static {v0}, Lcom/miui/videoplayer/framework/popup/OptionMenuPopupWindow;->access$300(Lcom/miui/videoplayer/framework/popup/OptionMenuPopupWindow;)Lcom/miui/videoplayer/framework/ui/LocalVideoPlaySizeAdjustable;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 123
    iget-object v0, p0, Lcom/miui/videoplayer/framework/popup/OptionMenuPopupWindow$1;->this$0:Lcom/miui/videoplayer/framework/popup/OptionMenuPopupWindow;

    invoke-virtual {v0, v1}, Lcom/miui/videoplayer/framework/popup/OptionMenuPopupWindow;->setMenuDismissed(Z)V

    .line 124
    iget-object v0, p0, Lcom/miui/videoplayer/framework/popup/OptionMenuPopupWindow$1;->this$0:Lcom/miui/videoplayer/framework/popup/OptionMenuPopupWindow;

    #calls: Lcom/miui/videoplayer/framework/popup/OptionMenuPopupWindow;->onSwitchVideoWhClicked()V
    invoke-static {v0}, Lcom/miui/videoplayer/framework/popup/OptionMenuPopupWindow;->access$400(Lcom/miui/videoplayer/framework/popup/OptionMenuPopupWindow;)V

    .line 126
    :cond_8
    if-ne p3, v4, :cond_4

    .line 127
    iget-object v0, p0, Lcom/miui/videoplayer/framework/popup/OptionMenuPopupWindow$1;->this$0:Lcom/miui/videoplayer/framework/popup/OptionMenuPopupWindow;

    invoke-virtual {v0}, Lcom/miui/videoplayer/framework/popup/OptionMenuPopupWindow;->dismiss()V

    .line 128
    iget-object v0, p0, Lcom/miui/videoplayer/framework/popup/OptionMenuPopupWindow$1;->this$0:Lcom/miui/videoplayer/framework/popup/OptionMenuPopupWindow;

    #calls: Lcom/miui/videoplayer/framework/popup/OptionMenuPopupWindow;->onAboutClicked()V
    invoke-static {v0}, Lcom/miui/videoplayer/framework/popup/OptionMenuPopupWindow;->access$500(Lcom/miui/videoplayer/framework/popup/OptionMenuPopupWindow;)V

    goto :goto_0
.end method
