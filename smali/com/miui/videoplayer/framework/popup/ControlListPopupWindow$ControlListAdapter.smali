.class Lcom/miui/videoplayer/framework/popup/ControlListPopupWindow$ControlListAdapter;
.super Landroid/widget/BaseAdapter;
.source "ControlListPopupWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/videoplayer/framework/popup/ControlListPopupWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ControlListAdapter"
.end annotation


# instance fields
.field private mLayoutInflater:Landroid/view/LayoutInflater;

.field private mUris:[Ljava/lang/String;

.field final synthetic this$0:Lcom/miui/videoplayer/framework/popup/ControlListPopupWindow;


# direct methods
.method public constructor <init>(Lcom/miui/videoplayer/framework/popup/ControlListPopupWindow;Landroid/content/Context;[Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter "context"
    .parameter "uris"

    .prologue
    .line 91
    iput-object p1, p0, Lcom/miui/videoplayer/framework/popup/ControlListPopupWindow$ControlListAdapter;->this$0:Lcom/miui/videoplayer/framework/popup/ControlListPopupWindow;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 92
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/videoplayer/framework/popup/ControlListPopupWindow$ControlListAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 93
    iput-object p3, p0, Lcom/miui/videoplayer/framework/popup/ControlListPopupWindow$ControlListAdapter;->mUris:[Ljava/lang/String;

    .line 94
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/miui/videoplayer/framework/popup/ControlListPopupWindow$ControlListAdapter;->mUris:[Ljava/lang/String;

    array-length v0, v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 103
    iget-object v0, p0, Lcom/miui/videoplayer/framework/popup/ControlListPopupWindow$ControlListAdapter;->mUris:[Ljava/lang/String;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 108
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v7, 0x0

    .line 113
    const/4 v2, 0x0

    .line 114
    .local v2, result:Landroid/view/View;
    const/4 v4, 0x0

    .line 115
    .local v4, viewHolder:Lcom/miui/videoplayer/framework/popup/ControlListPopupWindow$ViewHolder;
    if-nez p2, :cond_1

    .line 116
    iget-object v5, p0, Lcom/miui/videoplayer/framework/popup/ControlListPopupWindow$ControlListAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v6, 0x7f030007

    invoke-virtual {v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 117
    new-instance v4, Lcom/miui/videoplayer/framework/popup/ControlListPopupWindow$ViewHolder;

    .end local v4           #viewHolder:Lcom/miui/videoplayer/framework/popup/ControlListPopupWindow$ViewHolder;
    invoke-direct {v4, v2}, Lcom/miui/videoplayer/framework/popup/ControlListPopupWindow$ViewHolder;-><init>(Landroid/view/View;)V

    .line 118
    .restart local v4       #viewHolder:Lcom/miui/videoplayer/framework/popup/ControlListPopupWindow$ViewHolder;
    invoke-virtual {v2, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 123
    :goto_0
    invoke-virtual {v4}, Lcom/miui/videoplayer/framework/popup/ControlListPopupWindow$ViewHolder;->getNameTextView()Landroid/widget/TextView;

    move-result-object v0

    .line 124
    .local v0, nameTextView:Landroid/widget/TextView;
    invoke-virtual {v4}, Lcom/miui/videoplayer/framework/popup/ControlListPopupWindow$ViewHolder;->getPlayingImageView()Landroid/widget/ImageView;

    move-result-object v1

    .line 125
    .local v1, playingImageView:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/miui/videoplayer/framework/utils/AndroidUtils;->setBoldFontForChinese(Landroid/widget/TextView;)V

    .line 126
    iget-object v5, p0, Lcom/miui/videoplayer/framework/popup/ControlListPopupWindow$ControlListAdapter;->mUris:[Ljava/lang/String;

    aget-object v5, v5, p1

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 127
    .local v3, uri:Landroid/net/Uri;
    invoke-virtual {v3}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 128
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 129
    iget-object v5, p0, Lcom/miui/videoplayer/framework/popup/ControlListPopupWindow$ControlListAdapter;->this$0:Lcom/miui/videoplayer/framework/popup/ControlListPopupWindow;

    #getter for: Lcom/miui/videoplayer/framework/popup/ControlListPopupWindow;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/miui/videoplayer/framework/popup/ControlListPopupWindow;->access$200(Lcom/miui/videoplayer/framework/popup/ControlListPopupWindow;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x106000b

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 130
    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 133
    iget-object v5, p0, Lcom/miui/videoplayer/framework/popup/ControlListPopupWindow$ControlListAdapter;->this$0:Lcom/miui/videoplayer/framework/popup/ControlListPopupWindow;

    #getter for: Lcom/miui/videoplayer/framework/popup/ControlListPopupWindow;->mPlayingIndex:I
    invoke-static {v5}, Lcom/miui/videoplayer/framework/popup/ControlListPopupWindow;->access$000(Lcom/miui/videoplayer/framework/popup/ControlListPopupWindow;)I

    move-result v5

    if-ne p1, v5, :cond_0

    .line 134
    const v5, 0x7f02004d

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 135
    iget-object v5, p0, Lcom/miui/videoplayer/framework/popup/ControlListPopupWindow$ControlListAdapter;->this$0:Lcom/miui/videoplayer/framework/popup/ControlListPopupWindow;

    #getter for: Lcom/miui/videoplayer/framework/popup/ControlListPopupWindow;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/miui/videoplayer/framework/popup/ControlListPopupWindow;->access$200(Lcom/miui/videoplayer/framework/popup/ControlListPopupWindow;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f060009

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 137
    :cond_0
    return-object v2

    .line 120
    .end local v0           #nameTextView:Landroid/widget/TextView;
    .end local v1           #playingImageView:Landroid/widget/ImageView;
    .end local v3           #uri:Landroid/net/Uri;
    :cond_1
    move-object v2, p2

    .line 121
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    .end local v4           #viewHolder:Lcom/miui/videoplayer/framework/popup/ControlListPopupWindow$ViewHolder;
    check-cast v4, Lcom/miui/videoplayer/framework/popup/ControlListPopupWindow$ViewHolder;

    .restart local v4       #viewHolder:Lcom/miui/videoplayer/framework/popup/ControlListPopupWindow$ViewHolder;
    goto :goto_0
.end method
