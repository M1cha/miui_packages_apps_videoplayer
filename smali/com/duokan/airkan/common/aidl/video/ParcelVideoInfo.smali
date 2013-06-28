.class public Lcom/duokan/airkan/common/aidl/video/ParcelVideoInfo;
.super Ljava/lang/Object;
.source "ParcelVideoInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/duokan/airkan/common/aidl/video/ParcelVideoInfo$URIType;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/duokan/airkan/common/aidl/video/ParcelVideoInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mByteResolution:B

.field private mDeviceName:Ljava/lang/String;

.field private mJsonParameters:Lorg/json/JSONObject;

.field private mParameters:Ljava/lang/String;

.field private mPdvi:Lcom/duokan/airkan/common/aidl/video/ParcelDuokanVideoInfo;

.field private mPosition:I

.field private mResolution:Lcom/duokan/airkan/common/video/VideoResolution$Resolution;

.field private mTitle:Ljava/lang/String;

.field private mURIType:Lcom/duokan/airkan/common/aidl/video/ParcelVideoInfo$URIType;

.field private mUrl:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    new-instance v0, Lcom/duokan/airkan/common/aidl/video/ParcelVideoInfo$1;

    invoke-direct {v0}, Lcom/duokan/airkan/common/aidl/video/ParcelVideoInfo$1;-><init>()V

    sput-object v0, Lcom/duokan/airkan/common/aidl/video/ParcelVideoInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 38
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput v1, p0, Lcom/duokan/airkan/common/aidl/video/ParcelVideoInfo;->mPosition:I

    .line 17
    iput-object v0, p0, Lcom/duokan/airkan/common/aidl/video/ParcelVideoInfo;->mParameters:Ljava/lang/String;

    .line 18
    iput-byte v1, p0, Lcom/duokan/airkan/common/aidl/video/ParcelVideoInfo;->mByteResolution:B

    .line 20
    iput-object v0, p0, Lcom/duokan/airkan/common/aidl/video/ParcelVideoInfo;->mJsonParameters:Lorg/json/JSONObject;

    .line 21
    iput-object v0, p0, Lcom/duokan/airkan/common/aidl/video/ParcelVideoInfo;->mDeviceName:Ljava/lang/String;

    .line 22
    iput-object v0, p0, Lcom/duokan/airkan/common/aidl/video/ParcelVideoInfo;->mPdvi:Lcom/duokan/airkan/common/aidl/video/ParcelDuokanVideoInfo;

    .line 23
    sget-object v0, Lcom/duokan/airkan/common/aidl/video/ParcelVideoInfo$URIType;->URITYPE_UNKNOWN:Lcom/duokan/airkan/common/aidl/video/ParcelVideoInfo$URIType;

    iput-object v0, p0, Lcom/duokan/airkan/common/aidl/video/ParcelVideoInfo;->mURIType:Lcom/duokan/airkan/common/aidl/video/ParcelVideoInfo$URIType;

    .line 39
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .parameter "source"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 41
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput v1, p0, Lcom/duokan/airkan/common/aidl/video/ParcelVideoInfo;->mPosition:I

    .line 17
    iput-object v0, p0, Lcom/duokan/airkan/common/aidl/video/ParcelVideoInfo;->mParameters:Ljava/lang/String;

    .line 18
    iput-byte v1, p0, Lcom/duokan/airkan/common/aidl/video/ParcelVideoInfo;->mByteResolution:B

    .line 20
    iput-object v0, p0, Lcom/duokan/airkan/common/aidl/video/ParcelVideoInfo;->mJsonParameters:Lorg/json/JSONObject;

    .line 21
    iput-object v0, p0, Lcom/duokan/airkan/common/aidl/video/ParcelVideoInfo;->mDeviceName:Ljava/lang/String;

    .line 22
    iput-object v0, p0, Lcom/duokan/airkan/common/aidl/video/ParcelVideoInfo;->mPdvi:Lcom/duokan/airkan/common/aidl/video/ParcelDuokanVideoInfo;

    .line 23
    sget-object v0, Lcom/duokan/airkan/common/aidl/video/ParcelVideoInfo$URIType;->URITYPE_UNKNOWN:Lcom/duokan/airkan/common/aidl/video/ParcelVideoInfo$URIType;

    iput-object v0, p0, Lcom/duokan/airkan/common/aidl/video/ParcelVideoInfo;->mURIType:Lcom/duokan/airkan/common/aidl/video/ParcelVideoInfo$URIType;

    .line 42
    invoke-virtual {p0, p1}, Lcom/duokan/airkan/common/aidl/video/ParcelVideoInfo;->readFromParcel(Landroid/os/Parcel;)V

    .line 43
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/duokan/airkan/common/aidl/video/ParcelVideoInfo$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 13
    invoke-direct {p0, p1}, Lcom/duokan/airkan/common/aidl/video/ParcelVideoInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private calcURIType()V
    .locals 4

    .prologue
    .line 96
    invoke-virtual {p0}, Lcom/duokan/airkan/common/aidl/video/ParcelVideoInfo;->getMediaID()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 97
    sget-object v0, Lcom/duokan/airkan/common/aidl/video/ParcelVideoInfo$URIType;->URITYPE_DKID:Lcom/duokan/airkan/common/aidl/video/ParcelVideoInfo$URIType;

    iput-object v0, p0, Lcom/duokan/airkan/common/aidl/video/ParcelVideoInfo;->mURIType:Lcom/duokan/airkan/common/aidl/video/ParcelVideoInfo$URIType;

    .line 103
    :goto_0
    return-void

    .line 98
    :cond_0
    iget-object v0, p0, Lcom/duokan/airkan/common/aidl/video/ParcelVideoInfo;->mUrl:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 99
    sget-object v0, Lcom/duokan/airkan/common/aidl/video/ParcelVideoInfo$URIType;->URITYPE_URL:Lcom/duokan/airkan/common/aidl/video/ParcelVideoInfo$URIType;

    iput-object v0, p0, Lcom/duokan/airkan/common/aidl/video/ParcelVideoInfo;->mURIType:Lcom/duokan/airkan/common/aidl/video/ParcelVideoInfo$URIType;

    goto :goto_0

    .line 101
    :cond_1
    sget-object v0, Lcom/duokan/airkan/common/aidl/video/ParcelVideoInfo$URIType;->URITYPE_UNKNOWN:Lcom/duokan/airkan/common/aidl/video/ParcelVideoInfo$URIType;

    iput-object v0, p0, Lcom/duokan/airkan/common/aidl/video/ParcelVideoInfo;->mURIType:Lcom/duokan/airkan/common/aidl/video/ParcelVideoInfo$URIType;

    goto :goto_0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 180
    const/4 v0, 0x0

    return v0
