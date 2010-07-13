.class Lcom/android/browser/BrowserActivity$12;
.super Landroid/webkit/WebViewClient;
.source "BrowserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/browser/BrowserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/browser/BrowserActivity$12$ErrorDialog;
    }
.end annotation


# instance fields
.field private mDialogListener:Landroid/content/DialogInterface$OnDismissListener;

.field private mQueuedErrors:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/android/browser/BrowserActivity$12$ErrorDialog;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/browser/BrowserActivity;


# direct methods
.method constructor <init>(Lcom/android/browser/BrowserActivity;)V
    .registers 3
    .parameter

    .prologue
    .line 3576
    iput-object p1, p0, Lcom/android/browser/BrowserActivity$12;->this$0:Lcom/android/browser/BrowserActivity;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    .line 3345
    new-instance v0, Lcom/android/browser/BrowserActivity$12$4;

    invoke-direct {v0, p0}, Lcom/android/browser/BrowserActivity$12$4;-><init>(Lcom/android/browser/BrowserActivity$12;)V

    iput-object v0, p0, Lcom/android/browser/BrowserActivity$12;->mDialogListener:Landroid/content/DialogInterface$OnDismissListener;

    return-void
.end method

.method static synthetic access$4600(Lcom/android/browser/BrowserActivity$12;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 3576
    invoke-direct {p0}, Lcom/android/browser/BrowserActivity$12;->processNextError()V

    return-void
.end method

.method private processNextError()V
    .registers 2

    .prologue
    .line 3333
    iget-object v0, p0, Lcom/android/browser/BrowserActivity$12;->mQueuedErrors:Ljava/util/LinkedList;

    if-nez v0, :cond_5

    .line 3343
    :goto_4
    return-void

    .line 3337
    :cond_5
    iget-object v0, p0, Lcom/android/browser/BrowserActivity$12;->mQueuedErrors:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    .line 3338
    iget-object v0, p0, Lcom/android/browser/BrowserActivity$12;->mQueuedErrors:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-nez v0, :cond_16

    .line 3339
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/browser/BrowserActivity$12;->mQueuedErrors:Ljava/util/LinkedList;

    goto :goto_4

    .line 3342
    :cond_16
    iget-object v0, p0, Lcom/android/browser/BrowserActivity$12;->mQueuedErrors:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/browser/BrowserActivity$12$ErrorDialog;

    invoke-direct {p0, v0}, Lcom/android/browser/BrowserActivity$12;->showError(Lcom/android/browser/BrowserActivity$12$ErrorDialog;)V

    goto :goto_4
.end method

.method private queueError(ILjava/lang/String;)V
    .registers 8
    .parameter "err"
    .parameter "desc"

    .prologue
    .line 3354
    iget-object v3, p0, Lcom/android/browser/BrowserActivity$12;->mQueuedErrors:Ljava/util/LinkedList;

    if-nez v3, :cond_b

    .line 3355
    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    iput-object v3, p0, Lcom/android/browser/BrowserActivity$12;->mQueuedErrors:Ljava/util/LinkedList;

    .line 3357
    :cond_b
    iget-object v3, p0, Lcom/android/browser/BrowserActivity$12;->mQueuedErrors:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_11
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_22

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/browser/BrowserActivity$12$ErrorDialog;

    .line 3358
    .local v0, d:Lcom/android/browser/BrowserActivity$12$ErrorDialog;
    iget v3, v0, Lcom/android/browser/BrowserActivity$12$ErrorDialog;->mError:I

    if-ne v3, p1, :cond_11

    .line 3374
    .end local v0           #d:Lcom/android/browser/BrowserActivity$12$ErrorDialog;
    :cond_21
    :goto_21
    return-void

    .line 3363
    :cond_22
    new-instance v1, Lcom/android/browser/BrowserActivity$12$ErrorDialog;

    const/16 v3, -0xe

    if-ne p1, v3, :cond_40

    const v3, 0x7f07009e

    :goto_2b
    invoke-direct {v1, p0, v3, p2, p1}, Lcom/android/browser/BrowserActivity$12$ErrorDialog;-><init>(Lcom/android/browser/BrowserActivity$12;ILjava/lang/String;I)V

    .line 3368
    .local v1, errDialog:Lcom/android/browser/BrowserActivity$12$ErrorDialog;
    iget-object v3, p0, Lcom/android/browser/BrowserActivity$12;->mQueuedErrors:Ljava/util/LinkedList;

    invoke-virtual {v3, v1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 3371
    iget-object v3, p0, Lcom/android/browser/BrowserActivity$12;->mQueuedErrors:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_21

    .line 3372
    invoke-direct {p0, v1}, Lcom/android/browser/BrowserActivity$12;->showError(Lcom/android/browser/BrowserActivity$12$ErrorDialog;)V

    goto :goto_21

    .line 3363
    .end local v1           #errDialog:Lcom/android/browser/BrowserActivity$12$ErrorDialog;
    :cond_40
    const v3, 0x7f07009d

    goto :goto_2b
.end method

.method private showError(Lcom/android/browser/BrowserActivity$12$ErrorDialog;)V
    .registers 6
    .parameter "errDialog"

    .prologue
    .line 3377
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/browser/BrowserActivity$12;->this$0:Lcom/android/browser/BrowserActivity;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget v2, p1, Lcom/android/browser/BrowserActivity$12$ErrorDialog;->mTitle:I

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    iget-object v2, p1, Lcom/android/browser/BrowserActivity$12$ErrorDialog;->mDescription:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f07000b

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 3382
    .local v0, d:Landroid/app/AlertDialog;
    iget-object v1, p0, Lcom/android/browser/BrowserActivity$12;->mDialogListener:Landroid/content/DialogInterface$OnDismissListener;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 3383
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 3384
    return-void
.end method


# virtual methods
.method public doUpdateVisitedHistory(Landroid/webkit/WebView;Ljava/lang/String;Z)V
    .registers 10
    .parameter "view"
    .parameter "url"
    .parameter "isReload"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 3441
    const-string v3, "about:"

    const/4 v5, 0x6

    move-object v0, p2

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 3446
    :goto_d
    return-void

    .line 3444
    :cond_e
    iget-object v0, p0, Lcom/android/browser/BrowserActivity$12;->this$0:Lcom/android/browser/BrowserActivity;

    invoke-static {v0}, Lcom/android/browser/BrowserActivity;->access$4700(Lcom/android/browser/BrowserActivity;)Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p2, v1}, Landroid/provider/Browser;->updateVisitedHistory(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    .line 3445
    invoke-static {}, Landroid/webkit/WebIconDatabase;->getInstance()Landroid/webkit/WebIconDatabase;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/webkit/WebIconDatabase;->retainIconForPageUrl(Ljava/lang/String;)V

    goto :goto_d
.end method

.method public onFormResubmission(Landroid/webkit/WebView;Landroid/os/Message;Landroid/os/Message;)V
    .registers 7
    .parameter "view"
    .parameter "dontResend"
    .parameter "resend"

    .prologue
    .line 3414
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/browser/BrowserActivity$12;->this$0:Lcom/android/browser/BrowserActivity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f07009f

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0700a0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f07000b

    new-instance v2, Lcom/android/browser/BrowserActivity$12$7;

    invoke-direct {v2, p0, p3}, Lcom/android/browser/BrowserActivity$12$7;-><init>(Lcom/android/browser/BrowserActivity$12;Landroid/os/Message;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f07000a

    new-instance v2, Lcom/android/browser/BrowserActivity$12$6;

    invoke-direct {v2, p0, p2}, Lcom/android/browser/BrowserActivity$12$6;-><init>(Lcom/android/browser/BrowserActivity$12;Landroid/os/Message;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/browser/BrowserActivity$12$5;

    invoke-direct {v1, p0, p2}, Lcom/android/browser/BrowserActivity$12$5;-><init>(Lcom/android/browser/BrowserActivity$12;Landroid/os/Message;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 3430
    return-void
.end method

.method public onLoadResource(Landroid/webkit/WebView;Ljava/lang/String;)V
    .registers 5
    .parameter "view"
    .parameter "url"

    .prologue
    .line 3278
    if-eqz p2, :cond_29

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_29

    .line 3281
    iget-object v0, p0, Lcom/android/browser/BrowserActivity$12;->this$0:Lcom/android/browser/BrowserActivity;

    invoke-static {v0}, Lcom/android/browser/BrowserActivity;->access$4300(Lcom/android/browser/BrowserActivity;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_29

    .line 3283
    invoke-static {p2}, Landroid/webkit/URLUtil;->isHttpsUrl(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_29

    invoke-static {p2}, Landroid/webkit/URLUtil;->isDataUrl(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_29

    invoke-static {p2}, Landroid/webkit/URLUtil;->isAboutUrl(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_29

    .line 3284
    iget-object v0, p0, Lcom/android/browser/BrowserActivity$12;->this$0:Lcom/android/browser/BrowserActivity;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/android/browser/BrowserActivity;->access$4302(Lcom/android/browser/BrowserActivity;I)I

    .line 3292
    :cond_29
    return-void
.end method

.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .registers 7
    .parameter "view"
    .parameter "url"

    .prologue
    const/4 v2, 0x0

    const-string v3, "browser"

    .line 3064
    iget-object v0, p0, Lcom/android/browser/BrowserActivity$12;->this$0:Lcom/android/browser/BrowserActivity;

    invoke-static {v0, p1}, Lcom/android/browser/BrowserActivity;->access$4200(Lcom/android/browser/BrowserActivity;Landroid/webkit/WebView;)V

    .line 3067
    iget-object v0, p0, Lcom/android/browser/BrowserActivity$12;->this$0:Lcom/android/browser/BrowserActivity;

    iget-object v1, p0, Lcom/android/browser/BrowserActivity$12;->this$0:Lcom/android/browser/BrowserActivity;

    invoke-static {v1}, Lcom/android/browser/BrowserActivity;->access$4300(Lcom/android/browser/BrowserActivity;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/browser/BrowserActivity;->access$4400(Lcom/android/browser/BrowserActivity;I)V

    .line 3148
    invoke-static {}, Lcom/android/browser/BrowserActivity;->access$3100()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 3149
    invoke-static {v2}, Lcom/android/browser/BrowserActivity;->access$3102(Z)Z

    .line 3150
    invoke-static {}, Landroid/os/Debug;->stopMethodTracing()V

    .line 3153
    :cond_1f
    iget-object v0, p0, Lcom/android/browser/BrowserActivity$12;->this$0:Lcom/android/browser/BrowserActivity;

    invoke-static {v0}, Lcom/android/browser/BrowserActivity;->access$3200(Lcom/android/browser/BrowserActivity;)Z

    move-result v0

    if-eqz v0, :cond_5b

    .line 3154
    iget-object v0, p0, Lcom/android/browser/BrowserActivity$12;->this$0:Lcom/android/browser/BrowserActivity;

    invoke-static {v0, v2}, Lcom/android/browser/BrowserActivity;->access$3202(Lcom/android/browser/BrowserActivity;Z)Z

    .line 3157
    iget-object v0, p0, Lcom/android/browser/BrowserActivity$12;->this$0:Lcom/android/browser/BrowserActivity;

    invoke-static {v0}, Lcom/android/browser/BrowserActivity;->access$3900(Lcom/android/browser/BrowserActivity;)Z

    move-result v0

    if-eqz v0, :cond_5b

    .line 3158
    iget-object v0, p0, Lcom/android/browser/BrowserActivity$12;->this$0:Lcom/android/browser/BrowserActivity;

    invoke-static {v0}, Lcom/android/browser/BrowserActivity;->access$2700(Lcom/android/browser/BrowserActivity;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_5b

    .line 3159
    iget-object v0, p0, Lcom/android/browser/BrowserActivity$12;->this$0:Lcom/android/browser/BrowserActivity;

    invoke-static {v0}, Lcom/android/browser/BrowserActivity;->access$600(Lcom/android/browser/BrowserActivity;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x6c

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 3160
    iget-object v0, p0, Lcom/android/browser/BrowserActivity$12;->this$0:Lcom/android/browser/BrowserActivity;

    invoke-static {v0}, Lcom/android/browser/BrowserActivity;->access$2700(Lcom/android/browser/BrowserActivity;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 3161
    const-string v0, "browser"

    const-string v0, "[WakeLock] Native : released onPageFinished!"

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3167
    :cond_5b
    iget-object v0, p0, Lcom/android/browser/BrowserActivity$12;->this$0:Lcom/android/browser/BrowserActivity;

    invoke-static {v0}, Lcom/android/browser/BrowserActivity;->access$4100(Lcom/android/browser/BrowserActivity;)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_85

    .line 3168
    iget-object v0, p0, Lcom/android/browser/BrowserActivity$12;->this$0:Lcom/android/browser/BrowserActivity;

    invoke-static {v0}, Lcom/android/browser/BrowserActivity;->access$2700(Lcom/android/browser/BrowserActivity;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_96

    .line 3169
    iget-object v0, p0, Lcom/android/browser/BrowserActivity$12;->this$0:Lcom/android/browser/BrowserActivity;

    invoke-static {v0}, Lcom/android/browser/BrowserActivity;->access$2700(Lcom/android/browser/BrowserActivity;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 3170
    const-string v0, "browser"

    const-string v0, "[WakeLock] LGE : released onPageFinished!"

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3175
    :goto_80
    iget-object v0, p0, Lcom/android/browser/BrowserActivity$12;->this$0:Lcom/android/browser/BrowserActivity;

    invoke-static {v0, v2}, Lcom/android/browser/BrowserActivity;->access$4102(Lcom/android/browser/BrowserActivity;Z)Z

    .line 3183
    :cond_85
    iget-object v0, p0, Lcom/android/browser/BrowserActivity$12;->this$0:Lcom/android/browser/BrowserActivity;

    invoke-static {v0}, Lcom/android/browser/BrowserActivity;->access$600(Lcom/android/browser/BrowserActivity;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x6b

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 3184
    iget-object v0, p0, Lcom/android/browser/BrowserActivity$12;->this$0:Lcom/android/browser/BrowserActivity;

    invoke-static {v0}, Lcom/android/browser/BrowserActivity;->access$2600(Lcom/android/browser/BrowserActivity;)V

    .line 3185
    return-void

    .line 3173
    :cond_96
    const-string v0, "browser"

    const-string v0, "[WakeLock] LGE : released in other place (onPageFinished)!"

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_80
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .registers 15
    .parameter "view"
    .parameter "url"
    .parameter "favicon"

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 2963
    iget-object v5, p0, Lcom/android/browser/BrowserActivity$12;->this$0:Lcom/android/browser/BrowserActivity;

    invoke-static {v5, p2}, Lcom/android/browser/BrowserActivity;->access$2800(Lcom/android/browser/BrowserActivity;Ljava/lang/String;)V

    .line 2964
    iget-object v5, p0, Lcom/android/browser/BrowserActivity$12;->this$0:Lcom/android/browser/BrowserActivity;

    invoke-static {v5, p2, v10}, Lcom/android/browser/BrowserActivity;->access$2900(Lcom/android/browser/BrowserActivity;Ljava/lang/String;Ljava/lang/String;)V

    .line 2967
    iget-object v5, p0, Lcom/android/browser/BrowserActivity$12;->this$0:Lcom/android/browser/BrowserActivity;

    invoke-static {v5, p2, p3}, Lcom/android/browser/BrowserActivity;->access$3000(Lcom/android/browser/BrowserActivity;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 2969
    iget-object v5, p0, Lcom/android/browser/BrowserActivity$12;->this$0:Lcom/android/browser/BrowserActivity;

    invoke-static {v5}, Lcom/android/browser/BrowserActivity;->access$200(Lcom/android/browser/BrowserActivity;)Lcom/android/browser/BrowserSettings;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/browser/BrowserSettings;->isTracing()Z

    move-result v5

    if-ne v5, v8, :cond_af

    .line 2972
    iget-object v5, p0, Lcom/android/browser/BrowserActivity$12;->this$0:Lcom/android/browser/BrowserActivity;

    const-string v6, "browserTrace"

    invoke-virtual {v5, v6, v9}, Lcom/android/browser/BrowserActivity;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v2

    .line 2973
    .local v2, file:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 2974
    .local v0, baseDir:Ljava/lang/String;
    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_45

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2977
    :cond_45
    :try_start_45
    new-instance v4, Landroid/net/WebAddress;

    invoke-direct {v4, p2}, Landroid/net/WebAddress;-><init>(Ljava/lang/String;)V

    .line 2978
    .local v4, uri:Landroid/net/WebAddress;
    iget-object v3, v4, Landroid/net/WebAddress;->mHost:Ljava/lang/String;
    :try_end_4c
    .catch Landroid/net/ParseException; {:try_start_45 .. :try_end_4c} :catch_170

    .line 2982
    .end local v4           #uri:Landroid/net/WebAddress;
    .local v3, host:Ljava/lang/String;
    :goto_4c
    const/16 v5, 0x2e

    const/16 v6, 0x5f

    invoke-virtual {v3, v5, v6}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v3

    .line 2983
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2984
    new-instance v2, Ljava/io/File;

    .end local v2           #file:Ljava/io/File;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".data"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2985
    .restart local v2       #file:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v5

    if-ne v5, v8, :cond_86

    .line 2986
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 2988
    :cond_86
    new-instance v2, Ljava/io/File;

    .end local v2           #file:Ljava/io/File;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".key"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2989
    .restart local v2       #file:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v5

    if-ne v5, v8, :cond_a7

    .line 2990
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 2992
    :cond_a7
    invoke-static {v8}, Lcom/android/browser/BrowserActivity;->access$3102(Z)Z

    .line 2993
    const/high16 v5, 0x80

    invoke-static {v0, v5}, Landroid/os/Debug;->startMethodTracing(Ljava/lang/String;I)V

    .line 3011
    .end local v0           #baseDir:Ljava/lang/String;
    .end local v2           #file:Ljava/io/File;
    .end local v3           #host:Ljava/lang/String;
    :cond_af
    iget-object v5, p0, Lcom/android/browser/BrowserActivity$12;->this$0:Lcom/android/browser/BrowserActivity;

    invoke-static {v5}, Lcom/android/browser/BrowserActivity;->access$3200(Lcom/android/browser/BrowserActivity;)Z

    move-result v5

    if-nez v5, :cond_c1

    .line 3012
    iget-object v5, p0, Lcom/android/browser/BrowserActivity$12;->this$0:Lcom/android/browser/BrowserActivity;

    invoke-static {v5, v8}, Lcom/android/browser/BrowserActivity;->access$3202(Lcom/android/browser/BrowserActivity;Z)Z

    .line 3014
    iget-object v5, p0, Lcom/android/browser/BrowserActivity$12;->this$0:Lcom/android/browser/BrowserActivity;

    invoke-static {v5}, Lcom/android/browser/BrowserActivity;->access$3300(Lcom/android/browser/BrowserActivity;)Z

    .line 3018
    :cond_c1
    invoke-static {}, Landroid/webkit/CookieSyncManager;->getInstance()Landroid/webkit/CookieSyncManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/webkit/CookieSyncManager;->resetSync()V

    .line 3020
    iget-object v5, p0, Lcom/android/browser/BrowserActivity$12;->this$0:Lcom/android/browser/BrowserActivity;

    invoke-static {v5, v8}, Lcom/android/browser/BrowserActivity;->access$002(Lcom/android/browser/BrowserActivity;Z)Z

    .line 3023
    iget-object v5, p0, Lcom/android/browser/BrowserActivity$12;->this$0:Lcom/android/browser/BrowserActivity;

    invoke-static {v5}, Lcom/android/browser/BrowserActivity;->access$3500(Lcom/android/browser/BrowserActivity;)Landroid/os/Handler;

    move-result-object v5

    iget-object v6, p0, Lcom/android/browser/BrowserActivity$12;->this$0:Lcom/android/browser/BrowserActivity;

    invoke-static {v6}, Lcom/android/browser/BrowserActivity;->access$3400(Lcom/android/browser/BrowserActivity;)Ljava/lang/Runnable;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3026
    iget-object v5, p0, Lcom/android/browser/BrowserActivity$12;->this$0:Lcom/android/browser/BrowserActivity;

    invoke-static {v5}, Lcom/android/browser/BrowserActivity;->access$3600(Lcom/android/browser/BrowserActivity;)V

    .line 3027
    iget-object v5, p0, Lcom/android/browser/BrowserActivity$12;->this$0:Lcom/android/browser/BrowserActivity;

    invoke-static {v5}, Lcom/android/browser/BrowserActivity;->access$3700(Lcom/android/browser/BrowserActivity;)Z

    move-result v5

    if-nez v5, :cond_11b

    .line 3028
    iget-object v5, p0, Lcom/android/browser/BrowserActivity$12;->this$0:Lcom/android/browser/BrowserActivity;

    invoke-static {v5}, Lcom/android/browser/BrowserActivity;->access$3800(Lcom/android/browser/BrowserActivity;)Landroid/app/AlertDialog;

    move-result-object v5

    if-nez v5, :cond_116

    .line 3029
    iget-object v5, p0, Lcom/android/browser/BrowserActivity$12;->this$0:Lcom/android/browser/BrowserActivity;

    new-instance v6, Landroid/app/AlertDialog$Builder;

    iget-object v7, p0, Lcom/android/browser/BrowserActivity$12;->this$0:Lcom/android/browser/BrowserActivity;

    invoke-direct {v6, v7}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v7, 0x7f0700a1

    invoke-virtual {v6, v7}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    const v7, 0x7f0700a2

    invoke-virtual {v6, v7}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    const v7, 0x7f07000b

    invoke-virtual {v6, v7, v10}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/browser/BrowserActivity;->access$3802(Lcom/android/browser/BrowserActivity;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 3035
    :cond_116
    if-eqz p1, :cond_11b

    .line 3036
    invoke-virtual {p1, v9}, Landroid/webkit/WebView;->setNetworkAvailable(Z)V

    .line 3041
    :cond_11b
    iget-object v5, p0, Lcom/android/browser/BrowserActivity$12;->this$0:Lcom/android/browser/BrowserActivity;

    invoke-static {v5}, Lcom/android/browser/BrowserActivity;->access$700(Lcom/android/browser/BrowserActivity;)Lcom/android/browser/TabControl;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/browser/TabControl;->getCurrentIndex()I

    move-result v5

    if-ltz v5, :cond_158

    iget-object v5, p0, Lcom/android/browser/BrowserActivity$12;->this$0:Lcom/android/browser/BrowserActivity;

    invoke-static {v5}, Lcom/android/browser/BrowserActivity;->access$3900(Lcom/android/browser/BrowserActivity;)Z

    move-result v5

    if-nez v5, :cond_158

    .line 3042
    iget-object v5, p0, Lcom/android/browser/BrowserActivity$12;->this$0:Lcom/android/browser/BrowserActivity;

    invoke-static {v5}, Lcom/android/browser/BrowserActivity;->access$2700(Lcom/android/browser/BrowserActivity;)Landroid/os/PowerManager$WakeLock;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v5

    if-nez v5, :cond_158

    iget-object v5, p0, Lcom/android/browser/BrowserActivity$12;->this$0:Lcom/android/browser/BrowserActivity;

    invoke-static {v5}, Lcom/android/browser/BrowserActivity;->access$4000(Lcom/android/browser/BrowserActivity;)Z

    move-result v5

    if-nez v5, :cond_158

    .line 3043
    iget-object v5, p0, Lcom/android/browser/BrowserActivity$12;->this$0:Lcom/android/browser/BrowserActivity;

    invoke-static {v5}, Lcom/android/browser/BrowserActivity;->access$2700(Lcom/android/browser/BrowserActivity;)Landroid/os/PowerManager$WakeLock;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 3044
    iget-object v5, p0, Lcom/android/browser/BrowserActivity$12;->this$0:Lcom/android/browser/BrowserActivity;

    invoke-static {v5, v8}, Lcom/android/browser/BrowserActivity;->access$4102(Lcom/android/browser/BrowserActivity;Z)Z

    .line 3046
    const-string v5, "browser"

    const-string v6, "[WakeLock] LGE : acquired onPageStarted!"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3056
    :cond_158
    iget-object v5, p0, Lcom/android/browser/BrowserActivity$12;->this$0:Lcom/android/browser/BrowserActivity;

    invoke-static {v5}, Lcom/android/browser/BrowserActivity;->access$600(Lcom/android/browser/BrowserActivity;)Landroid/os/Handler;

    move-result-object v5

    iget-object v6, p0, Lcom/android/browser/BrowserActivity$12;->this$0:Lcom/android/browser/BrowserActivity;

    invoke-static {v6}, Lcom/android/browser/BrowserActivity;->access$600(Lcom/android/browser/BrowserActivity;)Landroid/os/Handler;

    move-result-object v6

    const/16 v7, 0x6b

    invoke-virtual {v6, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    const-wide/16 v7, 0x7530

    invoke-virtual {v5, v6, v7, v8}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 3058
    return-void

    .line 2979
    .restart local v0       #baseDir:Ljava/lang/String;
    .restart local v2       #file:Ljava/io/File;
    :catch_170
    move-exception v5

    move-object v1, v5

    .line 2980
    .local v1, ex:Landroid/net/ParseException;
    const-string v3, "unknown_host"

    .restart local v3       #host:Ljava/lang/String;
    goto/16 :goto_4c
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .registers 9
    .parameter "view"
    .parameter "errorCode"
    .parameter "description"
    .parameter "failingUrl"

    .prologue
    const-string v3, " "

    .line 3393
    const/4 v0, -0x2

    if-eq p2, v0, :cond_17

    const/4 v0, -0x6

    if-eq p2, v0, :cond_17

    const/16 v0, -0xc

    if-eq p2, v0, :cond_17

    const/16 v0, -0xa

    if-eq p2, v0, :cond_17

    const/16 v0, -0xd

    if-eq p2, v0, :cond_17

    .line 3398
    invoke-direct {p0, p2, p3}, Lcom/android/browser/BrowserActivity$12;->queueError(ILjava/lang/String;)V

    .line 3400
    :cond_17
    const-string v0, "browser"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onReceivedError "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3404
    iget-object v0, p0, Lcom/android/browser/BrowserActivity$12;->this$0:Lcom/android/browser/BrowserActivity;

    invoke-virtual {v0}, Lcom/android/browser/BrowserActivity;->resetTitleAndRevertLockIcon()V

    .line 3405
    return-void
.end method

.method public onReceivedHttpAuthRequest(Landroid/webkit/WebView;Landroid/webkit/HttpAuthHandler;Ljava/lang/String;Ljava/lang/String;)V
    .registers 20
    .parameter "view"
    .parameter "handler"
    .parameter "host"
    .parameter "realm"

    .prologue
    .line 3541
    const/4 v14, 0x0

    .line 3542
    .local v14, username:Ljava/lang/String;
    const/4 v12, 0x0

    .line 3544
    .local v12, password:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/webkit/HttpAuthHandler;->useHttpAuthUsernamePassword()Z

    move-result v13

    .line 3547
    .local v13, reuseHttpAuthUsernamePassword:Z
    if-eqz v13, :cond_33

    iget-object v3, p0, Lcom/android/browser/BrowserActivity$12;->this$0:Lcom/android/browser/BrowserActivity;

    invoke-static {v3}, Lcom/android/browser/BrowserActivity;->access$700(Lcom/android/browser/BrowserActivity;)Lcom/android/browser/TabControl;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/browser/TabControl;->getCurrentWebView()Landroid/webkit/WebView;

    move-result-object v3

    if-eqz v3, :cond_33

    .line 3549
    iget-object v3, p0, Lcom/android/browser/BrowserActivity$12;->this$0:Lcom/android/browser/BrowserActivity;

    invoke-static {v3}, Lcom/android/browser/BrowserActivity;->access$700(Lcom/android/browser/BrowserActivity;)Lcom/android/browser/TabControl;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/browser/TabControl;->getCurrentWebView()Landroid/webkit/WebView;

    move-result-object v3

    move-object v0, v3

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebView;->getHttpAuthUsernamePassword(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    .line 3552
    .local v11, credentials:[Ljava/lang/String;
    if-eqz v11, :cond_33

    array-length v3, v11

    const/4 v4, 0x2

    if-ne v3, v4, :cond_33

    .line 3553
    const/4 v3, 0x0

    aget-object v14, v11, v3

    .line 3554
    const/4 v3, 0x1

    aget-object v12, v11, v3

    .line 3558
    .end local v11           #credentials:[Ljava/lang/String;
    :cond_33
    if-eqz v14, :cond_3f

    if-eqz v12, :cond_3f

    .line 3559
    move-object/from16 v0, p2

    move-object v1, v14

    move-object v2, v12

    invoke-virtual {v0, v1, v2}, Landroid/webkit/HttpAuthHandler;->proceed(Ljava/lang/String;Ljava/lang/String;)V

    .line 3563
    :goto_3e
    return-void

    .line 3561
    :cond_3f
    iget-object v3, p0, Lcom/android/browser/BrowserActivity$12;->this$0:Lcom/android/browser/BrowserActivity;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    invoke-static/range {v3 .. v10}, Lcom/android/browser/BrowserActivity;->access$4900(Lcom/android/browser/BrowserActivity;Landroid/webkit/HttpAuthHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_3e
.end method

.method public onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .registers 13
    .parameter "view"
    .parameter "handler"
    .parameter "error"

    .prologue
    const v8, 0x7f0c0064

    const v7, 0x7f030019

    const/4 v6, 0x0

    .line 3455
    iget-object v4, p0, Lcom/android/browser/BrowserActivity$12;->this$0:Lcom/android/browser/BrowserActivity;

    invoke-static {v4}, Lcom/android/browser/BrowserActivity;->access$200(Lcom/android/browser/BrowserActivity;)Lcom/android/browser/BrowserSettings;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/browser/BrowserSettings;->showSecurityWarnings()Z

    move-result v4

    if-eqz v4, :cond_e3

    .line 3456
    iget-object v4, p0, Lcom/android/browser/BrowserActivity$12;->this$0:Lcom/android/browser/BrowserActivity;

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 3458
    .local v0, factory:Landroid/view/LayoutInflater;
    const v4, 0x7f03001a

    invoke-virtual {v0, v4, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 3460
    .local v3, warningsView:Landroid/view/View;
    const v4, 0x7f0c004f

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 3463
    .local v2, placeholder:Landroid/widget/LinearLayout;
    const/4 v4, 0x3

    invoke-virtual {p3, v4}, Landroid/net/http/SslError;->hasError(I)Z

    move-result v4

    if-eqz v4, :cond_45

    .line 3464
    invoke-virtual {v0, v7, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 3466
    .local v1, ll:Landroid/widget/LinearLayout;
    invoke-virtual {v1, v8}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const v5, 0x7f070013

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    .line 3468
    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 3471
    .end local v1           #ll:Landroid/widget/LinearLayout;
    :cond_45
    const/4 v4, 0x2

    invoke-virtual {p3, v4}, Landroid/net/http/SslError;->hasError(I)Z

    move-result v4

    if-eqz v4, :cond_61

    .line 3472
    invoke-virtual {v0, v7, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 3474
    .restart local v1       #ll:Landroid/widget/LinearLayout;
    invoke-virtual {v1, v8}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const v5, 0x7f070014

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    .line 3476
    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 3479
    .end local v1           #ll:Landroid/widget/LinearLayout;
    :cond_61
    const/4 v4, 0x1

    invoke-virtual {p3, v4}, Landroid/net/http/SslError;->hasError(I)Z

    move-result v4

    if-eqz v4, :cond_7d

    .line 3480
    invoke-virtual {v0, v7, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 3482
    .restart local v1       #ll:Landroid/widget/LinearLayout;
    invoke-virtual {v1, v8}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const v5, 0x7f070015

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    .line 3484
    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 3487
    .end local v1           #ll:Landroid/widget/LinearLayout;
    :cond_7d
    const/4 v4, 0x0

    invoke-virtual {p3, v4}, Landroid/net/http/SslError;->hasError(I)Z

    move-result v4

    if-eqz v4, :cond_99

    .line 3488
    invoke-virtual {v0, v7, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 3490
    .restart local v1       #ll:Landroid/widget/LinearLayout;
    invoke-virtual {v1, v8}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const v5, 0x7f070016

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    .line 3492
    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 3495
    .end local v1           #ll:Landroid/widget/LinearLayout;
    :cond_99
    new-instance v4, Landroid/app/AlertDialog$Builder;

    iget-object v5, p0, Lcom/android/browser/BrowserActivity$12;->this$0:Lcom/android/browser/BrowserActivity;

    invoke-direct {v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v5, 0x7f070011

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x1080027

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f070010

    new-instance v6, Lcom/android/browser/BrowserActivity$12$11;

    invoke-direct {v6, p0, p2}, Lcom/android/browser/BrowserActivity$12$11;-><init>(Lcom/android/browser/BrowserActivity$12;Landroid/webkit/SslErrorHandler;)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f070012

    new-instance v6, Lcom/android/browser/BrowserActivity$12$10;

    invoke-direct {v6, p0, p1, p2, p3}, Lcom/android/browser/BrowserActivity$12$10;-><init>(Lcom/android/browser/BrowserActivity$12;Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f07000a

    new-instance v6, Lcom/android/browser/BrowserActivity$12$9;

    invoke-direct {v6, p0, p2}, Lcom/android/browser/BrowserActivity$12$9;-><init>(Lcom/android/browser/BrowserActivity$12;Landroid/webkit/SslErrorHandler;)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    new-instance v5, Lcom/android/browser/BrowserActivity$12$8;

    invoke-direct {v5, p0, p2}, Lcom/android/browser/BrowserActivity$12$8;-><init>(Lcom/android/browser/BrowserActivity$12;Landroid/webkit/SslErrorHandler;)V

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 3529
    .end local v0           #factory:Landroid/view/LayoutInflater;
    .end local v2           #placeholder:Landroid/widget/LinearLayout;
    .end local v3           #warningsView:Landroid/view/View;
    :goto_e2
    return-void

    .line 3527
    :cond_e3
    invoke-virtual {p2}, Landroid/webkit/SslErrorHandler;->proceed()V

    goto :goto_e2
.end method

.method public onTooManyRedirects(Landroid/webkit/WebView;Landroid/os/Message;Landroid/os/Message;)V
    .registers 7
    .parameter "view"
    .parameter "cancelMsg"
    .parameter "continueMsg"

    .prologue
    .line 3301
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/browser/BrowserActivity$12;->this$0:Lcom/android/browser/BrowserActivity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f07009b

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f07009c

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f07000b

    new-instance v2, Lcom/android/browser/BrowserActivity$12$3;

    invoke-direct {v2, p0, p3}, Lcom/android/browser/BrowserActivity$12$3;-><init>(Lcom/android/browser/BrowserActivity$12;Landroid/os/Message;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f07000a

    new-instance v2, Lcom/android/browser/BrowserActivity$12$2;

    invoke-direct {v2, p0, p2}, Lcom/android/browser/BrowserActivity$12$2;-><init>(Lcom/android/browser/BrowserActivity$12;Landroid/os/Message;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/browser/BrowserActivity$12$1;

    invoke-direct {v1, p0, p2}, Lcom/android/browser/BrowserActivity$12$1;-><init>(Lcom/android/browser/BrowserActivity$12;Landroid/os/Message;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 3317
    return-void
.end method

.method public onUnhandledKeyEvent(Landroid/webkit/WebView;Landroid/view/KeyEvent;)V
    .registers 5
    .parameter "view"
    .parameter "event"

    .prologue
    .line 3577
    iget-object v0, p0, Lcom/android/browser/BrowserActivity$12;->this$0:Lcom/android/browser/BrowserActivity;

    invoke-static {v0}, Lcom/android/browser/BrowserActivity;->access$700(Lcom/android/browser/BrowserActivity;)Lcom/android/browser/TabControl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/browser/TabControl;->getCurrentTopWebView()Landroid/webkit/WebView;

    move-result-object v0

    if-eq p1, v0, :cond_d

    .line 3585
    :goto_c
    return-void

    .line 3580
    :cond_d
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isDown()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 3581
    iget-object v0, p0, Lcom/android/browser/BrowserActivity$12;->this$0:Lcom/android/browser/BrowserActivity;

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    invoke-virtual {v0, v1, p2}, Lcom/android/browser/BrowserActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    goto :goto_c

    .line 3583
    :cond_1d
    iget-object v0, p0, Lcom/android/browser/BrowserActivity$12;->this$0:Lcom/android/browser/BrowserActivity;

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    invoke-virtual {v0, v1, p2}, Lcom/android/browser/BrowserActivity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    goto :goto_c
.end method

.method public shouldOverrideKeyEvent(Landroid/webkit/WebView;Landroid/view/KeyEvent;)Z
    .registers 5
    .parameter "view"
    .parameter "event"

    .prologue
    .line 3567
    iget-object v0, p0, Lcom/android/browser/BrowserActivity$12;->this$0:Lcom/android/browser/BrowserActivity;

    invoke-static {v0}, Lcom/android/browser/BrowserActivity;->access$4500(Lcom/android/browser/BrowserActivity;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 3569
    iget-object v0, p0, Lcom/android/browser/BrowserActivity$12;->this$0:Lcom/android/browser/BrowserActivity;

    invoke-virtual {v0}, Lcom/android/browser/BrowserActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    invoke-virtual {v0, v1, p2}, Landroid/view/Window;->isShortcutKey(ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 3571
    :goto_16
    return v0

    :cond_17
    const/4 v0, 0x0

    goto :goto_16
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .registers 14
    .parameter "view"
    .parameter "url"

    .prologue
    .line 3190
    const-string v8, "wtai://wp/"

    invoke-virtual {p2, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_108

    .line 3193
    const-string v8, "wtai://wp/mc;"

    invoke-virtual {p2, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_5d

    .line 3194
    new-instance v1, Landroid/content/Intent;

    const-string v8, "android.intent.action.VIEW"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "tel:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "wtai://wp/mc;"

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    invoke-virtual {p2, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    invoke-direct {v1, v8, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 3197
    .local v1, intent:Landroid/content/Intent;
    iget-object v8, p0, Lcom/android/browser/BrowserActivity$12;->this$0:Lcom/android/browser/BrowserActivity;

    invoke-virtual {v8, v1}, Lcom/android/browser/BrowserActivity;->startActivity(Landroid/content/Intent;)V

    .line 3198
    const-string v8, "browser"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[kylee] url=["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "]"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3199
    const/4 v8, 0x1

    .line 3267
    .end local v1           #intent:Landroid/content/Intent;
    :goto_5c
    return v8

    .line 3203
    :cond_5d
    const-string v8, "wtai://wp/sd;"

    invoke-virtual {p2, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_85

    .line 3206
    const-string v8, "browser"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[kylee] url=["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "]"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3207
    const/4 v8, 0x0

    goto :goto_5c

    .line 3212
    :cond_85
    const-string v8, "wtai://wp/ap;"

    invoke-virtual {p2, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_108

    .line 3213
    const-string v8, "browser"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[kylee] url=["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "]"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3215
    const-string v8, "wtai://wp/ap;"

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {p2, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 3216
    .local v4, numberName:Ljava/lang/String;
    const/4 v3, 0x0

    .line 3217
    .local v3, number:Ljava/lang/String;
    const/4 v2, 0x0

    .line 3218
    .local v2, name:Ljava/lang/String;
    const-string v8, "!resultvar"

    invoke-virtual {v4, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    .line 3219
    .local v5, resultvarIndex:I
    const/4 v8, -0x1

    if-eq v5, v8, :cond_c5

    .line 3220
    const/4 v8, 0x0

    invoke-virtual {v4, v8, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 3221
    :cond_c5
    const/16 v8, 0x3b

    invoke-virtual {v4, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    .line 3222
    .local v6, semicolonIndex:I
    const/4 v8, -0x1

    if-eq v6, v8, :cond_103

    .line 3223
    const/4 v8, 0x0

    invoke-virtual {v4, v8, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 3224
    add-int/lit8 v8, v6, 0x1

    invoke-virtual {v4, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 3229
    :goto_d9
    if-eqz v3, :cond_105

    .line 3230
    new-instance v1, Landroid/content/Intent;

    const-string v8, "android.intent.action.INSERT_OR_EDIT"

    invoke-direct {v1, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3231
    .restart local v1       #intent:Landroid/content/Intent;
    const-string v8, "vnd.android.cursor.item/person"

    invoke-virtual {v1, v8}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 3232
    if-eqz v2, :cond_f2

    .line 3233
    const-string v8, "name"

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3234
    :cond_f2
    const-string v8, "phone"

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3235
    iget-object v8, p0, Lcom/android/browser/BrowserActivity$12;->this$0:Lcom/android/browser/BrowserActivity;

    invoke-virtual {v8, v1}, Lcom/android/browser/BrowserActivity;->startActivity(Landroid/content/Intent;)V

    .line 3236
    const/4 v8, 0x1

    goto/16 :goto_5c

    .line 3227
    .end local v1           #intent:Landroid/content/Intent;
    :cond_103
    move-object v3, v4

    goto :goto_d9

    .line 3238
    :cond_105
    const/4 v8, 0x0

    goto/16 :goto_5c

    .line 3244
    .end local v2           #name:Ljava/lang/String;
    .end local v3           #number:Ljava/lang/String;
    .end local v4           #numberName:Ljava/lang/String;
    .end local v5           #resultvarIndex:I
    .end local v6           #semicolonIndex:I
    :cond_108
    :try_start_108
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
    :try_end_10b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_108 .. :try_end_10b} :catch_124

    move-result-object v7

    .line 3250
    .local v7, uri:Landroid/net/Uri;
    new-instance v1, Landroid/content/Intent;

    const-string v8, "android.intent.action.VIEW"

    invoke-direct {v1, v8, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 3251
    .restart local v1       #intent:Landroid/content/Intent;
    const-string v8, "android.intent.category.BROWSABLE"

    invoke-virtual {v1, v8}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 3253
    :try_start_118
    iget-object v8, p0, Lcom/android/browser/BrowserActivity$12;->this$0:Lcom/android/browser/BrowserActivity;

    const/4 v9, -0x1

    invoke-virtual {v8, v1, v9}, Lcom/android/browser/BrowserActivity;->startActivityIfNeeded(Landroid/content/Intent;I)Z
    :try_end_11e
    .catch Landroid/content/ActivityNotFoundException; {:try_start_118 .. :try_end_11e} :catch_128

    move-result v8

    if-eqz v8, :cond_129

    .line 3254
    const/4 v8, 0x1

    goto/16 :goto_5c

    .line 3245
    .end local v1           #intent:Landroid/content/Intent;
    .end local v7           #uri:Landroid/net/Uri;
    :catch_124
    move-exception v0

    .line 3246
    .local v0, ex:Ljava/lang/IllegalArgumentException;
    const/4 v8, 0x0

    goto/16 :goto_5c

    .line 3256
    .end local v0           #ex:Ljava/lang/IllegalArgumentException;
    .restart local v1       #intent:Landroid/content/Intent;
    .restart local v7       #uri:Landroid/net/Uri;
    :catch_128
    move-exception v8

    .line 3261
    :cond_129
    iget-object v8, p0, Lcom/android/browser/BrowserActivity$12;->this$0:Lcom/android/browser/BrowserActivity;

    invoke-static {v8}, Lcom/android/browser/BrowserActivity;->access$4500(Lcom/android/browser/BrowserActivity;)Z

    move-result v8

    if-eqz v8, :cond_13e

    .line 3262
    iget-object v8, p0, Lcom/android/browser/BrowserActivity$12;->this$0:Lcom/android/browser/BrowserActivity;

    invoke-static {v8, p2}, Lcom/android/browser/BrowserActivity;->access$2400(Lcom/android/browser/BrowserActivity;Ljava/lang/String;)V

    .line 3263
    iget-object v8, p0, Lcom/android/browser/BrowserActivity$12;->this$0:Lcom/android/browser/BrowserActivity;

    invoke-virtual {v8}, Lcom/android/browser/BrowserActivity;->closeOptionsMenu()V

    .line 3264
    const/4 v8, 0x1

    goto/16 :goto_5c

    .line 3267
    :cond_13e
    const/4 v8, 0x0

    goto/16 :goto_5c
.end method
