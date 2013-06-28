.class public abstract Lcom/duokan/airkan/phone/aidl/IAirkanClientService$Stub;
.super Landroid/os/Binder;
.source "IAirkanClientService.java"

# interfaces
.implements Lcom/duokan/airkan/phone/aidl/IAirkanClientService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/duokan/airkan/phone/aidl/IAirkanClientService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/duokan/airkan/phone/aidl/IAirkanClientService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.duokan.airkan.phone.aidl.IAirkanClientService"

.field static final TRANSACTION_connect:I = 0x9

.field static final TRANSACTION_connect2BT:I = 0xa

.field static final TRANSACTION_disconnect:I = 0xb

.field static final TRANSACTION_musicPlay:I = 0xe

.field static final TRANSACTION_pause:I = 0x11

.field static final TRANSACTION_photoClean:I = 0x1b

.field static final TRANSACTION_photoClose:I = 0x1d

.field static final TRANSACTION_photoPush:I = 0x19

.field static final TRANSACTION_photoQuery:I = 0x1c

.field static final TRANSACTION_photoRequest:I = 0x18

.field static final TRANSACTION_photoShow:I = 0x1a

.field static final TRANSACTION_play:I = 0xd

.field static final TRANSACTION_playSp:I = 0xf

.field static final TRANSACTION_query:I = 0x14

.field static final TRANSACTION_queryCurrentService:I = 0x8

.field static final TRANSACTION_queryDevices:I = 0x7

.field static final TRANSACTION_registerDeviceCallback:I = 0x1

.field static final TRANSACTION_registerPhotoCallback:I = 0x5

.field static final TRANSACTION_registerVideoCallback:I = 0x3

.field static final TRANSACTION_release:I = 0xc

.field static final TRANSACTION_removeDeviceCallback:I = 0x2

.field static final TRANSACTION_removePhotoCallback:I = 0x6

.field static final TRANSACTION_removeVideoCallback:I = 0x4

.field static final TRANSACTION_resume:I = 0x12

.field static final TRANSACTION_seek:I = 0x13

.field static final TRANSACTION_setResolution:I = 0x15

.field static final TRANSACTION_setSource:I = 0x16

.field static final TRANSACTION_setVolume:I = 0x17

