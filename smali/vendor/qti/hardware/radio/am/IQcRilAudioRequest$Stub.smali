.class public abstract Lvendor/qti/hardware/radio/am/IQcRilAudioRequest$Stub;
.super Landroid/os/Binder;
.source "IQcRilAudioRequest.java"

# interfaces
.implements Lvendor/qti/hardware/radio/am/IQcRilAudioRequest;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvendor/qti/hardware/radio/am/IQcRilAudioRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lvendor/qti/hardware/radio/am/IQcRilAudioRequest$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_getInterfaceHash:I = 0xfffffe

.field static final TRANSACTION_getInterfaceVersion:I = 0xffffff

.field static final TRANSACTION_queryParameters:I = 0x1

.field static final TRANSACTION_setParameters:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 42
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 43
    invoke-virtual {p0}, Lvendor/qti/hardware/radio/am/IQcRilAudioRequest$Stub;->markVintfStability()V

    .line 44
    sget-object v0, Lvendor/qti/hardware/radio/am/IQcRilAudioRequest$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {p0, p0, v0}, Lvendor/qti/hardware/radio/am/IQcRilAudioRequest$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 45
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lvendor/qti/hardware/radio/am/IQcRilAudioRequest;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 52
    if-nez p0, :cond_0

    .line 53
    const/4 v0, 0x0

    return-object v0

    .line 55
    :cond_0
    sget-object v0, Lvendor/qti/hardware/radio/am/IQcRilAudioRequest$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 56
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lvendor/qti/hardware/radio/am/IQcRilAudioRequest;

    if-eqz v1, :cond_1

    .line 57
    move-object v1, v0

    check-cast v1, Lvendor/qti/hardware/radio/am/IQcRilAudioRequest;

    return-object v1

    .line 59
    :cond_1
    new-instance v1, Lvendor/qti/hardware/radio/am/IQcRilAudioRequest$Stub$Proxy;

    invoke-direct {v1, p0}, Lvendor/qti/hardware/radio/am/IQcRilAudioRequest$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p0, "transactionCode"    # I

    .line 68
    sparse-switch p0, :sswitch_data_0

    .line 88
    const/4 v0, 0x0

    return-object v0

    .line 80
    :sswitch_0
    const-string v0, "getInterfaceVersion"

    return-object v0

    .line 84
    :sswitch_1
    const-string v0, "getInterfaceHash"

    return-object v0

    .line 76
    :sswitch_2
    const-string v0, "setParameters"

    return-object v0

    .line 72
    :sswitch_3
    const-string v0, "queryParameters"

    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_3
        0x2 -> :sswitch_2
        0xfffffe -> :sswitch_1
        0xffffff -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 63
    return-object p0
.end method

.method public getMaxTransactionId()I
    .locals 1

    .line 243
    const v0, 0xfffffe

    return v0
.end method

.method public getTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p1, "transactionCode"    # I

    .line 95
    invoke-static {p1}, Lvendor/qti/hardware/radio/am/IQcRilAudioRequest$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 4
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 99
    sget-object v0, Lvendor/qti/hardware/radio/am/IQcRilAudioRequest$Stub;->DESCRIPTOR:Ljava/lang/String;

    .line 100
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    const v2, 0xffffff

    if-gt p1, v2, :cond_0

    .line 101
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 103
    :cond_0
    sparse-switch p1, :sswitch_data_0

    .line 123
    packed-switch p1, :pswitch_data_0

    .line 147
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 107
    :sswitch_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 108
    return v1

    .line 112
    :sswitch_1
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 113
    invoke-virtual {p0}, Lvendor/qti/hardware/radio/am/IQcRilAudioRequest$Stub;->getInterfaceVersion()I

    move-result v2

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 114
    return v1

    .line 118
    :sswitch_2
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 119
    invoke-virtual {p0}, Lvendor/qti/hardware/radio/am/IQcRilAudioRequest$Stub;->getInterfaceHash()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 120
    return v1

    .line 138
    :pswitch_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 140
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 141
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 142
    invoke-virtual {p0, v2, v3}, Lvendor/qti/hardware/radio/am/IQcRilAudioRequest$Stub;->setParameters(ILjava/lang/String;)V

    .line 143
    goto :goto_0

    .line 128
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Ljava/lang/String;
    :pswitch_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 130
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 131
    .restart local v3    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 132
    invoke-virtual {p0, v2, v3}, Lvendor/qti/hardware/radio/am/IQcRilAudioRequest$Stub;->queryParameters(ILjava/lang/String;)V

    .line 133
    nop

    .line 150
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Ljava/lang/String;
    :goto_0
    return v1

    nop

    :sswitch_data_0
    .sparse-switch
        0xfffffe -> :sswitch_2
        0xffffff -> :sswitch_1
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
