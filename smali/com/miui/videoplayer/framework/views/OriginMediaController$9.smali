.class Lcom/miui/videoplayer/framework/views/OriginMediaController$9;
.super Ljava/lang/Object;
.source "OriginMediaController.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/videoplayer/framework/views/OriginMediaController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/videoplayer/framework/views/OriginMediaController;


# direct methods
.method constructor <init>(Lcom/miui/videoplayer/framework/views/OriginMediaController;)V
    .locals 0
    .parameter

    .prologue
    .line 666
    iput-object p1, p0, Lcom/miui/videoplayer/framework/views/OriginMediaController$9;->this$0:Lcom/miui/videoplayer/framework/views/OriginMediaController;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 11
    .parameter "bar"
    .parameter "progress"
    .parameter "fromuser"

    .prologue
    .line 685
    if-nez p3, :cond_0

    .line 715
    :goto_0
    return-void

    .line 691
    :cond_0
    iget-object v7, p0, Lcom/miui/videoplayer/framework/views/OriginMediaController$9;->this$0:Lcom/miui/videoplayer/framework/views/OriginMediaController;

    #getter for: Lcom/miui/videoplayer/framework/views/OriginMediaController;->mPlayer:Lcom/miui/videoplayer/framework/ui/MediaPlayerControl;
    invoke-static {v7}, Lcom/miui/videoplayer/framework/views/OriginMediaController;->access$500(Lcom/miui/videoplayer/framework/views/OriginMediaController;)Lcom/miui/videoplayer/framework/ui/MediaPlayerControl;

    move-result-object v7

    invoke-interface {v7}, Lcom/miui/videoplayer/framework/ui/MediaPlayerControl;->getCurrentPosition()I

    move-result v7

    int-to-long v0, v7

    .line 692
    .local v0, currentPosition:J
    iget-object v7, p0, Lcom/miui/videoplayer/framework/views/OriginMediaController$9;->this$0:Lcom/miui/videoplayer/framework/views/OriginMediaController;

    #getter for: Lcom/miui/videoplayer/framework/views/OriginMediaController;->mPlayer:Lcom/miui/videoplayer/framework/ui/MediaPlayerControl;
    invoke-static {v7}, Lcom/miui/videoplayer/framework/views/OriginMediaController;->access$500(Lcom/miui/videoplayer/framework/views/OriginMediaController;)Lcom/miui/videoplayer/framework/ui/MediaPlayerControl;

    move-result-object v7

    invoke-interface {v7}, Lcom/miui/videoplayer/framework/ui/MediaPlayerControl;->getDuration()I

    move-result v7

    int-to-long v2, v7

    .line 693
    .local v2, duration:J
    int-to-long v7, p2

    mul-long/2addr v7, v2

    const-wide/16 v9, 0x3e8

    div-long v5, v7, v9

    .line 697
    .local v5, newposition:J
    iget-object v7, p0, Lcom/miui/videoplayer/framework/views/OriginMediaController$9;->this$0:Lcom/miui/videoplayer/framework/views/OriginMediaController;

    #getter for: Lcom/miui/videoplayer/framework/views/OriginMediaController;->mPlayer:Lcom/miui/videoplayer/framework/ui/MediaPlayerControl;
    invoke-static {v7}, Lcom/miui/videoplayer/framework/views/OriginMediaController;->access$500(Lcom/miui/videoplayer/framework/views/OriginMediaController;)Lcom/miui/videoplayer/framework/ui/MediaPlayerControl;

    move-result-object v7

    long-to-int v8, v5

    invoke-interface {v7, v8}, Lcom/miui/videoplayer/framework/ui/MediaPlayerControl;->seekTo(I)V

    .line 698
    iget-object v7, p0, Lcom/miui/videoplayer/framework/views/OriginMediaController$9;->this$0:Lcom/miui/videoplayer/framework/views/OriginMediaController;

    #getter for: Lcom/miui/videoplayer/framework/views/OriginMediaController;->mCurrentTime:Landroid/widget/TextView;
    invoke-static {v7}, Lcom/miui/videoplayer/framework/views/OriginMediaController;->access$1800(Lcom/miui/videoplayer/framework/views/OriginMediaController;)Landroid/widget/TextView;

    move-result-object v7

    if-eqz v7, :cond_1

    .line 699
    iget-object v7, p0, Lcom/miui/videoplayer/framework/views/OriginMediaController$9;->this$0:Lcom/miui/videoplayer/framework/views/OriginMediaController;

    #getter for: Lcom/miui/videoplayer/framework/views/OriginMediaController;->mCurrentTime:Landroid/widget/TextView;
    invoke-static {v7}, Lcom/miui/videoplayer/framework/views/OriginMediaController;->access$1800(Lcom/miui/videoplayer/framework/views/OriginMediaController;)Landroid/widget/TextView;

    move-result-object v7

    invoke-static {}, Lcom/miui/videoplayer/framework/utils/DKTimeFormatter;->getInstance()Lcom/miui/videoplayer/framework/utils/DKTimeFormatter;

    move-result-object v8

    long-to-int v9, v5

    invoke-virtual {v8, v9}, Lcom/miui/videoplayer/framework/utils/DKTimeFormatter;->stringForTime(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 702
    :cond_1
    iget-object v7, p0, Lcom/miui/videoplayer/framework/views/OriginMediaController$9;->this$0:Lcom/miui/videoplayer/framework/views/OriginMediaController;

    #getter for: Lcom/miui/videoplayer/framework/views/OriginMediaController;->mProgressTimePopupWindow:Lcom/miui/videoplayer/framework/popup/ProgressTimePopupWindow;
    invoke-static {v7}, Lcom/miui/videoplayer/framework/views/OriginMediaController;->access$600(Lcom/miui/videoplayer/framework/views/OriginMediaController;)Lcom/miui/videoplayer/framework/popup/ProgressTimePopupWindow;

    move-result-object v7

    if-nez v7, :cond_2

    .line 703
    iget-object v7, p0, Lcom/miui/videoplayer/framework/views/OriginMediaController$9;->this$0:Lcom/miui/videoplayer/framework/views/OriginMediaController;

    new-instance v8, Lcom/miui/videoplayer/framework/popup/ProgressTimePopupWindow;

    iget-object v9, p0, Lcom/miui/videoplayer/framework/views/OriginMediaController$9;->this$0:Lcom/miui/videoplayer/framework/views/OriginMediaController;

    #getter for: Lcom/miui/videoplayer/framework/views/OriginMediaController;->mContext:Landroid/content/Context;
    invoke-static {v9}, Lcom/miui/videoplayer/framework/views/OriginMediaController;->access$1500(Lcom/miui/videoplayer/framework/views/OriginMediaController;)Landroid/content/Context;

    move-result-object v9

    const/4 v10, 0x1

    invoke-direct {v8, v9, v10}, Lcom/miui/videoplayer/framework/popup/ProgressTimePopupWindow;-><init>(Landroid/content/Context;Z)V

    #setter for: Lcom/miui/videoplayer/framework/views/OriginMediaController;->mProgressTimePopupWindow:Lcom/miui/videoplayer/framework/popup/ProgressTimePopupWindow;
    invoke-static {v7, v8}, Lcom/miui/videoplayer/framework/views/OriginMediaController;->access$602(Lcom/miui/videoplayer/framework/views/OriginMediaController;Lcom/miui/videoplayer/framework/popup/ProgressTimePopupWindow;)Lcom/miui/videoplayer/framework/popup/ProgressTimePopupWindow;

    .line 704
    iget-object v7, p0, Lcom/miui/videoplayer/framework/views/OriginMediaController$9;->this$0:Lcom/miui/videoplayer/framework/views/OriginMediaController;

    #getter for: Lcom/miui/videoplayer/framework/views/OriginMediaController;->mProgressTimePopupWindow:Lcom/miui/videoplayer/framework/popup/ProgressTimePopupWindow;
    invoke-static {v7}, Lcom/miui/videoplayer/framework/views/OriginMediaController;->access$600(Lcom/miui/videoplayer/framework/views/OriginMediaController;)Lcom/miui/videoplayer/framework/popup/ProgressTimePopupWindow;

    move-result-object v7

    iget-object v8, p0, Lcom/miui/videoplayer/framework/views/OriginMediaController$9;->this$0:Lcom/miui/videoplayer/framework/views/OriginMediaController;

    #getter for: Lcom/miui/videoplayer/framework/views/OriginMediaController;->mTopStatusBarPopupWindow:Lcom/miui/videoplayer/framework/popup/TopStatusBarPopupWindow;
    invoke-static {v8}, Lcom/miui/videoplayer/framework/views/OriginMediaController;->access$1900(Lcom/miui/videoplayer/framework/views/OriginMediaController;)Lcom/miui/videoplayer/framework/popup/TopStatusBarPopupWindow;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/miui/videoplayer/framework/popup/ProgressTimePopupWindow;->setTopStatusBarPopupWindow(Lcom/miui/videoplayer/framework/popup/TopStatusBarPopupWindow;)V

    .line 706
    :cond_2
    iget-object v7, p0, Lcom/miui/videoplayer/framework/views/OriginMediaController$9;->this$0:Lcom/miui/videoplayer/framework/views/OriginMediaController;

    #getter for: Lcom/miui/videoplayer/framework/views/OriginMediaController;->mProgressTimePopupWindow:Lcom/miui/videoplayer/framework/popup/ProgressTimePopupWindow;
    invoke-static {v7}, Lcom/miui/videoplayer/framework/views/OriginMediaController;->access$600(Lcom/miui/videoplayer/framework/views/OriginMediaController;)Lcom/miui/videoplayer/framework/popup/ProgressTimePopupWindow;

    move-result-object v7

    invoke-virtual {v7}, Lcom/miui/videoplayer/framework/popup/ProgressTimePopupWindow;->isShowing()Z

    move-result v7

    if-nez v7, :cond_3

    iget-object v7, p0, Lcom/miui/videoplayer/framework/views/OriginMediaController$9;->this$0:Lcom/miui/videoplayer/framework/views/OriginMediaController;

    #getter for: Lcom/miui/videoplayer/framework/views/OriginMediaController;->mAirKanManager:Lcom/miui/videoplayer/framework/airkan/AirkanManager;
    invoke-static {v7}, Lcom/miui/videoplayer/framework/views/OriginMediaController;->access$700(Lcom/miui/videoplayer/framework/views/OriginMediaController;)Lcom/miui/videoplayer/framework/airkan/AirkanManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/miui/videoplayer/framework/airkan/AirkanManager;->isPlayingInLocal()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 707
    iget-object v7, p0, Lcom/miui/videoplayer/framework/views/OriginMediaController$9;->this$0:Lcom/miui/videoplayer/framework/views/OriginMediaController;

    #getter for: Lcom/miui/videoplayer/framework/views/OriginMediaController;->mContext:Landroid/content/Context;
    invoke-static {v7}, Lcom/miui/videoplayer/framework/views/OriginMediaController;->access$1500(Lcom/miui/videoplayer/framework/views/OriginMediaController;)Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f070028

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    float-to-int v4, v7

    .line 708
    .local v4, marginTop:I
    iget-object v7, p0, Lcom/miui/videoplayer/framework/views/OriginMediaController$9;->this$0:Lcom/miui/videoplayer/framework/views/OriginMediaController;

    #getter for: Lcom/miui/videoplayer/framework/views/OriginMediaController;->mProgressTimePopupWindow:Lcom/miui/videoplayer/framework/popup/ProgressTimePopupWindow;
    invoke-static {v7}, Lcom/miui/videoplayer/framework/views/OriginMediaController;->access$600(Lcom/miui/videoplayer/framework/views/OriginMediaController;)Lcom/miui/videoplayer/framework/popup/ProgressTimePopupWindow;

    move-result-object v7

    iget-object v8, p0, Lcom/miui/videoplayer/framework/views/OriginMediaController$9;->this$0:Lcom/miui/videoplayer/framework/views/OriginMediaController;

    #getter for: Lcom/miui/videoplayer/framework/views/OriginMediaController;->mAnchor:Landroid/view/View;
    invoke-static {v8}, Lcom/miui/videoplayer/framework/views/OriginMediaController;->access$2000(Lcom/miui/videoplayer/framework/views/OriginMediaController;)Landroid/view/View;

    move-result-object v8

    const/16 v9, 0x30

    const/4 v10, 0x0

    invoke-virtual {v7, v8, v9, v10, v4}, Lcom/miui/videoplayer/framework/popup/ProgressTimePopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 710
    .end local v4           #marginTop:I
    :cond_3
    iget-object v7, p0, Lcom/miui/videoplayer/framework/views/OriginMediaController$9;->this$0:Lcom/miui/videoplayer/framework/views/OriginMediaController;

    #getter for: Lcom/miui/videoplayer/framework/views/OriginMediaController;->mProgressTimePopupWindow:Lcom/miui/videoplayer/framework/popup/ProgressTimePopupWindow;
    invoke-static {v7}, Lcom/miui/videoplayer/framework/views/OriginMediaController;->access$600(Lcom/miui/videoplayer/framework/views/OriginMediaController;)Lcom/miui/videoplayer/framework/popup/ProgressTimePopupWindow;

    move-result-object v8

    cmp-long v7, v5, v0

    if-lez v7, :cond_4

    const/4 v7, 0x1

    :goto_1
    invoke-virtual {v8, v7}, Lcom/miui/videoplayer/framework/popup/ProgressTimePopupWindow;->setOrientation(Z)V

    .line 711
    iget-object v7, p0, Lcom/miui/videoplayer/framework/views/OriginMediaController$9;->this$0:Lcom/miui/videoplayer/framework/views/OriginMediaController;

    #getter for: Lcom/miui/videoplayer/framework/views/OriginMediaController;->mProgressTimePopupWindow:Lcom/miui/videoplayer/framework/popup/ProgressTimePopupWindow;
    invoke-static {v7}, Lcom/miui/videoplayer/framework/views/OriginMediaController;->access$600(Lcom/miui/videoplayer/framework/views/OriginMediaController;)Lcom/miui/videoplayer/framework/popup/ProgressTimePopupWindow;

    move-result-object v7

    long-to-int v8, v5

    invoke-virtual {v7, v8}, Lcom/miui/videoplayer/framework/popup/ProgressTimePopupWindow;->updatePosition(I)V

    .line 713
    iget-object v7, p0, Lcom/miui/videoplayer/framework/views/OriginMediaController$9;->this$0:Lcom/miui/videoplayer/framework/views/OriginMediaController;

    #getter for: Lcom/miui/videoplayer/framework/views/OriginMediaController;->mHandler:Landroid/os/Handler;
    invoke-static {v7}, Lcom/miui/videoplayer/framework/views/OriginMediaController;->access$100(Lcom/miui/videoplayer/framework/views/OriginMediaController;)Landroid/os/Handler;

    move-result-object v7

    const/4 v8, 0x3

    invoke-virtual {v7, v8}, Landroid/os/Handler;->removeMessages(I)V

    .line 714
    iget-object v7, p0, Lcom/miui/videoplayer/framework/views/OriginMediaController$9;->this$0:Lcom/miui/videoplayer/framework/views/OriginMediaController;

    #getter for: Lcom/miui/videoplayer/framework/views/OriginMediaController;->mHandler:Landroid/os/Handler;
    invoke-static {v7}, Lcom/miui/videoplayer/framework/views/OriginMediaController;->access$100(Lcom/miui/videoplayer/framework/views/OriginMediaController;)Landroid/os/Handler;

    move-result-object v7

    const/4 v8, 0x3

    const-wide/16 v9, 0x3e8

    invoke-virtual {v7, v8, v9, v10}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 710
    :cond_4
    const/4 v7, 0x0

    goto :goto_1
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 2
    .parameter "bar"

    .prologue
    .line 668
    iget-object v0, p0, Lcom/miui/videoplayer/framework/views/OriginMediaController$9;->this$0:Lcom/miui/videoplayer/framework/views/OriginMediaController;

    const v1, 0x36ee80

    invoke-virtual {v0, v1}, Lcom/miui/videoplayer/framework/views/OriginMediaController;->show(I)V

    .line 670
    iget-object v0, p0, Lcom/miui/videoplayer/framework/views/OriginMediaController$9;->this$0:Lcom/miui/videoplayer/framework/views/OriginMediaController;

    #getter for: Lcom/miui/videoplayer/framework/views/OriginMediaController;->mPlayer:Lcom/miui/videoplayer/framework/ui/MediaPlayerControl;
    invoke-static {v0}, Lcom/miui/videoplayer/framework/views/OriginMediaController;->access$500(Lcom/miui/videoplayer/framework/views/OriginMediaController;)Lcom/miui/videoplayer/framework/ui/MediaPlayerControl;

    move-result-object v0

    invoke-interface {v0}, Lcom/miui/videoplayer/framework/ui/MediaPlayerControl;->pause()V

    .line 672
    iget-object v0, p0, Lcom/miui/videoplayer/framework/views/OriginMediaController$9;->this$0:Lcom/miui/videoplayer/framework/views/OriginMediaController;

    const/4 v1, 0x1

    #setter for: Lcom/miui/videoplayer/framework/views/OriginMediaController;->mDragging:Z
    invoke-static {v0, v1}, Lcom/miui/videoplayer/framework/views/OriginMediaController;->access$302(Lcom/miui/videoplayer/framework/views/OriginMediaController;Z)Z

    .line 679
    iget-object v0, p0, Lcom/miui/videoplayer/framework/views/OriginMediaController$9;->this$0:Lcom/miui/videoplayer/framework/views/OriginMediaController;

    #getter for: Lcom/miui/videoplayer/framework/views/OriginMediaController;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/miui/videoplayer/framework/views/OriginMediaController;->access$100(Lcom/miui/videoplayer/framework/views/OriginMediaController;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 680
    iget-object v0, p0, Lcom/miui/videoplayer/framework/views/OriginMediaController$9;->this$0:Lcom/miui/videoplayer/framework/views/OriginMediaController;

    #getter for: Lcom/miui/videoplayer/framework/views/OriginMediaController;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/miui/videoplayer/framework/views/OriginMediaController;->access$100(Lcom/miui/videoplayer/framework/views/OriginMediaController;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 681
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 2
    .parameter "bar"

    .prologue
    .line 718
    iget-object v0, p0, Lcom/miui/videoplayer/framework/views/OriginMediaController$9;->this$0:Lcom/miui/videoplayer/framework/views/OriginMediaController;

    #getter for: Lcom/miui/videoplayer/framework/views/OriginMediaController;->mPlayer:Lcom/miui/videoplayer/framework/ui/MediaPlayerControl;
    invoke-static {v0}, Lcom/miui/videoplayer/framework/views/OriginMediaController;->access$500(Lcom/miui/videoplayer/framework/views/OriginMediaController;)Lcom/miui/videoplayer/framework/ui/MediaPlayerControl;

    move-result-object v0

    invoke-interface {v0}, Lcom/miui/videoplayer/framework/ui/MediaPlayerControl;->start()V

    .line 719
    iget-object v0, p0, Lcom/miui/videoplayer/framework/views/OriginMediaController$9;->this$0:Lcom/miui/videoplayer/framework/views/OriginMediaController;

    const/4 v1, 0x0

    #setter for: Lcom/miui/videoplayer/framework/views/OriginMediaController;->mDragging:Z
    invoke-static {v0, v1}, Lcom/miui/videoplayer/framework/views/OriginMediaController;->access$302(Lcom/miui/videoplayer/framework/views/OriginMediaController;Z)Z

    .line 720
    iget-object v0, p0, Lcom/miui/videoplayer/framework/views/OriginMediaController$9;->this$0:Lcom/miui/videoplayer/framework/views/OriginMediaController;

    #calls: Lcom/miui/videoplayer/framework/views/OriginMediaController;->setProgress()I
    invoke-static {v0}, Lcom/miui/videoplayer/framework/views/OriginMediaController;->access$200(Lcom/miui/videoplayer/framework/views/OriginMediaController;)I

    .line 721
    iget-object v0, p0, Lcom/miui/videoplayer/framework/views/OriginMediaController$9;->this$0:Lcom/miui/videoplayer/framework/views/OriginMediaController;

    #calls: Lcom/miui/videoplayer/framework/views/OriginMediaController;->updatePausePlay()V
    invoke-static {v0}, Lcom/miui/videoplayer/framework/views/OriginMediaController;->access$2100(Lcom/miui/videoplayer/framework/views/OriginMediaController;)V

    .line 722
    iget-object v0, p0, Lcom/miui/videoplayer/framework/views/OriginMediaController$9;->this$0:Lcom/miui/videoplayer/framework/views/OriginMediaController;

    const/16 v1, 0xbb8

    invoke-virtual {v0, v1}, Lcom/miui/videoplayer/framework/views/OriginMediaController;->show(I)V

    .line 727
    iget-object v0, p0, Lcom/miui/videoplayer/framework/views/OriginMediaController$9;->this$0:Lcom/miui/videoplayer/framework/views/OriginMediaController;

    #getter for: Lcom/miui/videoplayer/framework/views/OriginMediaController;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/miui/videoplayer/framework/views/OriginMediaController;->access$100(Lcom/miui/videoplayer/framework/views/OriginMediaController;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 728
    return-void
.end method
