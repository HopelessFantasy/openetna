.class Lcom/android/server/am/ServiceRecord;
.super Landroid/os/Binder;
.source "ServiceRecord.java"


# instance fields
.field app:Lcom/android/server/am/ProcessRecord;

.field final appInfo:Landroid/content/pm/ApplicationInfo;

.field final baseDir:Ljava/lang/String;

.field final bindings:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/content/Intent$FilterComparison;",
            "Lcom/android/server/am/IntentBindRecord;",
            ">;"
        }
    .end annotation
.end field

.field final connections:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/os/IBinder;",
            "Lcom/android/server/am/ConnectionRecord;",
            ">;"
        }
    .end annotation
.end field

.field crashCount:I

.field final createTime:J

.field final dataDir:Ljava/lang/String;

.field executeNesting:I

.field executingStart:J

.field final exported:Z

.field final intent:Landroid/content/Intent$FilterComparison;

.field isForeground:Z

.field lastActivity:J

.field lastStartId:I

.field final name:Landroid/content/ComponentName;

.field nextRestartTime:J

.field final packageName:Ljava/lang/String;

.field final permission:Ljava/lang/String;

.field final processName:Ljava/lang/String;

.field final resDir:Ljava/lang/String;

.field restartCount:I

.field restartDelay:J

.field restartTime:J

.field final restarter:Ljava/lang/Runnable;

.field final serviceInfo:Landroid/content/pm/ServiceInfo;

.field final shortName:Ljava/lang/String;

.field final startArgs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation
.end field

.field startRequested:Z

.field final stats:Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;

.field stringName:Ljava/lang/String;

.field totalRestartCount:I


# direct methods
.method constructor <init>(Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;Landroid/content/ComponentName;Landroid/content/Intent$FilterComparison;Landroid/content/pm/ServiceInfo;Ljava/lang/Runnable;)V
    .registers 8
    .parameter "servStats"
    .parameter "name"
    .parameter "intent"
    .parameter "sInfo"
    .parameter "restarter"

    .prologue
    .line 129
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 57
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ServiceRecord;->bindings:Ljava/util/HashMap;

    .line 60
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ServiceRecord;->connections:Ljava/util/HashMap;

    .line 63
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ServiceRecord;->startArgs:Ljava/util/List;

    .line 130
    iput-object p1, p0, Lcom/android/server/am/ServiceRecord;->stats:Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;

    .line 131
    iput-object p2, p0, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    .line 132
    invoke-virtual {p2}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/ServiceRecord;->shortName:Ljava/lang/String;

    .line 133
    iput-object p3, p0, Lcom/android/server/am/ServiceRecord;->intent:Landroid/content/Intent$FilterComparison;

    .line 134
    iput-object p4, p0, Lcom/android/server/am/ServiceRecord;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 135
    iget-object v0, p4, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iput-object v0, p0, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    .line 136
    iget-object v0, p4, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    .line 137
    iget-object v0, p4, Landroid/content/pm/ServiceInfo;->processName:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/am/ServiceRecord;->processName:Ljava/lang/String;

    .line 138
    iget-object v0, p4, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/am/ServiceRecord;->permission:Ljava/lang/String;

    .line 139
    iget-object v0, p4, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/am/ServiceRecord;->baseDir:Ljava/lang/String;

    .line 140
    iget-object v0, p4, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/am/ServiceRecord;->resDir:Ljava/lang/String;

    .line 141
    iget-object v0, p4, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/am/ServiceRecord;->dataDir:Ljava/lang/String;

    .line 142
    iget-boolean v0, p4, Landroid/content/pm/ServiceInfo;->exported:Z

    iput-boolean v0, p0, Lcom/android/server/am/ServiceRecord;->exported:Z

    .line 143
    iput-object p5, p0, Lcom/android/server/am/ServiceRecord;->restarter:Ljava/lang/Runnable;

    .line 144
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/am/ServiceRecord;->lastActivity:J

    iput-wide v0, p0, Lcom/android/server/am/ServiceRecord;->createTime:J

    .line 145
    return-void
.end method


