.class public Lcom/miui/videoplayer/framework/popup/AirKanDevicesPopupWindowV5;
.super Lcom/miui/videoplayer/framework/popup/PauseMediaPlayerPopupWindow;
.source "AirKanDevicesPopupWindowV5.java"

# interfaces
.implements Lcom/duokan/airkan/phone/api/DeviceManager$OnDeviceChangeListener;
.implements Lcom/miui/videoplayer/framework/popup/IAirKanDevicesPopupWindow;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/videoplayer/framework/popup/AirKanDevicesPopupWindowV5$AirkanDevicesArrayAdapter;
    }
.end annotation


# static fields
.field private static final MESSAGE_WHAT_QUERY_DEVICE_LIST:I

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAirKanManager:Lcom/miui/videoplayer/framework/airkan/AirkanManager;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mListView:Landroid/widget/ListView;

.field private mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private mVideoUri:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const-class v0, Lcom/miui/videoplayer/framework/popup/AirKanDevicesPopupWindowV5;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/videoplayer/framework/popup/AirKanDevicesPopupWindowV5;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/miui/videoplayer/framework/airkan/AirkanManager;)V
    .locals 4
    .parameter "context"
    .parameter "airkanManager"

    .prologue
    .line 41
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f03001a

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lcom/miui/videoplayer/framework/popup/PauseMediaPlayerPopupWindow;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 67
    new-instance v1, Lcom/miui/videoplayer/framework/popup/AirKanDevicesPopupWindowV5$1;

    invoke-direct {v1, p0}, Lcom/miui/videoplayer/framework/popup/AirKanDevicesPopupWindowV5$1;-><init>(Lcom/miui/videoplayer/framework/popup/AirKanDevicesPopupWindowV5;)V

    iput-object v1, p0, Lcom/miui/videoplayer/framework/popup/AirKanDevicesPopupWindowV5;->mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 164
    new-instance v1, Lcom/miui/videoplayer/framework/popup/AirKanDevicesPopupWindowV5$3;

    invoke-direct {v1, p0}, Lcom/miui/videoplayer/framework/popup/AirKanDevicesPopupWindowV5$3;-><init>(Lcom/miui/videoplayer/framework/popup/AirKanDevicesPopupWindowV5;)V

    iput-object v1, p0, Lcom/miui/videoplayer/framework/popup/AirKanDevicesPopupWindowV5;->mHandler:Landroid/os/Handler;

    .line 43
    iput-object p1, p0, Lcom/miui/videoplayer/framework/popup/AirKanDevicesPopupWindowV5;->mContext:Landroid/content/Context;

    .line 44
    iput-object p2, p0, Lcom/miui/videoplayer/framework/popup/AirKanDevicesPopupWindowV5;->mAirKanManager:Lcom/miui/videoplayer/framework/airkan/AirkanManager;

    .line 45
    const/4 v1, -0x1

    invoke-virtual {p0, v1}, Lcom/miui/videoplayer/framework/popup/AirKanDevicesPopupWindowV5;->setHeight(I)V

    .line 46
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070021

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v0, v1

    .line 47
    .local v0, width:I
    invoke-virtual {p0, v0}, Lcom/miui/videoplayer/framework/popup/AirKanDevicesPopupWindowV5;->setWidth(I)V

    .line 49
    invoke-direct {p0}, Lcom/miui/videoplayer/framework/popup/AirKanDevicesPopupWindowV5;->setupViews()V

    .line 50
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lcom/miui/videoplayer/framework/popup/AirKanDevicesPopupWindowV5;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/miui/videoplayer/framework/popup/AirKanDevicesPopupWindowV5;)Lcom/miui/videoplayer/framework/airkan/AirkanManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/miui/videoplayer/framework/popup/AirKanDevicesPopupWindowV5;->mAirKanManager:Lcom/miui/videoplayer/framework/airkan/AirkanManager;

    return-object v0
.end method

