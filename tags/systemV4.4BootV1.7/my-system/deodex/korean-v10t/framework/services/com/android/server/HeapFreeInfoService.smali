.class public Lcom/android/server/HeapFreeInfoService;
.super Landroid/app/Service;
.source "HeapFreeInfoService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/HeapFreeInfoService$LoadView;
    }
.end annotation


# instance fields
.field private mView:Landroid/view/View;

.field private mem_inBuffer:Ljava/io/BufferedReader;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 44
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 49
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/HeapFreeInfoService;)Ljava/io/BufferedReader;
    .registers 2
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/server/HeapFreeInfoService;->mem_inBuffer:Ljava/io/BufferedReader;

    return-object v0
.end method


# virtual methods
.method public commandLineReport(Ljava/lang/String;Ljava/lang/String;)V
    .registers 12
    .parameter "reportName"
    .parameter "command"

    .prologue
    .line 266
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v5

    .line 269
    .local v5, rt:Ljava/lang/Runtime;
    :try_start_4
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v4

    .line 272
    .local v4, p:Ljava/lang/Process;
    invoke-virtual {v4}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    .line 273
    .local v3, inStream:Ljava/io/InputStream;
    new-instance v2, Ljava/io/InputStreamReader;

    invoke-direct {v2, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 274
    .local v2, inReader:Ljava/io/InputStreamReader;
    new-instance v1, Ljava/io/BufferedReader;

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 275
    .local v1, inBuffer:Ljava/io/BufferedReader;
    iput-object v1, p0, Lcom/android/server/HeapFreeInfoService;->mem_inBuffer:Ljava/io/BufferedReader;
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_1c} :catch_1d

    .line 281
    .end local v1           #inBuffer:Ljava/io/BufferedReader;
    .end local v2           #inReader:Ljava/io/InputStreamReader;
    .end local v3           #inStream:Ljava/io/InputStream;
    .end local v4           #p:Ljava/lang/Process;
    :goto_1c
    return-void

    .line 277
    :catch_1d
    move-exception v6

    move-object v0, v6

    .line 278
    .local v0, e:Ljava/lang/Exception;
    sget-object v6, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "// Exception from "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 279
    sget-object v6, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_1c
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 3
    .parameter "intent"

    .prologue
    .line 262
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .registers 8

    .prologue
    const/4 v1, -0x2

    .line 234
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 235
    new-instance v2, Lcom/android/server/HeapFreeInfoService$LoadView;

    invoke-direct {v2, p0, p0}, Lcom/android/server/HeapFreeInfoService$LoadView;-><init>(Lcom/android/server/HeapFreeInfoService;Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/server/HeapFreeInfoService;->mView:Landroid/view/View;

    .line 236
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/16 v3, 0x7d6

    const/16 v4, 0x18

    const/4 v5, -0x3

    move v2, v1

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .line 244
    .local v0, params:Landroid/view/WindowManager$LayoutParams;
    const-string v1, "HeapFreeInfoService"

    const-string v2, " ### onCreate ###"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    const/16 v1, 0x35

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 248
    const-string v1, "Heap Free Info"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 249
    const-string v1, "window"

    invoke-virtual {p0, v1}, Lcom/android/server/HeapFreeInfoService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/WindowManagerImpl;

    .line 250
    .local v6, wm:Landroid/view/WindowManagerImpl;
    iget-object v1, p0, Lcom/android/server/HeapFreeInfoService;->mView:Landroid/view/View;

    invoke-virtual {v6, v1, v0}, Landroid/view/WindowManagerImpl;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 251
    return-void
.end method

.method public onDestroy()V
    .registers 3

    .prologue
    .line 255
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 256
    const-string v0, "window"

    invoke-virtual {p0, v0}, Lcom/android/server/HeapFreeInfoService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManagerImpl;

    iget-object v1, p0, Lcom/android/server/HeapFreeInfoService;->mView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/WindowManagerImpl;->removeView(Landroid/view/View;)V

    .line 257
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/HeapFreeInfoService;->mView:Landroid/view/View;

    .line 258
    return-void
.end method
