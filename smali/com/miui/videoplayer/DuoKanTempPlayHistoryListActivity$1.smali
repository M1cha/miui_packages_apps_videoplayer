.class Lcom/miui/videoplayer/DuoKanTempPlayHistoryListActivity$1;
.super Ljava/lang/Object;
.source "DuoKanTempPlayHistoryListActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/videoplayer/DuoKanTempPlayHistoryListActivity;->setupViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/videoplayer/DuoKanTempPlayHistoryListActivity;

.field final synthetic val$historyManager:Lcom/miui/videoplayer/framework/history/PlayHistoryManager;

.field final synthetic val$listView:Landroid/widget/ListView;


# direct methods
.method constructor <init>(Lcom/miui/videoplayer/DuoKanTempPlayHistoryListActivity;Lcom/miui/videoplayer/framework/history/PlayHistoryManager;Landroid/widget/ListView;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 42
    iput-object p1, p0, Lcom/miui/videoplayer/DuoKanTempPlayHistoryListActivity$1;->this$0:Lcom/miui/videoplayer/DuoKanTempPlayHistoryListActivity;

    iput-object p2, p0, Lcom/miui/videoplayer/DuoKanTempPlayHistoryListActivity$1;->val$historyManager:Lcom/miui/videoplayer/framework/history/PlayHistoryManager;

    iput-object p3, p0, Lcom/miui/videoplayer/DuoKanTempPlayHistoryListActivity$1;->val$listView:Landroid/widget/ListView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/miui/videoplayer/DuoKanTempPlayHistoryListActivity$1;->val$historyManager:Lcom/miui/videoplayer/framework/history/PlayHistoryManager;

    invoke-virtual {v0}, Lcom/miui/videoplayer/framework/history/PlayHistoryManager;->load()V

    .line 47
    iget-object v0, p0, Lcom/miui/videoplayer/DuoKanTempPlayHistoryListActivity$1;->val$historyManager:Lcom/miui/videoplayer/framework/history/PlayHistoryManager;

    invoke-virtual {v0}, Lcom/miui/videoplayer/framework/history/PlayHistoryManager;->clear()V

    .line 48
    iget-object v0, p0, Lcom/miui/videoplayer/DuoKanTempPlayHistoryListActivity$1;->val$historyManager:Lcom/miui/videoplayer/framework/history/PlayHistoryManager;

    invoke-virtual {v0}, Lcom/miui/videoplayer/framework/history/PlayHistoryManager;->save()V

    .line 49
    iget-object v0, p0, Lcom/miui/videoplayer/DuoKanTempPlayHistoryListActivity$1;->this$0:Lcom/miui/videoplayer/DuoKanTempPlayHistoryListActivity;

    iget-object v1, p0, Lcom/miui/videoplayer/DuoKanTempPlayHistoryListActivity$1;->val$listView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/miui/videoplayer/DuoKanTempPlayHistoryListActivity$1;->val$historyManager:Lcom/miui/videoplayer/framework/history/PlayHistoryManager;

    #calls: Lcom/miui/videoplayer/DuoKanTempPlayHistoryListActivity;->updateInput(Landroid/widget/ListView;Lcom/miui/videoplayer/framework/history/PlayHistoryManager;)V
    invoke-static {v0, v1, v2}, Lcom/miui/videoplayer/DuoKanTempPlayHistoryListActivity;->access$000(Lcom/miui/videoplayer/DuoKanTempPlayHistoryListActivity;Landroid/widget/ListView;Lcom/miui/videoplayer/framework/history/PlayHistoryManager;)V

    .line 50
    return-void
.end method
