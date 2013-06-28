.class Lcom/miui/videoplayer/framework/ui/DuoKanMediaController$2;
.super Ljava/lang/Object;
.source "DuoKanMediaController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->savePlayHistory(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;

.field final synthetic val$dayDate:Ljava/lang/String;

.field final synthetic val$duration:I

.field final synthetic val$playingTime:J

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;IIJLjava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 807
    iput-object p1, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController$2;->this$0:Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;

    iput p2, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController$2;->val$position:I

    iput p3, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController$2;->val$duration:I

    iput-wide p4, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController$2;->val$playingTime:J

    iput-object p6, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController$2;->val$dayDate:Ljava/lang/String;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 811
    iget-object v2, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController$2;->this$0:Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;

    #getter for: Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->mUri:Landroid/net/Uri;
    invoke-static {v2}, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->access$1000(Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;)Landroid/net/Uri;

    move-result-object v2

    if-nez v2, :cond_1

    .line 830
    :cond_0
    :goto_0
    return-void

    .line 814
    :cond_1
    new-instance v1, Lcom/miui/videoplayer/framework/history/PlayHistoryManager;

    iget-object v2, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController$2;->this$0:Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;

    #getter for: Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->mActivity:Landroid/app/Activity;
    invoke-static {v2}, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->access$300(Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;)Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/miui/videoplayer/framework/history/PlayHistoryManager;-><init>(Landroid/content/Context;)V

    .line 815
    .local v1, playHistoryManager:Lcom/miui/videoplayer/framework/history/PlayHistoryManager;
    invoke-virtual {v1}, Lcom/miui/videoplayer/framework/history/PlayHistoryManager;->load()V

    .line 816
    iget-object v2, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController$2;->this$0:Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;

    #getter for: Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->mUri:Landroid/net/Uri;
    invoke-static {v2}, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->access$1000(Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/miui/videoplayer/framework/history/PlayHistoryManager;->findPlayHistory(Landroid/net/Uri;)Lcom/miui/videoplayer/framework/history/PlayHistoryManager$PlayHistoryEntry;

    move-result-object v0

    .line 818
    .local v0, oldEntry:Lcom/miui/videoplayer/framework/history/PlayHistoryManager$PlayHistoryEntry;
    if-eqz v0, :cond_2

    .line 819
    iget v2, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController$2;->val$position:I

    iget v3, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController$2;->val$duration:I

    if-ne v2, v3, :cond_3

    .line 820
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/miui/videoplayer/framework/history/PlayHistoryManager$PlayHistoryEntry;->setPosition(I)V

    .line 825
    :cond_2
    :goto_1
    invoke-virtual {v1}, Lcom/miui/videoplayer/framework/history/PlayHistoryManager;->save()V

    .line 827
    iget-object v2, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController$2;->this$0:Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;

    #getter for: Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->mUri:Landroid/net/Uri;
    invoke-static {v2}, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->access$1000(Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;)Landroid/net/Uri;

    move-result-object v2

    invoke-static {v2}, Lcom/miui/videoplayer/framework/utils/AndroidUtils;->isOnlineVideo(Landroid/net/Uri;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController$2;->this$0:Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;

    #getter for: Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->mPrepared:Z
    invoke-static {v2}, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->access$1100(Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 828
    iget-object v2, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController$2;->this$0:Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;

    iget-wide v3, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController$2;->val$playingTime:J

    iget-object v5, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController$2;->val$dayDate:Ljava/lang/String;

    #calls: Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->savePlayInfoFile(JLjava/lang/String;Lcom/miui/videoplayer/framework/history/PlayHistoryManager$PlayHistoryEntry;)V
    invoke-static {v2, v3, v4, v5, v0}, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->access$1200(Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;JLjava/lang/String;Lcom/miui/videoplayer/framework/history/PlayHistoryManager$PlayHistoryEntry;)V

    goto :goto_0

    .line 822
    :cond_3
    iget v2, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController$2;->val$position:I

    invoke-virtual {v0, v2}, Lcom/miui/videoplayer/framework/history/PlayHistoryManager$PlayHistoryEntry;->setPosition(I)V

    goto :goto_1
.end method
