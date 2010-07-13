.class Lcom/android/server/am/ContentProviderRecord;
.super Landroid/app/IActivityManager$ContentProviderHolder;
.source "ContentProviderRecord.java"


# instance fields
.field app:Lcom/android/server/am/ProcessRecord;

.field final appInfo:Landroid/content/pm/ApplicationInfo;

.field final clients:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lcom/android/server/am/ProcessRecord;",
            ">;"
        }
    .end annotation
.end field

.field externals:I

.field launchingApp:Lcom/android/server/am/ProcessRecord;

.field stringName:Ljava/lang/String;

.field final uid:I


# direct methods
.method public constructor <init>(Landroid/content/pm/ProviderInfo;Landroid/content/pm/ApplicationInfo;)V
    .registers 5
    .parameter "_info"
    .parameter "ai"

    .prologue
    .line 38
    invoke-direct {p0, p1}, Landroid/app/IActivityManager$ContentProviderHolder;-><init>(Landroid/content/pm/ProviderInfo;)V

    .line 29
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ContentProviderRecord;->clients:Ljava/util/HashSet;

    .line 39
    iget v0, p2, Landroid/content/pm/ApplicationInfo;->uid:I

    iput v0, p0, Lcom/android/server/am/ContentProviderRecord;->uid:I

    .line 40
    iput-object p2, p0, Lcom/android/server/am/ContentProviderRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    .line 41
    iget v0, p0, Lcom/android/server/am/ContentProviderRecord;->uid:I

    if-eqz v0, :cond_1a

    iget v0, p0, Lcom/android/server/am/ContentProviderRecord;->uid:I

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_1e

    :cond_1a
    const/4 v0, 0x1

    :goto_1b
    iput-boolean v0, p0, Lcom/android/server/am/ContentProviderRecord;->noReleaseNeeded:Z

    .line 42
    return-void

    .line 41
    :cond_1e
    const/4 v0, 0x0

    goto :goto_1b
.end method

.method public constructor <init>(Lcom/android/server/am/ContentProviderRecord;)V
    .registers 3
    .parameter "cpr"

    .prologue
    .line 45
    iget-object v0, p1, Lcom/android/server/am/ContentProviderRecord;->info:Landroid/content/pm/ProviderInfo;

    invoke-direct {p0, v0}, Landroid/app/IActivityManager$ContentProviderHolder;-><init>(Landroid/content/pm/ProviderInfo;)V

    .line 29
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ContentProviderRecord;->clients:Ljava/util/HashSet;

    .line 46
    iget v0, p1, Lcom/android/server/am/ContentProviderRecord;->uid:I

    iput v0, p0, Lcom/android/server/am/ContentProviderRecord;->uid:I

    .line 47
    iget-object v0, p1, Lcom/android/server/am/ContentProviderRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iput-object v0, p0, Lcom/android/server/am/ContentProviderRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    .line 48
    iget-boolean v0, p1, Lcom/android/server/am/ContentProviderRecord;->noReleaseNeeded:Z

    iput-boolean v0, p0, Lcom/android/server/am/ContentProviderRecord;->noReleaseNeeded:Z

    .line 49
    return-void
.end method


# virtual methods
.method public canRunHere(Lcom/android/server/am/ProcessRecord;)Z
    .registers 4
    .parameter "app"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/server/am/ContentProviderRecord;->info:Landroid/content/pm/ProviderInfo;

    iget-boolean v0, v0, Landroid/content/pm/ProviderInfo;->multiprocess:Z

    if-nez v0, :cond_12

    iget-object v0, p0, Lcom/android/server/am/ContentProviderRecord;->info:Landroid/content/pm/ProviderInfo;

    iget-object v0, v0, Landroid/content/pm/ProviderInfo;->processName:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    :cond_12
    iget v0, p0, Lcom/android/server/am/ContentProviderRecord;->uid:I

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_20

    iget v0, p0, Lcom/android/server/am/ContentProviderRecord;->uid:I

    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne v0, v1, :cond_22

    :cond_20
    const/4 v0, 0x1

    :goto_21
    return v0

    :cond_22
    const/4 v0, 0x0

    goto :goto_21
