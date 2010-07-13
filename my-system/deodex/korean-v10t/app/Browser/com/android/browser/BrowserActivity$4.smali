.class Lcom/android/browser/BrowserActivity$4;
.super Ljava/lang/Object;
.source "BrowserActivity.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/browser/BrowserActivity;->setupHomePage()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/browser/BrowserActivity;

.field final synthetic val$done:[Z

.field final synthetic val$getAccount:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/android/browser/BrowserActivity;[ZLjava/lang/Runnable;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 309
    iput-object p1, p0, Lcom/android/browser/BrowserActivity$4;->this$0:Lcom/android/browser/BrowserActivity;

    iput-object p2, p0, Lcom/android/browser/BrowserActivity$4;->val$done:[Z

    iput-object p3, p0, Lcom/android/browser/BrowserActivity$4;->val$getAccount:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 7
    .parameter "className"
    .parameter "service"

    .prologue
    const/4 v3, 0x0

    .line 301
    iget-object v1, p0, Lcom/android/browser/BrowserActivity$4;->this$0:Lcom/android/browser/BrowserActivity;

    invoke-static {p2}, Lcom/google/android/googleapps/IGoogleLoginService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/android/googleapps/IGoogleLoginService;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/browser/BrowserActivity;->access$302(Lcom/android/browser/BrowserActivity;Lcom/google/android/googleapps/IGoogleLoginService;)Lcom/google/android/googleapps/IGoogleLoginService;

    .line 302
    iget-object v1, p0, Lcom/android/browser/BrowserActivity$4;->val$done:[Z

    aget-boolean v1, v1, v3

    if-nez v1, :cond_24

    .line 303
    iget-object v1, p0, Lcom/android/browser/BrowserActivity$4;->val$done:[Z

    const/4 v2, 0x1

    aput-boolean v2, v1, v3

    .line 304
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/android/browser/BrowserActivity$4;->val$getAccount:Ljava/lang/Runnable;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 305
    .local v0, account:Ljava/lang/Thread;
    const-string v1, "GLSAccount"

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 306
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 308
    .end local v0           #account:Ljava/lang/Thread;
    :cond_24
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 4
    .parameter "className"

    .prologue
    .line 310
    iget-object v0, p0, Lcom/android/browser/BrowserActivity$4;->this$0:Lcom/android/browser/BrowserActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/browser/BrowserActivity;->access$302(Lcom/android/browser/BrowserActivity;Lcom/google/android/googleapps/IGoogleLoginService;)Lcom/google/android/googleapps/IGoogleLoginService;

    .line 311
    return-void
.end method
