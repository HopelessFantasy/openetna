.class Lcom/android/browser/BrowserActivity$8;
.super Ljava/lang/Object;
.source "BrowserActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/browser/BrowserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/browser/BrowserActivity;


# direct methods
.method constructor <init>(Lcom/android/browser/BrowserActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 1581
    iput-object p1, p0, Lcom/android/browser/BrowserActivity$8;->this$0:Lcom/android/browser/BrowserActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5
    .parameter "dialog"
    .parameter "button"

    .prologue
    .line 1582
    iget-object v1, p0, Lcom/android/browser/BrowserActivity$8;->this$0:Lcom/android/browser/BrowserActivity;

    invoke-virtual {v1}, Lcom/android/browser/BrowserActivity;->finish()V

    .line 1583
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.stk.terminate"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1584
    .local v0, StkIntent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/browser/BrowserActivity$8;->this$0:Lcom/android/browser/BrowserActivity;

    invoke-virtual {v1, v0}, Lcom/android/browser/BrowserActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 1585
    return-void
.end method
