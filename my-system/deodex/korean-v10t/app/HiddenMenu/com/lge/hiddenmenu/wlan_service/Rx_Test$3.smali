.class Lcom/lge/hiddenmenu/wlan_service/Rx_Test$3;
.super Ljava/lang/Object;
.source "Rx_Test.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/hiddenmenu/wlan_service/Rx_Test;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/hiddenmenu/wlan_service/Rx_Test;


# direct methods
.method constructor <init>(Lcom/lge/hiddenmenu/wlan_service/Rx_Test;)V
    .registers 2
    .parameter

    .prologue
    .line 123
    iput-object p1, p0, Lcom/lge/hiddenmenu/wlan_service/Rx_Test$3;->this$0:Lcom/lge/hiddenmenu/wlan_service/Rx_Test;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5
    .parameter "v"

    .prologue
    const-string v2, ""

    .line 124
    iget-object v0, p0, Lcom/lge/hiddenmenu/wlan_service/Rx_Test$3;->this$0:Lcom/lge/hiddenmenu/wlan_service/Rx_Test;

    invoke-static {v0}, Lcom/lge/hiddenmenu/wlan_service/Rx_Test;->access$000(Lcom/lge/hiddenmenu/wlan_service/Rx_Test;)Landroid/widget/EditText;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 125
    iget-object v0, p0, Lcom/lge/hiddenmenu/wlan_service/Rx_Test$3;->this$0:Lcom/lge/hiddenmenu/wlan_service/Rx_Test;

    invoke-static {v0}, Lcom/lge/hiddenmenu/wlan_service/Rx_Test;->access$100(Lcom/lge/hiddenmenu/wlan_service/Rx_Test;)Landroid/widget/EditText;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 126
    iget-object v0, p0, Lcom/lge/hiddenmenu/wlan_service/Rx_Test$3;->this$0:Lcom/lge/hiddenmenu/wlan_service/Rx_Test;

    invoke-static {v0}, Lcom/lge/hiddenmenu/wlan_service/Rx_Test;->access$200(Lcom/lge/hiddenmenu/wlan_service/Rx_Test;)Landroid/widget/EditText;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 127
    iget-object v0, p0, Lcom/lge/hiddenmenu/wlan_service/Rx_Test$3;->this$0:Lcom/lge/hiddenmenu/wlan_service/Rx_Test;

    iget-object v0, v0, Lcom/lge/hiddenmenu/wlan_service/Rx_Test;->edit_Rx_per:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 128
    return-void
.end method
