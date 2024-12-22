.class public Lcom/qualcomm/qti/telephonyservice/QcRilAudioAidl;
.super Ljava/lang/Object;
.source "QcRilAudioAidl.java"

# interfaces
.implements Lcom/qualcomm/qti/telephonyservice/IAudioControllerCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qualcomm/qti/telephonyservice/QcRilAudioAidl$QcRilAudioRequest;,
        Lcom/qualcomm/qti/telephonyservice/QcRilAudioAidl$QcRilAudioDeathRecipient;
    }
.end annotation


# static fields
.field private static final QCRIL_AUDIO_SERVICE_NAME:Ljava/lang/String; = "vendor.qti.hardware.radio.am.IQcRilAudio/slot"

.field private static final TAG:Ljava/lang/String; = "QcRilAudioAidl"


# instance fields
.field private mAudioController:Lcom/qualcomm/qti/telephonyservice/IAudioController;

.field private mAudioServerStatus:I

.field private mBinder:Landroid/os/IBinder;

.field private mDeathRecipient:Lcom/qualcomm/qti/telephonyservice/QcRilAudioAidl$QcRilAudioDeathRecipient;

.field private final mInstanceName:Ljava/lang/String;

.field private final mLock:Ljava/lang/Object;

.field private mRequestInterface:Lvendor/qti/hardware/radio/am/IQcRilAudioRequest;

.field private mResponseInterface:Lvendor/qti/hardware/radio/am/IQcRilAudioResponse;

.field private mRilAudio:Lvendor/qti/hardware/radio/am/IQcRilAudio;

.field private final mServiceInstance:Ljava/lang/String;


# direct methods
.method static bridge synthetic -$$Nest$fgetmAudioServerStatus(Lcom/qualcomm/qti/telephonyservice/QcRilAudioAidl;)I
    .locals 0

    iget p0, p0, Lcom/qualcomm/qti/telephonyservice/QcRilAudioAidl;->mAudioServerStatus:I

    return p0
.end method

