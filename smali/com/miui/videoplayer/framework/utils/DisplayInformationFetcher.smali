.class public Lcom/miui/videoplayer/framework/utils/DisplayInformationFetcher;
.super Ljava/lang/Object;
.source "DisplayInformationFetcher.java"


# static fields
.field public static final SCREEN_LAND:I = 0x0

.field public static final SCREEN_PORT:I = 0x1

.field private static sInstance:Lcom/miui/videoplayer/framework/utils/DisplayInformationFetcher;


# instance fields
.field private mDefaultDisplay:Landroid/view/Display;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 18
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const-string v1, "window"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 20
    .local v0, wm:Landroid/view/WindowManager;
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/videoplayer/framework/utils/DisplayInformationFetcher;->mDefaultDisplay:Landroid/view/Display;

    .line 21
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/miui/videoplayer/framework/utils/DisplayInformationFetcher;
    .locals 1
    .parameter "context"

    .prologue
    .line 24
    sget-object v0, Lcom/miui/videoplayer/framework/utils/DisplayInformationFetcher;->sInstance:Lcom/miui/videoplayer/framework/utils/DisplayInformationFetcher;

    if-nez v0, :cond_0

    .line 25
    new-instance v0, Lcom/miui/videoplayer/framework/utils/DisplayInformationFetcher;

    invoke-direct {v0, p0}, Lcom/miui/videoplayer/framework/utils/DisplayInformationFetcher;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/miui/videoplayer/framework/utils/DisplayInformationFetcher;->sInstance:Lcom/miui/videoplayer/framework/utils/DisplayInformationFetcher;

    .line 27
    :cond_0
    sget-object v0, Lcom/miui/videoplayer/framework/utils/DisplayInformationFetcher;->sInstance:Lcom/miui/videoplayer/framework/utils/DisplayInformationFetcher;

    return-object v0
.end method


# virtual methods
.method public getDisplayMetrics()Landroid/util/DisplayMetrics;
    .locals 2

    .prologue
    .line 53
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 54
    .local v0, dm:Landroid/util/DisplayMetrics;
    iget-object v1, p0, Lcom/miui/videoplayer/framework/utils/DisplayInformationFetcher;->mDefaultDisplay:Landroid/view/Display;

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 55
    return-object v0
.end method

.method public getScreenHeight()I
    .locals 2

    .prologue
    .line 37
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 38
    .local v0, point:Landroid/graphics/Point;
    iget-object v1, p0, Lcom/miui/videoplayer/framework/utils/DisplayInformationFetcher;->mDefaultDisplay:Landroid/view/Display;

    invoke-virtual {v1, v0}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 39
    iget v1, v0, Landroid/graphics/Point;->y:I

    return v1
.end method

.method public getScreenOrientation()I
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 43
    iget-object v3, p0, Lcom/miui/videoplayer/framework/utils/DisplayInformationFetcher;->mDefaultDisplay:Landroid/view/Display;

    invoke-virtual {v3}, Landroid/view/Display;->getRotation()I

    move-result v0

    .line 44
    .local v0, rotation:I
    if-eqz v0, :cond_0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_2

    :cond_0
    move v1, v2

    .line 49
    :cond_1
    :goto_0
    return v1

    .line 46
    :cond_2
    if-eq v0, v2, :cond_1

    const/4 v2, 0x3

    if-ne v0, v2, :cond_1

    goto :goto_0
.end method

.method public getScreenWidth()I
    .locals 2

    .prologue
    .line 31
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 32
    .local v0, point:Landroid/graphics/Point;
    iget-object v1, p0, Lcom/miui/videoplayer/framework/utils/DisplayInformationFetcher;->mDefaultDisplay:Landroid/view/Display;

    invoke-virtual {v1, v0}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 33
    iget v1, v0, Landroid/graphics/Point;->x:I

    return v1
.end method
