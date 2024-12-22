.class final Lcom/qualcomm/qti/telephonyservice/QcRilAudioAidl$QcRilAudioDeathRecipient;
.super Ljava/lang/Object;
.source "QcRilAudioAidl.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/qti/telephonyservice/QcRilAudioAidl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "QcRilAudioDeathRecipient"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qualcomm/qti/telephonyservice/QcRilAudioAidl;


# direct methods
.method constructor <init>(Lcom/qualcomm/qti/telephonyservice/QcRilAudioAidl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/qualcomm/qti/telephonyservice/QcRilAudioAidl;

    .line 56
    iput-object p1, p0, Lcom/qualcomm/qti/telephonyservice/QcRilAudioAidl$QcRilAudioDeathRecipient;->this$0:Lcom/qualcomm/qti/telephonyservice/QcRilAudioAidl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 2

    .line 62
    const-string v0, "QcRilAudioAidl"

    const-string v1, "QcRilAudio died."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    iget-object v0, p0, Lcom/qualcomm/qti/telephonyservice/QcRilAudioAidl$QcRilAudioDeathRecipient;->this$0:Lcom/qualcomm/qti/telephonyservice/QcRilAudioAidl;

    invoke-static {v0}, Lcom/qualcomm/qti/telephonyservice/QcRilAudioAidl;->-$$Nest$mresetService(Lcom/qualcomm/qti/telephonyservice/QcRilAudioAidl;)V

    .line 64
    iget-object v0, p0, Lcom/qualcomm/qti/telephonyservice/QcRilAudioAidl$QcRilAudioDeathRecipient;->this$0:Lcom/qualcomm/qti/telephonyservice/QcRilAudioAidl;

    invoke-static {v0}, Lcom/qualcomm/qti/telephonyservice/QcRilAudioAidl;->-$$Nest$minitQcRilAudio(Lcom/qualcomm/qti/telephonyservice/QcRilAudioAidl;)V

    .line 65
    iget-object v0, p0, Lcom/qualcomm/qti/telephonyservice/QcRilAudioAidl$QcRilAudioDeathRecipient;->this$0:Lcom/qualcomm/qti/telephonyservice/QcRilAudioAidl;

    invoke-static {v0}, Lcom/qualcomm/qti/telephonyservice/QcRilAudioAidl;->-$$Nest$fgetmAudioServerStatus(Lcom/qualcomm/qti/telephonyservice/QcRilAudioAidl;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/qualcomm/qti/telephonyservice/QcRilAudioAidl;->-$$Nest$msetError(Lcom/qualcomm/qti/telephonyservice/QcRilAudioAidl;I)V

    .line 66
    return-void
.end method
