.class Lcom/miui/videoplayer/DuoKanTempPlayHistoryListActivity$ListViewAdapter;
.super Landroid/widget/BaseAdapter;
.source "DuoKanTempPlayHistoryListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/videoplayer/DuoKanTempPlayHistoryListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ListViewAdapter"
.end annotation


# instance fields
.field private mList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/miui/videoplayer/framework/history/PlayHistoryManager$PlayHistoryEntry;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/miui/videoplayer/DuoKanTempPlayHistoryListActivity;


# direct methods
.method public constructor <init>(Lcom/miui/videoplayer/DuoKanTempPlayHistoryListActivity;Ljava/util/List;)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/miui/videoplayer/framework/history/PlayHistoryManager$PlayHistoryEntry;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 62
    .local p2, list:Ljava/util/List;,"Ljava/util/List<Lcom/miui/videoplayer/framework/history/PlayHistoryManager$PlayHistoryEntry;>;"
    iput-object p1, p0, Lcom/miui/videoplayer/DuoKanTempPlayHistoryListActivity$ListViewAdapter;->this$0:Lcom/miui/videoplayer/DuoKanTempPlayHistoryListActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 63
    iput-object p2, p0, Lcom/miui/videoplayer/DuoKanTempPlayHistoryListActivity$ListViewAdapter;->mList:Ljava/util/List;

    .line 64
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/miui/videoplayer/DuoKanTempPlayHistoryListActivity$ListViewAdapter;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/miui/videoplayer/DuoKanTempPlayHistoryListActivity$ListViewAdapter;->mList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 78
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 83
    iget-object v7, p0, Lcom/miui/videoplayer/DuoKanTempPlayHistoryListActivity$ListViewAdapter;->mList:Ljava/util/List;

    invoke-interface {v7, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/videoplayer/framework/history/PlayHistoryManager$PlayHistoryEntry;

    .line 84
    .local v1, entry:Lcom/miui/videoplayer/framework/history/PlayHistoryManager$PlayHistoryEntry;
    const/4 v6, 0x0

    .line 85
    .local v6, vh:Lcom/miui/videoplayer/DuoKanTempPlayHistoryListActivity$ViewHolder;
    if-nez p2, :cond_0

    .line 86
    iget-object v7, p0, Lcom/miui/videoplayer/DuoKanTempPlayHistoryListActivity$ListViewAdapter;->this$0:Lcom/miui/videoplayer/DuoKanTempPlayHistoryListActivity;

    #getter for: Lcom/miui/videoplayer/DuoKanTempPlayHistoryListActivity;->layoutInflater:Landroid/view/LayoutInflater;
    invoke-static {v7}, Lcom/miui/videoplayer/DuoKanTempPlayHistoryListActivity;->access$100(Lcom/miui/videoplayer/DuoKanTempPlayHistoryListActivity;)Landroid/view/LayoutInflater;

    move-result-object v7

    const v8, 0x7f030005

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 87
    new-instance v6, Lcom/miui/videoplayer/DuoKanTempPlayHistoryListActivity$ViewHolder;

    .end local v6           #vh:Lcom/miui/videoplayer/DuoKanTempPlayHistoryListActivity$ViewHolder;
    iget-object v7, p0, Lcom/miui/videoplayer/DuoKanTempPlayHistoryListActivity$ListViewAdapter;->this$0:Lcom/miui/videoplayer/DuoKanTempPlayHistoryListActivity;

    invoke-direct {v6, v7, p2}, Lcom/miui/videoplayer/DuoKanTempPlayHistoryListActivity$ViewHolder;-><init>(Lcom/miui/videoplayer/DuoKanTempPlayHistoryListActivity;Landroid/view/View;)V

    .line 88
    .restart local v6       #vh:Lcom/miui/videoplayer/DuoKanTempPlayHistoryListActivity$ViewHolder;
    invoke-virtual {p2, v6}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 92
    :goto_0
    invoke-virtual {v1}, Lcom/miui/videoplayer/framework/history/PlayHistoryManager$PlayHistoryEntry;->getTimeStamp()J

    move-result-wide v4

    .line 93
    .local v4, timeStamp:J
    invoke-virtual {v1}, Lcom/miui/videoplayer/framework/history/PlayHistoryManager$PlayHistoryEntry;->getPosition()I

    move-result v2

    .line 94
    .local v2, lastPosition:I
    invoke-static {}, Lcom/miui/videoplayer/framework/utils/DKTimeFormatter;->getInstance()Lcom/miui/videoplayer/framework/utils/DKTimeFormatter;

    move-result-object v7

    invoke-virtual {v7, v4, v5}, Lcom/miui/videoplayer/framework/utils/DKTimeFormatter;->longToDate(J)Ljava/lang/String;

    move-result-object v0

    .line 95
    .local v0, dateString:Ljava/lang/String;
    invoke-static {}, Lcom/miui/videoplayer/framework/utils/DKTimeFormatter;->getInstance()Lcom/miui/videoplayer/framework/utils/DKTimeFormatter;

    move-result-object v7

    invoke-virtual {v7, v2}, Lcom/miui/videoplayer/framework/utils/DKTimeFormatter;->stringForTime(I)Ljava/lang/String;

    move-result-object v3

    .line 96
    .local v3, playPositonString:Ljava/lang/String;
    invoke-virtual {v6}, Lcom/miui/videoplayer/DuoKanTempPlayHistoryListActivity$ViewHolder;->getNameTextView()Landroid/widget/TextView;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/miui/videoplayer/framework/history/PlayHistoryManager$PlayHistoryEntry;->getUri()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "  "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "  "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 99
    const-string v7, "PLAY position: "

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    const-string v7, "date string: "

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    invoke-virtual {v6}, Lcom/miui/videoplayer/DuoKanTempPlayHistoryListActivity$ViewHolder;->getDescTextView()Landroid/widget/TextView;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " MediaId: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Lcom/miui/videoplayer/framework/history/PlayHistoryManager$PlayHistoryEntry;->getMediaId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "    mediaCi: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Lcom/miui/videoplayer/framework/history/PlayHistoryManager$PlayHistoryEntry;->getMediaCi()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\n  PlaySource:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Lcom/miui/videoplayer/framework/history/PlayHistoryManager$PlayHistoryEntry;->getPlaySource()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "   VideoName: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Lcom/miui/videoplayer/framework/history/PlayHistoryManager$PlayHistoryEntry;->getVideoName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\n   Html5Page: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Lcom/miui/videoplayer/framework/history/PlayHistoryManager$PlayHistoryEntry;->getHtml5Page()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 108
    return-object p2

    .line 90
    .end local v0           #dateString:Ljava/lang/String;
    .end local v2           #lastPosition:I
    .end local v3           #playPositonString:Ljava/lang/String;
    .end local v4           #timeStamp:J
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    .end local v6           #vh:Lcom/miui/videoplayer/DuoKanTempPlayHistoryListActivity$ViewHolder;
    check-cast v6, Lcom/miui/videoplayer/DuoKanTempPlayHistoryListActivity$ViewHolder;

    .restart local v6       #vh:Lcom/miui/videoplayer/DuoKanTempPlayHistoryListActivity$ViewHolder;
    goto/16 :goto_0
.end method