# virtual methods
.method dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 13
    .parameter "pw"
    .parameter "prefix"

    .prologue
    const-string v9, "  "

    .line 83
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "intent={"

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 84
    iget-object v6, p0, Lcom/android/server/am/ServiceRecord;->intent:Landroid/content/Intent$FilterComparison;

    invoke-virtual {v6}, Landroid/content/Intent$FilterComparison;->getIntent()Landroid/content/Intent;

    move-result-object v6

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/content/Intent;->toShortString(ZZ)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 85
    const/16 v6, 0x7d

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(C)V

    .line 86
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "packageName="

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 87
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "processName="

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/server/am/ServiceRecord;->processName:Ljava/lang/String;

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 88
    iget-object v6, p0, Lcom/android/server/am/ServiceRecord;->permission:Ljava/lang/String;

    if-eqz v6, :cond_49

    .line 89
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "permission="

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/server/am/ServiceRecord;->permission:Ljava/lang/String;

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 91
    :cond_49
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 92
    .local v4, now:J
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "baseDir="

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/server/am/ServiceRecord;->baseDir:Ljava/lang/String;

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 93
    iget-object v6, p0, Lcom/android/server/am/ServiceRecord;->resDir:Ljava/lang/String;

    iget-object v7, p0, Lcom/android/server/am/ServiceRecord;->baseDir:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_69

    const-string v6, " resDir="

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_69
    iget-object v6, p0, Lcom/android/server/am/ServiceRecord;->resDir:Ljava/lang/String;

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 94
    const-string v6, " dataDir="

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/server/am/ServiceRecord;->dataDir:Ljava/lang/String;

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 95
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "app="

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 96
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "isForeground="

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v6, p0, Lcom/android/server/am/ServiceRecord;->isForeground:Z

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Z)V

    .line 97
    const-string v6, " lastActivity="

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v6, p0, Lcom/android/server/am/ServiceRecord;->lastActivity:J

    sub-long/2addr v6, v4

    invoke-virtual {p1, v6, v7}, Ljava/io/PrintWriter;->println(J)V

    .line 98
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "startRequested="

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v6, p0, Lcom/android/server/am/ServiceRecord;->startRequested:Z

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Z)V

    .line 99
    const-string v6, " startId="

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v6, p0, Lcom/android/server/am/ServiceRecord;->lastStartId:I

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(I)V

    .line 100
    const-string v6, " executeNesting="

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v6, p0, Lcom/android/server/am/ServiceRecord;->executeNesting:I

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(I)V

    .line 101
    const-string v6, " executingStart="

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v6, p0, Lcom/android/server/am/ServiceRecord;->executingStart:J

    sub-long/2addr v6, v4

    invoke-virtual {p1, v6, v7}, Ljava/io/PrintWriter;->print(J)V

    .line 102
    const-string v6, " crashCount="

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v6, p0, Lcom/android/server/am/ServiceRecord;->crashCount:I

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(I)V

    .line 103
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "totalRestartCount="

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v6, p0, Lcom/android/server/am/ServiceRecord;->totalRestartCount:I

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(I)V

    .line 104
    const-string v6, " restartCount="

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v6, p0, Lcom/android/server/am/ServiceRecord;->restartCount:I

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(I)V

    .line 105
    const-string v6, " restartDelay="

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v6, p0, Lcom/android/server/am/ServiceRecord;->restartDelay:J

    invoke-virtual {p1, v6, v7}, Ljava/io/PrintWriter;->print(J)V

    .line 106
    const-string v6, " restartTime="

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v6, p0, Lcom/android/server/am/ServiceRecord;->restartTime:J

    sub-long/2addr v6, v4

    invoke-virtual {p1, v6, v7}, Ljava/io/PrintWriter;->print(J)V

    .line 107
    const-string v6, " nextRestartTime="

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v6, p0, Lcom/android/server/am/ServiceRecord;->nextRestartTime:J

    sub-long/2addr v6, v4

    invoke-virtual {p1, v6, v7}, Ljava/io/PrintWriter;->println(J)V

    .line 108
    iget-object v6, p0, Lcom/android/server/am/ServiceRecord;->bindings:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->size()I

    move-result v6

    if-lez v6, :cond_157

    .line 109
    iget-object v6, p0, Lcom/android/server/am/ServiceRecord;->bindings:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 110
    .local v3, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/server/am/IntentBindRecord;>;"
    :goto_11c
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_157

    .line 111
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/IntentBindRecord;

    .line 112
    .local v0, b:Lcom/android/server/am/IntentBindRecord;
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "* IntentBindRecord{"

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 113
    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 114
    const-string v6, "}:"

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 115
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "  "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, p1, v6}, Lcom/android/server/am/IntentBindRecord;->dumpInService(Ljava/io/PrintWriter;Ljava/lang/String;)V

    goto :goto_11c

    .line 118
    .end local v0           #b:Lcom/android/server/am/IntentBindRecord;
    .end local v3           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/server/am/IntentBindRecord;>;"
    :cond_157
    iget-object v6, p0, Lcom/android/server/am/ServiceRecord;->connections:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->size()I

    move-result v6

    if-lez v6, :cond_189

    .line 119
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "All Connections:"

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 120
    iget-object v6, p0, Lcom/android/server/am/ServiceRecord;->connections:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 121
    .local v2, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/server/am/ConnectionRecord;>;"
    :goto_171
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_189

    .line 122
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ConnectionRecord;

    .line 123
    .local v1, c:Lcom/android/server/am/ConnectionRecord;
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "  "

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    goto :goto_171

    .line 126
    .end local v1           #c:Lcom/android/server/am/ConnectionRecord;
    .end local v2           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/server/am/ConnectionRecord;>;"
    :cond_189
    return-void
