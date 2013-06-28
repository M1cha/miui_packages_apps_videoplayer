.class public Lcom/miui/videoplayer/framework/popup/ReceiveEventV5PopupWindow;
.super Landroid/widget/PopupWindow;
.source "ReceiveEventV5PopupWindow.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDuoKanMediaController:Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;)V
    .locals 4
    .parameter "context"
    .parameter "duoKanMediaController"

    .prologue
    .line 22
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f030012

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;)V

    .line 24
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070046

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v0, v1

    .line 25
    .local v0, height:I
    invoke-virtual {p0, v0}, Lcom/miui/videoplayer/framework/popup/ReceiveEventV5PopupWindow;->setHeight(I)V

    .line 26
    const/4 v1, -0x1

    invoke-virtual {p0, v1}, Lcom/miui/videoplayer/framework/popup/ReceiveEventV5PopupWindow;->setWidth(I)V

    .line 29
    iput-object p2, p0, Lcom/miui/videoplayer/framework/popup/ReceiveEventV5PopupWindow;->mDuoKanMediaController:Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;

    .line 30
    iput-object p1, p0, Lcom/miui/videoplayer/framework/popup/ReceiveEventV5PopupWindow;->mContext:Landroid/content/Context;

    .line 32
    invoke-direct {p0}, Lcom/miui/videoplayer/framework/popup/ReceiveEventV5PopupWindow;->setupViews()V

    .line 33
    return-void
.end method

.method static synthetic access$000(Lcom/miui/videoplayer/framework/popup/ReceiveEventV5PopupWindow;)Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;
    .locals 1
    .parameter "x0"

    .prologue
    .line 17
    iget-object v0, p0, Lcom/miui/videoplayer/framework/popup/ReceiveEventV5PopupWindow;->mDuoKanMediaController:Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;

    return-object v0
.end method

.method private setupViews()V
    .locals 2

    .prologue
    .line 36
    invoke-virtual {p0}, Lcom/miui/videoplayer/framework/popup/ReceiveEventV5PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v0

    .line 37
    .local v0, contentView:Landroid/view/View;
    new-instance v1, Lcom/miui/videoplayer/framework/popup/ReceiveEventV5PopupWindow$1;

    invoke-direct {v1, p0}, Lcom/miui/videoplayer/framework/popup/ReceiveEventV5PopupWindow$1;-><init>(Lcom/miui/videoplayer/framework/popup/ReceiveEventV5PopupWindow;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 45
    return-void
.end method

.method private updateHeight()V
    .locals 3

    .prologue
    .line 58
    iget-object v1, p0, Lcom/miui/videoplayer/framework/popup/ReceiveEventV5PopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070046

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v0, v1

    .line 59
    .local v0, height:I
    invoke-virtual {p0, v0}, Lcom/miui/videoplayer/framework/popup/ReceiveEventV5PopupWindow;->setHeight(I)V

    .line 66
    return-void
.end method


# virtual methods
.method public show(Landroid/view/View;)V
    .locals 2
    .parameter "parent"

    .prologue
    const/4 v1, 0x0

    .line 53
    invoke-direct {p0}, Lcom/miui/videoplayer/framework/popup/ReceiveEventV5PopupWindow;->updateHeight()V

    .line 54
    const/16 v0, 0x10

    invoke-virtual {p0, p1, v0, v1, v1}, Lcom/miui/videoplayer/framework/popup/ReceiveEventV5PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 55
    return-void
.end method
