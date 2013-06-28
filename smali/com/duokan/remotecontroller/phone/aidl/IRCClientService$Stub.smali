.class public abstract Lcom/duokan/remotecontroller/phone/aidl/IRCClientService$Stub;
.super Landroid/os/Binder;
.source "IRCClientService.java"

# interfaces
.implements Lcom/duokan/remotecontroller/phone/aidl/IRCClientService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/duokan/remotecontroller/phone/aidl/IRCClientService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/duokan/remotecontroller/phone/aidl/IRCClientService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.duokan.remotecontroller.phone.aidl.IRCClientService"

.field static final TRANSACTION_connect:I = 0x6

.field static final TRANSACTION_disconnect:I = 0x7

.field static final TRANSACTION_play:I = 0x9

.field static final TRANSACTION_queryDevices:I = 0x5

.field static final TRANSACTION_registerDeviceCallback:I = 0x1

.field static final TRANSACTION_registerRCCallback:I = 0x3

.field static final TRANSACTION_removeDeviceCallback:I = 0x2

.field static final TRANSACTION_removeRCCallback:I = 0x4

.field static final TRANSACTION_sendKey:I = 0x8


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "com.duokan.remotecontroller.phone.aidl.IRCClientService"

    invoke-virtual {p0, p0, v0}, Lcom/duokan/remotecontroller/phone/aidl/IRCClientService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/duokan/remotecontroller/phone/aidl/IRCClientService;
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
    const-string v1, "com.duokan.remotecontroller.phone.aidl.IRCClientService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/duokan/remotecontroller/phone/aidl/IRCClientService;

    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Lcom/duokan/remotecontroller/phone/aidl/IRCClientService;

    goto :goto_0

    .line 30
    :cond_1
    new-instance v0, Lcom/duokan/remotecontroller/phone/aidl/IRCClientService$Stub$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/duokan/remotecontroller/phone/aidl/IRCClientService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .locals 7
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
    const/4 v5, 0x1

    .line 38
    sparse-switch p1, :sswitch_data_0

    .line 153
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v5

    :goto_0
    return v5

    .line 42
    :sswitch_0
    const-string v6, "com.duokan.remotecontroller.phone.aidl.IRCClientService"

    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 47
    :sswitch_1
    const-string v6, "com.duokan.remotecontroller.phone.aidl.IRCClientService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Lcom/duokan/remotecontroller/phone/aidl/IDeviceServiceCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/duokan/remotecontroller/phone/aidl/IDeviceServiceCallback;

    move-result-object v0

    .line 50
    .local v0, _arg0:Lcom/duokan/remotecontroller/phone/aidl/IDeviceServiceCallback;
    invoke-virtual {p0, v0}, Lcom/duokan/remotecontroller/phone/aidl/IRCClientService$Stub;->registerDeviceCallback(Lcom/duokan/remotecontroller/phone/aidl/IDeviceServiceCallback;)V

    .line 51
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 56
    .end local v0           #_arg0:Lcom/duokan/remotecontroller/phone/aidl/IDeviceServiceCallback;
    :sswitch_2
    const-string v6, "com.duokan.remotecontroller.phone.aidl.IRCClientService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 57
    invoke-virtual {p0}, Lcom/duokan/remotecontroller/phone/aidl/IRCClientService$Stub;->removeDeviceCallback()V

    .line 58
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 63
    :sswitch_3
    const-string v6, "com.duokan.remotecontroller.phone.aidl.IRCClientService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 65
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Lcom/duokan/remotecontroller/phone/aidl/IRCServiceCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/duokan/remotecontroller/phone/aidl/IRCServiceCallback;

    move-result-object v0

    .line 66
    .local v0, _arg0:Lcom/duokan/remotecontroller/phone/aidl/IRCServiceCallback;
    invoke-virtual {p0, v0}, Lcom/duokan/remotecontroller/phone/aidl/IRCClientService$Stub;->registerRCCallback(Lcom/duokan/remotecontroller/phone/aidl/IRCServiceCallback;)V

    .line 67
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 72
    .end local v0           #_arg0:Lcom/duokan/remotecontroller/phone/aidl/IRCServiceCallback;
    :sswitch_4
    const-string v6, "com.duokan.remotecontroller.phone.aidl.IRCClientService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 73
    invoke-virtual {p0}, Lcom/duokan/remotecontroller/phone/aidl/IRCClientService$Stub;->removeRCCallback()V

    .line 74
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 79
    :sswitch_5
    const-string v6, "com.duokan.remotecontroller.phone.aidl.IRCClientService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 81
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 82
    .local v1, _arg0:Ljava/util/List;,"Ljava/util/List<Lcom/duokan/airkan/common/aidl/ParcelDeviceData;>;"
    invoke-virtual {p0, v1}, Lcom/duokan/remotecontroller/phone/aidl/IRCClientService$Stub;->queryDevices(Ljava/util/List;)I

    move-result v4

    .line 83
    .local v4, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 84
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 85
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    goto :goto_0

    .line 90
    .end local v1           #_arg0:Ljava/util/List;,"Ljava/util/List<Lcom/duokan/airkan/common/aidl/ParcelDeviceData;>;"
    .end local v4           #_result:I
    :sswitch_6
    const-string v6, "com.duokan.remotecontroller.phone.aidl.IRCClientService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 92
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 94
    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 95
    .local v2, _arg1:Ljava/lang/String;
    invoke-virtual {p0, v0, v2}, Lcom/duokan/remotecontroller/phone/aidl/IRCClientService$Stub;->connect(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 96
    .restart local v4       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 97
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 102
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v2           #_arg1:Ljava/lang/String;
    .end local v4           #_result:I
    :sswitch_7
    const-string v6, "com.duokan.remotecontroller.phone.aidl.IRCClientService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 104
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 105
    .local v0, _arg0:I
    invoke-virtual {p0, v0}, Lcom/duokan/remotecontroller/phone/aidl/IRCClientService$Stub;->disconnect(I)V

    .line 106
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 111
    .end local v0           #_arg0:I
    :sswitch_8
    const-string v6, "com.duokan.remotecontroller.phone.aidl.IRCClientService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 113
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 115
    .restart local v0       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_0

    .line 116
    sget-object v6, Landroid/view/KeyEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v6, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/KeyEvent;

    .line 122
    .local v2, _arg1:Landroid/view/KeyEvent;
    :goto_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 123
    .local v3, _arg2:Ljava/lang/String;
    invoke-virtual {p0, v0, v2, v3}, Lcom/duokan/remotecontroller/phone/aidl/IRCClientService$Stub;->sendKey(ILandroid/view/KeyEvent;Ljava/lang/String;)I

    move-result v4

    .line 124
    .restart local v4       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 125
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 119
    .end local v2           #_arg1:Landroid/view/KeyEvent;
    .end local v3           #_arg2:Ljava/lang/String;
    .end local v4           #_result:I
    :cond_0
    const/4 v2, 0x0

    .restart local v2       #_arg1:Landroid/view/KeyEvent;
    goto :goto_1

    .line 130
    .end local v0           #_arg0:I
    .end local v2           #_arg1:Landroid/view/KeyEvent;
    :sswitch_9
    const-string v6, "com.duokan.remotecontroller.phone.aidl.IRCClientService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 132
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 134
    .restart local v0       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_1

    .line 135
    sget-object v6, Lcom/duokan/airkan/common/aidl/video/ParcelVideoBasicInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v6, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/duokan/airkan/common/aidl/video/ParcelVideoBasicInfo;

    .line 141
    .local v2, _arg1:Lcom/duokan/airkan/common/aidl/video/ParcelVideoBasicInfo;
    :goto_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_2

    .line 142
    sget-object v6, Lcom/duokan/airkan/common/aidl/video/ParcelDuokanVideoInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v6, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/duokan/airkan/common/aidl/video/ParcelDuokanVideoInfo;

    .line 147
    .local v3, _arg2:Lcom/duokan/airkan/common/aidl/video/ParcelDuokanVideoInfo;
    :goto_3
    invoke-virtual {p0, v0, v2, v3}, Lcom/duokan/remotecontroller/phone/aidl/IRCClientService$Stub;->play(ILcom/duokan/airkan/common/aidl/video/ParcelVideoBasicInfo;Lcom/duokan/airkan/common/aidl/video/ParcelDuokanVideoInfo;)I

    move-result v4

    .line 148
    .restart local v4       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 149
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 138
    .end local v2           #_arg1:Lcom/duokan/airkan/common/aidl/video/ParcelVideoBasicInfo;
    .end local v3           #_arg2:Lcom/duokan/airkan/common/aidl/video/ParcelDuokanVideoInfo;
    .end local v4           #_result:I
    :cond_1
    const/4 v2, 0x0

    .restart local v2       #_arg1:Lcom/duokan/airkan/common/aidl/video/ParcelVideoBasicInfo;
    goto :goto_2

    .line 145
    :cond_2
    const/4 v3, 0x0

    .restart local v3       #_arg2:Lcom/duokan/airkan/common/aidl/video/ParcelDuokanVideoInfo;
    goto :goto_3

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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
