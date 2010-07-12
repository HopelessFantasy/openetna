.class Landroid/content/SyncManager$SyncOperation;
.super Ljava/lang/Object;
.source "SyncManager.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/SyncManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SyncOperation"
.end annotation


# instance fields
.field final account:Ljava/lang/String;

.field authority:Ljava/lang/String;

.field delay:J

.field earliestRunTime:J

.field extras:Landroid/os/Bundle;

.field final key:Ljava/lang/String;

.field pendingOperation:Landroid/content/SyncStorageEngine$PendingOperation;

.field syncSource:I


# direct methods
.method constructor <init>(Landroid/content/SyncManager$SyncOperation;)V
    .registers 4
    .parameter "other"

    .prologue
    .line 901
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 902
    iget-object v0, p1, Landroid/content/SyncManager$SyncOperation;->account:Ljava/lang/String;

    iput-object v0, p0, Landroid/content/SyncManager$SyncOperation;->account:Ljava/lang/String;

    .line 903
    iget v0, p1, Landroid/content/SyncManager$SyncOperation;->syncSource:I

    iput v0, p0, Landroid/content/SyncManager$SyncOperation;->syncSource:I

    .line 904
    iget-object v0, p1, Landroid/content/SyncManager$SyncOperation;->authority:Ljava/lang/String;

    iput-object v0, p0, Landroid/content/SyncManager$SyncOperation;->authority:Ljava/lang/String;

    .line 905
    new-instance v0, Landroid/os/Bundle;

    iget-object v1, p1, Landroid/content/SyncManager$SyncOperation;->extras:Landroid/os/Bundle;

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    iput-object v0, p0, Landroid/content/SyncManager$SyncOperation;->extras:Landroid/os/Bundle;

    .line 906
    iget-wide v0, p1, Landroid/content/SyncManager$SyncOperation;->delay:J

    iput-wide v0, p0, Landroid/content/SyncManager$SyncOperation;->delay:J

    .line 907
    iget-wide v0, p1, Landroid/content/SyncManager$SyncOperation;->earliestRunTime:J

    iput-wide v0, p0, Landroid/content/SyncManager$SyncOperation;->earliestRunTime:J

    .line 908
    invoke-direct {p0}, Landroid/content/SyncManager$SyncOperation;->toKey()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/SyncManager$SyncOperation;->key:Ljava/lang/String;

    .line 909
    return-void
.end method

.method constructor <init>(Ljava/lang/String;ILjava/lang/String;Landroid/os/Bundle;J)V
    .registers 8
    .parameter "account"
    .parameter "source"
    .parameter "authority"
    .parameter "extras"
    .parameter "delay"

    .prologue
    .line 892
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 893
    iput-object p1, p0, Landroid/content/SyncManager$SyncOperation;->account:Ljava/lang/String;

    .line 894
    iput p2, p0, Landroid/content/SyncManager$SyncOperation;->syncSource:I

    .line 895
    iput-object p3, p0, Landroid/content/SyncManager$SyncOperation;->authority:Ljava/lang/String;

    .line 896
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0, p4}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    iput-object v0, p0, Landroid/content/SyncManager$SyncOperation;->extras:Landroid/os/Bundle;

    .line 897
    invoke-virtual {p0, p5, p6}, Landroid/content/SyncManager$SyncOperation;->setDelay(J)V

    .line 898
    invoke-direct {p0}, Landroid/content/SyncManager$SyncOperation;->toKey()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/SyncManager$SyncOperation;->key:Ljava/lang/String;

    .line 899
    return-void
.end method

