.class public Lcom/miui/videoplayer/framework/popup/AirKanDevicesPopupWindow;
.super Lcom/miui/videoplayer/framework/popup/PauseMediaPlayerPopupWindow;
.source "AirKanDevicesPopupWindow.java"

# interfaces
.implements Lcom/duokan/airkan/phone/api/DeviceManager$OnDeviceChangeListener;
.implements Lcom/miui/videoplayer/framework/popup/IAirKanDevicesPopupWindow;


# static fields
.field private static final MESSAGE_WHAT_QUERY_DEVICE_LIST:I

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAirKanManager:Lcom/miui/videoplayer/framework/airkan/AirkanManager;

.field private mAirkanDeviceOnClickListener:Landroid/view/View$OnClickListener;

.field private mContext:Landroid/content/Context;

.field private mDeviceContainer:Landroid/view/ViewGroup;

.field private mHandler:Landroid/os/Handler;

.field private mPhoneImageOnClickListener:Landroid/view/View$OnClickListener;

.field private mPhoneImageView:Landroid/widget/ImageView;

.field private mPhoneNameTextView:Landroid/widget/TextView;

.field private mVideoUri:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const-class v0, Lcom/miui/videoplayer/framework/popup/AirKanDevicesPopupWindow;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/videoplayer/framework/popup/AirKanDevicesPopupWindow;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/miui/videoplayer/framework/airkan/AirkanManager;)V
    .locals 4
    .parameter "context"
    .parameter "airkanManager"

    .prologue
    .line 44
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f03000d

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lcom/miui/videoplayer/framework/popup/PauseMediaPlayerPopupWindow;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 108
    new-instance v1, Lcom/miui/videoplayer/framework/popup/AirKanDevicesPopupWindow$2;

    invoke-direct {v1, p0}, Lcom/miui/videoplayer/framework/popup/AirKanDevicesPopupWindow$2;-><init>(Lcom/miui/videoplayer/framework/popup/AirKanDevicesPopupWindow;)V

    iput-object v1, p0, Lcom/miui/videoplayer/framework/popup/AirKanDevicesPopupWindow;->mHandler:Landroid/os/Handler;

    .line 173
    new-instance v1, Lcom/miui/videoplayer/framework/popup/AirKanDevicesPopupWindow$3;

    invoke-direct {v1, p0}, Lcom/miui/videoplayer/framework/popup/AirKanDevicesPopupWindow$3;-><init>(Lcom/miui/videoplayer/framework/popup/AirKanDevicesPopupWindow;)V

    iput-object v1, p0, Lcom/miui/videoplayer/framework/popup/AirKanDevicesPopupWindow;->mPhoneImageOnClickListener:Landroid/view/View$OnClickListener;

    .line 184
    new-instance v1, Lcom/miui/videoplayer/framework/popup/AirKanDevicesPopupWindow$4;

    invoke-direct {v1, p0}, Lcom/miui/videoplayer/framework/popup/AirKanDevicesPopupWindow$4;-><init>(Lcom/miui/videoplayer/framework/popup/AirKanDevicesPopupWindow;)V

    iput-object v1, p0, Lcom/miui/videoplayer/framework/popup/AirKanDevicesPopupWindow;->mAirkanDeviceOnClickListener:Landroid/view/View$OnClickListener;

    .line 46
    const/4 v1, -0x1

    invoke-virtual {p0, v1}, Lcom/miui/videoplayer/framework/popup/AirKanDevicesPopupWindow;->setWidth(I)V

    .line 47
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070030

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v0, v1

    .line 48
    .local v0, height:I
    invoke-virtual {p0, v0}, Lcom/miui/videoplayer/framework/popup/AirKanDevicesPopupWindow;->setHeight(I)V

    .line 50
    iput-object p1, p0, Lcom/miui/videoplayer/framework/popup/AirKanDevicesPopupWindow;->mContext:Landroid/content/Context;

    .line 51
    iput-object p2, p0, Lcom/miui/videoplayer/framework/popup/AirKanDevicesPopupWindow;->mAirKanManager:Lcom/miui/videoplayer/framework/airkan/AirkanManager;

    .line 54
    invoke-direct {p0}, Lcom/miui/videoplayer/framework/popup/AirKanDevicesPopupWindow;->setupViews()V

    .line 55
    return-void
.end method