.end method

.method public resetRestartCounter()V
    .registers 4

    .prologue
    const-wide/16 v1, 0x0

    .line 165
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/am/ServiceRecord;->restartCount:I

    .line 166
    iput-wide v1, p0, Lcom/android/server/am/ServiceRecord;->restartDelay:J

    .line 167
    iput-wide v1, p0, Lcom/android/server/am/ServiceRecord;->restartTime:J

    .line 168
    return-void
.end method

.method public retrieveAppBindingLocked(Landroid/content/Intent;Lcom/android/server/am/ProcessRecord;)Lcom/android/server/am/AppBindRecord;
    .registers 8
    .parameter "intent"
    .parameter "app"

    .prologue
    .line 149
    new-instance v2, Landroid/content/Intent$FilterComparison;

    invoke-direct {v2, p1}, Landroid/content/Intent$FilterComparison;-><init>(Landroid/content/Intent;)V

    .line 150
    .local v2, filter:Landroid/content/Intent$FilterComparison;
    iget-object v4, p0, Lcom/android/server/am/ServiceRecord;->bindings:Ljava/util/HashMap;

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/IntentBindRecord;

    .line 151
    .local v3, i:Lcom/android/server/am/IntentBindRecord;
    if-nez v3, :cond_19

    .line 152
    new-instance v3, Lcom/android/server/am/IntentBindRecord;

    .end local v3           #i:Lcom/android/server/am/IntentBindRecord;
    invoke-direct {v3, p0, v2}, Lcom/android/server/am/IntentBindRecord;-><init>(Lcom/android/server/am/ServiceRecord;Landroid/content/Intent$FilterComparison;)V

    .line 153
    .restart local v3       #i:Lcom/android/server/am/IntentBindRecord;
    iget-object v4, p0, Lcom/android/server/am/ServiceRecord;->bindings:Ljava/util/HashMap;

    invoke-virtual {v4, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    :cond_19
    iget-object v4, v3, Lcom/android/server/am/IntentBindRecord;->apps:Ljava/util/HashMap;

    invoke-virtual {v4, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/AppBindRecord;

    .line 156
    .local v0, a:Lcom/android/server/am/AppBindRecord;
    if-eqz v0, :cond_25

    move-object v1, v0

    .line 161
    .end local v0           #a:Lcom/android/server/am/AppBindRecord;
    .local v1, a:Ljava/lang/Object;
    :goto_24
    return-object v1

    .line 159
    .end local v1           #a:Ljava/lang/Object;
    .restart local v0       #a:Lcom/android/server/am/AppBindRecord;
    :cond_25
    new-instance v0, Lcom/android/server/am/AppBindRecord;

    .end local v0           #a:Lcom/android/server/am/AppBindRecord;
    invoke-direct {v0, p0, v3, p2}, Lcom/android/server/am/AppBindRecord;-><init>(Lcom/android/server/am/ServiceRecord;Lcom/android/server/am/IntentBindRecord;Lcom/android/server/am/ProcessRecord;)V

    .line 160
    .restart local v0       #a:Lcom/android/server/am/AppBindRecord;
    iget-object v4, v3, Lcom/android/server/am/IntentBindRecord;->apps:Ljava/util/HashMap;

    invoke-virtual {v4, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v0

    .line 161
    .restart local v1       #a:Ljava/lang/Object;
    goto :goto_24
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    .line 171
    iget-object v1, p0, Lcom/android/server/am/ServiceRecord;->stringName:Ljava/lang/String;

    if-eqz v1, :cond_7

    .line 172
    iget-object v1, p0, Lcom/android/server/am/ServiceRecord;->stringName:Ljava/lang/String;

    .line 178
    :goto_6
    return-object v1

    .line 174
    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 175
    .local v0, sb:Ljava/lang/StringBuilder;
    const-string v1, "ServiceRecord{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/am/ServiceRecord;->shortName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x7d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 178
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/am/ServiceRecord;->stringName:Ljava/lang/String;

    goto :goto_6
.end method
