.class Lcom/android/browser/BrowserActivity$12$4;
.super Ljava/lang/Object;
.source "BrowserActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/browser/BrowserActivity$12;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/browser/BrowserActivity$12;


# direct methods
.method constructor <init>(Lcom/android/browser/BrowserActivity$12;)V
    .registers 2
    .parameter

    .prologue
    .line 3347
    iput-object p1, p0, Lcom/android/browser/BrowserActivity$12$4;->this$1:Lcom/android/browser/BrowserActivity$12;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .registers 3
    .parameter "d"

    .prologue
    .line 3348
    iget-object v0, p0, Lcom/android/browser/BrowserActivity$12$4;->this$1:Lcom/android/browser/BrowserActivity$12;

    invoke-static {v0}, Lcom/android/browser/BrowserActivity$12;->access$4600(Lcom/android/browser/BrowserActivity$12;)V

    .line 3349
    return-void
.end method
