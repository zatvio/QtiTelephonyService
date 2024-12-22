.class Lcom/qualcomm/qti/telephonyservice/QcRilAudioHidl$QcRilAudioCallbackHidl;
.super Lvendor/qti/hardware/radio/am/V1_0/IQcRilAudioCallback$Stub;
.source "QcRilAudioHidl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/qti/telephonyservice/QcRilAudioHidl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "QcRilAudioCallbackHidl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qualcomm/qti/telephonyservice/QcRilAudioHidl;


# direct methods
.method private constructor <init>(Lcom/qualcomm/qti/telephonyservice/QcRilAudioHidl;)V
    .locals 0

    .line 55
    iput-object p1, p0, Lcom/qualcomm/qti/telephonyservice/QcRilAudioHidl$QcRilAudioCallbackHidl;->this$0:Lcom/qualcomm/qti/telephonyservice/QcRilAudioHidl;

    invoke-direct {p0}, Lvendor/qti/hardware/radio/am/V1_0/IQcRilAudioCallback$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/qualcomm/qti/telephonyservice/QcRilAudioHidl;Lcom/qualcomm/qti/telephonyservice/QcRilAudioHidl$QcRilAudioCallbackHidl-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/qualcomm/qti/telephonyservice/QcRilAudioHidl$QcRilAudioCallbackHidl;-><init>(Lcom/qualcomm/qti/telephonyservice/QcRilAudioHidl;)V

    return-void
.end method


# virtual methods
.method public getParameters(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;

    .line 68
    iget-object v0, p0, Lcom/qualcomm/qti/telephonyservice/QcRilAudioHidl$QcRilAudioCallbackHidl;->this$0:Lcom/qualcomm/qti/telephonyservice/QcRilAudioHidl;

    invoke-static {v0}, Lcom/qualcomm/qti/telephonyservice/QcRilAudioHidl;->-$$Nest$maudioController(Lcom/qualcomm/qti/telephonyservice/QcRilAudioHidl;)Lcom/qualcomm/qti/telephonyservice/IAudioController;

    move-result-object v0

    .line 69
    .local v0, "audioController":Lcom/qualcomm/qti/telephonyservice/IAudioController;
    if-nez v0, :cond_0

    .line 70
    const-string v1, "QcRilAudioHidl"

    const-string v2, "getParameters - mAudioController is null, returning."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    const-string v1, ""

    return-object v1

    .line 73
    :cond_0
    invoke-interface {v0, p1}, Lcom/qualcomm/qti/telephonyservice/IAudioController;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public setParameters(Ljava/lang/String;)I
    .locals 3
    .param p1, "keyValuePairs"    # Ljava/lang/String;

    .line 58
    iget-object v0, p0, Lcom/qualcomm/qti/telephonyservice/QcRilAudioHidl$QcRilAudioCallbackHidl;->this$0:Lcom/qualcomm/qti/telephonyservice/QcRilAudioHidl;

    invoke-static {v0}, Lcom/qualcomm/qti/telephonyservice/QcRilAudioHidl;->-$$Nest$maudioController(Lcom/qualcomm/qti/telephonyservice/QcRilAudioHidl;)Lcom/qualcomm/qti/telephonyservice/IAudioController;

    move-result-object v0

    .line 59
    .local v0, "audioController":Lcom/qualcomm/qti/telephonyservice/IAudioController;
    if-nez v0, :cond_0

    .line 60
    const-string v1, "QcRilAudioHidl"

    const-string v2, "setParameters - mAudioController is null, returning."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    const/4 v1, 0x1

    return v1

    .line 63
    :cond_0
    iget-object v1, p0, Lcom/qualcomm/qti/telephonyservice/QcRilAudioHidl$QcRilAudioCallbackHidl;->this$0:Lcom/qualcomm/qti/telephonyservice/QcRilAudioHidl;

    invoke-interface {v0, p1}, Lcom/qualcomm/qti/telephonyservice/IAudioController;->setParameters(Ljava/lang/String;)I

    move-result v2

    invoke-static {v1, v2}, Lcom/qualcomm/qti/telephonyservice/QcRilAudioHidl;->-$$Nest$mconvertAudioErrorToHidl(Lcom/qualcomm/qti/telephonyservice/QcRilAudioHidl;I)I

    move-result v1

    return v1
.end method
