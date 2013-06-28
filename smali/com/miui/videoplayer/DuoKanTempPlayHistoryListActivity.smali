.class public Lcom/miui/videoplayer/DuoKanTempPlayHistoryListActivity;
.super Landroid/app/Activity;
.source "DuoKanTempPlayHistoryListActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/videoplayer/DuoKanTempPlayHistoryListActivity$ViewHolder;,
        Lcom/miui/videoplayer/DuoKanTempPlayHistoryListActivity$ListViewAdapter;
    }
.end annotation


# instance fields
.field private layoutInflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 112
    return-void
.end method

.method static synthetic access$000(Lcom/miui/videoplayer/DuoKanTempPlayHistoryListActivity;Landroid/widget/ListView;Lcom/miui/videoplayer/framework/history/PlayHistoryManager;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 22
    invoke-direct {p0, p1, p2}, Lcom/miui/videoplayer/DuoKanTempPlayHistoryListActivity;->updateInput(Landroid/widget/ListView;Lcom/miui/videoplayer/framework/history/PlayHistoryManager;)V

    return-void
.end method

.method static synthetic access$100(Lcom/miui/videoplayer/DuoKanTempPlayHistoryListActivity;)Landroid/view/LayoutInflater;
    .locals 1
    .parameter "x0"

    .prologue
    .line 22
    iget-object v0, p0, Lcom/miui/videoplayer/DuoKanTempPlayHistoryListActivity;->layoutInflater:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method private setupViews()V
    .locals 4

    .prologue
    .line 36
    const v3, 0x7f090005

    invoke-virtual {p0, v3}, Lcom/miui/videoplayer/DuoKanTempPlayHistoryListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    .line 37
    .local v2, listView:Landroid/widget/ListView;
    new-instance v1, Lcom/miui/videoplayer/framework/history/PlayHistoryManager;

    invoke-direct {v1, p0}, Lcom/miui/videoplayer/framework/history/PlayHistoryManager;-><init>(Landroid/content/Context;)V

    .line 38
    .local v1, historyManager:Lcom/miui/videoplayer/framework/history/PlayHistoryManager;
    invoke-direct {p0, v2, v1}, Lcom/miui/videoplayer/DuoKanTempPlayHistoryListActivity;->updateInput(Landroid/widget/ListView;Lcom/miui/videoplayer/framework/history/PlayHistoryManager;)V

    .line 40
    const v3, 0x7f090006

    invoke-virtual {p0, v3}, Lcom/miui/videoplayer/DuoKanTempPlayHistoryListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 41
    .local v0, clearButton:Landroid/widget/Button;
    const-string v3, "Clear"

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 42
    new-instance v3, Lcom/miui/videoplayer/DuoKanTempPlayHistoryListActivity$1;

    invoke-direct {v3, p0, v1, v2}, Lcom/miui/videoplayer/DuoKanTempPlayHistoryListActivity$1;-><init>(Lcom/miui/videoplayer/DuoKanTempPlayHistoryListActivity;Lcom/miui/videoplayer/framework/history/PlayHistoryManager;Landroid/widget/ListView;)V

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 52
    return-void
.end method

.method private updateInput(Landroid/widget/ListView;Lcom/miui/videoplayer/framework/history/PlayHistoryManager;)V
    .locals 2
    .parameter "listView"
    .parameter "historyManager"

    .prologue
    .line 55
    invoke-virtual {p2}, Lcom/miui/videoplayer/framework/history/PlayHistoryManager;->readPlayHistoryList()Ljava/util/List;

    move-result-object v0

    .line 56
    .local v0, input:Ljava/util/List;,"Ljava/util/List<Lcom/miui/videoplayer/framework/history/PlayHistoryManager$PlayHistoryEntry;>;"
    new-instance v1, Lcom/miui/videoplayer/DuoKanTempPlayHistoryListActivity$ListViewAdapter;

    invoke-direct {v1, p0, v0}, Lcom/miui/videoplayer/DuoKanTempPlayHistoryListActivity$ListViewAdapter;-><init>(Lcom/miui/videoplayer/DuoKanTempPlayHistoryListActivity;Ljava/util/List;)V

    invoke-virtual {p1, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 57
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 27
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 29
    const v0, 0x7f030003

    invoke-virtual {p0, v0}, Lcom/miui/videoplayer/DuoKanTempPlayHistoryListActivity;->setContentView(I)V

    .line 30
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/videoplayer/DuoKanTempPlayHistoryListActivity;->layoutInflater:Landroid/view/LayoutInflater;

    .line 32
    invoke-direct {p0}, Lcom/miui/videoplayer/DuoKanTempPlayHistoryListActivity;->setupViews()V

    .line 33
    return-void
.end method
