.class Lcom/miui/videoplayer/framework/ui/DuoKanMediaController$BufferingProgressDialog;
.super Landroid/app/Dialog;
.source "DuoKanMediaController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BufferingProgressDialog"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mOnKeyDownListener:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 1565
    const/high16 v0, 0x7f08

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 1566
    iput-object p1, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController$BufferingProgressDialog;->mContext:Landroid/content/Context;

    .line 1568
    invoke-direct {p0}, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController$BufferingProgressDialog;->setupViews()V

    .line 1569
    return-void
.end method

.method private setupViews()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1572
    const v0, 0x7f030008

    invoke-virtual {p0, v0}, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController$BufferingProgressDialog;->setContentView(I)V

    .line 1573
    invoke-virtual {p0, v1}, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController$BufferingProgressDialog;->setCancelable(Z)V

    .line 1574
    invoke-virtual {p0, v1}, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController$BufferingProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 1575
    return-void
.end method


# virtual methods
.method public dismissAndFinishActivity(Landroid/app/Activity;)V
    .locals 1
    .parameter "activity"

    .prologue
    .line 1598
    invoke-virtual {p0}, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController$BufferingProgressDialog;->dismiss()V

    .line 1599
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1600
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    .line 1602
    :cond_0
    return-void
.end method

.method public onBackPressed()V
    .locals 4

    .prologue
    const/4 v3, 0x4

    .line 1591
    invoke-super {p0}, Landroid/app/Dialog;->onBackPressed()V

    .line 1592
    iget-object v0, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController$BufferingProgressDialog;->mOnKeyDownListener:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1593
    iget-object v0, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController$BufferingProgressDialog;->mOnKeyDownListener:Landroid/view/View;

    new-instance v1, Landroid/view/KeyEvent;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v3}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-virtual {v0, v3, v1}, Landroid/view/View;->onKeyDown(ILandroid/view/KeyEvent;)Z

    .line 1595
    :cond_0
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 1579
    const/16 v0, 0x19

    if-eq p1, v0, :cond_0

    const/16 v0, 0x18

    if-ne p1, v0, :cond_1

    .line 1580
    :cond_0
    const/4 v0, 0x1

    .line 1582
    :goto_0
    return v0

    :cond_1
    invoke-super {p0, p1, p2}, Landroid/app/Dialog;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public setOnKeyDownListener(Landroid/view/View;)V
    .locals 0
    .parameter "onKeyDownListener"

    .prologue
    .line 1586
    iput-object p1, p0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController$BufferingProgressDialog;->mOnKeyDownListener:Landroid/view/View;

    .line 1587
    return-void
.end method
