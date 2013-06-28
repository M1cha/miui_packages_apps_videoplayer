.class Lcom/miui/videoplayer/framework/popup/AirKanDevicesPopupWindowV5$AirkanDevicesArrayAdapter;
.super Landroid/widget/ArrayAdapter;
.source "AirKanDevicesPopupWindowV5.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/videoplayer/framework/popup/AirKanDevicesPopupWindowV5;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AirkanDevicesArrayAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<String:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/widget/ArrayAdapter",
        "<TString;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/videoplayer/framework/popup/AirKanDevicesPopupWindowV5;


# direct methods
.method public constructor <init>(Lcom/miui/videoplayer/framework/popup/AirKanDevicesPopupWindowV5;Ljava/util/List;)V
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TString;>;)V"
        }
    .end annotation

    .prologue
    .line 182
    .local p0, this:Lcom/miui/videoplayer/framework/popup/AirKanDevicesPopupWindowV5$AirkanDevicesArrayAdapter;,"Lcom/miui/videoplayer/framework/popup/AirKanDevicesPopupWindowV5$AirkanDevicesArrayAdapter<TString;>;"
    .local p2, objects:Ljava/util/List;,"Ljava/util/List<TString;>;"
    iput-object p1, p0, Lcom/miui/videoplayer/framework/popup/AirKanDevicesPopupWindowV5$AirkanDevicesArrayAdapter;->this$0:Lcom/miui/videoplayer/framework/popup/AirKanDevicesPopupWindowV5;

    .line 183
    #getter for: Lcom/miui/videoplayer/framework/popup/AirKanDevicesPopupWindowV5;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lcom/miui/videoplayer/framework/popup/AirKanDevicesPopupWindowV5;->access$400(Lcom/miui/videoplayer/framework/popup/AirKanDevicesPopupWindowV5;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f030001

    const v2, 0x7f090003

    invoke-direct {p0, v0, v1, v2, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;IILjava/util/List;)V

    .line 184
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .local p0, this:Lcom/miui/videoplayer/framework/popup/AirKanDevicesPopupWindowV5$AirkanDevicesArrayAdapter;,"Lcom/miui/videoplayer/framework/popup/AirKanDevicesPopupWindowV5$AirkanDevicesArrayAdapter<TString;>;"
    const v5, 0x7f06000a

    .line 188
    invoke-super {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 189
    .local v1, result:Landroid/view/View;
    const v3, 0x7f090002

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 190
    .local v2, selectedCheckView:Landroid/view/View;
    const v3, 0x7f090003

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 191
    .local v0, deviceNameTextView:Landroid/widget/TextView;
    if-nez p1, :cond_0

    iget-object v3, p0, Lcom/miui/videoplayer/framework/popup/AirKanDevicesPopupWindowV5$AirkanDevicesArrayAdapter;->this$0:Lcom/miui/videoplayer/framework/popup/AirKanDevicesPopupWindowV5;

    #getter for: Lcom/miui/videoplayer/framework/popup/AirKanDevicesPopupWindowV5;->mAirKanManager:Lcom/miui/videoplayer/framework/airkan/AirkanManager;
    invoke-static {v3}, Lcom/miui/videoplayer/framework/popup/AirKanDevicesPopupWindowV5;->access$100(Lcom/miui/videoplayer/framework/popup/AirKanDevicesPopupWindowV5;)Lcom/miui/videoplayer/framework/airkan/AirkanManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/miui/videoplayer/framework/airkan/AirkanManager;->isPlayingInLocal()Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    iget-object v3, p0, Lcom/miui/videoplayer/framework/popup/AirKanDevicesPopupWindowV5$AirkanDevicesArrayAdapter;->this$0:Lcom/miui/videoplayer/framework/popup/AirKanDevicesPopupWindowV5;

    #getter for: Lcom/miui/videoplayer/framework/popup/AirKanDevicesPopupWindowV5;->mAirKanManager:Lcom/miui/videoplayer/framework/airkan/AirkanManager;
    invoke-static {v3}, Lcom/miui/videoplayer/framework/popup/AirKanDevicesPopupWindowV5;->access$100(Lcom/miui/videoplayer/framework/popup/AirKanDevicesPopupWindowV5;)Lcom/miui/videoplayer/framework/airkan/AirkanManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/miui/videoplayer/framework/airkan/AirkanManager;->getPlayingDeviceName()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/miui/videoplayer/framework/popup/AirKanDevicesPopupWindowV5$AirkanDevicesArrayAdapter;->this$0:Lcom/miui/videoplayer/framework/popup/AirKanDevicesPopupWindowV5;

    #getter for: Lcom/miui/videoplayer/framework/popup/AirKanDevicesPopupWindowV5;->mAirKanManager:Lcom/miui/videoplayer/framework/airkan/AirkanManager;
    invoke-static {v3}, Lcom/miui/videoplayer/framework/popup/AirKanDevicesPopupWindowV5;->access$100(Lcom/miui/videoplayer/framework/popup/AirKanDevicesPopupWindowV5;)Lcom/miui/videoplayer/framework/airkan/AirkanManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/miui/videoplayer/framework/airkan/AirkanManager;->getPlayingDeviceName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 194
    :cond_1
    invoke-virtual {v2, v5}, Landroid/view/View;->setBackgroundResource(I)V

    .line 195
    iget-object v3, p0, Lcom/miui/videoplayer/framework/popup/AirKanDevicesPopupWindowV5$AirkanDevicesArrayAdapter;->this$0:Lcom/miui/videoplayer/framework/popup/AirKanDevicesPopupWindowV5;

    #getter for: Lcom/miui/videoplayer/framework/popup/AirKanDevicesPopupWindowV5;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/miui/videoplayer/framework/popup/AirKanDevicesPopupWindowV5;->access$400(Lcom/miui/videoplayer/framework/popup/AirKanDevicesPopupWindowV5;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 200
    :goto_0
    return-object v1

    .line 197
    :cond_2
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 198
    iget-object v3, p0, Lcom/miui/videoplayer/framework/popup/AirKanDevicesPopupWindowV5$AirkanDevicesArrayAdapter;->this$0:Lcom/miui/videoplayer/framework/popup/AirKanDevicesPopupWindowV5;

    #getter for: Lcom/miui/videoplayer/framework/popup/AirKanDevicesPopupWindowV5;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/miui/videoplayer/framework/popup/AirKanDevicesPopupWindowV5;->access$400(Lcom/miui/videoplayer/framework/popup/AirKanDevicesPopupWindowV5;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f06000b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0
.end method
