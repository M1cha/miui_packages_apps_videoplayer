.class public Lcom/miui/videoplayer/framework/popup/BufferFullScreenPopupWindow;
.super Lcom/miui/videoplayer/framework/popup/ManagedPopupWindow;
.source "BufferFullScreenPopupWindow.java"


# instance fields
.field private mBufferedPercentTextView:Landroid/widget/TextView;

.field private mContext:Landroid/content/Context;

.field private mToBePlayMediaTextView:Landroid/widget/TextView;

.field private mToBePlayString:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    const/4 v3, -0x1

    .line 19
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030011

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0, v3, v3}, Lcom/miui/videoplayer/framework/popup/ManagedPopupWindow;-><init>(Landroid/view/View;II)V

    .line 20
    const v0, 0x7f08000b

    invoke-virtual {p0, v0}, Lcom/miui/videoplayer/framework/popup/BufferFullScreenPopupWindow;->setAnimationStyle(I)V

    .line 22
    iput-object p1, p0, Lcom/miui/videoplayer/framework/popup/BufferFullScreenPopupWindow;->mContext:Landroid/content/Context;

    .line 24
    invoke-direct {p0}, Lcom/miui/videoplayer/framework/popup/BufferFullScreenPopupWindow;->setupViews()V

    .line 25
    return-void
.end method

.method private setupViews()V
    .locals 2

    .prologue
    .line 28
    invoke-virtual {p0}, Lcom/miui/videoplayer/framework/popup/BufferFullScreenPopupWindow;->getContentView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f090029

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/videoplayer/framework/popup/BufferFullScreenPopupWindow;->mToBePlayMediaTextView:Landroid/widget/TextView;

    .line 29
    iget-object v0, p0, Lcom/miui/videoplayer/framework/popup/BufferFullScreenPopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f050030

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/videoplayer/framework/popup/BufferFullScreenPopupWindow;->mToBePlayString:Ljava/lang/String;

    .line 31
    invoke-virtual {p0}, Lcom/miui/videoplayer/framework/popup/BufferFullScreenPopupWindow;->getContentView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f090028

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/videoplayer/framework/popup/BufferFullScreenPopupWindow;->mBufferedPercentTextView:Landroid/widget/TextView;

    .line 32
    return-void
.end method


# virtual methods
.method public setBufferedPercent(I)V
    .locals 3
    .parameter "percent"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/miui/videoplayer/framework/popup/BufferFullScreenPopupWindow;->mBufferedPercentTextView:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "%)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 50
    return-void
.end method

.method public show(Landroid/view/View;)V
    .locals 0
    .parameter "anchor"

    .prologue
    .line 46
    return-void
.end method

.method public show(Landroid/view/View;Ljava/lang/String;)V
    .locals 4
    .parameter "anchor"
    .parameter "mediaName"

    .prologue
    const/4 v3, 0x0

    .line 35
    iget-object v0, p0, Lcom/miui/videoplayer/framework/popup/BufferFullScreenPopupWindow;->mBufferedPercentTextView:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 36
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 37
    iget-object v0, p0, Lcom/miui/videoplayer/framework/popup/BufferFullScreenPopupWindow;->mToBePlayMediaTextView:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/miui/videoplayer/framework/popup/BufferFullScreenPopupWindow;->mToBePlayString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 41
    :goto_0
    const/16 v0, 0x30

    invoke-virtual {p0, p1, v0, v3, v3}, Lcom/miui/videoplayer/framework/popup/BufferFullScreenPopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 42
    return-void

    .line 39
    :cond_0
    iget-object v0, p0, Lcom/miui/videoplayer/framework/popup/BufferFullScreenPopupWindow;->mToBePlayMediaTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/miui/videoplayer/framework/popup/BufferFullScreenPopupWindow;->mToBePlayString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
