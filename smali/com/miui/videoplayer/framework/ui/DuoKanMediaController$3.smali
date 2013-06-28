.class Lcom/miui/videoplayer/framework/ui/DuoKanMediaController$3;
.super Ljava/lang/Object;
.source "DuoKanMediaController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->loadAndSavePlayHistory()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;


# direct methods
.method constructor <init>(Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;)V
    .locals 0
    .parameter

    .prologue
    .line 1109
    iput-object p1, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController$3;->this$0:Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    .line 1113
    iget-object v6, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController$3;->this$0:Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;

    #getter for: Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->mUri:Landroid/net/Uri;
    invoke-static {v6}, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->access$1000(Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;)Landroid/net/Uri;

    move-result-object v6

    if-nez v6, :cond_0

    .line 1142
    :goto_0
    return-void

    .line 1117
    :cond_0
    new-instance v5, Lcom/miui/videoplayer/framework/history/PlayHistoryManager;

    iget-object v6, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController$3;->this$0:Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;

    #getter for: Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->mActivity:Landroid/app/Activity;
    invoke-static {v6}, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->access$300(Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;)Landroid/app/Activity;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/miui/videoplayer/framework/history/PlayHistoryManager;-><init>(Landroid/content/Context;)V

    .line 1119
    .local v5, playHistoryManager:Lcom/miui/videoplayer/framework/history/PlayHistoryManager;
    invoke-virtual {v5}, Lcom/miui/videoplayer/framework/history/PlayHistoryManager;->load()V

    .line 1120
    iget-object v6, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController$3;->this$0:Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;

    #getter for: Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->mUri:Landroid/net/Uri;
    invoke-static {v6}, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->access$1000(Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;)Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/miui/videoplayer/framework/history/PlayHistoryManager;->findPlayHistory(Landroid/net/Uri;)Lcom/miui/videoplayer/framework/history/PlayHistoryManager$PlayHistoryEntry;

    move-result-object v4

    .line 1121
    .local v4, oldEntry:Lcom/miui/videoplayer/framework/history/PlayHistoryManager$PlayHistoryEntry;
    if-eqz v4, :cond_2

    .line 1122
    invoke-virtual {v4}, Lcom/miui/videoplayer/framework/history/PlayHistoryManager$PlayHistoryEntry;->getPosition()I

    move-result v1

    .line 1123
    .local v1, lastPosition:I
    if-eqz v1, :cond_1

    .line 1124
    invoke-static {}, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->access$800()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "last postion: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1125
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v3

    .line 1126
    .local v3, msg:Landroid/os/Message;
    const/4 v6, 0x2

    iput v6, v3, Landroid/os/Message;->what:I

    .line 1127
    iput v1, v3, Landroid/os/Message;->arg1:I

    .line 1128
    iget-object v6, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController$3;->this$0:Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;

    #getter for: Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->mHandler:Landroid/os/Handler;
    invoke-static {v6}, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->access$900(Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;)Landroid/os/Handler;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1130
    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Lcom/miui/videoplayer/framework/history/PlayHistoryManager$PlayHistoryEntry;->setPosition(I)V

    .line 1132
    .end local v3           #msg:Landroid/os/Message;
    :cond_1
    invoke-virtual {v5, v4}, Lcom/miui/videoplayer/framework/history/PlayHistoryManager;->moveToFirst(Lcom/miui/videoplayer/framework/history/PlayHistoryManager$PlayHistoryEntry;)V

    .line 1138
    .end local v1           #lastPosition:I
    :goto_1
    invoke-virtual {v5}, Lcom/miui/videoplayer/framework/history/PlayHistoryManager;->save()V

    .line 1139
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v2

    .line 1140
    .local v2, m:Landroid/os/Message;
    const/4 v6, 0x3

    iput v6, v2, Landroid/os/Message;->what:I

    .line 1141
    iget-object v6, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController$3;->this$0:Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;

    #getter for: Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->mHandler:Landroid/os/Handler;
    invoke-static {v6}, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->access$900(Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;)Landroid/os/Handler;

    move-result-object v6

    invoke-virtual {v6, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 1134
    .end local v2           #m:Landroid/os/Message;
    :cond_2
    new-instance v0, Lcom/miui/videoplayer/framework/history/PlayHistoryManager$PlayHistoryEntry;

    iget-object v6, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController$3;->this$0:Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;

    #getter for: Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->mUri:Landroid/net/Uri;
    invoke-static {v6}, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->access$1000(Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;)Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v6}, Lcom/miui/videoplayer/framework/history/PlayHistoryManager$PlayHistoryEntry;-><init>(Ljava/lang/String;)V

    .line 1135
    .local v0, entry:Lcom/miui/videoplayer/framework/history/PlayHistoryManager$PlayHistoryEntry;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v0, v6, v7}, Lcom/miui/videoplayer/framework/history/PlayHistoryManager$PlayHistoryEntry;->setTimeStamp(J)V

    .line 1136
    invoke-virtual {v5, v0}, Lcom/miui/videoplayer/framework/history/PlayHistoryManager;->addToHistory(Lcom/miui/videoplayer/framework/history/PlayHistoryManager$PlayHistoryEntry;)V

    goto :goto_1
.end method
