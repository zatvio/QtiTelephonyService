.class Lcom/qualcomm/qti/telephonyservice/QcRilAudioAidl$QcRilAudioRequest;
.super Lvendor/qti/hardware/radio/am/IQcRilAudioRequest$Stub;
.source "QcRilAudioAidl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/qti/telephonyservice/QcRilAudioAidl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "QcRilAudioRequest"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qualcomm/qti/telephonyservice/QcRilAudioAidl;


# direct methods
.method private constructor <init>(Lcom/qualcomm/qti/telephonyservice/QcRilAudioAidl;)V
    .locals 0

    .line 139
    iput-object p1, p0, Lcom/qualcomm/qti/telephonyservice/QcRilAudioAidl$QcRilAudioRequest;->this$0:Lcom/qualcomm/qti/telephonyservice/QcRilAudioAidl;

    invoke-direct {p0}, Lvendor/qti/hardware/radio/am/IQcRilAudioRequest$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/qualcomm/qti/telephonyservice/QcRilAudioAidl;Lcom/qualcomm/qti/telephonyservice/QcRilAudioAidl$QcRilAudioRequest-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/qualcomm/qti/telephonyservice/QcRilAudioAidl$QcRilAudioRequest;-><init>(Lcom/qualcomm/qti/telephonyservice/QcRilAudioAidl;)V

    return-void
.end method


# virtual methods
.method public getInterfaceHash()Ljava/lang/String;
    .locals 1

    .line 182
    const-string v0, "7807b67b5d557d9479da5c0f34c525bf48aaec90"

    return-object v0
.end method

.method public final getInterfaceVersion()I
    .locals 1

    .line 187
    const/4 v0, 0x1

    return v0
.end method

.method public queryParameters(ILjava/lang/String;)V
    .locals 7
    .param p1, "token"    # I
    .param p2, "params"    # Ljava/lang/String;

    .line 162
    iget-object v0, p0, Lcom/qualcomm/qti/telephonyservice/QcRilAudioAidl$QcRilAudioRequest;->this$0:Lcom/qualcomm/qti/telephonyservice/QcRilAudioAidl;

    invoke-static {v0}, Lcom/qualcomm/qti/telephonyservice/QcRilAudioAidl;->-$$Nest$maudioController(Lcom/qualcomm/qti/telephonyservice/QcRilAudioAidl;)Lcom/qualcomm/qti/telephonyservice/IAudioController;

    move-result-object v0

    .line 163
    .local v0, "ac":Lcom/qualcomm/qti/telephonyservice/IAudioController;
    const-string v1, "QcRilAudioAidl"

    if-nez v0, :cond_0

    .line 164
    const-string v2, "queryParameters - mAudioController is null, returning."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    return-void

    .line 167
    :cond_0
    invoke-interface {v0, p2}, Lcom/qualcomm/qti/telephonyservice/IAudioController;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 168
    .local v2, "ret":Ljava/lang/String;
    iget-object v3, p0, Lcom/qualcomm/qti/telephonyservice/QcRilAudioAidl$QcRilAudioRequest;->this$0:Lcom/qualcomm/qti/telephonyservice/QcRilAudioAidl;

    invoke-static {v3}, Lcom/qualcomm/qti/telephonyservice/QcRilAudioAidl;->-$$Nest$mresponseInterface(Lcom/qualcomm/qti/telephonyservice/QcRilAudioAidl;)Lvendor/qti/hardware/radio/am/IQcRilAudioResponse;

    move-result-object v3

    .line 169
    .local v3, "respInterface":Lvendor/qti/hardware/radio/am/IQcRilAudioResponse;
    if-nez v3, :cond_1

    .line 170
    const-string v4, "queryParameters - response interface is null, returning."

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    return-void

    .line 174
    :cond_1
    :try_start_0
    invoke-interface {v3, p1, v2}, Lvendor/qti/hardware/radio/am/IQcRilAudioResponse;->queryParametersResponse(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 177
    goto :goto_0

    .line 175
    :catch_0
    move-exception v4

    .line 176
    .local v4, "ex":Ljava/lang/Exception;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getParametersResponse: Exception: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    .end local v4    # "ex":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public setParameters(ILjava/lang/String;)V
    .locals 7
    .param p1, "token"    # I
    .param p2, "params"    # Ljava/lang/String;

    .line 142
    iget-object v0, p0, Lcom/qualcomm/qti/telephonyservice/QcRilAudioAidl$QcRilAudioRequest;->this$0:Lcom/qualcomm/qti/telephonyservice/QcRilAudioAidl;

    invoke-static {v0}, Lcom/qualcomm/qti/telephonyservice/QcRilAudioAidl;->-$$Nest$maudioController(Lcom/qualcomm/qti/telephonyservice/QcRilAudioAidl;)Lcom/qualcomm/qti/telephonyservice/IAudioController;

    move-result-object v0

    .line 143
    .local v0, "ac":Lcom/qualcomm/qti/telephonyservice/IAudioController;
    const-string v1, "QcRilAudioAidl"

    if-nez v0, :cond_0

    .line 144
    const-string v2, "setParameters - mAudioController is null, returning."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    return-void

    .line 147
    :cond_0
    iget-object v2, p0, Lcom/qualcomm/qti/telephonyservice/QcRilAudioAidl$QcRilAudioRequest;->this$0:Lcom/qualcomm/qti/telephonyservice/QcRilAudioAidl;

    invoke-interface {v0, p2}, Lcom/qualcomm/qti/telephonyservice/IAudioController;->setParameters(Ljava/lang/String;)I

    move-result v3

    invoke-static {v2, v3}, Lcom/qualcomm/qti/telephonyservice/QcRilAudioAidl;->-$$Nest$mconvertAudioErrorToAidl(Lcom/qualcomm/qti/telephonyservice/QcRilAudioAidl;I)I

    move-result v2

    .line 148
    .local v2, "ret":I
    iget-object v3, p0, Lcom/qualcomm/qti/telephonyservice/QcRilAudioAidl$QcRilAudioRequest;->this$0:Lcom/qualcomm/qti/telephonyservice/QcRilAudioAidl;

    invoke-static {v3}, Lcom/qualcomm/qti/telephonyservice/QcRilAudioAidl;->-$$Nest$mresponseInterface(Lcom/qualcomm/qti/telephonyservice/QcRilAudioAidl;)Lvendor/qti/hardware/radio/am/IQcRilAudioResponse;

    move-result-object v3

    .line 149
    .local v3, "respInterface":Lvendor/qti/hardware/radio/am/IQcRilAudioResponse;
    if-nez v3, :cond_1

    .line 150
    const-string v4, "setParameters - response interface is null, returning."

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    return-void

    .line 154
    :cond_1
    :try_start_0
    invoke-interface {v3, p1, v2}, Lvendor/qti/hardware/radio/am/IQcRilAudioResponse;->setParametersResponse(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 157
    goto :goto_0

    .line 155
    :catch_0
    move-exception v4

    .line 156
    .local v4, "ex":Ljava/lang/Exception;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setParametersResponse: Exception: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    .end local v4    # "ex":Ljava/lang/Exception;
    :goto_0
    return-void
.end method
