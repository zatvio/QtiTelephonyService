.class public Lcom/qualcomm/qti/telephonyservice/QcRilAudioNotSupportedHal;
.super Ljava/lang/Object;
.source "QcRilAudioNotSupportedHal.java"

# interfaces
.implements Lcom/qualcomm/qti/telephonyservice/IAudioControllerCallback;


# instance fields
.field private final TAG:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const-string v0, "QcRilAudioNotSupportedHal"

    iput-object v0, p0, Lcom/qualcomm/qti/telephonyservice/QcRilAudioNotSupportedHal;->TAG:Ljava/lang/String;

    return-void
.end method

.method private fail()V
    .locals 2

    .line 19
    const-string v0, "QcRilAudioNotSupportedHal"

    const-string v1, "Radio is not supported"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    return-void
.end method


# virtual methods
.method public onAudioStatusChanged(I)V
    .locals 0
    .param p1, "status"    # I

    .line 25
    invoke-direct {p0}, Lcom/qualcomm/qti/telephonyservice/QcRilAudioNotSupportedHal;->fail()V

    .line 26
    return-void
.end method

.method public onDispose()V
    .locals 0

    .line 30
    invoke-direct {p0}, Lcom/qualcomm/qti/telephonyservice/QcRilAudioNotSupportedHal;->fail()V

    .line 31
    return-void
.end method
