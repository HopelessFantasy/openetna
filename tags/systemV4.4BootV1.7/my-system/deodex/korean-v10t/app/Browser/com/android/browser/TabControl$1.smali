.class Lcom/android/browser/TabControl$1;
.super Ljava/lang/Object;
.source "TabControl.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/browser/TabControl;->createSubWindow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/browser/TabControl;

.field final synthetic val$subChromeClient:Lcom/android/browser/TabControl$SubWindowChromeClient;

.field final synthetic val$w:Landroid/webkit/WebView;


# direct methods
.method constructor <init>(Lcom/android/browser/TabControl;Lcom/android/browser/TabControl$SubWindowChromeClient;Landroid/webkit/WebView;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 723
    iput-object p1, p0, Lcom/android/browser/TabControl$1;->this$0:Lcom/android/browser/TabControl;

    iput-object p2, p0, Lcom/android/browser/TabControl$1;->val$subChromeClient:Lcom/android/browser/TabControl$SubWindowChromeClient;

    iput-object p3, p0, Lcom/android/browser/TabControl$1;->val$w:Landroid/webkit/WebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .parameter "v"

    .prologue
    .line 724
    iget-object v0, p0, Lcom/android/browser/TabControl$1;->val$subChromeClient:Lcom/android/browser/TabControl$SubWindowChromeClient;

    iget-object v1, p0, Lcom/android/browser/TabControl$1;->val$w:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Lcom/android/browser/TabControl$SubWindowChromeClient;->onCloseWindow(Landroid/webkit/WebView;)V

    .line 725
    return-void
.end method
