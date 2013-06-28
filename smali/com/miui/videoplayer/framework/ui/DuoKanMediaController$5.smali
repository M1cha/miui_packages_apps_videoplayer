.class Lcom/miui/videoplayer/framework/ui/DuoKanMediaController$5;
.super Ljava/lang/Object;
.source "DuoKanMediaController.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->showErrorDialog(I)V
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
    .line 1434
    iput-object p1, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController$5;->this$0:Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 1439
    iget-object v0, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController$5;->this$0:Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;

    #getter for: Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->access$900(Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1440
    iget-object v0, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController$5;->this$0:Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;

    #calls: Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->onCompletionCalled()V
    invoke-static {v0}, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->access$700(Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;)V

    .line 1441
    return-void
.end method