.end method

.method public getCi()I
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/duokan/airkan/common/aidl/video/ParcelVideoInfo;->mPdvi:Lcom/duokan/airkan/common/aidl/video/ParcelDuokanVideoInfo;

    if-eqz v0, :cond_0

    .line 131
    iget-object v0, p0, Lcom/duokan/airkan/common/aidl/video/ParcelVideoInfo;->mPdvi:Lcom/duokan/airkan/common/aidl/video/ParcelDuokanVideoInfo;

    iget v0, v0, Lcom/duokan/airkan/common/aidl/video/ParcelDuokanVideoInfo;->ci:I

    .line 133
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDeviceName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/duokan/airkan/common/aidl/video/ParcelVideoInfo;->mDeviceName:Ljava/lang/String;

    return-object v0
.end method

.method public getJSONParameters()Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/duokan/airkan/common/aidl/video/ParcelVideoInfo;->mJsonParameters:Lorg/json/JSONObject;

    return-object v0
.end method

.method public getMediaID()J
    .locals 2

    .prologue
    .line 117
    iget-object v0, p0, Lcom/duokan/airkan/common/aidl/video/ParcelVideoInfo;->mPdvi:Lcom/duokan/airkan/common/aidl/video/ParcelDuokanVideoInfo;

    if-eqz v0, :cond_0

    .line 118
    iget-object v0, p0, Lcom/duokan/airkan/common/aidl/video/ParcelVideoInfo;->mPdvi:Lcom/duokan/airkan/common/aidl/video/ParcelDuokanVideoInfo;

    iget-wide v0, v0, Lcom/duokan/airkan/common/aidl/video/ParcelDuokanVideoInfo;->mediaID:J

    .line 120
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public getPosition()I
    .locals 1

    .prologue
    .line 61
    iget v0, p0, Lcom/duokan/airkan/common/aidl/video/ParcelVideoInfo;->mPosition:I

    return v0
.end method

