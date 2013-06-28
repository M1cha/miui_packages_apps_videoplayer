.class Lcom/miui/videoplayer/framework/popup/ControlListPopupWindow$ViewHolder;
.super Ljava/lang/Object;
.source "ControlListPopupWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/videoplayer/framework/popup/ControlListPopupWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ViewHolder"
.end annotation


# instance fields
.field private mNameTextView:Landroid/widget/TextView;

.field private mPlayingImageView:Landroid/widget/ImageView;

.field private mRoot:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 0
    .parameter "root"

    .prologue
    .line 147
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 148
    iput-object p1, p0, Lcom/miui/videoplayer/framework/popup/ControlListPopupWindow$ViewHolder;->mRoot:Landroid/view/View;

    .line 149
    return-void
.end method


# virtual methods
.method public getNameTextView()Landroid/widget/TextView;
    .locals 2

    .prologue
    .line 152
    iget-object v0, p0, Lcom/miui/videoplayer/framework/popup/ControlListPopupWindow$ViewHolder;->mNameTextView:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 153
    iget-object v0, p0, Lcom/miui/videoplayer/framework/popup/ControlListPopupWindow$ViewHolder;->mRoot:Landroid/view/View;

    const v1, 0x7f09000c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/videoplayer/framework/popup/ControlListPopupWindow$ViewHolder;->mNameTextView:Landroid/widget/TextView;

    .line 155
    :cond_0
    iget-object v0, p0, Lcom/miui/videoplayer/framework/popup/ControlListPopupWindow$ViewHolder;->mNameTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method public getPlayingImageView()Landroid/widget/ImageView;
    .locals 2

    .prologue
    .line 159
    iget-object v0, p0, Lcom/miui/videoplayer/framework/popup/ControlListPopupWindow$ViewHolder;->mPlayingImageView:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    .line 160
    iget-object v0, p0, Lcom/miui/videoplayer/framework/popup/ControlListPopupWindow$ViewHolder;->mRoot:Landroid/view/View;

    const v1, 0x7f09000d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/videoplayer/framework/popup/ControlListPopupWindow$ViewHolder;->mPlayingImageView:Landroid/widget/ImageView;

    .line 162
    :cond_0
    iget-object v0, p0, Lcom/miui/videoplayer/framework/popup/ControlListPopupWindow$ViewHolder;->mPlayingImageView:Landroid/widget/ImageView;

    return-object v0
.end method
