.class Lcom/lge/hiddenmenu/wlan_service/IPerf_Test$2;
.super Ljava/lang/Object;
.source "IPerf_Test.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/hiddenmenu/wlan_service/IPerf_Test;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/hiddenmenu/wlan_service/IPerf_Test;


# direct methods
.method constructor <init>(Lcom/lge/hiddenmenu/wlan_service/IPerf_Test;)V
    .registers 2
    .parameter

    .prologue
    .line 88
    iput-object p1, p0, Lcom/lge/hiddenmenu/wlan_service/IPerf_Test$2;->this$0:Lcom/lge/hiddenmenu/wlan_service/IPerf_Test;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 7
    .parameter "v"

    .prologue
    const-string v2, "iperf -s &"

    .line 89
    const-string v1, ""

    .line 92
    .local v1, ls_str2:Ljava/lang/String;
    :try_start_4
    iget-object v2, p0, Lcom/lge/hiddenmenu/wlan_service/IPerf_Test$2;->this$0:Lcom/lge/hiddenmenu/wlan_service/IPerf_Test;

    iget-object v2, v2, Lcom/lge/hiddenmenu/wlan_service/IPerf_Test;->editText1:Landroid/widget/EditText;

    const-string v3, "iperf -s &"

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 93
    iget-object v2, p0, Lcom/lge/hiddenmenu/wlan_service/IPerf_Test$2;->this$0:Lcom/lge/hiddenmenu/wlan_service/IPerf_Test;

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v3

    const-string v4, "iperf -s &"

    invoke-virtual {v3, v4}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v3

    iput-object v3, v2, Lcom/lge/hiddenmenu/wlan_service/IPerf_Test;->ls_prc2:Ljava/lang/Process;

    .line 106
    iget-object v2, p0, Lcom/lge/hiddenmenu/wlan_service/IPerf_Test$2;->this$0:Lcom/lge/hiddenmenu/wlan_service/IPerf_Test;

    iget-object v2, v2, Lcom/lge/hiddenmenu/wlan_service/IPerf_Test;->ls_prc2:Ljava/lang/Process;

    invoke-virtual {v2}, Ljava/lang/Process;->destroy()V
    :try_end_22
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_22} :catch_23

    .line 111
    :goto_22
    return-void

    .line 107
    :catch_23
    move-exception v2

    move-object v0, v2

    .line 108
    .local v0, e1:Ljava/io/IOException;
    iget-object v2, p0, Lcom/lge/hiddenmenu/wlan_service/IPerf_Test$2;->this$0:Lcom/lge/hiddenmenu/wlan_service/IPerf_Test;

    iget-object v2, v2, Lcom/lge/hiddenmenu/wlan_service/IPerf_Test;->ls_prc2:Ljava/lang/Process;

    invoke-virtual {v2}, Ljava/lang/Process;->destroy()V

    .line 109
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    goto :goto_22
.end method
