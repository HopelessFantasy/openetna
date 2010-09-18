.class public Landroid/webkit/gears/NativeDialog;
.super Ljava/lang/Object;
.source "NativeDialog.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "Gears-J-NativeDialog"

.field private static mAsynchronousDialog:Z

.field private static mDialogFinished:Ljava/util/concurrent/locks/Condition;

.field private static mLock:Ljava/util/concurrent/locks/Lock;

.field private static mResults:Ljava/lang/String;


# instance fields
.field private final DIALOG_CLASS:Ljava/lang/String;

.field private final DIALOG_PACKAGE:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 51
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    sput-object v0, Landroid/webkit/gears/NativeDialog;->mLock:Ljava/util/concurrent/locks/Lock;

    .line 52
    sget-object v0, Landroid/webkit/gears/NativeDialog;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    sput-object v0, Landroid/webkit/gears/NativeDialog;->mDialogFinished:Ljava/util/concurrent/locks/Condition;

    .line 53
    const/4 v0, 0x0

    sput-object v0, Landroid/webkit/gears/NativeDialog;->mResults:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const-string v0, "com.android.browser"

    iput-object v0, p0, Landroid/webkit/gears/NativeDialog;->DIALOG_PACKAGE:Ljava/lang/String;

    .line 49
    const-string v0, "com.android.browser.GearsNativeDialog"

    iput-object v0, p0, Landroid/webkit/gears/NativeDialog;->DIALOG_CLASS:Ljava/lang/String;

    return-void
.end method

.method private static native closeAsynchronousDialog(Ljava/lang/String;)V
.end method

.method public static closeDialog(Ljava/lang/String;)V
    .registers 1
    .parameter "res"

    .prologue
    .line 135
    sput-object p0, Landroid/webkit/gears/NativeDialog;->mResults:Ljava/lang/String;

    .line 136
    return-void
.end method

.method private createIntent(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .registers 6
    .parameter "type"
    .parameter "arguments"

    .prologue
    .line 62
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 63
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.android.browser"

    const-string v2, "com.android.browser.GearsNativeDialog"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 64
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 65
    const-string v1, "dialogArguments"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 66
    const-string v1, "dialogType"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 67
    return-object v0
.end method

.method public static signalFinishedDialog()V
    .registers 1

    .prologue
    .line 120
    sget-boolean v0, Landroid/webkit/gears/NativeDialog;->mAsynchronousDialog:Z

    if-nez v0, :cond_14

    .line 121
    sget-object v0, Landroid/webkit/gears/NativeDialog;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 122
    sget-object v0, Landroid/webkit/gears/NativeDialog;->mDialogFinished:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signal()V

    .line 123
    sget-object v0, Landroid/webkit/gears/NativeDialog;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 128
    :goto_13
    return-void

    .line 126
    :cond_14
    sget-object v0, Landroid/webkit/gears/NativeDialog;->mResults:Ljava/lang/String;

    invoke-static {v0}, Landroid/webkit/gears/NativeDialog;->closeAsynchronousDialog(Ljava/lang/String;)V

    goto :goto_13
.end method


# virtual methods
.method public showAsyncDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .parameter "context"
    .parameter "type"
    .parameter "arguments"

    .prologue
    .line 111
    const/4 v1, 0x1

    sput-boolean v1, Landroid/webkit/gears/NativeDialog;->mAsynchronousDialog:Z

    .line 112
    invoke-direct {p0, p2, p3}, Landroid/webkit/gears/NativeDialog;->createIntent(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 113
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 114
    return-void
.end method

.method public showDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 12
    .parameter "context"
    .parameter "file"
    .parameter "arguments"

    .prologue
    const-string v5, "exception e: "

    const-string v5, "Gears-J-NativeDialog"

    .line 82
    const/4 v5, 0x0

    :try_start_5
    sput-boolean v5, Landroid/webkit/gears/NativeDialog;->mAsynchronousDialog:Z

    .line 83
    sget-object v5, Landroid/webkit/gears/NativeDialog;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v5}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 84
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 85
    .local v3, path:Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    .line 86
    .local v1, fileName:Ljava/lang/String;
    const/4 v5, 0x0

    const-string v6, ".html"

    invoke-virtual {v1, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v1, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 87
    .local v4, type:Ljava/lang/String;
    invoke-direct {p0, v4, p3}, Landroid/webkit/gears/NativeDialog;->createIntent(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    .line 89
    .local v2, intent:Landroid/content/Intent;
    const/4 v5, 0x0

    sput-object v5, Landroid/webkit/gears/NativeDialog;->mResults:Ljava/lang/String;

    .line 90
    invoke-virtual {p1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 91
    sget-object v5, Landroid/webkit/gears/NativeDialog;->mDialogFinished:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v5}, Ljava/util/concurrent/locks/Condition;->await()V
    :try_end_2f
    .catchall {:try_start_5 .. :try_end_2f} :catchall_71
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_2f} :catch_37
    .catch Landroid/content/ActivityNotFoundException; {:try_start_5 .. :try_end_2f} :catch_54

    .line 97
    sget-object v5, Landroid/webkit/gears/NativeDialog;->mLock:Ljava/util/concurrent/locks/Lock;

    .end local v1           #fileName:Ljava/lang/String;
    .end local v2           #intent:Landroid/content/Intent;
    .end local v3           #path:Ljava/io/File;
    .end local v4           #type:Ljava/lang/String;
    :goto_31
    invoke-interface {v5}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 100
    sget-object v5, Landroid/webkit/gears/NativeDialog;->mResults:Ljava/lang/String;

    return-object v5

    .line 92
    :catch_37
    move-exception v5

    move-object v0, v5

    .line 93
    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_39
    const-string v5, "Gears-J-NativeDialog"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "exception e: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_51
    .catchall {:try_start_39 .. :try_end_51} :catchall_71

    .line 97
    sget-object v5, Landroid/webkit/gears/NativeDialog;->mLock:Ljava/util/concurrent/locks/Lock;

    goto :goto_31

    .line 94
    .end local v0           #e:Ljava/lang/InterruptedException;
    :catch_54
    move-exception v5

    move-object v0, v5

    .line 95
    .local v0, e:Landroid/content/ActivityNotFoundException;
    :try_start_56
    const-string v5, "Gears-J-NativeDialog"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "exception e: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6e
    .catchall {:try_start_56 .. :try_end_6e} :catchall_71

    .line 97
    sget-object v5, Landroid/webkit/gears/NativeDialog;->mLock:Ljava/util/concurrent/locks/Lock;

    goto :goto_31

    .end local v0           #e:Landroid/content/ActivityNotFoundException;
    :catchall_71
    move-exception v5

    sget-object v6, Landroid/webkit/gears/NativeDialog;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v6}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v5
.end method
