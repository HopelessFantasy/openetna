.class Lcom/android/browser/BrowserActivity$PromptOmaDrmV2RoapListener$1;
.super Ljava/lang/Object;
.source "BrowserActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/browser/BrowserActivity$PromptOmaDrmV2RoapListener;-><init>(Lcom/android/browser/BrowserActivity;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/browser/BrowserActivity$PromptOmaDrmV2RoapListener;

.field final synthetic val$this$0:Lcom/android/browser/BrowserActivity;


# direct methods
.method constructor <init>(Lcom/android/browser/BrowserActivity$PromptOmaDrmV2RoapListener;Lcom/android/browser/BrowserActivity;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 5132
    iput-object p1, p0, Lcom/android/browser/BrowserActivity$PromptOmaDrmV2RoapListener$1;->this$1:Lcom/android/browser/BrowserActivity$PromptOmaDrmV2RoapListener;

    iput-object p2, p0, Lcom/android/browser/BrowserActivity$PromptOmaDrmV2RoapListener$1;->val$this$0:Lcom/android/browser/BrowserActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 6
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 5133
    const/4 v1, -0x2

    if-ne p2, v1, :cond_1f

    .line 5134
    iget-object v1, p0, Lcom/android/browser/BrowserActivity$PromptOmaDrmV2RoapListener$1;->this$1:Lcom/android/browser/BrowserActivity$PromptOmaDrmV2RoapListener;

    iget-object v1, v1, Lcom/android/browser/BrowserActivity$PromptOmaDrmV2RoapListener;->this$0:Lcom/android/browser/BrowserActivity;

    iget-object v2, p0, Lcom/android/browser/BrowserActivity$PromptOmaDrmV2RoapListener$1;->this$1:Lcom/android/browser/BrowserActivity$PromptOmaDrmV2RoapListener;

    invoke-static {v2}, Lcom/android/browser/BrowserActivity$PromptOmaDrmV2RoapListener;->access$7400(Lcom/android/browser/BrowserActivity$PromptOmaDrmV2RoapListener;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/browser/BrowserActivity;->findOmaDrmHandlerV2byID(I)Lcom/lge/browser/OmaDrmHandlerV2;

    move-result-object v0

    .line 5135
    .local v0, handler:Lcom/lge/browser/OmaDrmHandlerV2;
    if-eqz v0, :cond_20

    .line 5136
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/lge/browser/OmaDrmHandlerV2;->setRoapCanceled(Z)V

    .line 5140
    :goto_17
    iget-object v1, p0, Lcom/android/browser/BrowserActivity$PromptOmaDrmV2RoapListener$1;->this$1:Lcom/android/browser/BrowserActivity$PromptOmaDrmV2RoapListener;

    iget-object v1, v1, Lcom/android/browser/BrowserActivity$PromptOmaDrmV2RoapListener;->this$0:Lcom/android/browser/BrowserActivity;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/browser/BrowserActivity;->access$7502(Lcom/android/browser/BrowserActivity;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 5142
    .end local v0           #handler:Lcom/lge/browser/OmaDrmHandlerV2;
    :cond_1f
    return-void

    .line 5139
    .restart local v0       #handler:Lcom/lge/browser/OmaDrmHandlerV2;
    :cond_20
    const-string v1, "browser"

    const-string v2, "[Download] Roap Cancelation is Failed"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_17
.end method
