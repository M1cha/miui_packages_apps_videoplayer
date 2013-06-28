.class Lcom/miui/videoplayer/DuoKanTempMediaListActivity$ListViewAdapter;
.super Landroid/widget/BaseAdapter;
.source "DuoKanTempMediaListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/videoplayer/DuoKanTempMediaListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ListViewAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/videoplayer/DuoKanTempMediaListActivity;


# direct methods
.method private constructor <init>(Lcom/miui/videoplayer/DuoKanTempMediaListActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 158
    iput-object p1, p0, Lcom/miui/videoplayer/DuoKanTempMediaListActivity$ListViewAdapter;->this$0:Lcom/miui/videoplayer/DuoKanTempMediaListActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/videoplayer/DuoKanTempMediaListActivity;Lcom/miui/videoplayer/DuoKanTempMediaListActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 158
    invoke-direct {p0, p1}, Lcom/miui/videoplayer/DuoKanTempMediaListActivity$ListViewAdapter;-><init>(Lcom/miui/videoplayer/DuoKanTempMediaListActivity;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lcom/miui/videoplayer/DuoKanTempMediaListActivity$ListViewAdapter;->this$0:Lcom/miui/videoplayer/DuoKanTempMediaListActivity;

    #getter for: Lcom/miui/videoplayer/DuoKanTempMediaListActivity;->locations:[Ljava/lang/String;
    invoke-static {v0}, Lcom/miui/videoplayer/DuoKanTempMediaListActivity;->access$100(Lcom/miui/videoplayer/DuoKanTempMediaListActivity;)[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 167
    iget-object v0, p0, Lcom/miui/videoplayer/DuoKanTempMediaListActivity$ListViewAdapter;->this$0:Lcom/miui/videoplayer/DuoKanTempMediaListActivity;

    #getter for: Lcom/miui/videoplayer/DuoKanTempMediaListActivity;->locations:[Ljava/lang/String;
    invoke-static {v0}, Lcom/miui/videoplayer/DuoKanTempMediaListActivity;->access$100(Lcom/miui/videoplayer/DuoKanTempMediaListActivity;)[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 172
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 177
    invoke-virtual {p0, p1}, Lcom/miui/videoplayer/DuoKanTempMediaListActivity$ListViewAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 178
    .local v2, loc:Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 179
    .local v0, file:Ljava/io/File;
    iget-object v5, p0, Lcom/miui/videoplayer/DuoKanTempMediaListActivity$ListViewAdapter;->this$0:Lcom/miui/videoplayer/DuoKanTempMediaListActivity;

    #getter for: Lcom/miui/videoplayer/DuoKanTempMediaListActivity;->layoutInflater:Landroid/view/LayoutInflater;
    invoke-static {v5}, Lcom/miui/videoplayer/DuoKanTempMediaListActivity;->access$200(Lcom/miui/videoplayer/DuoKanTempMediaListActivity;)Landroid/view/LayoutInflater;

    move-result-object v5

    const v6, 0x7f030005

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 180
    .local v4, view:Landroid/view/View;
    const v5, 0x7f090009

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 181
    .local v1, imageView:Landroid/widget/ImageView;
    const v5, 0x7f09000a

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 183
    .local v3, nameView:Landroid/widget/TextView;
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 184
    return-object v4
.end method
