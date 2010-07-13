.class Lcom/android/browser/BrowserDownloadPage$3;
.super Ljava/lang/Object;
.source "BrowserDownloadPage.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/browser/BrowserDownloadPage;->promptCancelAll()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/browser/BrowserDownloadPage;


# direct methods
.method constructor <init>(Lcom/android/browser/BrowserDownloadPage;)V
    .registers 2
    .parameter

    .prologue
    .line 328
    iput-object p1, p0, Lcom/android/browser/BrowserDownloadPage$3;->this$0:Lcom/android/browser/BrowserDownloadPage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 330
    iget-object v0, p0, Lcom/android/browser/BrowserDownloadPage$3;->this$0:Lcom/android/browser/BrowserDownloadPage;

    invoke-static {v0}, Lcom/android/browser/BrowserDownloadPage;->access$200(Lcom/android/browser/BrowserDownloadPage;)V

    .line 331
    return-void
.end method
