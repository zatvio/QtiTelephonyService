.class public Lcom/qualcomm/qti/telephonyservice/QcRilAudioHidl;
.super Ljava/lang/Object;
.source "QcRilAudioHidl.java"

# interfaces
.implements Lcom/qualcomm/qti/telephonyservice/IAudioControllerCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qualcomm/qti/telephonyservice/QcRilAudioHidl$AudioProxyDeathRecipient;,
        Lcom/qualcomm/qti/telephonyservice/QcRilAudioHidl$ServiceNotification;,
        Lcom/qualcomm/qti/telephonyservice/QcRilAudioHidl$QcRilAudioCallbackHidl;
    }
.end annotation


# static fields
.field static final TAG:Ljava/lang/String; = "QcRilAudioHidl"


# instance fields
.field private mAudioController:Lcom/qualcomm/qti/telephonyservice/IAudioController;

.field private mAudioServerStatus:I

.field private final mInstanceName:Ljava/lang/String;

.field private mIsDisposed:Z

.field private final mLock:Ljava/lang/Object;

.field private final mLogSuffix:Ljava/lang/String;

.field private final mQcRilAudioCallback:Lvendor/qti/hardware/radio/am/V1_0/IQcRilAudioCallback;

.field private mRilAudio:Lvendor/qti/hardware/radio/am/V1_0/IQcRilAudio;

.field private final mRilAudioCookie:Ljava/util/concurrent/atomic/AtomicLong;

.field private final mRilAudioDeathRecipient:Lcom/qualcomm/qti/telephonyservice/QcRilAudioHidl$AudioProxyDeathRecipient;

.field private final mServiceNotification:Lcom/qualcomm/qti/telephonyservice/QcRilAudioHidl$ServiceNotification;


