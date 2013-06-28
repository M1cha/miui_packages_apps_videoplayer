.class Lcom/miui/videoplayer/framework/views/OriginMediaController$6;
.super Ljava/lang/Object;
.source "OriginMediaController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/videoplayer/framework/views/OriginMediaController;->recordLastPosition(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/videoplayer/framework/views/OriginMediaController;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/miui/videoplayer/framework/views/OriginMediaController;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 581
    iput-object p1, p0, Lcom/miui/videoplayer/framework/views/OriginMediaController$6;->this$0:Lcom/miui/videoplayer/framework/views/OriginMediaController;

    iput p2, p0, Lcom/miui/videoplayer/framework/views/OriginMediaController$6;->val$position:I

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 585
    new-instance v0, Lcom/miui/videoplayer/framework/history/PlayHistoryManager;

    iget-object v2, p0, Lcom/miui/videoplayer/framework/views/OriginMediaController$6;->this$0:Lcom/miui/videoplayer/framework/views/OriginMediaController;

    #getter for: Lcom/miui/videoplayer/framework/views/OriginMediaController;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/miui/videoplayer/framework/views/OriginMediaController;->access$1500(Lcom/miui/videoplayer/framework/views/OriginMediaController;)Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/miui/videoplayer/framework/history/PlayHistoryManager;-><init>(Landroid/content/Context;)V

    .line 586
    .local v0, playHistoryManager:Lcom/miui/videoplayer/framework/history/PlayHistoryManager;
    invoke-virtual {v0}, Lcom/miui/videoplayer/framework/history/PlayHistoryManager;->load()V

    .line 587
    iget-object v2, p0, Lcom/miui/videoplayer/framework/views/OriginMediaController$6;->this$0:Lcom/miui/videoplayer/framework/views/OriginMediaController;

    #getter for: Lcom/miui/videoplayer/framework/views/OriginMediaController;->mUriArray:[Ljava/lang/String;
    invoke-static {v2}, Lcom/miui/videoplayer/framework/views/OriginMediaController;->access$1300(Lcom/miui/videoplayer/framework/views/OriginMediaController;)[Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/videoplayer/framework/views/OriginMediaController$6;->this$0:Lcom/miui/videoplayer/framework/views/OriginMediaController;

    #getter for: Lcom/miui/videoplayer/framework/views/OriginMediaController;->mPlayingIndex:I
    invoke-static {v3}, Lcom/miui/videoplayer/framework/views/OriginMediaController;->access$1400(Lcom/miui/videoplayer/framework/views/OriginMediaController;)I

    move-result v3

    aget-object v1, v2, v3

    .line 588
    .local v1, uri:Ljava/lang/String;
    iget v2, p0, Lcom/miui/videoplayer/framework/views/OriginMediaController$6;->val$position:I

    invoke-virtual {v0, v1, v2}, Lcom/miui/videoplayer/framework/history/PlayHistoryManager;->recordLastPlayPosition(Ljava/lang/String;I)V

    .line 589
    invoke-virtual {v0}, Lcom/miui/videoplayer/framework/history/PlayHistoryManager;->save()V

    .line 590
    return-void
.end method
