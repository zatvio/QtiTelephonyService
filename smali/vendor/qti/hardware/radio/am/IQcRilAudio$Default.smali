.class public Lvendor/qti/hardware/radio/am/IQcRilAudio$Default;
.super Ljava/lang/Object;
.source "IQcRilAudio.java"

# interfaces
.implements Lvendor/qti/hardware/radio/am/IQcRilAudio;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvendor/qti/hardware/radio/am/IQcRilAudio;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .line 35
    const/4 v0, 0x0

    return-object v0
.end method

.method public getInterfaceHash()Ljava/lang/String;
    .locals 1

    .line 31
    const-string v0, ""

    return-object v0
.end method

.method public getInterfaceVersion()I
    .locals 1

    .line 27
    const/4 v0, 0x0

    return v0
.end method

.method public setError(I)V
    .locals 0
    .param p1, "errorCode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 24
    return-void
.end method

.method public setRequestInterface(Lvendor/qti/hardware/radio/am/IQcRilAudioRequest;)Lvendor/qti/hardware/radio/am/IQcRilAudioResponse;
    .locals 1
    .param p1, "callback"    # Lvendor/qti/hardware/radio/am/IQcRilAudioRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 20
    const/4 v0, 0x0

    return-object v0
.end method
