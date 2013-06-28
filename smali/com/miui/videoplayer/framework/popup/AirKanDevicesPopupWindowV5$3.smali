.class Lcom/miui/videoplayer/framework/popup/AirKanDevicesPopupWindowV5$3;
.super Landroid/os/Handler;
.source "AirKanDevicesPopupWindowV5.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/videoplayer/framework/popup/AirKanDevicesPopupWindowV5;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/videoplayer/framework/popup/AirKanDevicesPopupWindowV5;


# direct methods
.method constructor <init>(Lcom/miui/videoplayer/framework/popup/AirKanDevicesPopupWindowV5;)V
    .locals 0
    .parameter

    .prologue
    .line 164
    iput-object p1, p0, Lcom/miui/videoplayer/framework/popup/AirKanDevicesPopupWindowV5$3;->this$0:Lcom/miui/videoplayer/framework/popup/AirKanDevicesPopupWindowV5;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .parameter "msg"

    .prologue
    .line 168
    iget v3, p1, Landroid/os/Message;->what:I

    if-nez v3, :cond_0

    .line 169
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    .line 171
    .local v1, deviceNameList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/miui/videoplayer/framework/popup/AirKanDevicesPopupWindowV5$3;->this$0:Lcom/miui/videoplayer/framework/popup/AirKanDevicesPopupWindowV5;

    #getter for: Lcom/miui/videoplayer/framework/popup/AirKanDevicesPopupWindowV5;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/miui/videoplayer/framework/popup/AirKanDevicesPopupWindowV5;->access$400(Lcom/miui/videoplayer/framework/popup/AirKanDevicesPopupWindowV5;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f05001b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 172
    .local v2, xiaomiPhoneName:Ljava/lang/String;
    const/4 v3, 0x0

    invoke-interface {v1, v3, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 173
    new-instance v0, Lcom/miui/videoplayer/framework/popup/AirKanDevicesPopupWindowV5$AirkanDevicesArrayAdapter;

    iget-object v3, p0, Lcom/miui/videoplayer/framework/popup/AirKanDevicesPopupWindowV5$3;->this$0:Lcom/miui/videoplayer/framework/popup/AirKanDevicesPopupWindowV5;

    invoke-direct {v0, v3, v1}, Lcom/miui/videoplayer/framework/popup/AirKanDevicesPopupWindowV5$AirkanDevicesArrayAdapter;-><init>(Lcom/miui/videoplayer/framework/popup/AirKanDevicesPopupWindowV5;Ljava/util/List;)V

    .line 174
    .local v0, adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/miui/videoplayer/framework/popup/AirKanDevicesPopupWindowV5$3;->this$0:Lcom/miui/videoplayer/framework/popup/AirKanDevicesPopupWindowV5;

    #getter for: Lcom/miui/videoplayer/framework/popup/AirKanDevicesPopupWindowV5;->mListView:Landroid/widget/ListView;
    invoke-static {v3}, Lcom/miui/videoplayer/framework/popup/AirKanDevicesPopupWindowV5;->access$500(Lcom/miui/videoplayer/framework/popup/AirKanDevicesPopupWindowV5;)Landroid/widget/ListView;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 176
    .end local v0           #adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    .end local v1           #deviceNameList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v2           #xiaomiPhoneName:Ljava/lang/String;
    :cond_0
    return-void
.end method
