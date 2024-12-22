.class Lcom/qualcomm/qti/telephonyservice/AudioController$AudioServerStateCallback;
.super Landroid/media/AudioManager$AudioServerStateCallback;
.source "AudioController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/qti/telephonyservice/AudioController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AudioServerStateCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qualcomm/qti/telephonyservice/AudioController;


# direct methods
.method private constructor <init>(Lcom/qualcomm/qti/telephonyservice/AudioController;)V
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/qualcomm/qti/telephonyservice/AudioController$AudioServerStateCallback;->this$0:Lcom/qualcomm/qti/telephonyservice/AudioController;

    invoke-direct {p0}, Landroid/media/AudioManager$AudioServerStateCallback;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/qualcomm/qti/telephonyservice/AudioController;Lcom/qualcomm/qti/telephonyservice/AudioController$AudioServerStateCallback-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/qualcomm/qti/telephonyservice/AudioController$AudioServerStateCallback;-><init>(Lcom/qualcomm/qti/telephonyservice/AudioController;)V

    return-void
.end method


# virtual methods
.method public onAudioServerDown()V
    .locals 2

    .line 46
    iget-object v0, p0, Lcom/qualcomm/qti/telephonyservice/AudioController$AudioServerStateCallback;->this$0:Lcom/qualcomm/qti/telephonyservice/AudioController;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/qualcomm/qti/telephonyservice/AudioController;->-$$Nest$mnotifyAudioState(Lcom/qualcomm/qti/telephonyservice/AudioController;I)V

    .line 47
    return-void
.end method

.method public onAudioServerUp()V
    .locals 2

    .line 50
    iget-object v0, p0, Lcom/qualcomm/qti/telephonyservice/AudioController$AudioServerStateCallback;->this$0:Lcom/qualcomm/qti/telephonyservice/AudioController;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/qualcomm/qti/telephonyservice/AudioController;->-$$Nest$mnotifyAudioState(Lcom/qualcomm/qti/telephonyservice/AudioController;I)V

    .line 51
    return-void
.end method