.method static synthetic access$000(Lcom/miui/videoplayer/framework/popup/AirKanDevicesPopupWindow;)Lcom/miui/videoplayer/framework/airkan/AirkanManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/miui/videoplayer/framework/popup/AirKanDevicesPopupWindow;->mAirKanManager:Lcom/miui/videoplayer/framework/airkan/AirkanManager;

    return-object v0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lcom/miui/videoplayer/framework/popup/AirKanDevicesPopupWindow;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/miui/videoplayer/framework/popup/AirKanDevicesPopupWindow;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/miui/videoplayer/framework/popup/AirKanDevicesPopupWindow;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/miui/videoplayer/framework/popup/AirKanDevicesPopupWindow;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/miui/videoplayer/framework/popup/AirKanDevicesPopupWindow;->removeRemoteDeviceImageViews()V

    return-void
.end method

.method static synthetic access$400(Lcom/miui/videoplayer/framework/popup/AirKanDevicesPopupWindow;Ljava/util/List;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/miui/videoplayer/framework/popup/AirKanDevicesPopupWindow;->addRemoteDeviceImageViews(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$500(Lcom/miui/videoplayer/framework/popup/AirKanDevicesPopupWindow;)Landroid/net/Uri;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/miui/videoplayer/framework/popup/AirKanDevicesPopupWindow;->mVideoUri:Landroid/net/Uri;

    return-object v0
.end method

.method private addRemoteDeviceImageViews(Ljava/util/List;)V
    .locals 11
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, deviceNameList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const v10, 0x7f02000b

    const/4 v9, -0x1

    .line 139
    iget-object v6, p0, Lcom/miui/videoplayer/framework/popup/AirKanDevicesPopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f070035

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    float-to-int v4, v6

    .line 140
    .local v4, leftMargin:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    if-ge v1, v6, :cond_1

    .line 141
    iget-object v6, p0, Lcom/miui/videoplayer/framework/popup/AirKanDevicesPopupWindow;->mContext:Landroid/content/Context;

    invoke-static {v6}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v6

    const/high16 v7, 0x7f03

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 142
    .local v0, deviceViewGroup:Landroid/view/View;
    const v6, 0x7f090001

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 143
    .local v5, textView:Landroid/widget/TextView;
    sget-object v7, Lcom/miui/videoplayer/framework/popup/AirKanDevicesPopupWindow;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "device name : "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, ""

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/CharSequence;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 145
    const/high16 v6, 0x7f09

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 146
    .local v2, imageView:Landroid/widget/ImageView;
    invoke-virtual {v2, v10}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 147
    iget-object v6, p0, Lcom/miui/videoplayer/framework/popup/AirKanDevicesPopupWindow;->mAirKanManager:Lcom/miui/videoplayer/framework/airkan/AirkanManager;

    invoke-virtual {v6}, Lcom/miui/videoplayer/framework/airkan/AirkanManager;->isPlayingInLocal()Z

    move-result v6

    if-nez v6, :cond_0

    iget-object v6, p0, Lcom/miui/videoplayer/framework/popup/AirKanDevicesPopupWindow;->mAirKanManager:Lcom/miui/videoplayer/framework/airkan/AirkanManager;

    invoke-virtual {v6}, Lcom/miui/videoplayer/framework/airkan/AirkanManager;->getPlayingDeviceName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 148
    const v6, 0x7f02000d

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 149
    iget-object v6, p0, Lcom/miui/videoplayer/framework/popup/AirKanDevicesPopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x1060018

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 154
    :goto_1
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 155
    iget-object v6, p0, Lcom/miui/videoplayer/framework/popup/AirKanDevicesPopupWindow;->mAirkanDeviceOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 157
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v6, -0x2

    invoke-direct {v3, v6, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 158
    .local v3, layoutParam:Landroid/widget/LinearLayout$LayoutParams;
    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 160
    iget-object v6, p0, Lcom/miui/videoplayer/framework/popup/AirKanDevicesPopupWindow;->mDeviceContainer:Landroid/view/ViewGroup;

    invoke-virtual {v6, v0, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 161
    iget-object v6, p0, Lcom/miui/videoplayer/framework/popup/AirKanDevicesPopupWindow;->mDeviceContainer:Landroid/view/ViewGroup;

    invoke-virtual {v6}, Landroid/view/ViewGroup;->requestLayout()V

    .line 140
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 151
    .end local v3           #layoutParam:Landroid/widget/LinearLayout$LayoutParams;
    :cond_0
    invoke-virtual {v2, v10}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 152
    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1

    .line 163
    .end local v0           #deviceViewGroup:Landroid/view/View;
    .end local v2           #imageView:Landroid/widget/ImageView;
    .end local v5           #textView:Landroid/widget/TextView;
    :cond_1
    return-void
.end method

.method private refresh()V
    .locals 0

    .prologue
    .line 223
    invoke-direct {p0}, Lcom/miui/videoplayer/framework/popup/AirKanDevicesPopupWindow;->removeRemoteDeviceImageViews()V

    .line 224
    invoke-direct {p0}, Lcom/miui/videoplayer/framework/popup/AirKanDevicesPopupWindow;->updateRemoteDeviceList()V

    .line 225
    return-void
.end method

.method private removeRemoteDeviceImageViews()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 166
    iget-object v1, p0, Lcom/miui/videoplayer/framework/popup/AirKanDevicesPopupWindow;->mDeviceContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 167
    .local v0, childCount:I
    if-le v0, v3, :cond_0

    .line 168
    iget-object v1, p0, Lcom/miui/videoplayer/framework/popup/AirKanDevicesPopupWindow;->mDeviceContainer:Landroid/view/ViewGroup;

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {v1, v3, v2}, Landroid/view/ViewGroup;->removeViews(II)V

    .line 169
    iget-object v1, p0, Lcom/miui/videoplayer/framework/popup/AirKanDevicesPopupWindow;->mDeviceContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->requestLayout()V

    .line 171
    :cond_0
    return-void
.end method

.method private setupViews()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 62
    invoke-virtual {p0, v2}, Lcom/miui/videoplayer/framework/popup/AirKanDevicesPopupWindow;->setTouchable(Z)V

    .line 64
    invoke-virtual {p0, v2}, Lcom/miui/videoplayer/framework/popup/AirKanDevicesPopupWindow;->setOutsideTouchable(Z)V

    .line 65
    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v2}, Landroid/graphics/drawable/ColorDrawable;-><init>()V

    invoke-virtual {p0, v2}, Lcom/miui/videoplayer/framework/popup/AirKanDevicesPopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 67
    invoke-virtual {p0}, Lcom/miui/videoplayer/framework/popup/AirKanDevicesPopupWindow;->getContentView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 68
    .local v0, rootView:Landroid/view/ViewGroup;
    const/high16 v2, 0x7f09

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/miui/videoplayer/framework/popup/AirKanDevicesPopupWindow;->mPhoneImageView:Landroid/widget/ImageView;

    .line 69
    iget-object v2, p0, Lcom/miui/videoplayer/framework/popup/AirKanDevicesPopupWindow;->mPhoneImageView:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/miui/videoplayer/framework/popup/AirKanDevicesPopupWindow;->mPhoneImageOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 71
    iget-object v2, p0, Lcom/miui/videoplayer/framework/popup/AirKanDevicesPopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f05001b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 72
    .local v1, xiaomiPhoneName:Ljava/lang/String;
    const v2, 0x7f090001

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/miui/videoplayer/framework/popup/AirKanDevicesPopupWindow;->mPhoneNameTextView:Landroid/widget/TextView;

    .line 73
    iget-object v2, p0, Lcom/miui/videoplayer/framework/popup/AirKanDevicesPopupWindow;->mPhoneNameTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 75
    const v2, 0x7f09001a

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, p0, Lcom/miui/videoplayer/framework/popup/AirKanDevicesPopupWindow;->mDeviceContainer:Landroid/view/ViewGroup;

    .line 76
    return-void
.end method

.method private updatePhoneImageViewBackground()V
    .locals 3

    .prologue
    .line 122
    iget-object v0, p0, Lcom/miui/videoplayer/framework/popup/AirKanDevicesPopupWindow;->mAirKanManager:Lcom/miui/videoplayer/framework/airkan/AirkanManager;

    invoke-virtual {v0}, Lcom/miui/videoplayer/framework/airkan/AirkanManager;->isPlayingInLocal()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 123
    iget-object v0, p0, Lcom/miui/videoplayer/framework/popup/AirKanDevicesPopupWindow;->mPhoneImageView:Landroid/widget/ImageView;

    const v1, 0x7f020010

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 124
    iget-object v0, p0, Lcom/miui/videoplayer/framework/popup/AirKanDevicesPopupWindow;->mPhoneNameTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/miui/videoplayer/framework/popup/AirKanDevicesPopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060009

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 129
    :goto_0
    return-void

    .line 126
    :cond_0
    iget-object v0, p0, Lcom/miui/videoplayer/framework/popup/AirKanDevicesPopupWindow;->mPhoneImageView:Landroid/widget/ImageView;

    const v1, 0x7f020011

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 127
    iget-object v0, p0, Lcom/miui/videoplayer/framework/popup/AirKanDevicesPopupWindow;->mPhoneNameTextView:Landroid/widget/TextView;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0
.end method

.method private updateRemoteDeviceList()V
    .locals 2

    .prologue
    .line 94
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/miui/videoplayer/framework/popup/AirKanDevicesPopupWindow$1;

    invoke-direct {v1, p0}, Lcom/miui/videoplayer/framework/popup/AirKanDevicesPopupWindow$1;-><init>(Lcom/miui/videoplayer/framework/popup/AirKanDevicesPopupWindow;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 106
    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/miui/videoplayer/framework/popup/AirKanDevicesPopupWindow;->mAirKanManager:Lcom/miui/videoplayer/framework/airkan/AirkanManager;

    invoke-virtual {v0, p0}, Lcom/miui/videoplayer/framework/airkan/AirkanManager;->unregisteOnDeviceChangeListener(Lcom/duokan/airkan/phone/api/DeviceManager$OnDeviceChangeListener;)V

    .line 90
    invoke-super {p0}, Lcom/miui/videoplayer/framework/popup/PauseMediaPlayerPopupWindow;->dismiss()V

    .line 91
    return-void
.end method

.method public onBTDeviceAutoConnected(Lcom/duokan/airkan/common/aidl/ParcelDeviceData;)V
    .locals 2
    .parameter "arg0"

    .prologue
    .line 207
    sget-object v0, Lcom/miui/videoplayer/framework/popup/AirKanDevicesPopupWindow;->TAG:Ljava/lang/String;

    const-string v1, "bt device auto connected"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    return-void
.end method

.method public onDeviceAdded(Lcom/duokan/airkan/common/aidl/ParcelDeviceData;)V
    .locals 3
    .parameter "data"

    .prologue
    .line 212
    sget-object v0, Lcom/miui/videoplayer/framework/popup/AirKanDevicesPopupWindow;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "device added "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/duokan/airkan/common/aidl/ParcelDeviceData;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    invoke-direct {p0}, Lcom/miui/videoplayer/framework/popup/AirKanDevicesPopupWindow;->refresh()V

    .line 214
    return-void
.end method

.method public onDeviceRemoved(Lcom/duokan/airkan/common/aidl/ParcelDeviceData;)V
    .locals 3
    .parameter "data"

    .prologue
    .line 218
    sget-object v0, Lcom/miui/videoplayer/framework/popup/AirKanDevicesPopupWindow;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "device removed "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/duokan/airkan/common/aidl/ParcelDeviceData;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    invoke-direct {p0}, Lcom/miui/videoplayer/framework/popup/AirKanDevicesPopupWindow;->refresh()V

    .line 220
    return-void
.end method

.method public onOpened()V
    .locals 2

    .prologue
    .line 229
    sget-object v0, Lcom/miui/videoplayer/framework/popup/AirKanDevicesPopupWindow;->TAG:Ljava/lang/String;

    const-string v1, "device opened "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    return-void
.end method

.method public setVideoUri(Landroid/net/Uri;)V
    .locals 0
    .parameter "videoUri"

    .prologue
    .line 58
    iput-object p1, p0, Lcom/miui/videoplayer/framework/popup/AirKanDevicesPopupWindow;->mVideoUri:Landroid/net/Uri;

    .line 59
    return-void
.end method

.method public show(Landroid/view/View;)V
    .locals 2
    .parameter "anchor"

    .prologue
    const/4 v1, 0x0

    .line 234
    const/16 v0, 0x50

    invoke-virtual {p0, p1, v0, v1, v1}, Lcom/miui/videoplayer/framework/popup/AirKanDevicesPopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 235
    return-void
.end method

.method public showAtLocation(Landroid/view/View;III)V
    .locals 1
    .parameter "parent"
    .parameter "gravity"
    .parameter "x"
    .parameter "y"

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/miui/videoplayer/framework/popup/AirKanDevicesPopupWindow;->updatePhoneImageViewBackground()V

    .line 81
    invoke-direct {p0}, Lcom/miui/videoplayer/framework/popup/AirKanDevicesPopupWindow;->removeRemoteDeviceImageViews()V

    .line 82
    invoke-direct {p0}, Lcom/miui/videoplayer/framework/popup/AirKanDevicesPopupWindow;->updateRemoteDeviceList()V

    .line 83
    invoke-super {p0, p1, p2, p3, p4}, Lcom/miui/videoplayer/framework/popup/PauseMediaPlayerPopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 84
    iget-object v0, p0, Lcom/miui/videoplayer/framework/popup/AirKanDevicesPopupWindow;->mAirKanManager:Lcom/miui/videoplayer/framework/airkan/AirkanManager;

    invoke-virtual {v0, p0}, Lcom/miui/videoplayer/framework/airkan/AirkanManager;->registeOnDeviceChangeListener(Lcom/duokan/airkan/phone/api/DeviceManager$OnDeviceChangeListener;)V

    .line 85
    return-void
.end method
