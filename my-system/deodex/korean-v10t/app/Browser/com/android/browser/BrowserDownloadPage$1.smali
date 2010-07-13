.class Lcom/android/browser/BrowserDownloadPage$1;
.super Ljava/lang/Object;
.source "BrowserDownloadPage.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/browser/BrowserDownloadPage;->checkStatus(J)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/browser/BrowserDownloadPage;

.field final synthetic val$id:J


# direct methods
.method constructor <init>(Lcom/android/browser/BrowserDownloadPage;J)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 239
    iput-object p1, p0, Lcom/android/browser/BrowserDownloadPage$1;->this$0:Lcom/android/browser/BrowserDownloadPage;

    iput-wide p2, p0, Lcom/android/browser/BrowserDownloadPage$1;->val$id:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 6
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 241
    iget-object v0, p0, Lcom/android/browser/BrowserDownloadPage$1;->this$0:Lcom/android/browser/BrowserDownloadPage;

    iget-wide v1, p0, Lcom/android/browser/BrowserDownloadPage$1;->val$id:J

    invoke-static {v0, v1, v2}, Lcom/android/browser/BrowserDownloadPage;->access$000(Lcom/android/browser/BrowserDownloadPage;J)V

    .line 242
    return-void
.end method