.method public getPreferSource()I
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/duokan/airkan/common/aidl/video/ParcelVideoInfo;->mPdvi:Lcom/duokan/airkan/common/aidl/video/ParcelDuokanVideoInfo;

    if-eqz v0, :cond_0

    .line 144
    iget-object v0, p0, Lcom/duokan/airkan/common/aidl/video/ParcelVideoInfo;->mPdvi:Lcom/duokan/airkan/common/aidl/video/ParcelDuokanVideoInfo;

    iget-byte v0, v0, Lcom/duokan/airkan/common/aidl/video/ParcelDuokanVideoInfo;->preferSource:B

    .line 146
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getResolution()Lcom/duokan/airkan/common/video/VideoResolution$Resolution;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/duokan/airkan/common/aidl/video/ParcelVideoInfo;->mResolution:Lcom/duokan/airkan/common/video/VideoResolution$Resolution;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/duokan/airkan/common/aidl/video/ParcelVideoInfo;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getURIType()Lcom/duokan/airkan/common/aidl/video/ParcelVideoInfo$URIType;
    .locals 2

    .prologue
    .line 111
    sget-object v0, Lcom/duokan/airkan/common/aidl/video/ParcelVideoInfo$URIType;->URITYPE_UNKNOWN:Lcom/duokan/airkan/common/aidl/video/ParcelVideoInfo$URIType;

    iget-object v1, p0, Lcom/duokan/airkan/common/aidl/video/ParcelVideoInfo;->mURIType:Lcom/duokan/airkan/common/aidl/video/ParcelVideoInfo$URIType;

    if-ne v0, v1, :cond_0

    .line 112
    invoke-direct {p0}, Lcom/duokan/airkan/common/aidl/video/ParcelVideoInfo;->calcURIType()V

    .line 114
    :cond_0
    iget-object v0, p0, Lcom/duokan/airkan/common/aidl/video/ParcelVideoInfo;->mURIType:Lcom/duokan/airkan/common/aidl/video/ParcelVideoInfo$URIType;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/duokan/airkan/common/aidl/video/ParcelVideoInfo;->mUrl:Ljava/lang/String;

    return-object v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 3
    .parameter "source"

    .prologue
    .line 160
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/duokan/airkan/common/aidl/video/ParcelVideoInfo;->mTitle:Ljava/lang/String;

    .line 161
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/duokan/airkan/common/aidl/video/ParcelVideoInfo;->mPosition:I

    .line 162
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/duokan/airkan/common/aidl/video/ParcelVideoInfo;->mUrl:Ljava/lang/String;

    .line 163
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/duokan/airkan/common/aidl/video/ParcelVideoInfo;->mParameters:Ljava/lang/String;

    .line 164
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    int-to-byte v1, v1

    iput-byte v1, p0, Lcom/duokan/airkan/common/aidl/video/ParcelVideoInfo;->mByteResolution:B

    .line 165
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/duokan/airkan/common/aidl/video/ParcelVideoInfo;->mDeviceName:Ljava/lang/String;

    .line 166
    const-class v1, Lcom/duokan/airkan/common/aidl/video/ParcelDuokanVideoInfo;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/duokan/airkan/common/aidl/video/ParcelDuokanVideoInfo;

    iput-object v1, p0, Lcom/duokan/airkan/common/aidl/video/ParcelVideoInfo;->mPdvi:Lcom/duokan/airkan/common/aidl/video/ParcelDuokanVideoInfo;

    .line 168
    iget-byte v1, p0, Lcom/duokan/airkan/common/aidl/video/ParcelVideoInfo;->mByteResolution:B

    invoke-static {v1}, Lcom/duokan/airkan/common/video/VideoResolution;->byteResolutionToEnum(B)Lcom/duokan/airkan/common/video/VideoResolution$Resolution;

    move-result-object v1

    iput-object v1, p0, Lcom/duokan/airkan/common/aidl/video/ParcelVideoInfo;->mResolution:Lcom/duokan/airkan/common/video/VideoResolution$Resolution;

    .line 169
    iget-object v1, p0, Lcom/duokan/airkan/common/aidl/video/ParcelVideoInfo;->mParameters:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 171
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    iget-object v2, p0, Lcom/duokan/airkan/common/aidl/video/ParcelVideoInfo;->mParameters:Ljava/lang/String;

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/duokan/airkan/common/aidl/video/ParcelVideoInfo;->mJsonParameters:Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 176
    :cond_0
    :goto_0
    return-void

    .line 172
    :catch_0
    move-exception v0

    .line 173
    .local v0, e:Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public setCi(I)V
    .locals 1
    .parameter "ci"

    .prologue
    .line 137
    iget-object v0, p0, Lcom/duokan/airkan/common/aidl/video/ParcelVideoInfo;->mPdvi:Lcom/duokan/airkan/common/aidl/video/ParcelDuokanVideoInfo;

    if-nez v0, :cond_0

    .line 138
    new-instance v0, Lcom/duokan/airkan/common/aidl/video/ParcelDuokanVideoInfo;

    invoke-direct {v0}, Lcom/duokan/airkan/common/aidl/video/ParcelDuokanVideoInfo;-><init>()V

    iput-object v0, p0, Lcom/duokan/airkan/common/aidl/video/ParcelVideoInfo;->mPdvi:Lcom/duokan/airkan/common/aidl/video/ParcelDuokanVideoInfo;

    .line 140
    :cond_0
    iget-object v0, p0, Lcom/duokan/airkan/common/aidl/video/ParcelVideoInfo;->mPdvi:Lcom/duokan/airkan/common/aidl/video/ParcelDuokanVideoInfo;

    iput p1, v0, Lcom/duokan/airkan/common/aidl/video/ParcelDuokanVideoInfo;->ci:I

    .line 141
    return-void
