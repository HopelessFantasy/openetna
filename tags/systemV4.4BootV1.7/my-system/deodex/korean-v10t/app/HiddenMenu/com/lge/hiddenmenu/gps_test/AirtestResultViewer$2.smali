.class Lcom/lge/hiddenmenu/gps_test/AirtestResultViewer$2;
.super Ljava/lang/Object;
.source "AirtestResultViewer.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/hiddenmenu/gps_test/AirtestResultViewer;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/hiddenmenu/gps_test/AirtestResultViewer;


# direct methods
.method constructor <init>(Lcom/lge/hiddenmenu/gps_test/AirtestResultViewer;)V
    .registers 2
    .parameter

    .prologue
    .line 66
    iput-object p1, p0, Lcom/lge/hiddenmenu/gps_test/AirtestResultViewer$2;->this$0:Lcom/lge/hiddenmenu/gps_test/AirtestResultViewer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .parameter "v"

    .prologue
    .line 68
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_1a

    .line 75
    :goto_7
    return-void

    .line 70
    :pswitch_8
    iget-object v0, p0, Lcom/lge/hiddenmenu/gps_test/AirtestResultViewer$2;->this$0:Lcom/lge/hiddenmenu/gps_test/AirtestResultViewer;

    invoke-static {v0}, Lcom/lge/hiddenmenu/gps_test/AirtestResultViewer;->access$200(Lcom/lge/hiddenmenu/gps_test/AirtestResultViewer;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 71
    iget-object v0, p0, Lcom/lge/hiddenmenu/gps_test/AirtestResultViewer$2;->this$0:Lcom/lge/hiddenmenu/gps_test/AirtestResultViewer;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/lge/hiddenmenu/gps_test/AirtestResultViewer;->access$302(Lcom/lge/hiddenmenu/gps_test/AirtestResultViewer;I)I

    goto :goto_7

    .line 68
    :pswitch_data_1a
    .packed-switch 0x7f070075
        :pswitch_8
    .end packed-switch
.end method
