.class Lcom/android/server/am/ActivityManagerService$MemBinder;
.super Landroid/os/Binder;
.source "ActivityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MemBinder"
.end annotation


# instance fields
.field mActivityManagerService:Lcom/android/server/am/ActivityManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityManagerService;)V
    .registers 2
    .parameter "activityManagerService"

    .prologue
    .line 1367
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 1368
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$MemBinder;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    .line 1369
    return-void
.end method


# virtual methods
.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 12
    .parameter "fd"
    .parameter "pw"
    .parameter "args"

    .prologue
    .line 1373
    iget-object v4, p0, Lcom/android/server/am/ActivityManagerService$MemBinder;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    .line 1375
    .local v4, service:Lcom/android/server/am/ActivityManagerService;
    iget-object v5, p0, Lcom/android/server/am/ActivityManagerService$MemBinder;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v5

    .line 1376
    if-eqz p3, :cond_71

    :try_start_7
    array-length v6, p3

    if-lez v6, :cond_71

    const/4 v6, 0x0

    aget-object v6, p3, v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x2d

    if-eq v6, v7, :cond_71

    .line 1378
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V
    :try_end_1b
    .catchall {:try_start_7 .. :try_end_1b} :catchall_4d

    .line 1379
    .local v3, procs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    const/4 v1, -0x1

    .line 1381
    .local v1, pid:I
    const/4 v6, 0x0

    :try_start_1d
    aget-object v6, p3, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_22
    .catchall {:try_start_1d .. :try_end_22} :catchall_4d
    .catch Ljava/lang/NumberFormatException; {:try_start_1d .. :try_end_22} :catch_7a

    move-result v1

    .line 1385
    :goto_23
    const/4 v0, 0x0

    .local v0, i:I
    :goto_24
    :try_start_24
    iget-object v6, v4, Lcom/android/server/am/ActivityManagerService;->mLRUProcesses:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v0, v6, :cond_50

    .line 1386
    iget-object v6, v4, Lcom/android/server/am/ActivityManagerService;->mLRUProcesses:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ProcessRecord;

    .line 1387
    .local v2, proc:Lcom/android/server/am/ProcessRecord;
    iget v6, v2, Lcom/android/server/am/ProcessRecord;->pid:I

    if-ne v6, v1, :cond_3e

    .line 1388
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1385
    :cond_3b
    :goto_3b
    add-int/lit8 v0, v0, 0x1

    goto :goto_24

    .line 1389
    :cond_3e
    iget-object v6, v2, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    const/4 v7, 0x0

    aget-object v7, p3, v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3b

    .line 1390
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3b

    .line 1400
    .end local v0           #i:I
    .end local v1           #pid:I
    .end local v2           #proc:Lcom/android/server/am/ProcessRecord;
    .end local v3           #procs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    :catchall_4d
    move-exception v6

    monitor-exit v5
    :try_end_4f
    .catchall {:try_start_24 .. :try_end_4f} :catchall_4d

    throw v6

    .line 1393
    .restart local v0       #i:I
    .restart local v1       #pid:I
    .restart local v3       #procs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    :cond_50
    :try_start_50
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-gtz v6, :cond_73

    .line 1394
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "No process found for: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v7, 0x0

    aget-object v7, p3, v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1395
    monitor-exit v5

    .line 1402
    .end local v0           #i:I
    .end local v1           #pid:I
    :goto_70
    return-void

    .line 1398
    .end local v3           #procs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    :cond_71
    iget-object v3, v4, Lcom/android/server/am/ActivityManagerService;->mLRUProcesses:Ljava/util/ArrayList;

    .line 1400
    .restart local v3       #procs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    :cond_73
    monitor-exit v5
    :try_end_74
    .catchall {:try_start_50 .. :try_end_74} :catchall_4d

    .line 1401
    const-string v5, "  "

    invoke-static {p1, p2, v3, v5, p3}, Lcom/android/server/am/ActivityManagerService;->access$900(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;Ljava/util/List;Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_70

    .line 1382
    .restart local v1       #pid:I
    :catch_7a
    move-exception v6

    goto :goto_23
.end method
