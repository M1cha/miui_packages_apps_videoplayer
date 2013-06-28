.class Lcom/miui/videoplayer/framework/airkan/AirkanManager$1;
.super Landroid/os/Handler;
.source "AirkanManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/videoplayer/framework/airkan/AirkanManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/videoplayer/framework/airkan/AirkanManager;


# direct methods
.method constructor <init>(Lcom/miui/videoplayer/framework/airkan/AirkanManager;)V
    .locals 0
    .parameter

    .prologue
    .line 128
    iput-object p1, p0, Lcom/miui/videoplayer/framework/airkan/AirkanManager$1;->this$0:Lcom/miui/videoplayer/framework/airkan/AirkanManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    .line 132
    iget v1, p1, Landroid/os/Message;->what:I

    if-nez v1, :cond_0

    .line 133
    invoke-static {}, Lcom/miui/videoplayer/framework/airkan/AirkanManager;->access$100()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Direct play to device: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/videoplayer/framework/airkan/AirkanManager$1;->this$0:Lcom/miui/videoplayer/framework/airkan/AirkanManager;

    #getter for: Lcom/miui/videoplayer/framework/airkan/AirkanManager;->mExistDeviceName:Ljava/lang/String;
    invoke-static {v3}, Lcom/miui/videoplayer/framework/airkan/AirkanManager;->access$200(Lcom/miui/videoplayer/framework/airkan/AirkanManager;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/net/Uri;

    .line 135
    .local v0, uri:Landroid/net/Uri;
    iget-object v1, p0, Lcom/miui/videoplayer/framework/airkan/AirkanManager$1;->this$0:Lcom/miui/videoplayer/framework/airkan/AirkanManager;

    #getter for: Lcom/miui/videoplayer/framework/airkan/AirkanManager;->mExistDeviceName:Ljava/lang/String;
    invoke-static {v1}, Lcom/miui/videoplayer/framework/airkan/AirkanManager;->access$200(Lcom/miui/videoplayer/framework/airkan/AirkanManager;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/videoplayer/framework/airkan/AirkanManager$1;->this$0:Lcom/miui/videoplayer/framework/airkan/AirkanManager;

    #getter for: Lcom/miui/videoplayer/framework/airkan/AirkanManager;->mDirectAirkanUri:Landroid/net/Uri;
    invoke-static {v1}, Lcom/miui/videoplayer/framework/airkan/AirkanManager;->access$300(Lcom/miui/videoplayer/framework/airkan/AirkanManager;)Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 136
    iget-object v2, p0, Lcom/miui/videoplayer/framework/airkan/AirkanManager$1;->this$0:Lcom/miui/videoplayer/framework/airkan/AirkanManager;

    iget-object v1, p0, Lcom/miui/videoplayer/framework/airkan/AirkanManager$1;->this$0:Lcom/miui/videoplayer/framework/airkan/AirkanManager;

    #getter for: Lcom/miui/videoplayer/framework/airkan/AirkanManager;->mExistDeviceName:Ljava/lang/String;
    invoke-static {v1}, Lcom/miui/videoplayer/framework/airkan/AirkanManager;->access$200(Lcom/miui/videoplayer/framework/airkan/AirkanManager;)Ljava/lang/String;

    move-result-object v3

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/net/Uri;

    invoke-virtual {v2, v3, v1}, Lcom/miui/videoplayer/framework/airkan/AirkanManager;->playToDevice(Ljava/lang/String;Landroid/net/Uri;)V

    .line 140
    .end local v0           #uri:Landroid/net/Uri;
    :cond_0
    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 141
    iget-object v1, p0, Lcom/miui/videoplayer/framework/airkan/AirkanManager$1;->this$0:Lcom/miui/videoplayer/framework/airkan/AirkanManager;

    #getter for: Lcom/miui/videoplayer/framework/airkan/AirkanManager;->mVolumePopupWindow:Lcom/miui/videoplayer/framework/popup/VolumePopupWindow;
    invoke-static {v1}, Lcom/miui/videoplayer/framework/airkan/AirkanManager;->access$400(Lcom/miui/videoplayer/framework/airkan/AirkanManager;)Lcom/miui/videoplayer/framework/popup/VolumePopupWindow;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/miui/videoplayer/framework/airkan/AirkanManager$1;->this$0:Lcom/miui/videoplayer/framework/airkan/AirkanManager;

    #getter for: Lcom/miui/videoplayer/framework/airkan/AirkanManager;->mVolumePopupWindow:Lcom/miui/videoplayer/framework/popup/VolumePopupWindow;
    invoke-static {v1}, Lcom/miui/videoplayer/framework/airkan/AirkanManager;->access$400(Lcom/miui/videoplayer/framework/airkan/AirkanManager;)Lcom/miui/videoplayer/framework/popup/VolumePopupWindow;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/videoplayer/framework/popup/VolumePopupWindow;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 142
    iget-object v1, p0, Lcom/miui/videoplayer/framework/airkan/AirkanManager$1;->this$0:Lcom/miui/videoplayer/framework/airkan/AirkanManager;

    #getter for: Lcom/miui/videoplayer/framework/airkan/AirkanManager;->mVolumePopupWindow:Lcom/miui/videoplayer/framework/popup/VolumePopupWindow;
    invoke-static {v1}, Lcom/miui/videoplayer/framework/airkan/AirkanManager;->access$400(Lcom/miui/videoplayer/framework/airkan/AirkanManager;)Lcom/miui/videoplayer/framework/popup/VolumePopupWindow;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/videoplayer/framework/popup/VolumePopupWindow;->dismiss()V

    .line 146
    :cond_1
    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 147
    iget-object v1, p0, Lcom/miui/videoplayer/framework/airkan/AirkanManager$1;->this$0:Lcom/miui/videoplayer/framework/airkan/AirkanManager;

    #getter for: Lcom/miui/videoplayer/framework/airkan/AirkanManager;->mMediaController:Lcom/miui/videoplayer/framework/views/OriginMediaController;
    invoke-static {v1}, Lcom/miui/videoplayer/framework/airkan/AirkanManager;->access$500(Lcom/miui/videoplayer/framework/airkan/AirkanManager;)Lcom/miui/videoplayer/framework/views/OriginMediaController;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/miui/videoplayer/framework/airkan/AirkanManager$1;->this$0:Lcom/miui/videoplayer/framework/airkan/AirkanManager;

    #getter for: Lcom/miui/videoplayer/framework/airkan/AirkanManager;->mMediaController:Lcom/miui/videoplayer/framework/views/OriginMediaController;
    invoke-static {v1}, Lcom/miui/videoplayer/framework/airkan/AirkanManager;->access$500(Lcom/miui/videoplayer/framework/airkan/AirkanManager;)Lcom/miui/videoplayer/framework/views/OriginMediaController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/videoplayer/framework/views/OriginMediaController;->getAirKanButton()Landroid/widget/ImageView;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 148
    iget-object v1, p0, Lcom/miui/videoplayer/framework/airkan/AirkanManager$1;->this$0:Lcom/miui/videoplayer/framework/airkan/AirkanManager;

    #getter for: Lcom/miui/videoplayer/framework/airkan/AirkanManager;->mMediaController:Lcom/miui/videoplayer/framework/views/OriginMediaController;
    invoke-static {v1}, Lcom/miui/videoplayer/framework/airkan/AirkanManager;->access$500(Lcom/miui/videoplayer/framework/airkan/AirkanManager;)Lcom/miui/videoplayer/framework/views/OriginMediaController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/videoplayer/framework/views/OriginMediaController;->getAirKanButton()Landroid/widget/ImageView;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 152
    :cond_2
    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_3

    .line 153
    iget-object v1, p0, Lcom/miui/videoplayer/framework/airkan/AirkanManager$1;->this$0:Lcom/miui/videoplayer/framework/airkan/AirkanManager;

    #getter for: Lcom/miui/videoplayer/framework/airkan/AirkanManager;->mMediaController:Lcom/miui/videoplayer/framework/views/OriginMediaController;
    invoke-static {v1}, Lcom/miui/videoplayer/framework/airkan/AirkanManager;->access$500(Lcom/miui/videoplayer/framework/airkan/AirkanManager;)Lcom/miui/videoplayer/framework/views/OriginMediaController;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/miui/videoplayer/framework/airkan/AirkanManager$1;->this$0:Lcom/miui/videoplayer/framework/airkan/AirkanManager;

    #getter for: Lcom/miui/videoplayer/framework/airkan/AirkanManager;->mMediaController:Lcom/miui/videoplayer/framework/views/OriginMediaController;
    invoke-static {v1}, Lcom/miui/videoplayer/framework/airkan/AirkanManager;->access$500(Lcom/miui/videoplayer/framework/airkan/AirkanManager;)Lcom/miui/videoplayer/framework/views/OriginMediaController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/videoplayer/framework/views/OriginMediaController;->getAirKanButton()Landroid/widget/ImageView;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 154
    iget-object v1, p0, Lcom/miui/videoplayer/framework/airkan/AirkanManager$1;->this$0:Lcom/miui/videoplayer/framework/airkan/AirkanManager;

    #getter for: Lcom/miui/videoplayer/framework/airkan/AirkanManager;->mMediaController:Lcom/miui/videoplayer/framework/views/OriginMediaController;
    invoke-static {v1}, Lcom/miui/videoplayer/framework/airkan/AirkanManager;->access$500(Lcom/miui/videoplayer/framework/airkan/AirkanManager;)Lcom/miui/videoplayer/framework/views/OriginMediaController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/videoplayer/framework/views/OriginMediaController;->getAirKanButton()Landroid/widget/ImageView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 157
    :cond_3
    return-void
.end method
