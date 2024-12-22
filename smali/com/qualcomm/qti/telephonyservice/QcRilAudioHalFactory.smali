.class public final Lcom/qualcomm/qti/telephonyservice/QcRilAudioHalFactory;
.super Ljava/lang/Object;
.source "QcRilAudioHalFactory.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "QcRilAudioHalFactory"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static isAidlHalAvailable(Landroid/content/Context;)Z
    .locals 9
    .param p0, "context"    # Landroid/content/Context;

    .line 47
    const/4 v0, 0x6

    const/4 v1, 0x1

    invoke-static {v1, v0}, Lcom/qualcomm/qti/telephonyservice/QcRilAudioHalFactory;->makeRadioVersion(II)I

    move-result v0

    .line 49
    .local v0, "RADIO_HAL_VERSION_1_6":I
    const/4 v2, 0x0

    const-string v3, "QcRilAudioHalFactory"

    if-nez p0, :cond_0

    .line 50
    const-string v1, "Context is NULL"

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    return v2

    .line 54
    :cond_0
    const-class v4, Landroid/telephony/TelephonyManager;

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/TelephonyManager;

    .line 55
    .local v4, "telephonyManager":Landroid/telephony/TelephonyManager;
    if-nez v4, :cond_1

    .line 56
    const-string v1, "TelephonyManger is NULL"

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    return v2

    .line 59
    :cond_1
    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getRadioHalVersion()Landroid/util/Pair;

    move-result-object v5

    .line 60
    .local v5, "radioVersion":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    iget-object v6, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iget-object v7, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {v6, v7}, Lcom/qualcomm/qti/telephonyservice/QcRilAudioHalFactory;->makeRadioVersion(II)I

    move-result v6

    .line 62
    .local v6, "halVersion":I
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "isAidlHalAvailable: halVersion = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    if-le v6, v0, :cond_2

    .line 64
    return v1

    .line 66
    :cond_2
    return v2
.end method

.method private static isBoardApiLevelMatched(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .line 72
    const-string v0, "ro.board.api_level"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 73
    .local v0, "apiLevel":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isBoardApiLevelMatched: apiLevel= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "QcRilAudioHalFactory"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    const/16 v2, 0x20

    if-gt v0, v2, :cond_1

    if-nez v0, :cond_0

    .line 75
    invoke-static {p0}, Lcom/qualcomm/qti/telephonyservice/QcRilAudioHalFactory;->isAidlHalAvailable(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 79
    :cond_0
    return v1

    .line 76
    :cond_1
    :goto_0
    const-string v1, "isBoardApiLevelMatched: true..."

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    const/4 v1, 0x1

    return v1
.end method

.method public static final isRadioSupported()Z
    .locals 2

    .line 38
    const-string v0, "ro.radio.noril"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private static makeRadioVersion(II)I
    .locals 1
    .param p0, "major"    # I
    .param p1, "minor"    # I

    .line 42
    if-ltz p0, :cond_1

    if-gez p1, :cond_0

    goto :goto_0

    .line 43
    :cond_0
    mul-int/lit8 v0, p0, 0x64

    add-int/2addr v0, p1

    return v0

    .line 42
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public static final newQcRilAudioHal(Landroid/content/Context;ILcom/qualcomm/qti/telephonyservice/IAudioController;)Lcom/qualcomm/qti/telephonyservice/IAudioControllerCallback;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "slotId"    # I
    .param p2, "cb"    # Lcom/qualcomm/qti/telephonyservice/IAudioController;

    .line 25
    invoke-static {}, Lcom/qualcomm/qti/telephonyservice/QcRilAudioHalFactory;->isRadioSupported()Z

    move-result v0

    const-string v1, "QcRilAudioHalFactory"

    if-nez v0, :cond_0

    .line 26
    const-string v0, "Initialize default HAL as target does not support ril"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    new-instance v0, Lcom/qualcomm/qti/telephonyservice/QcRilAudioNotSupportedHal;

    invoke-direct {v0}, Lcom/qualcomm/qti/telephonyservice/QcRilAudioNotSupportedHal;-><init>()V

    return-object v0

    .line 28
    :cond_0
    invoke-static {p0}, Lcom/qualcomm/qti/telephonyservice/QcRilAudioHalFactory;->isBoardApiLevelMatched(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p1}, Lcom/qualcomm/qti/telephonyservice/QcRilAudioAidl;->isAidlAvailable(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 29
    const-string v0, "Initializing QcRilAudio AIDL"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    new-instance v0, Lcom/qualcomm/qti/telephonyservice/QcRilAudioAidl;

    invoke-direct {v0, p1, p2}, Lcom/qualcomm/qti/telephonyservice/QcRilAudioAidl;-><init>(ILcom/qualcomm/qti/telephonyservice/IAudioController;)V

    return-object v0

    .line 32
    :cond_1
    const-string v0, "Initializing QcRilAudio HIDL as AIDL is not available"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    new-instance v0, Lcom/qualcomm/qti/telephonyservice/QcRilAudioHidl;

    invoke-direct {v0, p1, p2}, Lcom/qualcomm/qti/telephonyservice/QcRilAudioHidl;-><init>(ILcom/qualcomm/qti/telephonyservice/IAudioController;)V

    return-object v0
.end method
