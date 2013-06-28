.class Lcom/miui/videoplayer/DuoKanTempMediaListActivity$2;
.super Ljava/lang/Object;
.source "DuoKanTempMediaListActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


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
    .line 77
    iput-object p1, p0, Lcom/miui/videoplayer/DuoKanTempMediaListActivity$2;->this$0:Lcom/miui/videoplayer/DuoKanTempMediaListActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 82
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v4, p0, Lcom/miui/videoplayer/DuoKanTempMediaListActivity$2;->this$0:Lcom/miui/videoplayer/DuoKanTempMediaListActivity;

    #getter for: Lcom/miui/videoplayer/DuoKanTempMediaListActivity;->locations:[Ljava/lang/String;
    invoke-static {v4}, Lcom/miui/videoplayer/DuoKanTempMediaListActivity;->access$100(Lcom/miui/videoplayer/DuoKanTempMediaListActivity;)[Ljava/lang/String;

    move-result-object v4

    aget-object v1, v4, p3

    .line 84
    .local v1, path:Ljava/lang/String;
    const/4 v3, 0x0

    .line 85
    .local v3, uri:Landroid/net/Uri;
    const-string v4, "http"

    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "https"

    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "rtsp"

    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 86
    :cond_0
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 90
    :goto_0
    invoke-virtual {v3}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    .line 92
    .local v2, scheme:Ljava/lang/String;
    new-instance v0, Landroid/content/Intent;

    iget-object v4, p0, Lcom/miui/videoplayer/DuoKanTempMediaListActivity$2;->this$0:Lcom/miui/videoplayer/DuoKanTempMediaListActivity;

    const-class v5, Lcom/miui/videoplayer/VideoPlayerActivity;

    invoke-direct {v0, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 95
    .local v0, intent:Landroid/content/Intent;
    const-string v4, "uri_list"

    iget-object v5, p0, Lcom/miui/videoplayer/DuoKanTempMediaListActivity$2;->this$0:Lcom/miui/videoplayer/DuoKanTempMediaListActivity;

    #getter for: Lcom/miui/videoplayer/DuoKanTempMediaListActivity;->locations:[Ljava/lang/String;
    invoke-static {v5}, Lcom/miui/videoplayer/DuoKanTempMediaListActivity;->access$100(Lcom/miui/videoplayer/DuoKanTempMediaListActivity;)[Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 96
    const-string v4, "play_index"

    invoke-virtual {v0, v4, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 98
    iget-object v4, p0, Lcom/miui/videoplayer/DuoKanTempMediaListActivity$2;->this$0:Lcom/miui/videoplayer/DuoKanTempMediaListActivity;

    invoke-virtual {v4, v0}, Lcom/miui/videoplayer/DuoKanTempMediaListActivity;->startActivity(Landroid/content/Intent;)V

    .line 99
    return-void

    .line 88
    .end local v0           #intent:Landroid/content/Intent;
    .end local v2           #scheme:Ljava/lang/String;
    :cond_1
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v4}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v3

    goto :goto_0
.end method
