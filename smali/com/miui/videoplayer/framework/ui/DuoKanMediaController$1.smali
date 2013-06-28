.class Lcom/miui/videoplayer/framework/ui/DuoKanMediaController$1;
.super Landroid/os/Handler;
.source "DuoKanMediaController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;
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
    .line 598
    iput-object p1, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController$1;->this$0:Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 14
    .parameter "msg"

    .prologue
    const/4 v13, 0x5

    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 602
    iget v8, p1, Landroid/os/Message;->what:I

    if-nez v8, :cond_0

    .line 603
    iget-object v8, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController$1;->this$0:Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;

    #getter for: Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->mVolumePopupWindow:Lcom/miui/videoplayer/framework/popup/VolumePopupWindow;
    invoke-static {v8}, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->access$000(Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;)Lcom/miui/videoplayer/framework/popup/VolumePopupWindow;

    move-result-object v8

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController$1;->this$0:Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;

    #getter for: Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->mVolumePopupWindow:Lcom/miui/videoplayer/framework/popup/VolumePopupWindow;
    invoke-static {v8}, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->access$000(Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;)Lcom/miui/videoplayer/framework/popup/VolumePopupWindow;

    move-result-object v8

    invoke-virtual {v8}, Lcom/miui/videoplayer/framework/popup/VolumePopupWindow;->isShowing()Z

    move-result v8

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController$1;->this$0:Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;

    #getter for: Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->mVolumePopupWindow:Lcom/miui/videoplayer/framework/popup/VolumePopupWindow;
    invoke-static {v8}, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->access$000(Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;)Lcom/miui/videoplayer/framework/popup/VolumePopupWindow;

    move-result-object v8

    invoke-virtual {v8}, Lcom/miui/videoplayer/framework/popup/VolumePopupWindow;->isAlwaysShowing()Z

    move-result v8

    if-nez v8, :cond_0

    .line 604
    iget-object v8, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController$1;->this$0:Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;

    #getter for: Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->mVolumePopupWindow:Lcom/miui/videoplayer/framework/popup/VolumePopupWindow;
    invoke-static {v8}, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->access$000(Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;)Lcom/miui/videoplayer/framework/popup/VolumePopupWindow;

    move-result-object v8

    invoke-virtual {v8}, Lcom/miui/videoplayer/framework/popup/VolumePopupWindow;->dismiss()V

    .line 608
    :cond_0
    iget v8, p1, Landroid/os/Message;->what:I

    if-ne v8, v12, :cond_1

    .line 609
    iget-object v8, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController$1;->this$0:Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;

    #getter for: Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->mBrightnessPopupWindow:Lcom/miui/videoplayer/framework/popup/BrightnessPopupWindow;
    invoke-static {v8}, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->access$100(Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;)Lcom/miui/videoplayer/framework/popup/BrightnessPopupWindow;

    move-result-object v8

    if-eqz v8, :cond_1

    iget-object v8, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController$1;->this$0:Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;

    #getter for: Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->mBrightnessPopupWindow:Lcom/miui/videoplayer/framework/popup/BrightnessPopupWindow;
    invoke-static {v8}, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->access$100(Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;)Lcom/miui/videoplayer/framework/popup/BrightnessPopupWindow;

    move-result-object v8

    invoke-virtual {v8}, Lcom/miui/videoplayer/framework/popup/BrightnessPopupWindow;->isShowing()Z

    move-result v8

    if-eqz v8, :cond_1

    iget-object v8, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController$1;->this$0:Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;

    #getter for: Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->mBrightnessPopupWindow:Lcom/miui/videoplayer/framework/popup/BrightnessPopupWindow;
    invoke-static {v8}, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->access$100(Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;)Lcom/miui/videoplayer/framework/popup/BrightnessPopupWindow;

    move-result-object v8

    invoke-virtual {v8}, Lcom/miui/videoplayer/framework/popup/BrightnessPopupWindow;->isAlwaysShowing()Z

    move-result v8

    if-nez v8, :cond_1

    .line 610
    iget-object v8, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController$1;->this$0:Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;

    #getter for: Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->mBrightnessPopupWindow:Lcom/miui/videoplayer/framework/popup/BrightnessPopupWindow;
    invoke-static {v8}, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->access$100(Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;)Lcom/miui/videoplayer/framework/popup/BrightnessPopupWindow;

    move-result-object v8

    invoke-virtual {v8}, Lcom/miui/videoplayer/framework/popup/BrightnessPopupWindow;->dismiss()V

    .line 614
    :cond_1
    iget v8, p1, Landroid/os/Message;->what:I

    const/4 v9, 0x2

    if-ne v8, v9, :cond_4

    .line 615
    iget v4, p1, Landroid/os/Message;->arg1:I

    .line 618
    .local v4, lastPosition:I
    if-eqz v4, :cond_4

    iget-object v8, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController$1;->this$0:Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;

    #getter for: Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->mLocalMediaPlayer:Lcom/miui/videoplayer/framework/ui/LocalMediaPlayerControl;
    invoke-static {v8}, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->access$200(Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;)Lcom/miui/videoplayer/framework/ui/LocalMediaPlayerControl;

    move-result-object v8

    invoke-interface {v8}, Lcom/miui/videoplayer/framework/ui/LocalMediaPlayerControl;->getDuration()I

    move-result v8

    sub-int/2addr v8, v4

    const/16 v9, 0x3e8

    if-lt v8, v9, :cond_4

    .line 619
    iget-object v8, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController$1;->this$0:Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;

    #getter for: Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->mActivity:Landroid/app/Activity;
    invoke-static {v8}, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->access$300(Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;)Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f050027

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 620
    .local v2, fromString:Ljava/lang/String;
    iget-object v8, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController$1;->this$0:Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;

    #getter for: Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->mActivity:Landroid/app/Activity;
    invoke-static {v8}, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->access$300(Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;)Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f050028

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 621
    .local v3, hourString:Ljava/lang/String;
    iget-object v8, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController$1;->this$0:Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;

    #getter for: Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->mActivity:Landroid/app/Activity;
    invoke-static {v8}, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->access$300(Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;)Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f050029

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 622
    .local v5, minuteString:Ljava/lang/String;
    iget-object v8, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController$1;->this$0:Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;

    #getter for: Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->mActivity:Landroid/app/Activity;
    invoke-static {v8}, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->access$300(Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;)Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f05002a

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 623
    .local v7, secondString:Ljava/lang/String;
    invoke-static {}, Lcom/miui/videoplayer/framework/utils/DKTimeFormatter;->getInstance()Lcom/miui/videoplayer/framework/utils/DKTimeFormatter;

    move-result-object v1

    .line 624
    .local v1, dkf:Lcom/miui/videoplayer/framework/utils/DKTimeFormatter;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 625
    .local v6, sBuilder:Ljava/lang/StringBuilder;
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 626
    invoke-virtual {v1, v4}, Lcom/miui/videoplayer/framework/utils/DKTimeFormatter;->getHoursForTime(I)I

    move-result v8

    if-eqz v8, :cond_2

    .line 627
    invoke-virtual {v1, v4}, Lcom/miui/videoplayer/framework/utils/DKTimeFormatter;->getHoursForTime(I)I

    move-result v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 629
    :cond_2
    invoke-virtual {v1, v4}, Lcom/miui/videoplayer/framework/utils/DKTimeFormatter;->getMinutesForTime(I)I

    move-result v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 630
    invoke-virtual {v1, v4}, Lcom/miui/videoplayer/framework/utils/DKTimeFormatter;->getSecondsForTime(I)I

    move-result v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 632
    iget-object v8, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController$1;->this$0:Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;

    iget-object v9, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController$1;->this$0:Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;

    #getter for: Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->mActivity:Landroid/app/Activity;
    invoke-static {v9}, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->access$300(Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;)Landroid/app/Activity;

    move-result-object v9

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10, v11}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v9

    #setter for: Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->mContinuePlayToast:Landroid/widget/Toast;
    invoke-static {v8, v9}, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->access$402(Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;Landroid/widget/Toast;)Landroid/widget/Toast;

    .line 633
    iget-object v8, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController$1;->this$0:Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;

    #getter for: Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->mContinuePlayToast:Landroid/widget/Toast;
    invoke-static {v8}, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->access$400(Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;)Landroid/widget/Toast;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/Toast;->show()V

    .line 635
    iget-object v8, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController$1;->this$0:Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;

    #getter for: Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->mLocalMediaPlayer:Lcom/miui/videoplayer/framework/ui/LocalMediaPlayerControl;
    invoke-static {v8}, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->access$200(Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;)Lcom/miui/videoplayer/framework/ui/LocalMediaPlayerControl;

    move-result-object v8

    invoke-interface {v8, v4}, Lcom/miui/videoplayer/framework/ui/LocalMediaPlayerControl;->seekTo(I)V

    .line 636
    iget-object v8, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController$1;->this$0:Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;

    #getter for: Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->mLocalMediaPlayer:Lcom/miui/videoplayer/framework/ui/LocalMediaPlayerControl;
    invoke-static {v8}, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->access$200(Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;)Lcom/miui/videoplayer/framework/ui/LocalMediaPlayerControl;

    move-result-object v8

    invoke-interface {v8}, Lcom/miui/videoplayer/framework/ui/LocalMediaPlayerControl;->isPlaying()Z

    move-result v8

    if-nez v8, :cond_3

    .line 637
    iget-object v8, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController$1;->this$0:Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;

    #getter for: Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->mLocalMediaPlayer:Lcom/miui/videoplayer/framework/ui/LocalMediaPlayerControl;
    invoke-static {v8}, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->access$200(Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;)Lcom/miui/videoplayer/framework/ui/LocalMediaPlayerControl;

    move-result-object v8

    invoke-interface {v8}, Lcom/miui/videoplayer/framework/ui/LocalMediaPlayerControl;->start()V

    .line 639
    :cond_3
    iget-object v8, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController$1;->this$0:Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;

    #getter for: Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->mMediaController:Lcom/miui/videoplayer/framework/views/OriginMediaController;
    invoke-static {v8}, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->access$500(Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;)Lcom/miui/videoplayer/framework/views/OriginMediaController;

    move-result-object v8

    invoke-virtual {v8}, Lcom/miui/videoplayer/framework/views/OriginMediaController;->show()V

    .line 644
    .end local v1           #dkf:Lcom/miui/videoplayer/framework/utils/DKTimeFormatter;
    .end local v2           #fromString:Ljava/lang/String;
    .end local v3           #hourString:Ljava/lang/String;
    .end local v4           #lastPosition:I
    .end local v5           #minuteString:Ljava/lang/String;
    .end local v6           #sBuilder:Ljava/lang/StringBuilder;
    .end local v7           #secondString:Ljava/lang/String;
    :cond_4
    iget v8, p1, Landroid/os/Message;->what:I

    const/4 v9, 0x3

    if-ne v8, v9, :cond_5

    .line 645
    iget-object v8, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController$1;->this$0:Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;

    #getter for: Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->mLocalMediaPlayer:Lcom/miui/videoplayer/framework/ui/LocalMediaPlayerControl;
    invoke-static {v8}, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->access$200(Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;)Lcom/miui/videoplayer/framework/ui/LocalMediaPlayerControl;

    move-result-object v8

    invoke-interface {v8}, Lcom/miui/videoplayer/framework/ui/LocalMediaPlayerControl;->isPlaying()Z

    move-result v8

    if-nez v8, :cond_5

    .line 646
    iget-object v8, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController$1;->this$0:Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;

    #getter for: Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->mLocalMediaPlayer:Lcom/miui/videoplayer/framework/ui/LocalMediaPlayerControl;
    invoke-static {v8}, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->access$200(Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;)Lcom/miui/videoplayer/framework/ui/LocalMediaPlayerControl;

    move-result-object v8

    invoke-interface {v8}, Lcom/miui/videoplayer/framework/ui/LocalMediaPlayerControl;->start()V

    .line 650
    :cond_5
    iget v8, p1, Landroid/os/Message;->what:I

    const/4 v9, 0x4

    if-ne v8, v9, :cond_6

    .line 651
    iget-object v8, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController$1;->this$0:Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;

    #getter for: Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->mAlertDialog:Landroid/app/AlertDialog;
    invoke-static {v8}, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->access$600(Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;)Landroid/app/AlertDialog;

    move-result-object v8

    if-eqz v8, :cond_6

    iget-object v8, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController$1;->this$0:Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;

    #getter for: Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->mAlertDialog:Landroid/app/AlertDialog;
    invoke-static {v8}, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->access$600(Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;)Landroid/app/AlertDialog;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v8

    if-eqz v8, :cond_6

    .line 652
    iget-object v8, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController$1;->this$0:Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;

    #getter for: Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->mAlertDialog:Landroid/app/AlertDialog;
    invoke-static {v8}, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->access$600(Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;)Landroid/app/AlertDialog;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/AlertDialog;->cancel()V

    .line 653
    iget-object v8, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController$1;->this$0:Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;

    #calls: Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->onCompletionCalled()V
    invoke-static {v8}, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->access$700(Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;)V

    .line 657
    :cond_6
    iget v8, p1, Landroid/os/Message;->what:I

    if-ne v8, v13, :cond_7

    .line 658
    iget-object v8, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController$1;->this$0:Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;

    #getter for: Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->mMediaController:Lcom/miui/videoplayer/framework/views/OriginMediaController;
    invoke-static {v8}, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->access$500(Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;)Lcom/miui/videoplayer/framework/views/OriginMediaController;

    move-result-object v8

    if-eqz v8, :cond_7

    iget-object v8, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController$1;->this$0:Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;

    #getter for: Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->mMediaController:Lcom/miui/videoplayer/framework/views/OriginMediaController;
    invoke-static {v8}, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->access$500(Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;)Lcom/miui/videoplayer/framework/views/OriginMediaController;

    move-result-object v8

    invoke-virtual {v8}, Lcom/miui/videoplayer/framework/views/OriginMediaController;->isShowing()Z

    move-result v8

    if-eqz v8, :cond_7

    iget-object v8, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController$1;->this$0:Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;

    #getter for: Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->mLocalMediaPlayer:Lcom/miui/videoplayer/framework/ui/LocalMediaPlayerControl;
    invoke-static {v8}, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->access$200(Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;)Lcom/miui/videoplayer/framework/ui/LocalMediaPlayerControl;

    move-result-object v8

    if-eqz v8, :cond_7

    .line 659
    iget-object v8, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController$1;->this$0:Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;

    #getter for: Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->mLocalMediaPlayer:Lcom/miui/videoplayer/framework/ui/LocalMediaPlayerControl;
    invoke-static {v8}, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->access$200(Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;)Lcom/miui/videoplayer/framework/ui/LocalMediaPlayerControl;

    move-result-object v8

    invoke-interface {v8}, Lcom/miui/videoplayer/framework/ui/LocalMediaPlayerControl;->isPlaying()Z

    move-result v8

    if-nez v8, :cond_8

    .line 660
    const/16 v0, 0x1f4

    .line 661
    .local v0, delay:I
    invoke-static {}, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->access$800()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Mediaplayer is not playing, query after"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "ms"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 662
    iget-object v8, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController$1;->this$0:Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;

    #getter for: Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->mHandler:Landroid/os/Handler;
    invoke-static {v8}, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->access$900(Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;)Landroid/os/Handler;

    move-result-object v8

    int-to-long v9, v0

    invoke-virtual {v8, v13, v9, v10}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 670
    .end local v0           #delay:I
    :cond_7
    :goto_0
    return-void

    .line 664
    :cond_8
    invoke-static {}, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->access$800()Ljava/lang/String;

    move-result-object v8

    const-string v9, "Mediaplayer is playing, show progress"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 665
    iget-object v8, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController$1;->this$0:Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;

    #getter for: Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->mMediaController:Lcom/miui/videoplayer/framework/views/OriginMediaController;
    invoke-static {v8}, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->access$500(Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;)Lcom/miui/videoplayer/framework/views/OriginMediaController;

    move-result-object v8

    invoke-virtual {v8, v11}, Lcom/miui/videoplayer/framework/views/OriginMediaController;->setUpdateProgressEnable(Z)V

    .line 666
    iget-object v8, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController$1;->this$0:Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;

    #getter for: Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->mMediaController:Lcom/miui/videoplayer/framework/views/OriginMediaController;
    invoke-static {v8}, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->access$500(Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;)Lcom/miui/videoplayer/framework/views/OriginMediaController;

    move-result-object v8

    invoke-virtual {v8, v12}, Lcom/miui/videoplayer/framework/views/OriginMediaController;->setUpdateProgressEnable(Z)V

    goto :goto_0
.end method
