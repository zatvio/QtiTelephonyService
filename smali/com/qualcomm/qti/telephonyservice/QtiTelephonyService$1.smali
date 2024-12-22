.class Lcom/qualcomm/qti/telephonyservice/QtiTelephonyService$1;
.super Landroid/content/BroadcastReceiver;
.source "QtiTelephonyService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/qti/telephonyservice/QtiTelephonyService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qualcomm/qti/telephonyservice/QtiTelephonyService;


# direct methods
.method constructor <init>(Lcom/qualcomm/qti/telephonyservice/QtiTelephonyService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/qualcomm/qti/telephonyservice/QtiTelephonyService;

    .line 37
    iput-object p1, p0, Lcom/qualcomm/qti/telephonyservice/QtiTelephonyService$1;->this$0:Lcom/qualcomm/qti/telephonyservice/QtiTelephonyService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 39
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 40
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.telephony.action.MULTI_SIM_CONFIG_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 41
    const-string v1, "android.telephony.extra.ACTIVE_SIM_SUPPORTED_COUNT"

    const/4 v2, 0x1

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 43
    .local v1, "activeModemCount":I
    iget-object v2, p0, Lcom/qualcomm/qti/telephonyservice/QtiTelephonyService$1;->this$0:Lcom/qualcomm/qti/telephonyservice/QtiTelephonyService;

    invoke-static {v2, v1}, Lcom/qualcomm/qti/telephonyservice/QtiTelephonyService;->-$$Nest$mhandleOnMultiSimConfigChanged(Lcom/qualcomm/qti/telephonyservice/QtiTelephonyService;I)V

    .line 45
    .end local v1    # "activeModemCount":I
    :cond_0
    return-void
.end method
