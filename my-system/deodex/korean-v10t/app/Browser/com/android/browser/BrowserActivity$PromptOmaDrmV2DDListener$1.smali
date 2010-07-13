.class Lcom/android/browser/BrowserActivity$PromptOmaDrmV2DDListener$1;
.super Ljava/lang/Object;
.source "BrowserActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/browser/BrowserActivity$PromptOmaDrmV2DDListener;-><init>(Lcom/android/browser/BrowserActivity;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/browser/BrowserActivity$PromptOmaDrmV2DDListener;

.field final synthetic val$this$0:Lcom/android/browser/BrowserActivity;


# direct methods
.method constructor <init>(Lcom/android/browser/BrowserActivity$PromptOmaDrmV2DDListener;Lcom/android/browser/BrowserActivity;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 5085
    iput-object p1, p0, Lcom/android/browser/BrowserActivity$PromptOmaDrmV2DDListener$1;->this$1:Lcom/android/browser/BrowserActivity$PromptOmaDrmV2DDListener;

    iput-object p2, p0, Lcom/android/browser/BrowserActivity$PromptOmaDrmV2DDListener$1;->val$this$0:Lcom/android/browser/BrowserActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 7
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 5086
    iget-object v1, p0, Lcom/android/browser/BrowserActivity$PromptOmaDrmV2DDListener$1;->this$1:Lcom/android/browser/BrowserActivity$PromptOmaDrmV2DDListener;

    iget-object v1, v1, Lcom/android/browser/BrowserActivity$PromptOmaDrmV2DDListener;->this$0:Lcom/android/browser/BrowserActivity;

    iget-object v2, p0, Lcom/android/browser/BrowserActivity$PromptOmaDrmV2DDListener$1;->this$1:Lcom/android/browser/BrowserActivity$PromptOmaDrmV2DDListener;

    invoke-static {v2}, Lcom/android/browser/BrowserActivity$PromptOmaDrmV2DDListener;->access$7200(Lcom/android/browser/BrowserActivity$PromptOmaDrmV2DDListener;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/browser/BrowserActivity;->findOmaDrmHandlerV2byID(I)Lcom/lge/browser/OmaDrmHandlerV2;

    move-result-object v0

    .line 5087
    .local v0, handler:Lcom/lge/browser/OmaDrmHandlerV2;
    if-nez v0, :cond_2f

    .line 5088
    const-string v1, "browser"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot Find OmaDrmHandlerV2 to close DD Popup. Id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/browser/BrowserActivity$PromptOmaDrmV2DDListener$1;->this$1:Lcom/android/browser/BrowserActivity$PromptOmaDrmV2DDListener;

    invoke-static {v3}, Lcom/android/browser/BrowserActivity$PromptOmaDrmV2DDListener;->access$7200(Lcom/android/browser/BrowserActivity$PromptOmaDrmV2DDListener;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5097
    :goto_2e
    return-void

    .line 5091
    :cond_2f
    const/4 v1, -0x1

    if-ne p2, v1, :cond_37

    .line 5092
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/lge/browser/OmaDrmHandlerV2;->setDDConfirmed(I)V

    goto :goto_2e

    .line 5095
    :cond_37
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/lge/browser/OmaDrmHandlerV2;->setDDConfirmed(I)V

    goto :goto_2e
.end method
