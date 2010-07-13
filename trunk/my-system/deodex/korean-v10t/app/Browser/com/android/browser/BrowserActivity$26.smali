.class Lcom/android/browser/BrowserActivity$26;
.super Ljava/lang/Object;
.source "BrowserActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/browser/BrowserActivity;->showSSLCertificate(Lcom/android/browser/TabControl$Tab;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/browser/BrowserActivity;

.field final synthetic val$tab:Lcom/android/browser/TabControl$Tab;


# direct methods
.method constructor <init>(Lcom/android/browser/BrowserActivity;Lcom/android/browser/TabControl$Tab;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 4448
    iput-object p1, p0, Lcom/android/browser/BrowserActivity$26;->this$0:Lcom/android/browser/BrowserActivity;

    iput-object p2, p0, Lcom/android/browser/BrowserActivity$26;->val$tab:Lcom/android/browser/TabControl$Tab;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 6
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    const/4 v1, 0x0

    .line 4450
    iget-object v0, p0, Lcom/android/browser/BrowserActivity$26;->this$0:Lcom/android/browser/BrowserActivity;

    invoke-static {v0, v1}, Lcom/android/browser/BrowserActivity;->access$6402(Lcom/android/browser/BrowserActivity;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 4451
    iget-object v0, p0, Lcom/android/browser/BrowserActivity$26;->this$0:Lcom/android/browser/BrowserActivity;

    invoke-static {v0, v1}, Lcom/android/browser/BrowserActivity;->access$6502(Lcom/android/browser/BrowserActivity;Lcom/android/browser/TabControl$Tab;)Lcom/android/browser/TabControl$Tab;

    .line 4453
    iget-object v0, p0, Lcom/android/browser/BrowserActivity$26;->this$0:Lcom/android/browser/BrowserActivity;

    iget-object v1, p0, Lcom/android/browser/BrowserActivity$26;->val$tab:Lcom/android/browser/TabControl$Tab;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/browser/BrowserActivity;->access$6600(Lcom/android/browser/BrowserActivity;Lcom/android/browser/TabControl$Tab;Z)V

    .line 4454
    return-void
.end method
