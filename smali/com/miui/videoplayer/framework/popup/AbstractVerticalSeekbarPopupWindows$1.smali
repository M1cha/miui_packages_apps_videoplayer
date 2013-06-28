.class Lcom/miui/videoplayer/framework/popup/AbstractVerticalSeekbarPopupWindows$1;
.super Ljava/lang/Object;
.source "AbstractVerticalSeekbarPopupWindows.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/videoplayer/framework/popup/AbstractVerticalSeekbarPopupWindows;->setupWindows()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private originalProgress:I

.field final synthetic this$0:Lcom/miui/videoplayer/framework/popup/AbstractVerticalSeekbarPopupWindows;


# direct methods
.method constructor <init>(Lcom/miui/videoplayer/framework/popup/AbstractVerticalSeekbarPopupWindows;)V
    .locals 0
    .parameter

    .prologue
    .line 67
    iput-object p1, p0, Lcom/miui/videoplayer/framework/popup/AbstractVerticalSeekbarPopupWindows$1;->this$0:Lcom/miui/videoplayer/framework/popup/AbstractVerticalSeekbarPopupWindows;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 2
    .parameter "seekBar"
    .parameter "progress"
    .parameter "fromUser"

    .prologue
    .line 82
    if-eqz p3, :cond_0

    .line 83
    iget v0, p0, Lcom/miui/videoplayer/framework/popup/AbstractVerticalSeekbarPopupWindows$1;->originalProgress:I

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 88
    :goto_0
    return-void

    .line 85
    :cond_0
    iget-object v0, p0, Lcom/miui/videoplayer/framework/popup/AbstractVerticalSeekbarPopupWindows$1;->this$0:Lcom/miui/videoplayer/framework/popup/AbstractVerticalSeekbarPopupWindows;

    #getter for: Lcom/miui/videoplayer/framework/popup/AbstractVerticalSeekbarPopupWindows;->mSeekbar:Landroid/widget/SeekBar;
    invoke-static {v0}, Lcom/miui/videoplayer/framework/popup/AbstractVerticalSeekbarPopupWindows;->access$000(Lcom/miui/videoplayer/framework/popup/AbstractVerticalSeekbarPopupWindows;)Landroid/widget/SeekBar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setPressed(Z)V

    goto :goto_0
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1
    .parameter "seekBar"

    .prologue
    .line 77
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    iput v0, p0, Lcom/miui/videoplayer/framework/popup/AbstractVerticalSeekbarPopupWindows$1;->originalProgress:I

    .line 78
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .parameter "seekBar"

    .prologue
    .line 73
    return-void
.end method
