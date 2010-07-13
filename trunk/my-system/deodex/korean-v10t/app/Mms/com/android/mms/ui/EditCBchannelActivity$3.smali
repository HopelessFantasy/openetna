.class Lcom/android/mms/ui/EditCBchannelActivity$3;
.super Ljava/lang/Object;
.source "EditCBchannelActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/EditCBchannelActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/EditCBchannelActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/EditCBchannelActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 676
    iput-object p1, p0, Lcom/android/mms/ui/EditCBchannelActivity$3;->this$0:Lcom/android/mms/ui/EditCBchannelActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .parameter "v"

    .prologue
    .line 677
    iget-object v0, p0, Lcom/android/mms/ui/EditCBchannelActivity$3;->this$0:Lcom/android/mms/ui/EditCBchannelActivity;

    invoke-static {v0}, Lcom/android/mms/ui/EditCBchannelActivity;->access$000(Lcom/android/mms/ui/EditCBchannelActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_d

    .line 686
    :cond_c
    :goto_c
    return-void

    .line 681
    :cond_d
    iget-object v0, p0, Lcom/android/mms/ui/EditCBchannelActivity$3;->this$0:Lcom/android/mms/ui/EditCBchannelActivity;

    invoke-static {v0}, Lcom/android/mms/ui/EditCBchannelActivity;->access$100(Lcom/android/mms/ui/EditCBchannelActivity;)Landroid/widget/EditText;

    move-result-object v0

    if-ne p1, v0, :cond_1f

    .line 682
    iget-object v0, p0, Lcom/android/mms/ui/EditCBchannelActivity$3;->this$0:Lcom/android/mms/ui/EditCBchannelActivity;

    invoke-static {v0}, Lcom/android/mms/ui/EditCBchannelActivity;->access$100(Lcom/android/mms/ui/EditCBchannelActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    goto :goto_c

    .line 683
    :cond_1f
    iget-object v0, p0, Lcom/android/mms/ui/EditCBchannelActivity$3;->this$0:Lcom/android/mms/ui/EditCBchannelActivity;

    invoke-static {v0}, Lcom/android/mms/ui/EditCBchannelActivity;->access$200(Lcom/android/mms/ui/EditCBchannelActivity;)Landroid/widget/EditText;

    move-result-object v0

    if-ne p1, v0, :cond_c

    .line 684
    iget-object v0, p0, Lcom/android/mms/ui/EditCBchannelActivity$3;->this$0:Lcom/android/mms/ui/EditCBchannelActivity;

    invoke-static {v0}, Lcom/android/mms/ui/EditCBchannelActivity;->access$200(Lcom/android/mms/ui/EditCBchannelActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    goto :goto_c
.end method
