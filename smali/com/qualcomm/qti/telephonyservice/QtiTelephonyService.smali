.class public Lcom/qualcomm/qti/telephonyservice/QtiTelephonyService;
.super Landroid/app/Service;
.source "QtiTelephonyService.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "QtiTelephonyService"


# instance fields
.field private mAudioController:Lcom/qualcomm/qti/telephonyservice/AudioController;

.field private mAudioHals:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/qualcomm/qti/telephonyservice/IAudioControllerCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mContext:Landroid/content/Context;


# direct methods
.method static bridge synthetic -$$Nest$mhandleOnMultiSimConfigChanged(Lcom/qualcomm/qti/telephonyservice/QtiTelephonyService;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/qualcomm/qti/telephonyservice/QtiTelephonyService;->handleOnMultiSimConfigChanged(I)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 29
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 33
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/qualcomm/qti/telephonyservice/QtiTelephonyService;->mAudioHals:Ljava/util/List;

    .line 34
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/qualcomm/qti/telephonyservice/QtiTelephonyService;->mAudioController:Lcom/qualcomm/qti/telephonyservice/AudioController;

    .line 35
    iput-object v0, p0, Lcom/qualcomm/qti/telephonyservice/QtiTelephonyService;->mContext:Landroid/content/Context;

    .line 37
    new-instance v0, Lcom/qualcomm/qti/telephonyservice/QtiTelephonyService$1;

    invoke-direct {v0, p0}, Lcom/qualcomm/qti/telephonyservice/QtiTelephonyService$1;-><init>(Lcom/qualcomm/qti/telephonyservice/QtiTelephonyService;)V

    iput-object v0, p0, Lcom/qualcomm/qti/telephonyservice/QtiTelephonyService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method private handleOnMultiSimConfigChanged(I)V
    .locals 1
    .param p1, "activeModemCount"    # I

    .line 50
    iget-object v0, p0, Lcom/qualcomm/qti/telephonyservice/QtiTelephonyService;->mAudioHals:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 51
    .local v0, "prevModemCount":I
    if-ne v0, p1, :cond_0

    .line 52
    return-void

    .line 54
    :cond_0
    if-le p1, v0, :cond_1

    .line 55
    invoke-direct {p0, v0, p1}, Lcom/qualcomm/qti/telephonyservice/QtiTelephonyService;->switchToMultiSim(II)V

    goto :goto_0

    .line 57
    :cond_1
    invoke-direct {p0, v0, p1}, Lcom/qualcomm/qti/telephonyservice/QtiTelephonyService;->switchToSingleSim(II)V

    .line 59
    :goto_0
    return-void
.end method

.method private switchToMultiSim(II)V
    .locals 4
    .param p1, "prevModemCount"    # I
    .param p2, "activeModemCount"    # I

    .line 63
    add-int/lit8 v0, p1, 0x1

    .local v0, "i":I
    :goto_0
    if-gt v0, p2, :cond_0

    .line 64
    iget-object v1, p0, Lcom/qualcomm/qti/telephonyservice/QtiTelephonyService;->mAudioHals:Ljava/util/List;

    iget-object v2, p0, Lcom/qualcomm/qti/telephonyservice/QtiTelephonyService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/qualcomm/qti/telephonyservice/QtiTelephonyService;->mAudioController:Lcom/qualcomm/qti/telephonyservice/AudioController;

    invoke-static {v2, v0, v3}, Lcom/qualcomm/qti/telephonyservice/QcRilAudioHalFactory;->newQcRilAudioHal(Landroid/content/Context;ILcom/qualcomm/qti/telephonyservice/IAudioController;)Lcom/qualcomm/qti/telephonyservice/IAudioControllerCallback;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 63
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 67
    .end local v0    # "i":I
    :cond_0
    iget-object v0, p0, Lcom/qualcomm/qti/telephonyservice/QtiTelephonyService;->mAudioController:Lcom/qualcomm/qti/telephonyservice/AudioController;

    iget-object v1, p0, Lcom/qualcomm/qti/telephonyservice/QtiTelephonyService;->mAudioHals:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/qualcomm/qti/telephonyservice/AudioController;->updateAudioCallbacks(Ljava/util/List;)V

    .line 68
    return-void
.end method

.method private switchToSingleSim(II)V
    .locals 2
    .param p1, "prevModemCount"    # I
    .param p2, "activeModemCount"    # I

    .line 72
    add-int/lit8 v0, p1, -0x1

    .local v0, "i":I
    :goto_0
    if-lt v0, p2, :cond_0

    .line 73
    iget-object v1, p0, Lcom/qualcomm/qti/telephonyservice/QtiTelephonyService;->mAudioHals:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 72
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 76
    .end local v0    # "i":I
    :cond_0
    iget-object v0, p0, Lcom/qualcomm/qti/telephonyservice/QtiTelephonyService;->mAudioController:Lcom/qualcomm/qti/telephonyservice/AudioController;

    iget-object v1, p0, Lcom/qualcomm/qti/telephonyservice/QtiTelephonyService;->mAudioHals:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/qualcomm/qti/telephonyservice/AudioController;->updateAudioCallbacks(Ljava/util/List;)V

    .line 77
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .line 123
    const-string v0, "QtiTelephonyService"

    const-string v1, "onBind"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 7

    .line 81
    const-string v0, "onCreate:"

    const-string v1, "QtiTelephonyService"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    invoke-virtual {p0}, Lcom/qualcomm/qti/telephonyservice/QtiTelephonyService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/qualcomm/qti/telephonyservice/QtiTelephonyService;->mContext:Landroid/content/Context;

    .line 84
    const-class v2, Landroid/os/UserManager;

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 86
    .local v0, "userManager":Landroid/os/UserManager;
    invoke-virtual {v0}, Landroid/os/UserManager;->isSystemUser()Z

    move-result v2

    if-nez v2, :cond_0

    .line 87
    const-string v2, "Not a System user"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    return-void

    .line 92
    :cond_0
    iget-object v2, p0, Lcom/qualcomm/qti/telephonyservice/QtiTelephonyService;->mContext:Landroid/content/Context;

    const-string v3, "phone"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 98
    .local v2, "tm":Landroid/telephony/TelephonyManager;
    :try_start_0
    new-instance v3, Lcom/qualcomm/qti/telephonyservice/AudioController;

    iget-object v4, p0, Lcom/qualcomm/qti/telephonyservice/QtiTelephonyService;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/qualcomm/qti/telephonyservice/AudioController;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/qualcomm/qti/telephonyservice/QtiTelephonyService;->mAudioController:Lcom/qualcomm/qti/telephonyservice/AudioController;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 101
    goto :goto_0

    .line 99
    :catch_0
    move-exception v3

    .line 100
    .local v3, "ex":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    .end local v3    # "ex":Ljava/lang/Exception;
    :goto_0
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getActiveModemCount()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 104
    .local v1, "slotCount":I
    const/4 v3, 0x1

    .local v3, "i":I
    :goto_1
    if-ge v3, v1, :cond_1

    .line 105
    iget-object v4, p0, Lcom/qualcomm/qti/telephonyservice/QtiTelephonyService;->mAudioHals:Ljava/util/List;

    iget-object v5, p0, Lcom/qualcomm/qti/telephonyservice/QtiTelephonyService;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/qualcomm/qti/telephonyservice/QtiTelephonyService;->mAudioController:Lcom/qualcomm/qti/telephonyservice/AudioController;

    invoke-static {v5, v3, v6}, Lcom/qualcomm/qti/telephonyservice/QcRilAudioHalFactory;->newQcRilAudioHal(Landroid/content/Context;ILcom/qualcomm/qti/telephonyservice/IAudioController;)Lcom/qualcomm/qti/telephonyservice/IAudioControllerCallback;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 104
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 109
    .end local v3    # "i":I
    :cond_1
    iget-object v3, p0, Lcom/qualcomm/qti/telephonyservice/QtiTelephonyService;->mAudioController:Lcom/qualcomm/qti/telephonyservice/AudioController;

    iget-object v4, p0, Lcom/qualcomm/qti/telephonyservice/QtiTelephonyService;->mAudioHals:Ljava/util/List;

    invoke-virtual {v3, v4}, Lcom/qualcomm/qti/telephonyservice/AudioController;->updateAudioCallbacks(Ljava/util/List;)V

    .line 111
    iget-object v3, p0, Lcom/qualcomm/qti/telephonyservice/QtiTelephonyService;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/qualcomm/qti/telephonyservice/QtiTelephonyService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v5, Landroid/content/IntentFilter;

    const-string v6, "android.telephony.action.MULTI_SIM_CONFIG_CHANGED"

    invoke-direct {v5, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 113
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 129
    const-string v0, "QtiTelephonyService"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    iget-object v0, p0, Lcom/qualcomm/qti/telephonyservice/QtiTelephonyService;->mAudioController:Lcom/qualcomm/qti/telephonyservice/AudioController;

    if-eqz v0, :cond_0

    .line 132
    invoke-virtual {v0}, Lcom/qualcomm/qti/telephonyservice/AudioController;->dispose()V

    .line 135
    :cond_0
    iget-object v0, p0, Lcom/qualcomm/qti/telephonyservice/QtiTelephonyService;->mAudioHals:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/qualcomm/qti/telephonyservice/IAudioControllerCallback;

    .line 136
    .local v1, "h":Lcom/qualcomm/qti/telephonyservice/IAudioControllerCallback;
    invoke-interface {v1}, Lcom/qualcomm/qti/telephonyservice/IAudioControllerCallback;->onDispose()V

    .line 137
    .end local v1    # "h":Lcom/qualcomm/qti/telephonyservice/IAudioControllerCallback;
    goto :goto_0

    .line 138
    :cond_1
    iget-object v0, p0, Lcom/qualcomm/qti/telephonyservice/QtiTelephonyService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/qualcomm/qti/telephonyservice/QtiTelephonyService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 139
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 140
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .line 117
    const-string v0, "QtiTelephonyService"

    const-string v1, "Service started"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result v0

    return v0
.end method