.method static bridge synthetic -$$Nest$maudioController(Lcom/qualcomm/qti/telephonyservice/QcRilAudioAidl;)Lcom/qualcomm/qti/telephonyservice/IAudioController;
    .locals 0

    invoke-direct {p0}, Lcom/qualcomm/qti/telephonyservice/QcRilAudioAidl;->audioController()Lcom/qualcomm/qti/telephonyservice/IAudioController;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mconvertAudioErrorToAidl(Lcom/qualcomm/qti/telephonyservice/QcRilAudioAidl;I)I
    .locals 0

    invoke-direct {p0, p1}, Lcom/qualcomm/qti/telephonyservice/QcRilAudioAidl;->convertAudioErrorToAidl(I)I

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$minitQcRilAudio(Lcom/qualcomm/qti/telephonyservice/QcRilAudioAidl;)V
    .locals 0

    invoke-direct {p0}, Lcom/qualcomm/qti/telephonyservice/QcRilAudioAidl;->initQcRilAudio()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mresetService(Lcom/qualcomm/qti/telephonyservice/QcRilAudioAidl;)V
    .locals 0

    invoke-direct {p0}, Lcom/qualcomm/qti/telephonyservice/QcRilAudioAidl;->resetService()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mresponseInterface(Lcom/qualcomm/qti/telephonyservice/QcRilAudioAidl;)Lvendor/qti/hardware/radio/am/IQcRilAudioResponse;
    .locals 0

    invoke-direct {p0}, Lcom/qualcomm/qti/telephonyservice/QcRilAudioAidl;->responseInterface()Lvendor/qti/hardware/radio/am/IQcRilAudioResponse;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$msetError(Lcom/qualcomm/qti/telephonyservice/QcRilAudioAidl;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/qualcomm/qti/telephonyservice/QcRilAudioAidl;->setError(I)V

    return-void
.end method

.method public constructor <init>(ILcom/qualcomm/qti/telephonyservice/IAudioController;)V
    .locals 2
    .param p1, "slotId"    # I
    .param p2, "audioController"    # Lcom/qualcomm/qti/telephonyservice/IAudioController;

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Lcom/qualcomm/qti/telephonyservice/QcRilAudioAidl$QcRilAudioRequest;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/qualcomm/qti/telephonyservice/QcRilAudioAidl$QcRilAudioRequest;-><init>(Lcom/qualcomm/qti/telephonyservice/QcRilAudioAidl;Lcom/qualcomm/qti/telephonyservice/QcRilAudioAidl$QcRilAudioRequest-IA;)V

    iput-object v0, p0, Lcom/qualcomm/qti/telephonyservice/QcRilAudioAidl;->mRequestInterface:Lvendor/qti/hardware/radio/am/IQcRilAudioRequest;

    .line 31
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/qualcomm/qti/telephonyservice/QcRilAudioAidl;->mLock:Ljava/lang/Object;

    .line 32
    const/4 v0, -0x1

    iput v0, p0, Lcom/qualcomm/qti/telephonyservice/QcRilAudioAidl;->mAudioServerStatus:I

    .line 35
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "slot"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/qualcomm/qti/telephonyservice/QcRilAudioAidl;->mInstanceName:Ljava/lang/String;

    .line 36
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "vendor.qti.hardware.radio.am.IQcRilAudio/slot"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/qualcomm/qti/telephonyservice/QcRilAudioAidl;->mServiceInstance:Ljava/lang/String;

    .line 37
    iput-object p2, p0, Lcom/qualcomm/qti/telephonyservice/QcRilAudioAidl;->mAudioController:Lcom/qualcomm/qti/telephonyservice/IAudioController;

    .line 38
    new-instance v0, Lcom/qualcomm/qti/telephonyservice/QcRilAudioAidl$QcRilAudioDeathRecipient;

    invoke-direct {v0, p0}, Lcom/qualcomm/qti/telephonyservice/QcRilAudioAidl$QcRilAudioDeathRecipient;-><init>(Lcom/qualcomm/qti/telephonyservice/QcRilAudioAidl;)V

    iput-object v0, p0, Lcom/qualcomm/qti/telephonyservice/QcRilAudioAidl;->mDeathRecipient:Lcom/qualcomm/qti/telephonyservice/QcRilAudioAidl$QcRilAudioDeathRecipient;

    .line 39
    invoke-direct {p0}, Lcom/qualcomm/qti/telephonyservice/QcRilAudioAidl;->initQcRilAudio()V

    .line 40
    return-void
.end method

.method private audioController()Lcom/qualcomm/qti/telephonyservice/IAudioController;
    .locals 3

    .line 101
    const/4 v0, 0x0

    .line 102
    .local v0, "audioController":Lcom/qualcomm/qti/telephonyservice/IAudioController;
    iget-object v1, p0, Lcom/qualcomm/qti/telephonyservice/QcRilAudioAidl;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 103
    :try_start_0
    iget-object v2, p0, Lcom/qualcomm/qti/telephonyservice/QcRilAudioAidl;->mAudioController:Lcom/qualcomm/qti/telephonyservice/IAudioController;

    move-object v0, v2

    .line 104
    monitor-exit v1

    .line 105
    return-object v0

    .line 104
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private convertAudioErrorToAidl(I)I
    .locals 1
    .param p1, "errorCode"    # I

    .line 223
    packed-switch p1, :pswitch_data_0

    .line 229
    :pswitch_0
    const/4 v0, 0x1

    return v0

    .line 227
    :pswitch_1
    const/4 v0, 0x2

    return v0

    .line 225
    :pswitch_2
    const/4 v0, 0x0

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private initQcRilAudio()V
    .locals 5

    .line 110
    :try_start_0
    invoke-direct {p0}, Lcom/qualcomm/qti/telephonyservice/QcRilAudioAidl;->rilAudio()Lvendor/qti/hardware/radio/am/IQcRilAudio;

    move-result-object v0

    if-nez v0, :cond_2

    .line 111
    iget-object v0, p0, Lcom/qualcomm/qti/telephonyservice/QcRilAudioAidl;->mServiceInstance:Ljava/lang/String;

    .line 112
    invoke-static {v0}, Landroid/os/ServiceManager;->waitForDeclaredService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 111
    invoke-static {v0}, Landroid/os/Binder;->allowBlocking(Landroid/os/IBinder;)Landroid/os/IBinder;

    move-result-object v0

    .line 113
    .local v0, "binder":Landroid/os/IBinder;
    if-eqz v0, :cond_1

    .line 114
    iget-object v1, p0, Lcom/qualcomm/qti/telephonyservice/QcRilAudioAidl;->mDeathRecipient:Lcom/qualcomm/qti/telephonyservice/QcRilAudioAidl$QcRilAudioDeathRecipient;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 115
    const-string v1, "QcRilAudioAidl"

    const-string v2, "initQcRilAudio: Stable AIDL is used."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    nop

    .line 117
    invoke-static {v0}, Lvendor/qti/hardware/radio/am/IQcRilAudio$Stub;->asInterface(Landroid/os/IBinder;)Lvendor/qti/hardware/radio/am/IQcRilAudio;

    move-result-object v1

    .line 118
    .local v1, "qcRilAudio":Lvendor/qti/hardware/radio/am/IQcRilAudio;
    if-eqz v1, :cond_0

    .line 119
    const-string v2, "QcRilAudioAidl"

    const-string v3, "initQcRilAudio: setRequestInterface"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    iget-object v2, p0, Lcom/qualcomm/qti/telephonyservice/QcRilAudioAidl;->mRequestInterface:Lvendor/qti/hardware/radio/am/IQcRilAudioRequest;

    .line 121
    invoke-interface {v1, v2}, Lvendor/qti/hardware/radio/am/IQcRilAudio;->setRequestInterface(Lvendor/qti/hardware/radio/am/IQcRilAudioRequest;)Lvendor/qti/hardware/radio/am/IQcRilAudioResponse;

    move-result-object v2

    .line 122
    .local v2, "responseInterface":Lvendor/qti/hardware/radio/am/IQcRilAudioResponse;
    iget-object v3, p0, Lcom/qualcomm/qti/telephonyservice/QcRilAudioAidl;->mLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 123
    :try_start_1
    iput-object v0, p0, Lcom/qualcomm/qti/telephonyservice/QcRilAudioAidl;->mBinder:Landroid/os/IBinder;

    .line 124
    iput-object v1, p0, Lcom/qualcomm/qti/telephonyservice/QcRilAudioAidl;->mRilAudio:Lvendor/qti/hardware/radio/am/IQcRilAudio;

    .line 125
    iput-object v2, p0, Lcom/qualcomm/qti/telephonyservice/QcRilAudioAidl;->mResponseInterface:Lvendor/qti/hardware/radio/am/IQcRilAudioResponse;

    .line 126
    monitor-exit v3

    .line 127
    .end local v2    # "responseInterface":Lvendor/qti/hardware/radio/am/IQcRilAudioResponse;
    goto :goto_0

    .line 126
    .restart local v2    # "responseInterface":Lvendor/qti/hardware/radio/am/IQcRilAudioResponse;
    :catchall_0
    move-exception v4

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local p0    # "this":Lcom/qualcomm/qti/telephonyservice/QcRilAudioAidl;
    :try_start_2
    throw v4

    .line 128
    .end local v2    # "responseInterface":Lvendor/qti/hardware/radio/am/IQcRilAudioResponse;
    .restart local p0    # "this":Lcom/qualcomm/qti/telephonyservice/QcRilAudioAidl;
    :cond_0
    const-string v2, "QcRilAudioAidl"

    const-string v3, "initQcRilAudio: mRilAudio is null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    .end local v1    # "qcRilAudio":Lvendor/qti/hardware/radio/am/IQcRilAudio;
    :goto_0
    goto :goto_1

    .line 131
    :cond_1
    const-string v1, "QcRilAudioAidl"

    const-string v2, "initQcRilAudio: Stable AIDL is NOT used."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 136
    .end local v0    # "binder":Landroid/os/IBinder;
    :cond_2
    :goto_1
    goto :goto_2

    .line 134
    :catch_0
    move-exception v0

    .line 135
    .local v0, "ex":Ljava/lang/Exception;
    const-string v1, "QcRilAudioAidl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initQcRilAudio: Exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_2
    return-void
.end method

.method public static isAidlAvailable(I)Z
    .locals 3
    .param p0, "slotId"    # I

    .line 44
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "vendor.qti.hardware.radio.am.IQcRilAudio/slot"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/os/ServiceManager;->isDeclared(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 45
    :catch_0
    move-exception v0

    .line 47
    .local v0, "e":Ljava/lang/SecurityException;
    const-string v1, "QcRilAudioAidl"

    const-string v2, "Security exception while call into AIDL"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    .end local v0    # "e":Ljava/lang/SecurityException;
    const/4 v0, 0x0

    return v0
.end method

.method private resetService()V
    .locals 5

    .line 70
    const/4 v0, 0x0

    .line 71
    .local v0, "binder":Landroid/os/IBinder;
    iget-object v1, p0, Lcom/qualcomm/qti/telephonyservice/QcRilAudioAidl;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 72
    const/4 v2, 0x0

    :try_start_0
    iput-object v2, p0, Lcom/qualcomm/qti/telephonyservice/QcRilAudioAidl;->mRilAudio:Lvendor/qti/hardware/radio/am/IQcRilAudio;

    .line 73
    iput-object v2, p0, Lcom/qualcomm/qti/telephonyservice/QcRilAudioAidl;->mResponseInterface:Lvendor/qti/hardware/radio/am/IQcRilAudioResponse;

    .line 74
    iget-object v3, p0, Lcom/qualcomm/qti/telephonyservice/QcRilAudioAidl;->mBinder:Landroid/os/IBinder;

    move-object v0, v3

    .line 75
    iput-object v2, p0, Lcom/qualcomm/qti/telephonyservice/QcRilAudioAidl;->mBinder:Landroid/os/IBinder;

    .line 76
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 78
    :try_start_1
    iget-object v1, p0, Lcom/qualcomm/qti/telephonyservice/QcRilAudioAidl;->mDeathRecipient:Lcom/qualcomm/qti/telephonyservice/QcRilAudioAidl$QcRilAudioDeathRecipient;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 81
    goto :goto_0

    .line 79
    :catch_0
    move-exception v1

    .line 80
    .local v1, "ex":Ljava/lang/Exception;
    const-string v2, "QcRilAudioAidl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "QcRilAudio binder is null "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    .end local v1    # "ex":Ljava/lang/Exception;
    :goto_0
    return-void

    .line 76
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method

.method private responseInterface()Lvendor/qti/hardware/radio/am/IQcRilAudioResponse;
    .locals 3

    .line 93
    const/4 v0, 0x0

    .line 94
    .local v0, "responseInterface":Lvendor/qti/hardware/radio/am/IQcRilAudioResponse;
    iget-object v1, p0, Lcom/qualcomm/qti/telephonyservice/QcRilAudioAidl;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 95
    :try_start_0
    iget-object v2, p0, Lcom/qualcomm/qti/telephonyservice/QcRilAudioAidl;->mResponseInterface:Lvendor/qti/hardware/radio/am/IQcRilAudioResponse;

    move-object v0, v2

    .line 96
    monitor-exit v1

    .line 97
    return-object v0

    .line 96
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private rilAudio()Lvendor/qti/hardware/radio/am/IQcRilAudio;
    .locals 3

    .line 85
    const/4 v0, 0x0

    .line 86
    .local v0, "rilAudio":Lvendor/qti/hardware/radio/am/IQcRilAudio;
    iget-object v1, p0, Lcom/qualcomm/qti/telephonyservice/QcRilAudioAidl;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 87
    :try_start_0
    iget-object v2, p0, Lcom/qualcomm/qti/telephonyservice/QcRilAudioAidl;->mRilAudio:Lvendor/qti/hardware/radio/am/IQcRilAudio;

    move-object v0, v2

    .line 88
    monitor-exit v1

    .line 89
    return-object v0

    .line 88
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private setError(I)V
    .locals 5
    .param p1, "errorCode"    # I

    .line 201
    invoke-direct {p0}, Lcom/qualcomm/qti/telephonyservice/QcRilAudioAidl;->rilAudio()Lvendor/qti/hardware/radio/am/IQcRilAudio;

    move-result-object v0

    .line 202
    .local v0, "rilAudio":Lvendor/qti/hardware/radio/am/IQcRilAudio;
    const-string v1, "QcRilAudioAidl"

    if-nez v0, :cond_0

    .line 203
    const-string v2, "setError - mRilAudio is null, returning."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    return-void

    .line 207
    :cond_0
    :try_start_0
    invoke-direct {p0, p1}, Lcom/qualcomm/qti/telephonyservice/QcRilAudioAidl;->convertAudioErrorToAidl(I)I

    move-result v2

    invoke-interface {v0, v2}, Lvendor/qti/hardware/radio/am/IQcRilAudio;->setError(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 210
    goto :goto_0

    .line 208
    :catch_0
    move-exception v2

    .line 209
    .local v2, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setError request to IQcRilAudio: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/qualcomm/qti/telephonyservice/QcRilAudioAidl;->mInstanceName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " Exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method


# virtual methods
.method public onAudioStatusChanged(I)V
    .locals 1
    .param p1, "status"    # I

    .line 193
    iget v0, p0, Lcom/qualcomm/qti/telephonyservice/QcRilAudioAidl;->mAudioServerStatus:I

    if-ne v0, p1, :cond_0

    .line 194
    return-void

    .line 196
    :cond_0
    iput p1, p0, Lcom/qualcomm/qti/telephonyservice/QcRilAudioAidl;->mAudioServerStatus:I

    .line 197
    invoke-direct {p0, p1}, Lcom/qualcomm/qti/telephonyservice/QcRilAudioAidl;->setError(I)V

    .line 198
    return-void
.end method

.method public onDispose()V
    .locals 2

    .line 215
    invoke-direct {p0}, Lcom/qualcomm/qti/telephonyservice/QcRilAudioAidl;->resetService()V

    .line 216
    iget-object v0, p0, Lcom/qualcomm/qti/telephonyservice/QcRilAudioAidl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 217
    const/4 v1, 0x0

    :try_start_0
    iput-object v1, p0, Lcom/qualcomm/qti/telephonyservice/QcRilAudioAidl;->mRequestInterface:Lvendor/qti/hardware/radio/am/IQcRilAudioRequest;

    .line 218
    iput-object v1, p0, Lcom/qualcomm/qti/telephonyservice/QcRilAudioAidl;->mAudioController:Lcom/qualcomm/qti/telephonyservice/IAudioController;

    .line 219
    monitor-exit v0

    .line 220
    return-void

    .line 219
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
