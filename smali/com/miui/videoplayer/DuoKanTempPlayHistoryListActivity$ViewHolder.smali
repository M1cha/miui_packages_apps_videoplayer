.class Lcom/miui/videoplayer/DuoKanTempPlayHistoryListActivity$ViewHolder;
.super Ljava/lang/Object;
.source "DuoKanTempPlayHistoryListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/videoplayer/DuoKanTempPlayHistoryListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewHolder"
.end annotation


# instance fields
.field private descTextView:Landroid/widget/TextView;

.field private imageView:Landroid/widget/ImageView;

.field private nameTextView:Landroid/widget/TextView;

.field private root:Landroid/view/View;

.field final synthetic this$0:Lcom/miui/videoplayer/DuoKanTempPlayHistoryListActivity;


# direct methods
.method public constructor <init>(Lcom/miui/videoplayer/DuoKanTempPlayHistoryListActivity;Landroid/view/View;)V
    .locals 0
    .parameter
    .parameter "root"

    .prologue
    .line 118
    iput-object p1, p0, Lcom/miui/videoplayer/DuoKanTempPlayHistoryListActivity$ViewHolder;->this$0:Lcom/miui/videoplayer/DuoKanTempPlayHistoryListActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 119
    iput-object p2, p0, Lcom/miui/videoplayer/DuoKanTempPlayHistoryListActivity$ViewHolder;->root:Landroid/view/View;

    .line 120
    return-void
.end method


# virtual methods
.method public getDescTextView()Landroid/widget/TextView;
    .locals 2

    .prologue
    .line 137
    iget-object v0, p0, Lcom/miui/videoplayer/DuoKanTempPlayHistoryListActivity$ViewHolder;->descTextView:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 138
    iget-object v0, p0, Lcom/miui/videoplayer/DuoKanTempPlayHistoryListActivity$ViewHolder;->root:Landroid/view/View;

    const v1, 0x7f09000b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/videoplayer/DuoKanTempPlayHistoryListActivity$ViewHolder;->descTextView:Landroid/widget/TextView;

    .line 140
    :cond_0
    iget-object v0, p0, Lcom/miui/videoplayer/DuoKanTempPlayHistoryListActivity$ViewHolder;->descTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method public getImageView()Landroid/widget/ImageView;
    .locals 2

    .prologue
    .line 123
    iget-object v0, p0, Lcom/miui/videoplayer/DuoKanTempPlayHistoryListActivity$ViewHolder;->imageView:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    .line 124
    iget-object v0, p0, Lcom/miui/videoplayer/DuoKanTempPlayHistoryListActivity$ViewHolder;->root:Landroid/view/View;

    const v1, 0x7f090009

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/videoplayer/DuoKanTempPlayHistoryListActivity$ViewHolder;->imageView:Landroid/widget/ImageView;

    .line 126
    :cond_0
    iget-object v0, p0, Lcom/miui/videoplayer/DuoKanTempPlayHistoryListActivity$ViewHolder;->imageView:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getNameTextView()Landroid/widget/TextView;
    .locals 2

    .prologue
    .line 130
    iget-object v0, p0, Lcom/miui/videoplayer/DuoKanTempPlayHistoryListActivity$ViewHolder;->nameTextView:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 131
    iget-object v0, p0, Lcom/miui/videoplayer/DuoKanTempPlayHistoryListActivity$ViewHolder;->root:Landroid/view/View;

    const v1, 0x7f09000a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/videoplayer/DuoKanTempPlayHistoryListActivity$ViewHolder;->nameTextView:Landroid/widget/TextView;

    .line 133
    :cond_0
    iget-object v0, p0, Lcom/miui/videoplayer/DuoKanTempPlayHistoryListActivity$ViewHolder;->nameTextView:Landroid/widget/TextView;

    return-object v0
.end method
