.class Lcom/miui/videoplayer/framework/popup/ReceiveEventV5PopupWindow$1;
.super Ljava/lang/Object;
.source "ReceiveEventV5PopupWindow.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/videoplayer/framework/popup/ReceiveEventV5PopupWindow;->setupViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/videoplayer/framework/popup/ReceiveEventV5PopupWindow;


# direct methods
.method constructor <init>(Lcom/miui/videoplayer/framework/popup/ReceiveEventV5PopupWindow;)V
    .locals 0
    .parameter

    .prologue
    .line 37
    iput-object p1, p0, Lcom/miui/videoplayer/framework/popup/ReceiveEventV5PopupWindow$1;->this$0:Lcom/miui/videoplayer/framework/popup/ReceiveEventV5PopupWindow;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "v"
    .parameter "event"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/miui/videoplayer/framework/popup/ReceiveEventV5PopupWindow$1;->this$0:Lcom/miui/videoplayer/framework/popup/ReceiveEventV5PopupWindow;

    #getter for: Lcom/miui/videoplayer/framework/popup/ReceiveEventV5PopupWindow;->mDuoKanMediaController:Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;
    invoke-static {v0}, Lcom/miui/videoplayer/framework/popup/ReceiveEventV5PopupWindow;->access$000(Lcom/miui/videoplayer/framework/popup/ReceiveEventV5PopupWindow;)Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 42
    const/4 v0, 0x0

    return v0
.end method
