.class public Landroid/test/IsolatedContext;
.super Landroid/content/ContextWrapper;
.source "IsolatedContext.java"


# instance fields
.field private mBroadcastIntents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation
.end field

.field private mResolver:Landroid/content/ContentResolver;


# direct methods
.method public constructor <init>(Landroid/content/ContentResolver;Landroid/content/Context;)V
    .registers 4
    .parameter "resolver"
    .parameter "targetContext"

    .prologue
    .line 30
    invoke-direct {p0, p2}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    .line 26
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroid/test/IsolatedContext;->mBroadcastIntents:Ljava/util/List;

    .line 31
    iput-object p1, p0, Landroid/test/IsolatedContext;->mResolver:Landroid/content/ContentResolver;

    .line 32
    return-void
.end method


# virtual methods
.method public bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    .registers 5
    .parameter "service"
    .parameter "conn"
    .parameter "flags"

    .prologue
    .line 50
    const/4 v0, 0x0

    return v0
.end method

.method public checkUriPermission(Landroid/net/Uri;III)I
    .registers 6
    .parameter "uri"
    .parameter "pid"
    .parameter "uid"
    .parameter "modeFlags"

    .prologue
    .line 77
    const/4 v0, 0x0

    return v0
.end method

.method public checkUriPermission(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;III)I
    .registers 8
    .parameter "uri"
    .parameter "readPermission"
    .parameter "writePermission"
    .parameter "pid"
    .parameter "uid"
    .parameter "modeFlags"

    .prologue
    .line 72
    const/4 v0, 0x0

    return v0
.end method

.method public getAndClearBroadcastIntents()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation

    .prologue
    .line 36
    iget-object v0, p0, Landroid/test/IsolatedContext;->mBroadcastIntents:Ljava/util/List;

    .line 37
    .local v0, intents:Ljava/util/List;,"Ljava/util/List<Landroid/content/Intent;>;"
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Landroid/test/IsolatedContext;->mBroadcastIntents:Ljava/util/List;

    .line 38
    return-object v0
.end method

.method public getContentResolver()Landroid/content/ContentResolver;
    .registers 2

    .prologue
    .line 45
    iget-object v0, p0, Landroid/test/IsolatedContext;->mResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method public getFilesDir()Ljava/io/File;
    .registers 3

    .prologue
    .line 88
    new-instance v0, Ljava/io/File;

    const-string v1, "/dev/null"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public getSystemService(Ljava/lang/String;)Ljava/lang/Object;
    .registers 3
    .parameter "name"

    .prologue
    .line 83
    const/4 v0, 0x0

    return-object v0
.end method

.method public registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    .registers 4
    .parameter "receiver"
    .parameter "filter"

    .prologue
    .line 55
    const/4 v0, 0x0

    return-object v0
.end method

.method public sendBroadcast(Landroid/content/Intent;)V
    .registers 3
    .parameter "intent"

    .prologue
    .line 60
    iget-object v0, p0, Landroid/test/IsolatedContext;->mBroadcastIntents:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 61
    return-void
.end method

.method public sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V
    .registers 4
    .parameter "intent"
    .parameter "receiverPermission"

    .prologue
    .line 65
    iget-object v0, p0, Landroid/test/IsolatedContext;->mBroadcastIntents:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 66
    return-void
.end method