.method static synthetic access$1300(Landroid/os/Bundle;Ljava/lang/StringBuilder;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 882
    invoke-static {p0, p1}, Landroid/content/SyncManager$SyncOperation;->extrasToStringBuilder(Landroid/os/Bundle;Ljava/lang/StringBuilder;)V

    return-void
.end method

.method private static extrasToStringBuilder(Landroid/os/Bundle;Ljava/lang/StringBuilder;)V
    .registers 6
    .parameter "bundle"
    .parameter "sb"

    .prologue
    .line 944
    const-string v2, "["

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 945
    invoke-virtual {p0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_31

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 946
    .local v1, key:Ljava/lang/String;
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_d

    .line 948
    .end local v1           #key:Ljava/lang/String;
    :cond_31
    const-string v2, "]"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 949
    return-void
.end method

.method private toKey()Ljava/lang/String;
    .registers 4

    .prologue
    .line 935
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 936
    .local v0, sb:Ljava/lang/StringBuilder;
    const-string v1, "authority: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/content/SyncManager$SyncOperation;->authority:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 937
    const-string v1, " account: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/content/SyncManager$SyncOperation;->account:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 938
    const-string v1, " extras: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 939
    iget-object v1, p0, Landroid/content/SyncManager$SyncOperation;->extras:Landroid/os/Bundle;

    invoke-static {v1, v0}, Landroid/content/SyncManager$SyncOperation;->extrasToStringBuilder(Landroid/os/Bundle;Ljava/lang/StringBuilder;)V

    .line 940
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public compareTo(Ljava/lang/Object;)I
    .registers 8
    .parameter "o"

    .prologue
    .line 952
    move-object v0, p1

    check-cast v0, Landroid/content/SyncManager$SyncOperation;

    move-object v1, v0

    .line 953
    .local v1, other:Landroid/content/SyncManager$SyncOperation;
    iget-wide v2, p0, Landroid/content/SyncManager$SyncOperation;->earliestRunTime:J

    iget-wide v4, v1, Landroid/content/SyncManager$SyncOperation;->earliestRunTime:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_e

    .line 954
    const/4 v2, 0x0

    .line 956
    :goto_d
    return v2

    :cond_e
    iget-wide v2, p0, Landroid/content/SyncManager$SyncOperation;->earliestRunTime:J

    iget-wide v4, v1, Landroid/content/SyncManager$SyncOperation;->earliestRunTime:J

    cmp-long v2, v2, v4

    if-gez v2, :cond_18

    const/4 v2, -0x1

    goto :goto_d

    :cond_18
    const/4 v2, 0x1

    goto :goto_d
.end method

.method public setDelay(J)V
    .registers 6
    .parameter "delay"

    .prologue
    const-wide/16 v1, 0x0

    .line 912
    iput-wide p1, p0, Landroid/content/SyncManager$SyncOperation;->delay:J

    .line 913
    cmp-long v0, p1, v1

    if-ltz v0, :cond_10

    .line 914
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    add-long/2addr v0, p1

    iput-wide v0, p0, Landroid/content/SyncManager$SyncOperation;->earliestRunTime:J

    .line 918
    :goto_f
    return-void

    .line 916
    :cond_10
    iput-wide v1, p0, Landroid/content/SyncManager$SyncOperation;->earliestRunTime:J

    goto :goto_f
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .prologue
    .line 921
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 922
    .local v0, sb:Ljava/lang/StringBuilder;
    const-string v1, "authority: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/content/SyncManager$SyncOperation;->authority:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 923
    const-string v1, " account: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/content/SyncManager$SyncOperation;->account:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 924
    const-string v1, " extras: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 925
    iget-object v1, p0, Landroid/content/SyncManager$SyncOperation;->extras:Landroid/os/Bundle;

    invoke-static {v1, v0}, Landroid/content/SyncManager$SyncOperation;->extrasToStringBuilder(Landroid/os/Bundle;Ljava/lang/StringBuilder;)V

    .line 926
    const-string v1, " syncSource: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/content/SyncManager$SyncOperation;->syncSource:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 927
    const-string v1, " when: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Landroid/content/SyncManager$SyncOperation;->earliestRunTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 928
    const-string v1, " delay: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Landroid/content/SyncManager$SyncOperation;->delay:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 929
    const-string v1, " key: {"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/content/SyncManager$SyncOperation;->key:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 930
    iget-object v1, p0, Landroid/content/SyncManager$SyncOperation;->pendingOperation:Landroid/content/SyncStorageEngine$PendingOperation;

    if-eqz v1, :cond_66

    const-string v1, " pendingOperation: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/content/SyncManager$SyncOperation;->pendingOperation:Landroid/content/SyncStorageEngine$PendingOperation;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 931
    :cond_66
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
