.class Lcom/android/browser/BrowserActivity$3;
.super Ljava/lang/Object;
.source "BrowserActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


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


# direct methods
.method constructor <init>(Lcom/android/browser/BrowserActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 277
    iput-object p1, p0, Lcom/android/browser/BrowserActivity$3;->this$0:Lcom/android/browser/BrowserActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private finish(Ljava/lang/String;)V
    .registers 4
    .parameter "homepage"

    .prologue
    .line 278
    iget-object v0, p0, Lcom/android/browser/BrowserActivity$3;->this$0:Lcom/android/browser/BrowserActivity;

    invoke-static {v0}, Lcom/android/browser/BrowserActivity;->access$600(Lcom/android/browser/BrowserActivity;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/browser/BrowserActivity$3$1;

    invoke-direct {v1, p0, p1}, Lcom/android/browser/BrowserActivity$3$1;-><init>(Lcom/android/browser/BrowserActivity$3;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 292
    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    .prologue
    .line 239
    const/16 v4, 0xa

    invoke-static {v4}, Landroid/os/Process;->setThreadPriority(I)V

    .line 241
    iget-object v4, p0, Lcom/android/browser/BrowserActivity$3;->this$0:Lcom/android/browser/BrowserActivity;

    invoke-static {v4}, Lcom/android/browser/BrowserActivity;->access$200(Lcom/android/browser/BrowserActivity;)Lcom/android/browser/BrowserSettings;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/browser/BrowserSettings;->getHomePage()Ljava/lang/String;

    move-result-object v2

    .line 244
    .local v2, homepage:Ljava/lang/String;
    :try_start_f
    iget-object v4, p0, Lcom/android/browser/BrowserActivity$3;->this$0:Lcom/android/browser/BrowserActivity;

    invoke-static {v4}, Lcom/android/browser/BrowserActivity;->access$300(Lcom/android/browser/BrowserActivity;)Lcom/google/android/googleapps/IGoogleLoginService;
    :try_end_14
    .catchall {:try_start_f .. :try_end_14} :catchall_82
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_14} :catch_78
    .catch Ljava/lang/RuntimeException; {:try_start_f .. :try_end_14} :catch_7d

    move-result-object v4

    if-nez v4, :cond_1b

    .line 273
    invoke-direct {p0, v2}, Lcom/android/browser/BrowserActivity$3;->finish(Ljava/lang/String;)V

    .line 275
    :goto_1a
    return-void

    .line 246
    :cond_1b
    :try_start_1b
    iget-object v4, p0, Lcom/android/browser/BrowserActivity$3;->this$0:Lcom/android/browser/BrowserActivity;

    invoke-static {v4}, Lcom/android/browser/BrowserActivity;->access$300(Lcom/android/browser/BrowserActivity;)Lcom/google/android/googleapps/IGoogleLoginService;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Lcom/google/android/googleapps/IGoogleLoginService;->getAccount(Z)Ljava/lang/String;

    move-result-object v3

    .line 247
    .local v3, hostedUser:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/browser/BrowserActivity$3;->this$0:Lcom/android/browser/BrowserActivity;

    invoke-static {v4}, Lcom/android/browser/BrowserActivity;->access$300(Lcom/android/browser/BrowserActivity;)Lcom/google/android/googleapps/IGoogleLoginService;

    move-result-object v4

    const/4 v5, 0x1

    invoke-interface {v4, v5}, Lcom/google/android/googleapps/IGoogleLoginService;->getAccount(Z)Ljava/lang/String;
    :try_end_30
    .catchall {:try_start_1b .. :try_end_30} :catchall_82
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_30} :catch_78
    .catch Ljava/lang/RuntimeException; {:try_start_1b .. :try_end_30} :catch_7d

    move-result-object v1

    .line 261
    .local v1, googleUser:Ljava/lang/String;
    if-nez v3, :cond_37

    .line 273
    invoke-direct {p0, v2}, Lcom/android/browser/BrowserActivity$3;->finish(Ljava/lang/String;)V

    goto :goto_1a

    .line 263
    :cond_37
    if-eqz v1, :cond_3f

    :try_start_39
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_74

    .line 264
    :cond_3f
    const/16 v4, 0x40

    invoke-virtual {v3, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 265
    .local v0, domain:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "http://www.google.com/m/a/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "?client=ms-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/browser/BrowserActivity$3;->this$0:Lcom/android/browser/BrowserActivity;

    invoke-virtual {v5}, Lcom/android/browser/BrowserActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "client_id"

    invoke-static {v5, v6}, Lcom/google/android/providers/GoogleSettings$Partner;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_73
    .catchall {:try_start_39 .. :try_end_73} :catchall_82
    .catch Landroid/os/RemoteException; {:try_start_39 .. :try_end_73} :catch_78
    .catch Ljava/lang/RuntimeException; {:try_start_39 .. :try_end_73} :catch_7d

    move-result-object v2

    .line 273
    .end local v0           #domain:Ljava/lang/String;
    :cond_74
    invoke-direct {p0, v2}, Lcom/android/browser/BrowserActivity$3;->finish(Ljava/lang/String;)V

    goto :goto_1a

    .line 268
    .end local v1           #googleUser:Ljava/lang/String;
    .end local v3           #hostedUser:Ljava/lang/String;
    :catch_78
    move-exception v4

    .line 273
    invoke-direct {p0, v2}, Lcom/android/browser/BrowserActivity$3;->finish(Ljava/lang/String;)V

    goto :goto_1a

    .line 270
    :catch_7d
    move-exception v4

    .line 273
    invoke-direct {p0, v2}, Lcom/android/browser/BrowserActivity$3;->finish(Ljava/lang/String;)V

    goto :goto_1a

    :catchall_82
    move-exception v4

    invoke-direct {p0, v2}, Lcom/android/browser/BrowserActivity$3;->finish(Ljava/lang/String;)V

    throw v4
.end method