.end method

.method dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 4
    .parameter "pw"
    .parameter "prefix"

    .prologue
    .line 57
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "package="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 58
    iget-object v0, p0, Lcom/android/server/am/ContentProviderRecord;->info:Landroid/content/pm/ProviderInfo;

    iget-object v0, v0, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 59
    const-string v0, "process="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/ContentProviderRecord;->info:Landroid/content/pm/ProviderInfo;

    iget-object v0, v0, Landroid/content/pm/ProviderInfo;->processName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 60
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "app="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/ContentProviderRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 61
    iget-object v0, p0, Lcom/android/server/am/ContentProviderRecord;->launchingApp:Lcom/android/server/am/ProcessRecord;

    if-eqz v0, :cond_3b

    .line 62
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "launchingApp="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/ContentProviderRecord;->launchingApp:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 64
    :cond_3b
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "uid="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/am/ContentProviderRecord;->uid:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 65
    const-string v0, " provider="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/ContentProviderRecord;->provider:Landroid/content/IContentProvider;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 66
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "name="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/ContentProviderRecord;->info:Landroid/content/pm/ProviderInfo;

    iget-object v0, v0, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 67
    iget-object v0, p0, Lcom/android/server/am/ContentProviderRecord;->info:Landroid/content/pm/ProviderInfo;

    iget-boolean v0, v0, Landroid/content/pm/ProviderInfo;->isSyncable:Z

    if-nez v0, :cond_73

    iget-object v0, p0, Lcom/android/server/am/ContentProviderRecord;->info:Landroid/content/pm/ProviderInfo;

    iget-boolean v0, v0, Landroid/content/pm/ProviderInfo;->multiprocess:Z

    if-nez v0, :cond_73

    iget-object v0, p0, Lcom/android/server/am/ContentProviderRecord;->info:Landroid/content/pm/ProviderInfo;

    iget v0, v0, Landroid/content/pm/ProviderInfo;->initOrder:I

    if-eqz v0, :cond_9a

    .line 68
    :cond_73
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "isSyncable="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/ContentProviderRecord;->info:Landroid/content/pm/ProviderInfo;

    iget-boolean v0, v0, Landroid/content/pm/ProviderInfo;->isSyncable:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 69
    const-string v0, "multiprocess="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/ContentProviderRecord;->info:Landroid/content/pm/ProviderInfo;

    iget-boolean v0, v0, Landroid/content/pm/ProviderInfo;->multiprocess:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 70
    const-string v0, " initOrder="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/ContentProviderRecord;->info:Landroid/content/pm/ProviderInfo;

    iget v0, v0, Landroid/content/pm/ProviderInfo;->initOrder:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 72
    :cond_9a
    iget-object v0, p0, Lcom/android/server/am/ContentProviderRecord;->clients:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    if-lez v0, :cond_af

    .line 73
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "clients="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/ContentProviderRecord;->clients:Ljava/util/HashSet;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 75
    :cond_af
    iget v0, p0, Lcom/android/server/am/ContentProviderRecord;->externals:I

    if-eqz v0, :cond_c0

    .line 76
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "externals="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/am/ContentProviderRecord;->externals:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 78
    :cond_c0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 81
    iget-object v1, p0, Lcom/android/server/am/ContentProviderRecord;->stringName:Ljava/lang/String;

    if-eqz v1, :cond_7

    .line 82
    iget-object v1, p0, Lcom/android/server/am/ContentProviderRecord;->stringName:Ljava/lang/String;

    .line 90
    :goto_6
    return-object v1

    .line 84
    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 85
    .local v0, sb:Ljava/lang/StringBuilder;
    const-string v1, "ContentProviderRecord{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 88
    iget-object v1, p0, Lcom/android/server/am/ContentProviderRecord;->info:Landroid/content/pm/ProviderInfo;

    iget-object v1, v1, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 90
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/am/ContentProviderRecord;->stringName:Ljava/lang/String;

    goto :goto_6
.end method
