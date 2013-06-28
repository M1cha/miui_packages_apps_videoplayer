.class Lcom/miui/videoplayer/framework/popup/OptionSubMenuPopupWindow$1;
.super Landroid/widget/ArrayAdapter;
.source "OptionSubMenuPopupWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/videoplayer/framework/popup/OptionSubMenuPopupWindow;->setupViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/videoplayer/framework/popup/OptionSubMenuPopupWindow;


# direct methods
.method constructor <init>(Lcom/miui/videoplayer/framework/popup/OptionSubMenuPopupWindow;Landroid/content/Context;II[Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 45
    iput-object p1, p0, Lcom/miui/videoplayer/framework/popup/OptionSubMenuPopupWindow$1;->this$0:Lcom/miui/videoplayer/framework/popup/OptionSubMenuPopupWindow;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;II[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 49
    invoke-super {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 50
    .local v1, result:Landroid/view/View;
    const v3, 0x7f090003

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 51
    .local v2, textView:Landroid/widget/TextView;
    const v3, 0x7f090002

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 52
    .local v0, checkTextView:Landroid/widget/TextView;
    iget-object v3, p0, Lcom/miui/videoplayer/framework/popup/OptionSubMenuPopupWindow$1;->this$0:Lcom/miui/videoplayer/framework/popup/OptionSubMenuPopupWindow;

    #getter for: Lcom/miui/videoplayer/framework/popup/OptionSubMenuPopupWindow;->mLastSelectedIndex:I
    invoke-static {v3}, Lcom/miui/videoplayer/framework/popup/OptionSubMenuPopupWindow;->access$000(Lcom/miui/videoplayer/framework/popup/OptionSubMenuPopupWindow;)I

    move-result v3

    if-ne p1, v3, :cond_0

    .line 53
    iget-object v3, p0, Lcom/miui/videoplayer/framework/popup/OptionSubMenuPopupWindow$1;->this$0:Lcom/miui/videoplayer/framework/popup/OptionSubMenuPopupWindow;

    #getter for: Lcom/miui/videoplayer/framework/popup/OptionSubMenuPopupWindow;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/miui/videoplayer/framework/popup/OptionSubMenuPopupWindow;->access$100(Lcom/miui/videoplayer/framework/popup/OptionSubMenuPopupWindow;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f06000f

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 54
    const v3, 0x7f06000a

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 59
    :goto_0
    return-object v1

    .line 56
    :cond_0
    iget-object v3, p0, Lcom/miui/videoplayer/framework/popup/OptionSubMenuPopupWindow$1;->this$0:Lcom/miui/videoplayer/framework/popup/OptionSubMenuPopupWindow;

    #getter for: Lcom/miui/videoplayer/framework/popup/OptionSubMenuPopupWindow;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/miui/videoplayer/framework/popup/OptionSubMenuPopupWindow;->access$100(Lcom/miui/videoplayer/framework/popup/OptionSubMenuPopupWindow;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f06000b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 57
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method
