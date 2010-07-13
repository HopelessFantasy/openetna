.class Lcom/android/browser/BrowserActivity$3$1;
.super Ljava/lang/Object;
.source "BrowserActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/browser/BrowserActivity$3;->finish(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/browser/BrowserActivity$3;

.field final synthetic val$homepage:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/browser/BrowserActivity$3;Ljava/lang/String;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 279
    iput-object p1, p0, Lcom/android/browser/BrowserActivity$3$1;->this$1:Lcom/android/browser/BrowserActivity$3;

    iput-object p2, p0, Lcom/android/browser/BrowserActivity$3$1;->val$homepage:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 280
    iget-object v0, p0, Lcom/android/browser/BrowserActivity$3$1;->this$1:Lcom/android/browser/BrowserActivity$3;

    iget-object v0, v0, Lcom/android/browser/BrowserActivity$3;->this$0:Lcom/android/browser/BrowserActivity;

    invoke-static {v0}, Lcom/android/browser/BrowserActivity;->access$200(Lcom/android/browser/BrowserActivity;)Lcom/android/browser/BrowserSettings;

    move-result-object v0

    iget-object v1, p0, Lcom/android/browser/BrowserActivity$3$1;->this$1:Lcom/android/browser/BrowserActivity$3;

    iget-object v1, v1, Lcom/android/browser/BrowserActivity$3;->this$0:Lcom/android/browser/BrowserActivity;

    iget-object v2, p0, Lcom/android/browser/BrowserActivity$3$1;->val$homepage:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/android/browser/BrowserSettings;->setHomePage(Landroid/content/Context;Ljava/lang/String;)V

    .line 281
    iget-object v0, p0, Lcom/android/browser/BrowserActivity$3$1;->this$1:Lcom/android/browser/BrowserActivity$3;

    iget-object v0, v0, Lcom/android/browser/BrowserActivity$3;->this$0:Lcom/android/browser/BrowserActivity;

    invoke-static {v0}, Lcom/android/browser/BrowserActivity;->access$400(Lcom/android/browser/BrowserActivity;)V

    .line 286
    iget-object v0, p0, Lcom/android/browser/BrowserActivity$3$1;->this$1:Lcom/android/browser/BrowserActivity$3;

    iget-object v0, v0, Lcom/android/browser/BrowserActivity$3;->this$0:Lcom/android/browser/BrowserActivity;

    invoke-static {v0}, Lcom/android/browser/BrowserActivity;->access$500(Lcom/android/browser/BrowserActivity;)Landroid/content/ServiceConnection;

    move-result-object v0

    if-eqz v0, :cond_39

    .line 288
    iget-object v0, p0, Lcom/android/browser/BrowserActivity$3$1;->this$1:Lcom/android/browser/BrowserActivity$3;

    iget-object v0, v0, Lcom/android/browser/BrowserActivity$3;->this$0:Lcom/android/browser/BrowserActivity;

    iget-object v1, p0, Lcom/android/browser/BrowserActivity$3$1;->this$1:Lcom/android/browser/BrowserActivity$3;

    iget-object v1, v1, Lcom/android/browser/BrowserActivity$3;->this$0:Lcom/android/browser/BrowserActivity;

    invoke-static {v1}, Lcom/android/browser/BrowserActivity;->access$500(Lcom/android/browser/BrowserActivity;)Landroid/content/ServiceConnection;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/browser/BrowserActivity;->unbindService(Landroid/content/ServiceConnection;)V

    .line 289
    iget-object v0, p0, Lcom/android/browser/BrowserActivity$3$1;->this$1:Lcom/android/browser/BrowserActivity$3;

    iget-object v0, v0, Lcom/android/browser/BrowserActivity$3;->this$0:Lcom/android/browser/BrowserActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/browser/BrowserActivity;->access$502(Lcom/android/browser/BrowserActivity;Landroid/content/ServiceConnection;)Landroid/content/ServiceConnection;

    .line 291
    :cond_39
    return-void
.end method
