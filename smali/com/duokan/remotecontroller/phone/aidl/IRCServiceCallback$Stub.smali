.class public abstract Lcom/duokan/remotecontroller/phone/aidl/IRCServiceCallback$Stub;
.super Landroid/os/Binder;
.source "IRCServiceCallback.java"

# interfaces
.implements Lcom/duokan/remotecontroller/phone/aidl/IRCServiceCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/duokan/remotecontroller/phone/aidl/IRCServiceCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/duokan/remotecontroller/phone/aidl/IRCServiceCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.duokan.remotecontroller.phone.aidl.IRCServiceCallback"

.field static final TRANSACTION_inform:I = 0x7

.field static final TRANSACTION_onAuthReqResponse:I = 0x1

.field static final TRANSACTION_onDisconnected:I = 0x4

.field static final TRANSACTION_onNetworkCongestion:I = 0x6

.field static final TRANSACTION_onPlayControlResponse:I = 0x2

.field static final TRANSACTION_onReleased:I = 0x5

.field static final TRANSACTION_onSendKeyResponse:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "com.duokan.remotecontroller.phone.aidl.IRCServiceCallback"

    invoke-virtual {p0, p0, v0}, Lcom/duokan/remotecontroller/phone/aidl/IRCServiceCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/duokan/remotecontroller/phone/aidl/IRCServiceCallback;
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
    const-string v1, "com.duokan.remotecontroller.phone.aidl.IRCServiceCallback"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/duokan/remotecontroller/phone/aidl/IRCServiceCallback;

    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Lcom/duokan/remotecontroller/phone/aidl/IRCServiceCallback;

    goto :goto_0

    .line 30
    :cond_1
    new-instance v0, Lcom/duokan/remotecontroller/phone/aidl/IRCServiceCallback$Stub$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/duokan/remotecontroller/phone/aidl/IRCServiceCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .locals 6
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
    const/4 v4, 0x1

    .line 38
    sparse-switch p1, :sswitch_data_0

    .line 117
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    :goto_0
    return v4

    .line 42
    :sswitch_0
    const-string v5, "com.duokan.remotecontroller.phone.aidl.IRCServiceCallback"

    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 47
    :sswitch_1
    const-string v5, "com.duokan.remotecontroller.phone.aidl.IRCServiceCallback"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 51
    .local v0, _arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 52
    .local v1, _arg1:I
    invoke-virtual {p0, v0, v1}, Lcom/duokan/remotecontroller/phone/aidl/IRCServiceCallback$Stub;->onAuthReqResponse(II)V

    .line 53
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 58
    .end local v0           #_arg0:I
    .end local v1           #_arg1:I
    :sswitch_2
    const-string v5, "com.duokan.remotecontroller.phone.aidl.IRCServiceCallback"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 60
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 62
    .restart local v0       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result v1

    .line 64
    .local v1, _arg1:B
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 66
    .local v2, _arg2:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 67
    .local v3, _arg3:Ljava/lang/String;
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/duokan/remotecontroller/phone/aidl/IRCServiceCallback$Stub;->onPlayControlResponse(IBILjava/lang/String;)V

    .line 68
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 73
    .end local v0           #_arg0:I
    .end local v1           #_arg1:B
    .end local v2           #_arg2:I
    .end local v3           #_arg3:Ljava/lang/String;
    :sswitch_3
    const-string v5, "com.duokan.remotecontroller.phone.aidl.IRCServiceCallback"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 75
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 77
    .restart local v0       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result v1

    .line 79
    .restart local v1       #_arg1:B
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 81
    .restart local v2       #_arg2:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 82
    .restart local v3       #_arg3:Ljava/lang/String;
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/duokan/remotecontroller/phone/aidl/IRCServiceCallback$Stub;->onSendKeyResponse(IBILjava/lang/String;)V

    .line 83
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 88
    .end local v0           #_arg0:I
    .end local v1           #_arg1:B
    .end local v2           #_arg2:I
    .end local v3           #_arg3:Ljava/lang/String;
    :sswitch_4
    const-string v5, "com.duokan.remotecontroller.phone.aidl.IRCServiceCallback"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 89
    invoke-virtual {p0}, Lcom/duokan/remotecontroller/phone/aidl/IRCServiceCallback$Stub;->onDisconnected()V

    .line 90
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 95
    :sswitch_5
    const-string v5, "com.duokan.remotecontroller.phone.aidl.IRCServiceCallback"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 96
    invoke-virtual {p0}, Lcom/duokan/remotecontroller/phone/aidl/IRCServiceCallback$Stub;->onReleased()V

    .line 97
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 102
    :sswitch_6
    const-string v5, "com.duokan.remotecontroller.phone.aidl.IRCServiceCallback"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 103
    invoke-virtual {p0}, Lcom/duokan/remotecontroller/phone/aidl/IRCServiceCallback$Stub;->onNetworkCongestion()V

    .line 104
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 109
    :sswitch_7
    const-string v5, "com.duokan.remotecontroller.phone.aidl.IRCServiceCallback"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 111
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 112
    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/duokan/remotecontroller/phone/aidl/IRCServiceCallback$Stub;->inform(Ljava/lang/String;)V

    .line 113
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
