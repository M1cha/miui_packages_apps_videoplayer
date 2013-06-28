.class Lcom/miui/videoplayer/DuoKanTempMediaListActivity$1;
.super Ljava/lang/Object;
.source "DuoKanTempMediaListActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/videoplayer/DuoKanTempMediaListActivity;->setupViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/videoplayer/DuoKanTempMediaListActivity;


# direct methods
.method constructor <init>(Lcom/miui/videoplayer/DuoKanTempMediaListActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 45
    iput-object p1, p0, Lcom/miui/videoplayer/DuoKanTempMediaListActivity$1;->this$0:Lcom/miui/videoplayer/DuoKanTempMediaListActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 49
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/miui/videoplayer/DuoKanTempMediaListActivity$1;->this$0:Lcom/miui/videoplayer/DuoKanTempMediaListActivity;

    const-class v2, Lcom/miui/videoplayer/DuoKanTempPlayHistoryListActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 50
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/miui/videoplayer/DuoKanTempMediaListActivity$1;->this$0:Lcom/miui/videoplayer/DuoKanTempMediaListActivity;

    invoke-virtual {v1, v0}, Lcom/miui/videoplayer/DuoKanTempMediaListActivity;->startActivity(Landroid/content/Intent;)V

    .line 51
    return-void
.end method
