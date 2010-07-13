.class Lcom/lge/hiddenmenu/wlan_service/IPerf_Test$3;
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
    .line 115
    iput-object p1, p0, Lcom/lge/hiddenmenu/wlan_service/IPerf_Test$3;->this$0:Lcom/lge/hiddenmenu/wlan_service/IPerf_Test;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5
    .parameter "v"

    .prologue
    const-string v2, ""

    .line 117
    iget-object v0, p0, Lcom/lge/hiddenmenu/wlan_service/IPerf_Test$3;->this$0:Lcom/lge/hiddenmenu/wlan_service/IPerf_Test;

    iget-object v0, v0, Lcom/lge/hiddenmenu/wlan_service/IPerf_Test;->editText1:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 118
    iget-object v0, p0, Lcom/lge/hiddenmenu/wlan_service/IPerf_Test$3;->this$0:Lcom/lge/hiddenmenu/wlan_service/IPerf_Test;

    iget-object v0, v0, Lcom/lge/hiddenmenu/wlan_service/IPerf_Test;->textView1:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 130
    return-void
.end method