.end method

.method public setDeviceName(Ljava/lang/String;)V
    .locals 0
    .parameter "deviceName"

    .prologue
    .line 46
    iput-object p1, p0, Lcom/duokan/airkan/common/aidl/video/ParcelVideoInfo;->mDeviceName:Ljava/lang/String;

    .line 47
    return-void
.end method

.method public setMediaID(J)V
    .locals 1
    .parameter "mediaID"

    .prologue
    .line 124
    iget-object v0, p0, Lcom/duokan/airkan/common/aidl/video/ParcelVideoInfo;->mPdvi:Lcom/duokan/airkan/common/aidl/video/ParcelDuokanVideoInfo;

    if-nez v0, :cond_0

    .line 125
    new-instance v0, Lcom/duokan/airkan/common/aidl/video/ParcelDuokanVideoInfo;

    invoke-direct {v0}, Lcom/duokan/airkan/common/aidl/video/ParcelDuokanVideoInfo;-><init>()V

    iput-object v0, p0, Lcom/duokan/airkan/common/aidl/video/ParcelVideoInfo;->mPdvi:Lcom/duokan/airkan/common/aidl/video/ParcelDuokanVideoInfo;

    .line 127
    :cond_0
    iget-object v0, p0, Lcom/duokan/airkan/common/aidl/video/ParcelVideoInfo;->mPdvi:Lcom/duokan/airkan/common/aidl/video/ParcelDuokanVideoInfo;

    iput-wide p1, v0, Lcom/duokan/airkan/common/aidl/video/ParcelDuokanVideoInfo;->mediaID:J

    .line 128
    return-void
.end method

.method public setParameters(Ljava/lang/String;)V
    .locals 3
    .parameter "parameters"

    .prologue
    .line 82
    iput-object p1, p0, Lcom/duokan/airkan/common/aidl/video/ParcelVideoInfo;->mParameters:Ljava/lang/String;

    .line 83
    iget-object v1, p0, Lcom/duokan/airkan/common/aidl/video/ParcelVideoInfo;->mParameters:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 85
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    iget-object v2, p0, Lcom/duokan/airkan/common/aidl/video/ParcelVideoInfo;->mParameters:Ljava/lang/String;

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/duokan/airkan/common/aidl/video/ParcelVideoInfo;->mJsonParameters:Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 90
    :cond_0
    :goto_0
    return-void

    .line 86
    :catch_0
    move-exception v0

    .line 87
    .local v0, e:Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public setParcelDuokanVideoInfo(Lcom/duokan/airkan/common/aidl/video/ParcelDuokanVideoInfo;)V
    .locals 0
    .parameter "pvbi"

    .prologue
    .line 156
    iput-object p1, p0, Lcom/duokan/airkan/common/aidl/video/ParcelVideoInfo;->mPdvi:Lcom/duokan/airkan/common/aidl/video/ParcelDuokanVideoInfo;

    .line 157
    return-void
.end method

.method public setPosition(I)V
    .locals 0
    .parameter "position"

    .prologue
    .line 58
    iput p1, p0, Lcom/duokan/airkan/common/aidl/video/ParcelVideoInfo;->mPosition:I

    .line 59
    return-void
.end method

