.class Lcom/qualcomm/qti/telephonyservice/QcRilAudioHidl$ServiceNotification;
.super Landroid/hidl/manager/V1_0/IServiceNotification$Stub;
.source "QcRilAudioHidl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/qti/telephonyservice/QcRilAudioHidl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ServiceNotification"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qualcomm/qti/telephonyservice/QcRilAudioHidl;


# direct methods
.method private constructor <init>(Lcom/qualcomm/qti/telephonyservice/QcRilAudioHidl;)V
    .locals 0

    .line 77
    iput-object p1, p0, Lcom/qualcomm/qti/telephonyservice/QcRilAudioHidl$ServiceNotification;->this$0:Lcom/qualcomm/qti/telephonyservice/QcRilAudioHidl;

    invoke-direct {p0}, Landroid/hidl/manager/V1_0/IServiceNotification$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/qualcomm/qti/telephonyservice/QcRilAudioHidl;Lcom/qualcomm/qti/telephonyservice/QcRilAudioHidl$ServiceNotification-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/qualcomm/qti/telephonyservice/QcRilAudioHidl$ServiceNotification;-><init>(Lcom/qualcomm/qti/telephonyservice/QcRilAudioHidl;)V

    return-void
.end method


# virtual methods
.method public onRegistration(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2
    .param p1, "fqName"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "preexisting"    # Z

    .line 80
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onRegistration: fqName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "QcRilAudioHidl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    iget-object v0, p0, Lcom/qualcomm/qti/telephonyservice/QcRilAudioHidl$ServiceNotification;->this$0:Lcom/qualcomm/qti/telephonyservice/QcRilAudioHidl;

    invoke-static {v0}, Lcom/qualcomm/qti/telephonyservice/QcRilAudioHidl;->-$$Nest$fgetmInstanceName(Lcom/qualcomm/qti/telephonyservice/QcRilAudioHidl;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/qualcomm/qti/telephonyservice/QcRilAudioHidl$ServiceNotification;->this$0:Lcom/qualcomm/qti/telephonyservice/QcRilAudioHidl;

    invoke-virtual {v0}, Lcom/qualcomm/qti/telephonyservice/QcRilAudioHidl;->isDisposed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 88
    :cond_0
    iget-object v0, p0, Lcom/qualcomm/qti/telephonyservice/QcRilAudioHidl$ServiceNotification;->this$0:Lcom/qualcomm/qti/telephonyservice/QcRilAudioHidl;

    invoke-static {v0}, Lcom/qualcomm/qti/telephonyservice/QcRilAudioHidl;->-$$Nest$minitHal(Lcom/qualcomm/qti/telephonyservice/QcRilAudioHidl;)V

    .line 89
    iget-object v0, p0, Lcom/qualcomm/qti/telephonyservice/QcRilAudioHidl$ServiceNotification;->this$0:Lcom/qualcomm/qti/telephonyservice/QcRilAudioHidl;

    invoke-static {v0}, Lcom/qualcomm/qti/telephonyservice/QcRilAudioHidl;->-$$Nest$fgetmAudioServerStatus(Lcom/qualcomm/qti/telephonyservice/QcRilAudioHidl;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 90
    iget-object v0, p0, Lcom/qualcomm/qti/telephonyservice/QcRilAudioHidl$ServiceNotification;->this$0:Lcom/qualcomm/qti/telephonyservice/QcRilAudioHidl;

    invoke-static {v0}, Lcom/qualcomm/qti/telephonyservice/QcRilAudioHidl;->-$$Nest$fgetmAudioServerStatus(Lcom/qualcomm/qti/telephonyservice/QcRilAudioHidl;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/qualcomm/qti/telephonyservice/QcRilAudioHidl;->-$$Nest$msetError(Lcom/qualcomm/qti/telephonyservice/QcRilAudioHidl;I)V

    .line 92
    :cond_1
    return-void

    .line 83
    :cond_2
    :goto_0
    const-string v0, "onRegistration: Ignoring."

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    iget-object v0, p0, Lcom/qualcomm/qti/telephonyservice/QcRilAudioHidl$ServiceNotification;->this$0:Lcom/qualcomm/qti/telephonyservice/QcRilAudioHidl;

    const-string v1, "onRegistration"

    invoke-static {v0, v1}, Lcom/qualcomm/qti/telephonyservice/QcRilAudioHidl;->-$$Nest$mdump(Lcom/qualcomm/qti/telephonyservice/QcRilAudioHidl;Ljava/lang/String;)V

    .line 85
    return-void
.end method