.field static final TRANSACTION_stop:I = 0x10


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "com.duokan.airkan.phone.aidl.IAirkanClientService"

    invoke-virtual {p0, p0, v0}, Lcom/duokan/airkan/phone/aidl/IAirkanClientService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/duokan/airkan/phone/aidl/IAirkanClientService;
    .locals 2
    .parameter "obj"

    .prologue
    .line 23
    if-nez p0, :cond_0

    .line 24
    const/4 v0, 0x0

    .line 30
    :goto_0
    return-object v0

    .line 26
    :cond_0
    const-string v1, "com.duokan.airkan.phone.aidl.IAirkanClientService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/duokan/airkan/phone/aidl/IAirkanClientService;

    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Lcom/duokan/airkan/phone/aidl/IAirkanClientService;

    goto :goto_0

    .line 30
    :cond_1
    new-instance v0, Lcom/duokan/airkan/phone/aidl/IAirkanClientService$Stub$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/duokan/airkan/phone/aidl/IAirkanClientService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 34
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 11
    .parameter "code"
    .parameter "data"
    .parameter "reply"
    .parameter "flags"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    const/4 v9, 0x1

    .line 38
    sparse-switch p1, :sswitch_data_0

    .line 406
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v9

    :goto_0
    return v9

    .line 42
    :sswitch_0
    const-string v0, "com.duokan.airkan.phone.aidl.IAirkanClientService"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 47
    :sswitch_1
    const-string v0, "com.duokan.airkan.phone.aidl.IAirkanClientService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/duokan/airkan/phone/aidl/IDeviceServiceCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/duokan/airkan/phone/aidl/IDeviceServiceCallback;

    move-result-object v1

    .line 50
    .local v1, _arg0:Lcom/duokan/airkan/phone/aidl/IDeviceServiceCallback;
    invoke-virtual {p0, v1}, Lcom/duokan/airkan/phone/aidl/IAirkanClientService$Stub;->registerDeviceCallback(Lcom/duokan/airkan/phone/aidl/IDeviceServiceCallback;)V

    .line 51
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 56
    .end local v1           #_arg0:Lcom/duokan/airkan/phone/aidl/IDeviceServiceCallback;
    :sswitch_2
    const-string v0, "com.duokan.airkan.phone.aidl.IAirkanClientService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 57
    invoke-virtual {p0}, Lcom/duokan/airkan/phone/aidl/IAirkanClientService$Stub;->removeDeviceCallback()V

    .line 58
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 63
    :sswitch_3
    const-string v0, "com.duokan.airkan.phone.aidl.IAirkanClientService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 65
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/duokan/airkan/phone/aidl/IVideoServiceCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/duokan/airkan/phone/aidl/IVideoServiceCallback;

    move-result-object v1

    .line 66
    .local v1, _arg0:Lcom/duokan/airkan/phone/aidl/IVideoServiceCallback;
    invoke-virtual {p0, v1}, Lcom/duokan/airkan/phone/aidl/IAirkanClientService$Stub;->registerVideoCallback(Lcom/duokan/airkan/phone/aidl/IVideoServiceCallback;)V

    .line 67
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 72
    .end local v1           #_arg0:Lcom/duokan/airkan/phone/aidl/IVideoServiceCallback;
    :sswitch_4
    const-string v0, "com.duokan.airkan.phone.aidl.IAirkanClientService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 73
    invoke-virtual {p0}, Lcom/duokan/airkan/phone/aidl/IAirkanClientService$Stub;->removeVideoCallback()V

    .line 74
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 79
    :sswitch_5
    const-string v0, "com.duokan.airkan.phone.aidl.IAirkanClientService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 81
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/duokan/airkan/phone/aidl/IPhotoServiceCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/duokan/airkan/phone/aidl/IPhotoServiceCallback;

    move-result-object v1

    .line 82
    .local v1, _arg0:Lcom/duokan/airkan/phone/aidl/IPhotoServiceCallback;
    invoke-virtual {p0, v1}, Lcom/duokan/airkan/phone/aidl/IAirkanClientService$Stub;->registerPhotoCallback(Lcom/duokan/airkan/phone/aidl/IPhotoServiceCallback;)V

    .line 83
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 88
    .end local v1           #_arg0:Lcom/duokan/airkan/phone/aidl/IPhotoServiceCallback;
    :sswitch_6
    const-string v0, "com.duokan.airkan.phone.aidl.IAirkanClientService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 89
    invoke-virtual {p0}, Lcom/duokan/airkan/phone/aidl/IAirkanClientService$Stub;->removePhotoCallback()V

    .line 90
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 95
    :sswitch_7
    const-string v0, "com.duokan.airkan.phone.aidl.IAirkanClientService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 97
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 98
    .local v6, _arg0:Ljava/util/List;,"Ljava/util/List<Lcom/duokan/airkan/common/aidl/ParcelDeviceData;>;"
    invoke-virtual {p0, v6}, Lcom/duokan/airkan/phone/aidl/IAirkanClientService$Stub;->queryDevices(Ljava/util/List;)I

    move-result v8

    .line 99
    .local v8, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 100
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 101
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    goto :goto_0

    .line 106
    .end local v6           #_arg0:Ljava/util/List;,"Ljava/util/List<Lcom/duokan/airkan/common/aidl/ParcelDeviceData;>;"
    .end local v8           #_result:I
    :sswitch_8
    const-string v10, "com.duokan.airkan.phone.aidl.IAirkanClientService"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 108
    new-instance v1, Lcom/duokan/airkan/common/aidl/ParcelConnectedAppInfo;

    invoke-direct {v1}, Lcom/duokan/airkan/common/aidl/ParcelConnectedAppInfo;-><init>()V

    .line 109
    .local v1, _arg0:Lcom/duokan/airkan/common/aidl/ParcelConnectedAppInfo;
    invoke-virtual {p0, v1}, Lcom/duokan/airkan/phone/aidl/IAirkanClientService$Stub;->queryCurrentService(Lcom/duokan/airkan/common/aidl/ParcelConnectedAppInfo;)V

    .line 110
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 111
    if-eqz v1, :cond_0

    .line 112
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 113
    invoke-virtual {v1, p3, v9}, Lcom/duokan/airkan/common/aidl/ParcelConnectedAppInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 116
    :cond_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 122
    .end local v1           #_arg0:Lcom/duokan/airkan/common/aidl/ParcelConnectedAppInfo;
    :sswitch_9
    const-string v0, "com.duokan.airkan.phone.aidl.IAirkanClientService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 124
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 126
    .local v1, _arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 127
    .local v2, _arg1:Ljava/lang/String;
    invoke-virtual {p0, v1, v2}, Lcom/duokan/airkan/phone/aidl/IAirkanClientService$Stub;->connect(Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    .line 128
    .restart local v8       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 129
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 134
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v2           #_arg1:Ljava/lang/String;
    .end local v8           #_result:I
    :sswitch_a
    const-string v0, "com.duokan.airkan.phone.aidl.IAirkanClientService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 136
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 138
    .restart local v1       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 139
    .restart local v2       #_arg1:Ljava/lang/String;
    invoke-virtual {p0, v1, v2}, Lcom/duokan/airkan/phone/aidl/IAirkanClientService$Stub;->connect2BT(Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    .line 140
    .restart local v8       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 141
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 146
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v2           #_arg1:Ljava/lang/String;
    .end local v8           #_result:I
    :sswitch_b
    const-string v0, "com.duokan.airkan.phone.aidl.IAirkanClientService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 148
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 149
    .local v1, _arg0:I
    invoke-virtual {p0, v1}, Lcom/duokan/airkan/phone/aidl/IAirkanClientService$Stub;->disconnect(I)V

    .line 150
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 155
    .end local v1           #_arg0:I
    :sswitch_c
    const-string v0, "com.duokan.airkan.phone.aidl.IAirkanClientService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 157
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 158
    .restart local v1       #_arg0:I
    invoke-virtual {p0, v1}, Lcom/duokan/airkan/phone/aidl/IAirkanClientService$Stub;->release(I)I

    move-result v8

    .line 159
    .restart local v8       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 160
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 165
    .end local v1           #_arg0:I
    .end local v8           #_result:I
    :sswitch_d
    const-string v0, "com.duokan.airkan.phone.aidl.IAirkanClientService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 167
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 169
    .restart local v1       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1

    .line 170
    sget-object v0, Lcom/duokan/airkan/common/aidl/video/ParcelVideoBasicInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/duokan/airkan/common/aidl/video/ParcelVideoBasicInfo;

    .line 176
    .local v2, _arg1:Lcom/duokan/airkan/common/aidl/video/ParcelVideoBasicInfo;
    :goto_1
    sget-object v0, Lcom/duokan/airkan/common/aidl/video/ParcelVideoURL;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v7

    .line 178
    .local v7, _arg2:Ljava/util/List;,"Ljava/util/List<Lcom/duokan/airkan/common/aidl/video/ParcelVideoURL;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2

    .line 179
    sget-object v0, Lcom/duokan/airkan/common/aidl/video/ParcelDuokanVideoInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/duokan/airkan/common/aidl/video/ParcelDuokanVideoInfo;

    .line 184
    .local v4, _arg3:Lcom/duokan/airkan/common/aidl/video/ParcelDuokanVideoInfo;
    :goto_2
    invoke-virtual {p0, v1, v2, v7, v4}, Lcom/duokan/airkan/phone/aidl/IAirkanClientService$Stub;->play(ILcom/duokan/airkan/common/aidl/video/ParcelVideoBasicInfo;Ljava/util/List;Lcom/duokan/airkan/common/aidl/video/ParcelDuokanVideoInfo;)I

    move-result v8

    .line 185
    .restart local v8       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 186
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 173
    .end local v2           #_arg1:Lcom/duokan/airkan/common/aidl/video/ParcelVideoBasicInfo;
    .end local v4           #_arg3:Lcom/duokan/airkan/common/aidl/video/ParcelDuokanVideoInfo;
    .end local v7           #_arg2:Ljava/util/List;,"Ljava/util/List<Lcom/duokan/airkan/common/aidl/video/ParcelVideoURL;>;"
    .end local v8           #_result:I
    :cond_1
    const/4 v2, 0x0

    .restart local v2       #_arg1:Lcom/duokan/airkan/common/aidl/video/ParcelVideoBasicInfo;
    goto :goto_1

    .line 182
    .restart local v7       #_arg2:Ljava/util/List;,"Ljava/util/List<Lcom/duokan/airkan/common/aidl/video/ParcelVideoURL;>;"
    :cond_2
    const/4 v4, 0x0

    .restart local v4       #_arg3:Lcom/duokan/airkan/common/aidl/video/ParcelDuokanVideoInfo;
    goto :goto_2

    .line 191
    .end local v1           #_arg0:I
    .end local v2           #_arg1:Lcom/duokan/airkan/common/aidl/video/ParcelVideoBasicInfo;
    .end local v4           #_arg3:Lcom/duokan/airkan/common/aidl/video/ParcelDuokanVideoInfo;
    .end local v7           #_arg2:Ljava/util/List;,"Ljava/util/List<Lcom/duokan/airkan/common/aidl/video/ParcelVideoURL;>;"
    :sswitch_e
    const-string v0, "com.duokan.airkan.phone.aidl.IAirkanClientService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 193
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 195
    .restart local v1       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_3

    .line 196
    sget-object v0, Lcom/duokan/airkan/common/aidl/video/ParcelVideoBasicInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/duokan/airkan/common/aidl/video/ParcelVideoBasicInfo;

    .line 202
    .restart local v2       #_arg1:Lcom/duokan/airkan/common/aidl/video/ParcelVideoBasicInfo;
    :goto_3
    sget-object v0, Lcom/duokan/airkan/common/aidl/video/ParcelVideoURL;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v7

    .line 204
    .restart local v7       #_arg2:Ljava/util/List;,"Ljava/util/List<Lcom/duokan/airkan/common/aidl/video/ParcelVideoURL;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_4

    .line 205
    sget-object v0, Lcom/duokan/airkan/common/aidl/video/ParcelDuokanVideoInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/duokan/airkan/common/aidl/video/ParcelDuokanVideoInfo;

    .line 210
    .restart local v4       #_arg3:Lcom/duokan/airkan/common/aidl/video/ParcelDuokanVideoInfo;
    :goto_4
    invoke-virtual {p0, v1, v2, v7, v4}, Lcom/duokan/airkan/phone/aidl/IAirkanClientService$Stub;->musicPlay(ILcom/duokan/airkan/common/aidl/video/ParcelVideoBasicInfo;Ljava/util/List;Lcom/duokan/airkan/common/aidl/video/ParcelDuokanVideoInfo;)I

    move-result v8

    .line 211
    .restart local v8       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 212
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 199
    .end local v2           #_arg1:Lcom/duokan/airkan/common/aidl/video/ParcelVideoBasicInfo;
    .end local v4           #_arg3:Lcom/duokan/airkan/common/aidl/video/ParcelDuokanVideoInfo;
    .end local v7           #_arg2:Ljava/util/List;,"Ljava/util/List<Lcom/duokan/airkan/common/aidl/video/ParcelVideoURL;>;"
    .end local v8           #_result:I
    :cond_3
    const/4 v2, 0x0

    .restart local v2       #_arg1:Lcom/duokan/airkan/common/aidl/video/ParcelVideoBasicInfo;
    goto :goto_3

    .line 208
    .restart local v7       #_arg2:Ljava/util/List;,"Ljava/util/List<Lcom/duokan/airkan/common/aidl/video/ParcelVideoURL;>;"
    :cond_4
    const/4 v4, 0x0

    .restart local v4       #_arg3:Lcom/duokan/airkan/common/aidl/video/ParcelDuokanVideoInfo;
    goto :goto_4

    .line 217
    .end local v1           #_arg0:I
    .end local v2           #_arg1:Lcom/duokan/airkan/common/aidl/video/ParcelVideoBasicInfo;
    .end local v4           #_arg3:Lcom/duokan/airkan/common/aidl/video/ParcelDuokanVideoInfo;
    .end local v7           #_arg2:Ljava/util/List;,"Ljava/util/List<Lcom/duokan/airkan/common/aidl/video/ParcelVideoURL;>;"
    :sswitch_f
    const-string v0, "com.duokan.airkan.phone.aidl.IAirkanClientService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 219
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 221
    .restart local v1       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 222
    .local v2, _arg1:Ljava/lang/String;
    invoke-virtual {p0, v1, v2}, Lcom/duokan/airkan/phone/aidl/IAirkanClientService$Stub;->playSp(ILjava/lang/String;)I

    move-result v8

    .line 223
    .restart local v8       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 224
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 229
    .end local v1           #_arg0:I
    .end local v2           #_arg1:Ljava/lang/String;
    .end local v8           #_result:I
    :sswitch_10
    const-string v0, "com.duokan.airkan.phone.aidl.IAirkanClientService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 231
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 232
    .restart local v1       #_arg0:I
    invoke-virtual {p0, v1}, Lcom/duokan/airkan/phone/aidl/IAirkanClientService$Stub;->stop(I)I

    move-result v8

    .line 233
    .restart local v8       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 234
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 239
    .end local v1           #_arg0:I
    .end local v8           #_result:I
    :sswitch_11
    const-string v0, "com.duokan.airkan.phone.aidl.IAirkanClientService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 241
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 242
    .restart local v1       #_arg0:I
    invoke-virtual {p0, v1}, Lcom/duokan/airkan/phone/aidl/IAirkanClientService$Stub;->pause(I)I

    move-result v8

    .line 243
    .restart local v8       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 244
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 249
    .end local v1           #_arg0:I
    .end local v8           #_result:I
    :sswitch_12
    const-string v0, "com.duokan.airkan.phone.aidl.IAirkanClientService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 251
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 252
    .restart local v1       #_arg0:I
    invoke-virtual {p0, v1}, Lcom/duokan/airkan/phone/aidl/IAirkanClientService$Stub;->resume(I)I

    move-result v8

    .line 253
    .restart local v8       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 254
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 259
    .end local v1           #_arg0:I
    .end local v8           #_result:I
    :sswitch_13
    const-string v0, "com.duokan.airkan.phone.aidl.IAirkanClientService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 261
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 263
    .restart local v1       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 264
    .local v2, _arg1:I
    invoke-virtual {p0, v1, v2}, Lcom/duokan/airkan/phone/aidl/IAirkanClientService$Stub;->seek(II)I

    move-result v8

    .line 265
    .restart local v8       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 266
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 271
    .end local v1           #_arg0:I
    .end local v2           #_arg1:I
    .end local v8           #_result:I
    :sswitch_14
    const-string v0, "com.duokan.airkan.phone.aidl.IAirkanClientService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 273
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 275
    .restart local v1       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_5

    .line 276
    sget-object v0, Lcom/duokan/airkan/common/aidl/video/ParcelQueryData;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/duokan/airkan/common/aidl/video/ParcelQueryData;

    .line 281
    .local v2, _arg1:Lcom/duokan/airkan/common/aidl/video/ParcelQueryData;
    :goto_5
    invoke-virtual {p0, v1, v2}, Lcom/duokan/airkan/phone/aidl/IAirkanClientService$Stub;->query(ILcom/duokan/airkan/common/aidl/video/ParcelQueryData;)I

    move-result v8

    .line 282
    .restart local v8       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 283
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 279
    .end local v2           #_arg1:Lcom/duokan/airkan/common/aidl/video/ParcelQueryData;
    .end local v8           #_result:I
    :cond_5
    const/4 v2, 0x0

    .restart local v2       #_arg1:Lcom/duokan/airkan/common/aidl/video/ParcelQueryData;
    goto :goto_5

    .line 288
    .end local v1           #_arg0:I
    .end local v2           #_arg1:Lcom/duokan/airkan/common/aidl/video/ParcelQueryData;
    :sswitch_15
    const-string v0, "com.duokan.airkan.phone.aidl.IAirkanClientService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 290
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 292
    .restart local v1       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result v2

    .line 293
    .local v2, _arg1:B
    invoke-virtual {p0, v1, v2}, Lcom/duokan/airkan/phone/aidl/IAirkanClientService$Stub;->setResolution(IB)I

    move-result v8

    .line 294
    .restart local v8       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 295
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 300
    .end local v1           #_arg0:I
    .end local v2           #_arg1:B
    .end local v8           #_result:I
    :sswitch_16
    const-string v0, "com.duokan.airkan.phone.aidl.IAirkanClientService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 302
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 304
    .restart local v1       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result v2

    .line 305
    .restart local v2       #_arg1:B
    invoke-virtual {p0, v1, v2}, Lcom/duokan/airkan/phone/aidl/IAirkanClientService$Stub;->setSource(IB)I

    move-result v8

    .line 306
    .restart local v8       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 307
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 312
    .end local v1           #_arg0:I
    .end local v2           #_arg1:B
    .end local v8           #_result:I
    :sswitch_17
    const-string v0, "com.duokan.airkan.phone.aidl.IAirkanClientService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 314
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 316
    .restart local v1       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result v2

    .line 317
    .restart local v2       #_arg1:B
    invoke-virtual {p0, v1, v2}, Lcom/duokan/airkan/phone/aidl/IAirkanClientService$Stub;->setVolume(IB)I

    move-result v8

    .line 318
    .restart local v8       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 319
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 324
    .end local v1           #_arg0:I
    .end local v2           #_arg1:B
    .end local v8           #_result:I
    :sswitch_18
    const-string v0, "com.duokan.airkan.phone.aidl.IAirkanClientService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 326
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 328
    .restart local v1       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 329
    .local v2, _arg1:Ljava/lang/String;
    invoke-virtual {p0, v1, v2}, Lcom/duokan/airkan/phone/aidl/IAirkanClientService$Stub;->photoRequest(ILjava/lang/String;)I

    move-result v8

    .line 330
    .restart local v8       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 331
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 336
    .end local v1           #_arg0:I
    .end local v2           #_arg1:Ljava/lang/String;
    .end local v8           #_result:I
    :sswitch_19
    const-string v0, "com.duokan.airkan.phone.aidl.IAirkanClientService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 338
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 340
    .restart local v1       #_arg0:I
    sget-object v0, Lcom/duokan/airkan/common/aidl/photo/ParcelPhotoInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/duokan/airkan/common/aidl/photo/ParcelPhotoInfo;

    .line 341
    .local v2, _arg1:[Lcom/duokan/airkan/common/aidl/photo/ParcelPhotoInfo;
    invoke-virtual {p0, v1, v2}, Lcom/duokan/airkan/phone/aidl/IAirkanClientService$Stub;->photoPush(I[Lcom/duokan/airkan/common/aidl/photo/ParcelPhotoInfo;)I

    move-result v8

    .line 342
    .restart local v8       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 343
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 348
    .end local v1           #_arg0:I
    .end local v2           #_arg1:[Lcom/duokan/airkan/common/aidl/photo/ParcelPhotoInfo;
    .end local v8           #_result:I
    :sswitch_1a
    const-string v10, "com.duokan.airkan.phone.aidl.IAirkanClientService"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 350
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 352
    .restart local v1       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_6

    move v2, v9

    .line 354
    .local v2, _arg1:Z
    :goto_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 356
    .local v3, _arg2:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 358
    .local v4, _arg3:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_7

    move v5, v9

    .local v5, _arg4:Z
    :goto_7
    move-object v0, p0

    .line 359
    invoke-virtual/range {v0 .. v5}, Lcom/duokan/airkan/phone/aidl/IAirkanClientService$Stub;->photoShow(IZIIZ)I

    move-result v8

    .line 360
    .restart local v8       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 361
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v2           #_arg1:Z
    .end local v3           #_arg2:I
    .end local v4           #_arg3:I
    .end local v5           #_arg4:Z
    .end local v8           #_result:I
    :cond_6
    move v2, v0

    .line 352
    goto :goto_6

    .restart local v2       #_arg1:Z
    .restart local v3       #_arg2:I
    .restart local v4       #_arg3:I
    :cond_7
    move v5, v0

    .line 358
    goto :goto_7

    .line 366
    .end local v1           #_arg0:I
    .end local v2           #_arg1:Z
    .end local v3           #_arg2:I
    .end local v4           #_arg3:I
    :sswitch_1b
    const-string v10, "com.duokan.airkan.phone.aidl.IAirkanClientService"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 368
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 370
    .restart local v1       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_8

    move v2, v9

    .line 372
    .restart local v2       #_arg1:Z
    :goto_8
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 373
    .restart local v3       #_arg2:I
    invoke-virtual {p0, v1, v2, v3}, Lcom/duokan/airkan/phone/aidl/IAirkanClientService$Stub;->photoClean(IZI)I

    move-result v8

    .line 374
    .restart local v8       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 375
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v2           #_arg1:Z
    .end local v3           #_arg2:I
    .end local v8           #_result:I
    :cond_8
    move v2, v0

    .line 370
    goto :goto_8

    .line 380
    .end local v1           #_arg0:I
    :sswitch_1c
    const-string v0, "com.duokan.airkan.phone.aidl.IAirkanClientService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 382
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 384
    .restart local v1       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_9

    .line 385
    sget-object v0, Lcom/duokan/airkan/common/aidl/photo/ParcelPhotoQueryData;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/duokan/airkan/common/aidl/photo/ParcelPhotoQueryData;

    .line 390
    .local v2, _arg1:Lcom/duokan/airkan/common/aidl/photo/ParcelPhotoQueryData;
    :goto_9
    invoke-virtual {p0, v1, v2}, Lcom/duokan/airkan/phone/aidl/IAirkanClientService$Stub;->photoQuery(ILcom/duokan/airkan/common/aidl/photo/ParcelPhotoQueryData;)I

    move-result v8

    .line 391
    .restart local v8       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 392
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 388
    .end local v2           #_arg1:Lcom/duokan/airkan/common/aidl/photo/ParcelPhotoQueryData;
    .end local v8           #_result:I
    :cond_9
    const/4 v2, 0x0

    .restart local v2       #_arg1:Lcom/duokan/airkan/common/aidl/photo/ParcelPhotoQueryData;
    goto :goto_9

    .line 397
    .end local v1           #_arg0:I
    .end local v2           #_arg1:Lcom/duokan/airkan/common/aidl/photo/ParcelPhotoQueryData;
    :sswitch_1d
    const-string v0, "com.duokan.airkan.phone.aidl.IAirkanClientService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 399
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 400
    .restart local v1       #_arg0:I
    invoke-virtual {p0, v1}, Lcom/duokan/airkan/phone/aidl/IAirkanClientService$Stub;->photoClose(I)I

    move-result v8

    .line 401
    .restart local v8       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 402
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 38
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x9 -> :sswitch_9
        0xa -> :sswitch_a
        0xb -> :sswitch_b
        0xc -> :sswitch_c
        0xd -> :sswitch_d
        0xe -> :sswitch_e
        0xf -> :sswitch_f
        0x10 -> :sswitch_10
        0x11 -> :sswitch_11
        0x12 -> :sswitch_12
        0x13 -> :sswitch_13
        0x14 -> :sswitch_14
        0x15 -> :sswitch_15
        0x16 -> :sswitch_16
        0x17 -> :sswitch_17
        0x18 -> :sswitch_18
        0x19 -> :sswitch_19
        0x1a -> :sswitch_1a
        0x1b -> :sswitch_1b
        0x1c -> :sswitch_1c
        0x1d -> :sswitch_1d
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
