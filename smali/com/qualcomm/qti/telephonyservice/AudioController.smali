.class public Lcom/qualcomm/qti/telephonyservice/AudioController;
.super Ljava/lang/Object;
.source "AudioController.java"

# interfaces
.implements Lcom/qualcomm/qti/telephonyservice/IAudioController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qualcomm/qti/telephonyservice/AudioController$AudioServerStateCallback;
    }
.end annotation


# static fields
.field public static final AUDIO_GENERIC_FAILURE:I = 0x1

.field public static final AUDIO_STATUS_OK:I = 0x0

.field public static final AUDIO_STATUS_SERVER_DIED:I = 0x2

.field public static final AUDIO_STATUS_UNKNOWN:I = -0x1

.field private static final TAG:Ljava/lang/String; = "AudioController"


# instance fields
.field private mAudioCallbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/qualcomm/qti/telephonyservice/IAudioControllerCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final mAudioManager:Landroid/media/AudioManager;

.field private mServerStateCallback:Lcom/qualcomm/qti/telephonyservice/AudioController$AudioServerStateCallback;


# direct methods
.method static bridge synthetic -$$Nest$mnotifyAudioState(Lcom/qualcomm/qti/telephonyservice/AudioController;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/qualcomm/qti/telephonyservice/AudioController;->notifyAudioState(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/qualcomm/qti/telephonyservice/AudioController;->mAudioCallbacks:Ljava/util/List;

    .line 29
    new-instance v1, Lcom/qualcomm/qti/telephonyservice/AudioController$AudioServerStateCallback;

    invoke-direct {v1, p0, v0}, Lcom/qualcomm/qti/telephonyservice/AudioController$AudioServerStateCallback;-><init>(Lcom/qualcomm/qti/telephonyservice/AudioController;Lcom/qualcomm/qti/telephonyservice/AudioController$AudioServerStateCallback-IA;)V

    iput-object v1, p0, Lcom/qualcomm/qti/telephonyservice/AudioController;->mServerStateCallback:Lcom/qualcomm/qti/telephonyservice/AudioController$AudioServerStateCallback;

    .line 34
    const-string v0, "AudioController"

    const-string v1, "registering audio server state callback"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/qualcomm/qti/telephonyservice/AudioController;->mAudioManager:Landroid/media/AudioManager;

    .line 36
    if-eqz v0, :cond_0

    .line 39
    invoke-virtual {p1}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    .line 40
    .local v1, "exec":Ljava/util/concurrent/Executor;
    iget-object v2, p0, Lcom/qualcomm/qti/telephonyservice/AudioController;->mServerStateCallback:Lcom/qualcomm/qti/telephonyservice/AudioController$AudioServerStateCallback;

    invoke-virtual {v0, v1, v2}, Landroid/media/AudioManager;->setAudioServerStateCallback(Ljava/util/concurrent/Executor;Landroid/media/AudioManager$AudioServerStateCallback;)V

    .line 41
    return-void

    .line 37
    .end local v1    # "exec":Ljava/util/concurrent/Executor;
    :cond_0
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "AudioController(): mAudioManager is null."

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getAudioServerState()I
    .locals 1

    .line 133
    iget-object v0, p0, Lcom/qualcomm/qti/telephonyservice/AudioController;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->isAudioServerRunning()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private notifyAudioState(I)V
    .locals 2
    .param p1, "state"    # I

    .line 119
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyAudioState - state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AudioController"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    iget-object v0, p0, Lcom/qualcomm/qti/telephonyservice/AudioController;->mAudioCallbacks:Ljava/util/List;

    if-nez v0, :cond_0

    .line 121
    const-string v0, "notifyAudioState: mAudioCallbacks is null"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    return-void

    .line 124
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/qualcomm/qti/telephonyservice/IAudioControllerCallback;

    .line 125
    .local v1, "audio":Lcom/qualcomm/qti/telephonyservice/IAudioControllerCallback;
    invoke-interface {v1, p1}, Lcom/qualcomm/qti/telephonyservice/IAudioControllerCallback;->onAudioStatusChanged(I)V

    .line 126
    .end local v1    # "audio":Lcom/qualcomm/qti/telephonyservice/IAudioControllerCallback;
    goto :goto_0

    .line 127
    :cond_1
    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 2

    .line 101
    const-string v0, "AudioController"

    const-string v1, "unregistering audio server state callback"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    iget-object v0, p0, Lcom/qualcomm/qti/telephonyservice/AudioController;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->clearAudioServerStateCallback()V

    .line 103
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/qualcomm/qti/telephonyservice/AudioController;->mAudioCallbacks:Ljava/util/List;

    .line 104
    return-void
.end method

.method public getParameters(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "key"    # Ljava/lang/String;

    .line 88
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getParameters for key: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AudioController"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    :try_start_0
    iget-object v0, p0, Lcom/qualcomm/qti/telephonyservice/AudioController;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->isAudioServerRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 91
    iget-object v0, p0, Lcom/qualcomm/qti/telephonyservice/AudioController;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, p1}, Landroid/media/AudioManager;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 95
    :cond_0
    goto :goto_0

    .line 93
    :catchall_0
    move-exception v0

    .line 94
    .local v0, "ex":Ljava/lang/Throwable;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " getParameters - Exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    .end local v0    # "ex":Ljava/lang/Throwable;
    :goto_0
    const-string v0, ""

    return-object v0
.end method

.method public setParameters(Ljava/lang/String;)I
    .locals 4
    .param p1, "keyValuePairs"    # Ljava/lang/String;

    .line 63
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setParameters with: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AudioController"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    :try_start_0
    iget-object v0, p0, Lcom/qualcomm/qti/telephonyservice/AudioController;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->isAudioServerRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 66
    iget-object v0, p0, Lcom/qualcomm/qti/telephonyservice/AudioController;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, p1}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 67
    const/4 v0, 0x0

    return v0

    .line 71
    :cond_0
    goto :goto_0

    .line 69
    :catchall_0
    move-exception v0

    .line 70
    .local v0, "ex":Ljava/lang/Throwable;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " setParameters - Exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    .end local v0    # "ex":Ljava/lang/Throwable;
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public updateAudioCallbacks(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/qualcomm/qti/telephonyservice/IAudioControllerCallback;",
            ">;)V"
        }
    .end annotation

    .line 110
    .local p1, "audioCallbacks":Ljava/util/List;, "Ljava/util/List<Lcom/qualcomm/qti/telephonyservice/IAudioControllerCallback;>;"
    const-string v0, "AudioController"

    const-string v1, "updateAudioCallbacks"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/qualcomm/qti/telephonyservice/AudioController;->mAudioCallbacks:Ljava/util/List;

    .line 112
    invoke-direct {p0}, Lcom/qualcomm/qti/telephonyservice/AudioController;->getAudioServerState()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/qualcomm/qti/telephonyservice/AudioController;->notifyAudioState(I)V

    .line 113
    return-void
.end method