.method public setPreferSource(I)V
    .locals 2
    .parameter "preferSource"

    .prologue
    .line 150
    iget-object v0, p0, Lcom/duokan/airkan/common/aidl/video/ParcelVideoInfo;->mPdvi:Lcom/duokan/airkan/common/aidl/video/ParcelDuokanVideoInfo;

    if-nez v0, :cond_0

    .line 151
    new-instance v0, Lcom/duokan/airkan/common/aidl/video/ParcelDuokanVideoInfo;

    invoke-direct {v0}, Lcom/duokan/airkan/common/aidl/video/ParcelDuokanVideoInfo;-><init>()V

    iput-object v0, p0, Lcom/duokan/airkan/common/aidl/video/ParcelVideoInfo;->mPdvi:Lcom/duokan/airkan/common/aidl/video/ParcelDuokanVideoInfo;

    .line 153
    :cond_0
    iget-object v0, p0, Lcom/duokan/airkan/common/aidl/video/ParcelVideoInfo;->mPdvi:Lcom/duokan/airkan/common/aidl/video/ParcelDuokanVideoInfo;

    int-to-byte v1, p1

    iput-byte v1, v0, Lcom/duokan/airkan/common/aidl/video/ParcelDuokanVideoInfo;->preferSource:B

    .line 154
    return-void
.end method

.method public setResolution(B)V
    .locals 1
    .parameter "resolution"

    .prologue
    .line 70
    iput-byte p1, p0, Lcom/duokan/airkan/common/aidl/video/ParcelVideoInfo;->mByteResolution:B

    .line 71
    iget-byte v0, p0, Lcom/duokan/airkan/common/aidl/video/ParcelVideoInfo;->mByteResolution:B

    invoke-static {v0}, Lcom/duokan/airkan/common/video/VideoResolution;->byteResolutionToEnum(B)Lcom/duokan/airkan/common/video/VideoResolution$Resolution;

    move-result-object v0

    iput-object v0, p0, Lcom/duokan/airkan/common/aidl/video/ParcelVideoInfo;->mResolution:Lcom/duokan/airkan/common/video/VideoResolution$Resolution;

    .line 72
    return-void
.end method

.method public setResolution(Lcom/duokan/airkan/common/video/VideoResolution$Resolution;)V
    .locals 1
    .parameter "resolution"

    .prologue
    .line 74
    iput-object p1, p0, Lcom/duokan/airkan/common/aidl/video/ParcelVideoInfo;->mResolution:Lcom/duokan/airkan/common/video/VideoResolution$Resolution;

    .line 75
    iget-object v0, p0, Lcom/duokan/airkan/common/aidl/video/ParcelVideoInfo;->mResolution:Lcom/duokan/airkan/common/video/VideoResolution$Resolution;

    invoke-static {v0}, Lcom/duokan/airkan/common/video/VideoResolution;->enumResolutionToByte(Lcom/duokan/airkan/common/video/VideoResolution$Resolution;)B

    move-result v0

    iput-byte v0, p0, Lcom/duokan/airkan/common/aidl/video/ParcelVideoInfo;->mByteResolution:B

    .line 76
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .parameter "title"

    .prologue
    .line 52
    iput-object p1, p0, Lcom/duokan/airkan/common/aidl/video/ParcelVideoInfo;->mTitle:Ljava/lang/String;

    .line 53
    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0
    .parameter "url"

    .prologue
    .line 64
    iput-object p1, p0, Lcom/duokan/airkan/common/aidl/video/ParcelVideoInfo;->mUrl:Ljava/lang/String;

    .line 65
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 185
    iget-object v0, p0, Lcom/duokan/airkan/common/aidl/video/ParcelVideoInfo;->mTitle:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 186
    iget v0, p0, Lcom/duokan/airkan/common/aidl/video/ParcelVideoInfo;->mPosition:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 187
    iget-object v0, p0, Lcom/duokan/airkan/common/aidl/video/ParcelVideoInfo;->mUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 188
    iget-object v0, p0, Lcom/duokan/airkan/common/aidl/video/ParcelVideoInfo;->mParameters:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 189
    iget-byte v0, p0, Lcom/duokan/airkan/common/aidl/video/ParcelVideoInfo;->mByteResolution:B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 190
    iget-object v0, p0, Lcom/duokan/airkan/common/aidl/video/ParcelVideoInfo;->mDeviceName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 191
    iget-object v0, p0, Lcom/duokan/airkan/common/aidl/video/ParcelVideoInfo;->mPdvi:Lcom/duokan/airkan/common/aidl/video/ParcelDuokanVideoInfo;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 192
    return-void
.end method
