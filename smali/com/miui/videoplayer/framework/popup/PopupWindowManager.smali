.class public Lcom/miui/videoplayer/framework/popup/PopupWindowManager;
.super Ljava/lang/Object;
.source "PopupWindowManager.java"


# static fields
.field private static mInstance:Lcom/miui/videoplayer/framework/popup/PopupWindowManager;


# instance fields
.field private mWeakPopupWindowList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/miui/videoplayer/framework/popup/ManagedPopupWindow;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 10
    new-instance v0, Lcom/miui/videoplayer/framework/popup/PopupWindowManager;

    invoke-direct {v0}, Lcom/miui/videoplayer/framework/popup/PopupWindowManager;-><init>()V

    sput-object v0, Lcom/miui/videoplayer/framework/popup/PopupWindowManager;->mInstance:Lcom/miui/videoplayer/framework/popup/PopupWindowManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 11
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/videoplayer/framework/popup/PopupWindowManager;->mWeakPopupWindowList:Ljava/util/List;

    .line 14
    return-void
.end method

.method public static getInstance()Lcom/miui/videoplayer/framework/popup/PopupWindowManager;
    .locals 1

    .prologue
    .line 17
    sget-object v0, Lcom/miui/videoplayer/framework/popup/PopupWindowManager;->mInstance:Lcom/miui/videoplayer/framework/popup/PopupWindowManager;

    return-object v0
.end method

.method private getWeakReference(Lcom/miui/videoplayer/framework/popup/ManagedPopupWindow;)Ljava/lang/ref/WeakReference;
    .locals 3
    .parameter "popupWindow"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/videoplayer/framework/popup/ManagedPopupWindow;",
            ")",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/miui/videoplayer/framework/popup/ManagedPopupWindow;",
            ">;"
        }
    .end annotation

    .prologue
    .line 39
    iget-object v2, p0, Lcom/miui/videoplayer/framework/popup/PopupWindowManager;->mWeakPopupWindowList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 40
    .local v1, wr:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Lcom/miui/videoplayer/framework/popup/ManagedPopupWindow;>;"
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/videoplayer/framework/popup/ManagedPopupWindow;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 44
    .end local v1           #wr:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Lcom/miui/videoplayer/framework/popup/ManagedPopupWindow;>;"
    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public addShowingPopupWindow(Lcom/miui/videoplayer/framework/popup/ManagedPopupWindow;)V
    .locals 3
    .parameter "popupWindow"

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lcom/miui/videoplayer/framework/popup/PopupWindowManager;->getWeakReference(Lcom/miui/videoplayer/framework/popup/ManagedPopupWindow;)Ljava/lang/ref/WeakReference;

    move-result-object v1

    .line 22
    .local v1, wr:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Lcom/miui/videoplayer/framework/popup/ManagedPopupWindow;>;"
    if-nez v1, :cond_0

    .line 23
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 25
    .local v0, newWeakReferPopupWindow:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Lcom/miui/videoplayer/framework/popup/ManagedPopupWindow;>;"
    iget-object v2, p0, Lcom/miui/videoplayer/framework/popup/PopupWindowManager;->mWeakPopupWindowList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 27
    .end local v0           #newWeakReferPopupWindow:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Lcom/miui/videoplayer/framework/popup/ManagedPopupWindow;>;"
    :cond_0
    return-void
.end method

.method public dimissAllManagedPopupWindow()V
    .locals 4

    .prologue
    .line 48
    iget-object v2, p0, Lcom/miui/videoplayer/framework/popup/PopupWindowManager;->mWeakPopupWindowList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 49
    .local v1, wr:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Lcom/miui/videoplayer/framework/popup/ManagedPopupWindow;>;"
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/videoplayer/framework/popup/ManagedPopupWindow;

    invoke-virtual {v2}, Lcom/miui/videoplayer/framework/popup/ManagedPopupWindow;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 51
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/videoplayer/framework/popup/ManagedPopupWindow;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/miui/videoplayer/framework/popup/ManagedPopupWindow;->dismiss(Z)V

    goto :goto_0

    .line 54
    .end local v1           #wr:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Lcom/miui/videoplayer/framework/popup/ManagedPopupWindow;>;"
    :cond_1
    iget-object v2, p0, Lcom/miui/videoplayer/framework/popup/PopupWindowManager;->mWeakPopupWindowList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 55
    return-void
.end method

.method public removeShowingPopupWindow(Lcom/miui/videoplayer/framework/popup/ManagedPopupWindow;)V
    .locals 2
    .parameter "popupWindow"

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/miui/videoplayer/framework/popup/PopupWindowManager;->getWeakReference(Lcom/miui/videoplayer/framework/popup/ManagedPopupWindow;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    .line 32
    .local v0, wr:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Lcom/miui/videoplayer/framework/popup/ManagedPopupWindow;>;"
    if-eqz v0, :cond_0

    .line 34
    iget-object v1, p0, Lcom/miui/videoplayer/framework/popup/PopupWindowManager;->mWeakPopupWindowList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 36
    :cond_0
    return-void
.end method
