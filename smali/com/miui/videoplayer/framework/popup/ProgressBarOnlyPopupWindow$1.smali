.class Lcom/miui/videoplayer/framework/popup/ProgressBarOnlyPopupWindow$1;
.super Ljava/lang/Object;
.source "ProgressBarOnlyPopupWindow.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/videoplayer/framework/popup/ProgressBarOnlyPopupWindow;->setupWindows()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private originalProgress:I

.field final synthetic this$0:Lcom/miui/videoplayer/framework/popup/ProgressBarOnlyPopupWindow;


# direct methods
.method constructor <init>(Lcom/miui/videoplayer/framework/popup/ProgressBarOnlyPopupWindow;)V
    .locals 0
    .parameter

    .prologue
    .line 46
    iput-object p1, p0, Lcom/miui/videoplayer/framework/popup/ProgressBarOnlyPopupWindow$1;->this$0:Lcom/miui/videoplayer/framework/popup/ProgressBarOnlyPopupWindow;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 1
    .parameter "seekBar"
    .parameter "progress"
    .parameter "fromUser"

    .prologue
    .line 61
    if-eqz p3, :cond_0

    .line 62
    iget v0, p0, Lcom/miui/videoplayer/framework/popup/ProgressBarOnlyPopupWindow$1;->originalProgress:I

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 64
    :cond_0
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1
    .parameter "seekBar"

    .prologue
    .line 56
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    iput v0, p0, Lcom/miui/videoplayer/framework/popup/ProgressBarOnlyPopupWindow$1;->originalProgress:I

    .line 57
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .parameter "seekBar"

    .prologue
    .line 52
    return-void
.end method
