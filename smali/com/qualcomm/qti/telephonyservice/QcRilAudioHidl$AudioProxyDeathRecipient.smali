.class Lcom/qualcomm/qti/telephonyservice/QcRilAudioHidl$AudioProxyDeathRecipient;
.super Ljava/lang/Object;
.source "QcRilAudioHidl.java"

# interfaces
.implements Landroid/os/IHwBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/qti/telephonyservice/QcRilAudioHidl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AudioProxyDeathRecipient"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qualcomm/qti/telephonyservice/QcRilAudioHidl;


# direct methods
.method private constructor <init>(Lcom/qualcomm/qti/telephonyservice/QcRilAudioHidl;)V
    .locals 0

    .line 95
    iput-object p1, p0, Lcom/qualcomm/qti/telephonyservice/QcRilAudioHidl$AudioProxyDeathRecipient;->this$0:Lcom/qualcomm/qti/telephonyservice/QcRilAudioHidl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/qualcomm/qti/telephonyservice/QcRilAudioHidl;Lcom/qualcomm/qti/telephonyservice/QcRilAudioHidl$AudioProxyDeathRecipient-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/qualcomm/qti/telephonyservice/QcRilAudioHidl$AudioProxyDeathRecipient;-><init>(Lcom/qualcomm/qti/telephonyservice/QcRilAudioHidl;)V

    return-void
.end method


# virtual methods
.method public serviceDied(J)V
    .locals 5
    .param p1, "cookie"    # J

    .line 98
    iget-object v0, p0, Lcom/qualcomm/qti/telephonyservice/QcRilAudioHidl$AudioProxyDeathRecipient;->this$0:Lcom/qualcomm/qti/telephonyservice/QcRilAudioHidl;

    invoke-virtual {v0}, Lcom/qualcomm/qti/telephonyservice/QcRilAudioHidl;->isDisposed()Z

    move-result v0

    const-string v1, "QcRilAudioHidl"

    if-eqz v0, :cond_0

    .line 99
    const-string v0, "serviceDied: Ignoring."

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    iget-object v0, p0, Lcom/qualcomm/qti/telephonyservice/QcRilAudioHidl$AudioProxyDeathRecipient;->this$0:Lcom/qualcomm/qti/telephonyservice/QcRilAudioHidl;

    const-string v1, "serviceDied"

    invoke-static {v0, v1}, Lcom/qualcomm/qti/telephonyservice/QcRilAudioHidl;->-$$Nest$mdump(Lcom/qualcomm/qti/telephonyservice/QcRilAudioHidl;Ljava/lang/String;)V

    .line 101
    return-void

    .line 104
    :cond_0
    iget-object v0, p0, Lcom/qualcomm/qti/telephonyservice/QcRilAudioHidl$AudioProxyDeathRecipient;->this$0:Lcom/qualcomm/qti/telephonyservice/QcRilAudioHidl;

    invoke-static {v0}, Lcom/qualcomm/qti/telephonyservice/QcRilAudioHidl;->-$$Nest$fgetmRilAudioCookie(Lcom/qualcomm/qti/telephonyservice/QcRilAudioHidl;)Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    .line 105
    .local v2, "current":J
    cmp-long v0, p1, v2

    if-eqz v0, :cond_1

    .line 106
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "serviceDied: Ignoring. provided="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " expected="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    return-void

    .line 110
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IQcRilAudio service died"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v4, p0, Lcom/qualcomm/qti/telephonyservice/QcRilAudioHidl$AudioProxyDeathRecipient;->this$0:Lcom/qualcomm/qti/telephonyservice/QcRilAudioHidl;

    invoke-static {v4}, Lcom/qualcomm/qti/telephonyservice/QcRilAudioHidl;->-$$Nest$fgetmLogSuffix(Lcom/qualcomm/qti/telephonyservice/QcRilAudioHidl;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    iget-object v0, p0, Lcom/qualcomm/qti/telephonyservice/QcRilAudioHidl$AudioProxyDeathRecipient;->this$0:Lcom/qualcomm/qti/telephonyservice/QcRilAudioHidl;

    invoke-static {v0}, Lcom/qualcomm/qti/telephonyservice/QcRilAudioHidl;->-$$Nest$mresetService(Lcom/qualcomm/qti/telephonyservice/QcRilAudioHidl;)V

    .line 112
    return-void
.end method