# direct methods
.method static bridge synthetic -$$Nest$fgetmAudioServerStatus(Lcom/qualcomm/qti/telephonyservice/QcRilAudioHidl;)I
    .locals 0

    iget p0, p0, Lcom/qualcomm/qti/telephonyservice/QcRilAudioHidl;->mAudioServerStatus:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmInstanceName(Lcom/qualcomm/qti/telephonyservice/QcRilAudioHidl;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/qualcomm/qti/telephonyservice/QcRilAudioHidl;->mInstanceName:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmLogSuffix(Lcom/qualcomm/qti/telephonyservice/QcRilAudioHidl;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/qualcomm/qti/telephonyservice/QcRilAudioHidl;->mLogSuffix:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmRilAudioCookie(Lcom/qualcomm/qti/telephonyservice/QcRilAudioHidl;)Ljava/util/concurrent/atomic/AtomicLong;
    .locals 0

    iget-object p0, p0, Lcom/qualcomm/qti/telephonyservice/QcRilAudioHidl;->mRilAudioCookie:Ljava/util/concurrent/atomic/AtomicLong;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$maudioController(Lcom/qualcomm/qti/telephonyservice/QcRilAudioHidl;)Lcom/qualcomm/qti/telephonyservice/IAudioController;
    .locals 0

    invoke-direct {p0}, Lcom/qualcomm/qti/telephonyservice/QcRilAudioHidl;->audioController()Lcom/qualcomm/qti/telephonyservice/IAudioController;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mconvertAudioErrorToHidl(Lcom/qualcomm/qti/telephonyservice/QcRilAudioHidl;I)I
    .locals 0

    invoke-direct {p0, p1}, Lcom/qualcomm/qti/telephonyservice/QcRilAudioHidl;->convertAudioErrorToHidl(I)I

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mdump(Lcom/qualcomm/qti/telephonyservice/QcRilAudioHidl;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/qualcomm/qti/telephonyservice/QcRilAudioHidl;->dump(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$minitHal(Lcom/qualcomm/qti/telephonyservice/QcRilAudioHidl;)V
    .locals 0

    invoke-direct {p0}, Lcom/qualcomm/qti/telephonyservice/QcRilAudioHidl;->initHal()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mresetService(Lcom/qualcomm/qti/telephonyservice/QcRilAudioHidl;)V
    .locals 0

    invoke-direct {p0}, Lcom/qualcomm/qti/telephonyservice/QcRilAudioHidl;->resetService()V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetError(Lcom/qualcomm/qti/telephonyservice/QcRilAudioHidl;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/qualcomm/qti/telephonyservice/QcRilAudioHidl;->setError(I)V

    return-void
.end method

.method public constructor <init>(ILcom/qualcomm/qti/telephonyservice/IAudioController;)V
    .locals 5
    .param p1, "slotId"    # I
    .param p2, "audioController"    # Lcom/qualcomm/qti/telephonyservice/IAudioController;

    .line 116
    const-string v0, "QcRilAudioHidl"

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v1, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v2, 0x0

    invoke-direct {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v1, p0, Lcom/qualcomm/qti/telephonyservice/QcRilAudioHidl;->mRilAudioCookie:Ljava/util/concurrent/atomic/AtomicLong;

    .line 29
    new-instance v1, Lcom/qualcomm/qti/telephonyservice/QcRilAudioHidl$AudioProxyDeathRecipient;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/qualcomm/qti/telephonyservice/QcRilAudioHidl$AudioProxyDeathRecipient;-><init>(Lcom/qualcomm/qti/telephonyservice/QcRilAudioHidl;Lcom/qualcomm/qti/telephonyservice/QcRilAudioHidl$AudioProxyDeathRecipient-IA;)V

    iput-object v1, p0, Lcom/qualcomm/qti/telephonyservice/QcRilAudioHidl;->mRilAudioDeathRecipient:Lcom/qualcomm/qti/telephonyservice/QcRilAudioHidl$AudioProxyDeathRecipient;

    .line 30
    new-instance v1, Lcom/qualcomm/qti/telephonyservice/QcRilAudioHidl$ServiceNotification;

    invoke-direct {v1, p0, v2}, Lcom/qualcomm/qti/telephonyservice/QcRilAudioHidl$ServiceNotification;-><init>(Lcom/qualcomm/qti/telephonyservice/QcRilAudioHidl;Lcom/qualcomm/qti/telephonyservice/QcRilAudioHidl$ServiceNotification-IA;)V

    iput-object v1, p0, Lcom/qualcomm/qti/telephonyservice/QcRilAudioHidl;->mServiceNotification:Lcom/qualcomm/qti/telephonyservice/QcRilAudioHidl$ServiceNotification;

    .line 31
    new-instance v3, Lcom/qualcomm/qti/telephonyservice/QcRilAudioHidl$QcRilAudioCallbackHidl;

    invoke-direct {v3, p0, v2}, Lcom/qualcomm/qti/telephonyservice/QcRilAudioHidl$QcRilAudioCallbackHidl;-><init>(Lcom/qualcomm/qti/telephonyservice/QcRilAudioHidl;Lcom/qualcomm/qti/telephonyservice/QcRilAudioHidl$QcRilAudioCallbackHidl-IA;)V

    iput-object v3, p0, Lcom/qualcomm/qti/telephonyservice/QcRilAudioHidl;->mQcRilAudioCallback:Lvendor/qti/hardware/radio/am/V1_0/IQcRilAudioCallback;

    .line 34
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/qualcomm/qti/telephonyservice/QcRilAudioHidl;->mIsDisposed:Z

    .line 35
    const/4 v2, -0x1

    iput v2, p0, Lcom/qualcomm/qti/telephonyservice/QcRilAudioHidl;->mAudioServerStatus:I

    .line 37
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/qualcomm/qti/telephonyservice/QcRilAudioHidl;->mLock:Ljava/lang/Object;

    .line 117
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "slot"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/qualcomm/qti/telephonyservice/QcRilAudioHidl;->mInstanceName:Ljava/lang/String;

    .line 118
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/qualcomm/qti/telephonyservice/QcRilAudioHidl;->mLogSuffix:Ljava/lang/String;

    .line 119
    iput-object p2, p0, Lcom/qualcomm/qti/telephonyservice/QcRilAudioHidl;->mAudioController:Lcom/qualcomm/qti/telephonyservice/IAudioController;

    .line 121
    :try_start_0
    invoke-static {}, Landroid/hidl/manager/V1_0/IServiceManager;->getService()Landroid/hidl/manager/V1_0/IServiceManager;

    move-result-object v3

    const-string v4, "vendor.qti.hardware.radio.am@1.0::IQcRilAudio"

    .line 122
    invoke-interface {v3, v4, v2, v1}, Landroid/hidl/manager/V1_0/IServiceManager;->registerForNotifications(Ljava/lang/String;Ljava/lang/String;Landroid/hidl/manager/V1_0/IServiceNotification;)Z

    move-result v1

    .line 124
    .local v1, "ret":Z
    if-nez v1, :cond_0

    .line 125
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to register service start notification: ret = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 129
    .end local v1    # "ret":Z
    :cond_0
    goto :goto_0

    .line 127
    :catch_0
    move-exception v1

    .line 128
    .local v1, "ex":Landroid/os/RemoteException;
    const-string v2, "Unable to register service start notification"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    .end local v1    # "ex":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method private audioController()Lcom/qualcomm/qti/telephonyservice/IAudioController;
    .locals 3

    .line 48
    const/4 v0, 0x0

    .line 49
    .local v0, "audioController":Lcom/qualcomm/qti/telephonyservice/IAudioController;
    iget-object v1, p0, Lcom/qualcomm/qti/telephonyservice/QcRilAudioHidl;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 50
    :try_start_0
    iget-object v2, p0, Lcom/qualcomm/qti/telephonyservice/QcRilAudioHidl;->mAudioController:Lcom/qualcomm/qti/telephonyservice/IAudioController;

    move-object v0, v2

    .line 51
    monitor-exit v1

    .line 52
    return-object v0

    .line 51
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private convertAudioErrorToHidl(I)I
    .locals 1
    .param p1, "errorCode"    # I

    .line 209
    packed-switch p1, :pswitch_data_0

    .line 215
    :pswitch_0
    const/4 v0, 0x1

    return v0

    .line 213
    :pswitch_1
    const/16 v0, 0x64

    return v0

    .line 211
    :pswitch_2
    const/4 v0, 0x0

    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private dump(Ljava/lang/String;)V
    .locals 3
    .param p1, "fn"    # Ljava/lang/String;

    .line 204
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": InstanceName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/qualcomm/qti/telephonyservice/QcRilAudioHidl;->mInstanceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "QcRilAudioHidl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ": isDisposed="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/qualcomm/qti/telephonyservice/QcRilAudioHidl;->isDisposed()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    return-void
.end method

.method private initHal()V
    .locals 4

    .line 154
    const-string v0, "QcRilAudioHidl"

    const-string v1, "initHal"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    :try_start_0
    iget-object v0, p0, Lcom/qualcomm/qti/telephonyservice/QcRilAudioHidl;->mInstanceName:Ljava/lang/String;

    invoke-static {v0}, Lvendor/qti/hardware/radio/am/V1_0/IQcRilAudio;->getService(Ljava/lang/String;)Lvendor/qti/hardware/radio/am/V1_0/IQcRilAudio;

    move-result-object v0

    .line 158
    .local v0, "rilAudio":Lvendor/qti/hardware/radio/am/V1_0/IQcRilAudio;
    if-nez v0, :cond_0

    .line 159
    const-string v1, "QcRilAudioHidl"

    const-string v2, "initHal: mRilAudio == null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    return-void

    .line 162
    :cond_0
    iget-object v1, p0, Lcom/qualcomm/qti/telephonyservice/QcRilAudioHidl;->mRilAudioDeathRecipient:Lcom/qualcomm/qti/telephonyservice/QcRilAudioHidl$AudioProxyDeathRecipient;

    iget-object v2, p0, Lcom/qualcomm/qti/telephonyservice/QcRilAudioHidl;->mRilAudioCookie:Ljava/util/concurrent/atomic/AtomicLong;

    .line 163
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    move-result-wide v2

    .line 162
    invoke-interface {v0, v1, v2, v3}, Lvendor/qti/hardware/radio/am/V1_0/IQcRilAudio;->linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z

    .line 164
    iget-object v1, p0, Lcom/qualcomm/qti/telephonyservice/QcRilAudioHidl;->mQcRilAudioCallback:Lvendor/qti/hardware/radio/am/V1_0/IQcRilAudioCallback;

    invoke-interface {v0, v1}, Lvendor/qti/hardware/radio/am/V1_0/IQcRilAudio;->setCallback(Lvendor/qti/hardware/radio/am/V1_0/IQcRilAudioCallback;)V

    .line 165
    iget-object v1, p0, Lcom/qualcomm/qti/telephonyservice/QcRilAudioHidl;->mLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 166
    :try_start_1
    iput-object v0, p0, Lcom/qualcomm/qti/telephonyservice/QcRilAudioHidl;->mRilAudio:Lvendor/qti/hardware/radio/am/V1_0/IQcRilAudio;

    .line 167
    monitor-exit v1

    .line 170
    goto :goto_0

    .line 167
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local p0    # "this":Lcom/qualcomm/qti/telephonyservice/QcRilAudioHidl;
    :try_start_2
    throw v2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 168
    .end local v0    # "rilAudio":Lvendor/qti/hardware/radio/am/V1_0/IQcRilAudio;
    .restart local p0    # "this":Lcom/qualcomm/qti/telephonyservice/QcRilAudioHidl;
    :catch_0
    move-exception v0

    .line 169
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "QcRilAudioHidl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initHal: Exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method private resetService()V
    .locals 2

    .line 198
    iget-object v0, p0, Lcom/qualcomm/qti/telephonyservice/QcRilAudioHidl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 199
    const/4 v1, 0x0

    :try_start_0
    iput-object v1, p0, Lcom/qualcomm/qti/telephonyservice/QcRilAudioHidl;->mRilAudio:Lvendor/qti/hardware/radio/am/V1_0/IQcRilAudio;

    .line 200
    monitor-exit v0

    .line 201
    return-void

    .line 200
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private rilAudio()Lvendor/qti/hardware/radio/am/V1_0/IQcRilAudio;
    .locals 3

    .line 40
    const/4 v0, 0x0

    .line 41
    .local v0, "rilAudio":Lvendor/qti/hardware/radio/am/V1_0/IQcRilAudio;
    iget-object v1, p0, Lcom/qualcomm/qti/telephonyservice/QcRilAudioHidl;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 42
    :try_start_0
    iget-object v2, p0, Lcom/qualcomm/qti/telephonyservice/QcRilAudioHidl;->mRilAudio:Lvendor/qti/hardware/radio/am/V1_0/IQcRilAudio;

    move-object v0, v2

    .line 43
    monitor-exit v1

    .line 44
    return-object v0

    .line 43
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

    .line 183
    invoke-direct {p0}, Lcom/qualcomm/qti/telephonyservice/QcRilAudioHidl;->rilAudio()Lvendor/qti/hardware/radio/am/V1_0/IQcRilAudio;

    move-result-object v0

    .line 184
    .local v0, "rilAudio":Lvendor/qti/hardware/radio/am/V1_0/IQcRilAudio;
    const-string v1, "QcRilAudioHidl"

    if-nez v0, :cond_0

    .line 185
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setError - mRilAudio is null, returning."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/qualcomm/qti/telephonyservice/QcRilAudioHidl;->mLogSuffix:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    return-void

    .line 190
    :cond_0
    :try_start_0
    invoke-direct {p0, p1}, Lcom/qualcomm/qti/telephonyservice/QcRilAudioHidl;->convertAudioErrorToHidl(I)I

    move-result v2

    invoke-interface {v0, v2}, Lvendor/qti/hardware/radio/am/V1_0/IQcRilAudio;->setError(I)V

    .line 191
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setError."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/qualcomm/qti/telephonyservice/QcRilAudioHidl;->mLogSuffix:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 194
    goto :goto_0

    .line 192
    :catch_0
    move-exception v2

    .line 193
    .local v2, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setError request to IQcRilAudio: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/qualcomm/qti/telephonyservice/QcRilAudioHidl;->mInstanceName:Ljava/lang/String;

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

    .line 195
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method


# virtual methods
.method public isDisposed()Z
    .locals 1

    .line 150
    iget-boolean v0, p0, Lcom/qualcomm/qti/telephonyservice/QcRilAudioHidl;->mIsDisposed:Z

    return v0
.end method

.method public onAudioStatusChanged(I)V
    .locals 1
    .param p1, "status"    # I

    .line 175
    iget v0, p0, Lcom/qualcomm/qti/telephonyservice/QcRilAudioHidl;->mAudioServerStatus:I

    if-ne v0, p1, :cond_0

    .line 176
    return-void

    .line 178
    :cond_0
    iput p1, p0, Lcom/qualcomm/qti/telephonyservice/QcRilAudioHidl;->mAudioServerStatus:I

    .line 179
    invoke-direct {p0, p1}, Lcom/qualcomm/qti/telephonyservice/QcRilAudioHidl;->setError(I)V

    .line 180
    return-void
.end method

.method public onDispose()V
    .locals 4

    .line 134
    invoke-virtual {p0}, Lcom/qualcomm/qti/telephonyservice/QcRilAudioHidl;->isDisposed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 135
    return-void

    .line 137
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/qualcomm/qti/telephonyservice/QcRilAudioHidl;->mIsDisposed:Z

    .line 138
    invoke-direct {p0}, Lcom/qualcomm/qti/telephonyservice/QcRilAudioHidl;->rilAudio()Lvendor/qti/hardware/radio/am/V1_0/IQcRilAudio;

    move-result-object v0

    .line 140
    .local v0, "rilAudio":Lvendor/qti/hardware/radio/am/V1_0/IQcRilAudio;
    if-eqz v0, :cond_1

    .line 141
    :try_start_0
    iget-object v1, p0, Lcom/qualcomm/qti/telephonyservice/QcRilAudioHidl;->mRilAudioDeathRecipient:Lcom/qualcomm/qti/telephonyservice/QcRilAudioHidl$AudioProxyDeathRecipient;

    invoke-interface {v0, v1}, Lvendor/qti/hardware/radio/am/V1_0/IQcRilAudio;->unlinkToDeath(Landroid/os/IHwBinder$DeathRecipient;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 142
    const/4 v0, 0x0

    goto :goto_0

    .line 144
    :catch_0
    move-exception v1

    .line 145
    .local v1, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dispose: Exception="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "QcRilAudioHidl"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 146
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_1
    :goto_0
    nop

    .line 147
    :goto_1
    return-void
.end method
