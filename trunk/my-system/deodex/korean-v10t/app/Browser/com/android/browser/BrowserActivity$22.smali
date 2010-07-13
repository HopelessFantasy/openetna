.class Lcom/android/browser/BrowserActivity$22;
.super Ljava/lang/Object;
.source "BrowserActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/browser/BrowserActivity;->setupBrowserToolbar()V
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
    .line 4337
    iput-object p1, p0, Lcom/android/browser/BrowserActivity$22;->this$0:Lcom/android/browser/BrowserActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5
    .parameter "v"

    .prologue
    .line 4338
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/browser/BrowserActivity$22;->this$0:Lcom/android/browser/BrowserActivity;

    const-class v2, Lcom/android/browser/BrowserPreferencesPage;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 4340
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/browser/BrowserActivity$22;->this$0:Lcom/android/browser/BrowserActivity;

    const/4 v2, 0x3

    invoke-virtual {v1, v0, v2}, Lcom/android/browser/BrowserActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 4342
    return-void
.end method
