.class Lcom/android/browser/BrowserActivity$PromptUserConsentListener$1;
.super Ljava/lang/Object;
.source "BrowserActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/browser/BrowserActivity$PromptUserConsentListener;-><init>(Lcom/android/browser/BrowserActivity;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/browser/BrowserActivity$PromptUserConsentListener;

.field final synthetic val$this$0:Lcom/android/browser/BrowserActivity;


# direct methods
.method constructor <init>(Lcom/android/browser/BrowserActivity$PromptUserConsentListener;Lcom/android/browser/BrowserActivity;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 5187
    iput-object p1, p0, Lcom/android/browser/BrowserActivity$PromptUserConsentListener$1;->this$1:Lcom/android/browser/BrowserActivity$PromptUserConsentListener;

    iput-object p2, p0, Lcom/android/browser/BrowserActivity$PromptUserConsentListener$1;->val$this$0:Lcom/android/browser/BrowserActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 7
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    const-string v3, "browser"

    .line 5188
    iget-object v1, p0, Lcom/android/browser/BrowserActivity$PromptUserConsentListener$1;->this$1:Lcom/android/browser/BrowserActivity$PromptUserConsentListener;

    iget-object v1, v1, Lcom/android/browser/BrowserActivity$PromptUserConsentListener;->this$0:Lcom/android/browser/BrowserActivity;

    iget-object v2, p0, Lcom/android/browser/BrowserActivity$PromptUserConsentListener$1;->this$1:Lcom/android/browser/BrowserActivity$PromptUserConsentListener;

    invoke-static {v2}, Lcom/android/browser/BrowserActivity$PromptUserConsentListener;->access$7700(Lcom/android/browser/BrowserActivity$PromptUserConsentListener;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/browser/BrowserActivity;->findOmaDrmHandlerV2byID(I)Lcom/lge/browser/OmaDrmHandlerV2;

    move-result-object v0

    .line 5189
    .local v0, handler:Lcom/lge/browser/OmaDrmHandlerV2;
    if-eqz v0, :cond_35

    .line 5190
    iget-object v1, p0, Lcom/android/browser/BrowserActivity$PromptUserConsentListener$1;->this$1:Lcom/android/browser/BrowserActivity$PromptUserConsentListener;

    invoke-static {v1}, Lcom/android/browser/BrowserActivity$PromptUserConsentListener;->access$7800(Lcom/android/browser/BrowserActivity$PromptUserConsentListener;)I

    move-result v1

    packed-switch v1, :pswitch_data_3e

    .line 5195
    const-string v1, "browser"

    const-string v1, "[Download] Undefiend User Consent Popup!"

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5202
    :goto_22
    iget-object v1, p0, Lcom/android/browser/BrowserActivity$PromptUserConsentListener$1;->this$1:Lcom/android/browser/BrowserActivity$PromptUserConsentListener;

    iget-object v1, v1, Lcom/android/browser/BrowserActivity$PromptUserConsentListener;->this$0:Lcom/android/browser/BrowserActivity;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/browser/BrowserActivity;->access$7902(Lcom/android/browser/BrowserActivity;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 5203
    return-void

    .line 5192
    :pswitch_2b
    const/4 v1, -0x1

    if-ne p2, v1, :cond_33

    const/4 v1, 0x1

    :goto_2f
    invoke-virtual {v0, v1}, Lcom/lge/browser/OmaDrmHandlerV2;->setDrmUserConsentConfirmed(I)V

    goto :goto_22

    :cond_33
    const/4 v1, 0x2

    goto :goto_2f

    .line 5200
    :cond_35
    const-string v1, "browser"

    const-string v1, "[Download] DRM2 User Consent Failed"

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_22

    .line 5190
    nop

    :pswitch_data_3e
    .packed-switch 0xa
        :pswitch_2b
    .end packed-switch
.end method