.method static synthetic access$200(Lcom/miui/videoplayer/framework/popup/AirKanDevicesPopupWindowV5;)Landroid/net/Uri;
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/miui/videoplayer/framework/popup/AirKanDevicesPopupWindowV5;->mVideoUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$300(Lcom/miui/videoplayer/framework/popup/AirKanDevicesPopupWindowV5;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/miui/videoplayer/framework/popup/AirKanDevicesPopupWindowV5;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/miui/videoplayer/framework/popup/AirKanDevicesPopupWindowV5;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/miui/videoplayer/framework/popup/AirKanDevicesPopupWindowV5;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500(Lcom/miui/videoplayer/framework/popup/AirKanDevicesPopupWindowV5;)Landroid/widget/ListView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/miui/videoplayer/framework/popup/AirKanDevicesPopupWindowV5;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method private refresh()V
    .locals 2

    .prologue
    .line 150
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/miui/videoplayer/framework/popup/AirKanDevicesPopupWindowV5$2;

    invoke-direct {v1, p0}, Lcom/miui/videoplayer/framework/popup/AirKanDevicesPopupWindowV5$2;-><init>(Lcom/miui/videoplayer/framework/popup/AirKanDevicesPopupWindowV5;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 162
    return-void
.end method

.method private setupViews()V
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 53
    invoke-virtual {p0, v1}, Lcom/miui/videoplayer/framework/popup/AirKanDevicesPopupWindowV5;->setTouchable(Z)V

    .line 54
    invoke-virtual {p0, v1}, Lcom/miui/videoplayer/framework/popup/AirKanDevicesPopupWindowV5;->setFocusable(Z)V

    .line 55
    invoke-virtual {p0, v1}, Lcom/miui/videoplayer/framework/popup/AirKanDevicesPopupWindowV5;->setOutsideTouchable(Z)V

    .line 56
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/ColorDrawable;-><init>()V

    invoke-virtual {p0, v1}, Lcom/miui/videoplayer/framework/popup/AirKanDevicesPopupWindowV5;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 58
    invoke-virtual {p0}, Lcom/miui/videoplayer/framework/popup/AirKanDevicesPopupWindowV5;->getContentView()Landroid/view/View;

    move-result-object v0

    .line 59
    .local v0, contentView:Landroid/view/View;
    const v1, 0x7f090033

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/miui/videoplayer/framework/popup/AirKanDevicesPopupWindowV5;->mListView:Landroid/widget/ListView;

    .line 64
    iget-object v1, p0, Lcom/miui/videoplayer/framework/popup/AirKanDevicesPopupWindowV5;->mListView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/miui/videoplayer/framework/popup/AirKanDevicesPopupWindowV5;->mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 65
    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/miui/videoplayer/framework/popup/AirKanDevicesPopupWindowV5;->mAirKanManager:Lcom/miui/videoplayer/framework/airkan/AirkanManager;

    invoke-virtual {v0, p0}, Lcom/miui/videoplayer/framework/airkan/AirkanManager;->unregisteOnDeviceChangeListener(Lcom/duokan/airkan/phone/api/DeviceManager$OnDeviceChangeListener;)V

    .line 125
    invoke-super {p0}, Lcom/miui/videoplayer/framework/popup/PauseMediaPlayerPopupWindow;->dismiss()V

    .line 126
    return-void
.end method

.method public onBTDeviceAutoConnected(Lcom/duokan/airkan/common/aidl/ParcelDeviceData;)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 132
    return-void
.end method

.method public onDeviceAdded(Lcom/duokan/airkan/common/aidl/ParcelDeviceData;)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 136
    invoke-direct {p0}, Lcom/miui/videoplayer/framework/popup/AirKanDevicesPopupWindowV5;->refresh()V

    .line 137
    return-void
.end method

.method public onDeviceRemoved(Lcom/duokan/airkan/common/aidl/ParcelDeviceData;)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 141
    invoke-direct {p0}, Lcom/miui/videoplayer/framework/popup/AirKanDevicesPopupWindowV5;->refresh()V

    .line 142
    return-void
.end method

.method public onOpened()V
    .locals 0

    .prologue
    .line 147
    return-void
.end method

.method public setVideoUri(Landroid/net/Uri;)V
    .locals 0
    .parameter "uri"

    .prologue
    .line 207
    iput-object p1, p0, Lcom/miui/videoplayer/framework/popup/AirKanDevicesPopupWindowV5;->mVideoUri:Landroid/net/Uri;

    .line 208
    return-void
.end method

.method public show(Landroid/view/View;)V
    .locals 2
    .parameter "anchor"

    .prologue
    const/4 v1, 0x0

    .line 212
    const/4 v0, 0x5

    invoke-virtual {p0, p1, v0, v1, v1}, Lcom/miui/videoplayer/framework/popup/AirKanDevicesPopupWindowV5;->showAtLocation(Landroid/view/View;III)V

    .line 213
    return-void
.end method

.method public showAtLocation(Landroid/view/View;III)V
    .locals 5
    .parameter "parent"
    .parameter "gravity"
    .parameter "x"
    .parameter "y"

    .prologue
    const v4, 0x7f070021

    const/4 v3, -0x1

    .line 99
    invoke-direct {p0}, Lcom/miui/videoplayer/framework/popup/AirKanDevicesPopupWindowV5;->refresh()V

    .line 100
    iget-object v2, p0, Lcom/miui/videoplayer/framework/popup/AirKanDevicesPopupWindowV5;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/miui/videoplayer/framework/utils/DisplayInformationFetcher;->getInstance(Landroid/content/Context;)Lcom/miui/videoplayer/framework/utils/DisplayInformationFetcher;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/videoplayer/framework/utils/DisplayInformationFetcher;->getScreenOrientation()I

    move-result v0

    .line 101
    .local v0, orientation:I
    if-nez v0, :cond_0

    .line 102
    invoke-virtual {p0, v3}, Lcom/miui/videoplayer/framework/popup/AirKanDevicesPopupWindowV5;->setHeight(I)V

    .line 103
    iget-object v2, p0, Lcom/miui/videoplayer/framework/popup/AirKanDevicesPopupWindowV5;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v1, v2

    .line 105
    .local v1, width:I
    iget-object v2, p0, Lcom/miui/videoplayer/framework/popup/AirKanDevicesPopupWindowV5;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070052

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v1, v2

    .line 107
    invoke-virtual {p0, v1}, Lcom/miui/videoplayer/framework/popup/AirKanDevicesPopupWindowV5;->setWidth(I)V

    .line 108
    const v2, 0x7f08000a

    invoke-virtual {p0, v2}, Lcom/miui/videoplayer/framework/popup/AirKanDevicesPopupWindowV5;->setAnimationStyle(I)V

    .line 109
    invoke-virtual {p0}, Lcom/miui/videoplayer/framework/popup/AirKanDevicesPopupWindowV5;->getContentView()Landroid/view/View;

    move-result-object v2

    const v3, 0x7f020058

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 110
    const/4 v2, 0x5

    invoke-super {p0, p1, v2, p3, p4}, Lcom/miui/videoplayer/framework/popup/PauseMediaPlayerPopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 119
    :goto_0
    iget-object v2, p0, Lcom/miui/videoplayer/framework/popup/AirKanDevicesPopupWindowV5;->mAirKanManager:Lcom/miui/videoplayer/framework/airkan/AirkanManager;

    invoke-virtual {v2, p0}, Lcom/miui/videoplayer/framework/airkan/AirkanManager;->registeOnDeviceChangeListener(Lcom/duokan/airkan/phone/api/DeviceManager$OnDeviceChangeListener;)V

    .line 120
    return-void

    .line 112
    .end local v1           #width:I
    :cond_0
    iget-object v2, p0, Lcom/miui/videoplayer/framework/popup/AirKanDevicesPopupWindowV5;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v1, v2

    .line 113
    .restart local v1       #width:I
    invoke-virtual {p0, v1}, Lcom/miui/videoplayer/framework/popup/AirKanDevicesPopupWindowV5;->setHeight(I)V

    .line 114
    invoke-virtual {p0, v3}, Lcom/miui/videoplayer/framework/popup/AirKanDevicesPopupWindowV5;->setWidth(I)V

    .line 115
    const v2, 0x7f080001

    invoke-virtual {p0, v2}, Lcom/miui/videoplayer/framework/popup/AirKanDevicesPopupWindowV5;->setAnimationStyle(I)V

    .line 116
    invoke-virtual {p0}, Lcom/miui/videoplayer/framework/popup/AirKanDevicesPopupWindowV5;->getContentView()Landroid/view/View;

    move-result-object v2

    const v3, 0x7f020059

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 117
    const/16 v2, 0x50

    invoke-super {p0, p1, v2, p3, p4}, Lcom/miui/videoplayer/framework/popup/PauseMediaPlayerPopupWindow;->showAtLocation(Landroid/view/View;III)V

    goto :goto_0
.end method
