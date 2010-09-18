.class Lcom/android/browser/FindDialog$3;
.super Ljava/lang/Object;
.source "FindDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/browser/FindDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/browser/FindDialog;


# direct methods
.method constructor <init>(Lcom/android/browser/FindDialog;)V
    .registers 2
    .parameter

    .prologue
    .line 66
    iput-object p1, p0, Lcom/android/browser/FindDialog$3;->this$0:Lcom/android/browser/FindDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .parameter "v"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/browser/FindDialog$3;->this$0:Lcom/android/browser/FindDialog;

    invoke-static {v0}, Lcom/android/browser/FindDialog;->access$100(Lcom/android/browser/FindDialog;)Landroid/webkit/WebView;

    move-result-object v0

    if-nez v0, :cond_10

    .line 68
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "No WebView for FindDialog::onClick"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 70
    :cond_10
    iget-object v0, p0, Lcom/android/browser/FindDialog$3;->this$0:Lcom/android/browser/FindDialog;

    invoke-static {v0}, Lcom/android/browser/FindDialog;->access$100(Lcom/android/browser/FindDialog;)Landroid/webkit/WebView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->findNext(Z)V

    .line 71
    iget-object v0, p0, Lcom/android/browser/FindDialog$3;->this$0:Lcom/android/browser/FindDialog;

    invoke-static {v0}, Lcom/android/browser/FindDialog;->access$200(Lcom/android/browser/FindDialog;)V

    .line 72
    return-void
.end method
