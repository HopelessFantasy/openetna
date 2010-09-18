.class public final Landroid/content/SyncResult;
.super Ljava/lang/Object;
.source "SyncResult.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final ALREADY_IN_PROGRESS:Landroid/content/SyncResult;

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/content/SyncResult;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public databaseError:Z

.field public fullSyncRequested:Z

.field public moreRecordsToGet:Z

.field public partialSyncUnavailable:Z

.field public final stats:Landroid/content/SyncStats;

.field public final syncAlreadyInProgress:Z

.field public tooManyDeletions:Z

.field public tooManyRetries:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 23
    new-instance v0, Landroid/content/SyncResult;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/content/SyncResult;-><init>(Z)V

    sput-object v0, Landroid/content/SyncResult;->ALREADY_IN_PROGRESS:Landroid/content/SyncResult;

    .line 88
    new-instance v0, Landroid/content/SyncResult$1;

    invoke-direct {v0}, Landroid/content/SyncResult$1;-><init>()V

    sput-object v0, Landroid/content/SyncResult;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 27
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/content/SyncResult;-><init>(Z)V

    .line 28
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 5
    .parameter "parcel"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_4c

    move v0, v2

    :goto_c
    iput-boolean v0, p0, Landroid/content/SyncResult;->syncAlreadyInProgress:Z

    .line 42
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_4e

    move v0, v2

    :goto_15
    iput-boolean v0, p0, Landroid/content/SyncResult;->tooManyDeletions:Z

    .line 43
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_50

    move v0, v2

    :goto_1e
    iput-boolean v0, p0, Landroid/content/SyncResult;->tooManyRetries:Z

    .line 44
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_52

    move v0, v2

    :goto_27
    iput-boolean v0, p0, Landroid/content/SyncResult;->databaseError:Z

    .line 45
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_54

    move v0, v2

    :goto_30
    iput-boolean v0, p0, Landroid/content/SyncResult;->fullSyncRequested:Z

    .line 46
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_56

    move v0, v2

    :goto_39
    iput-boolean v0, p0, Landroid/content/SyncResult;->partialSyncUnavailable:Z

    .line 47
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_58

    move v0, v2

    :goto_42
    iput-boolean v0, p0, Landroid/content/SyncResult;->moreRecordsToGet:Z

    .line 48
    new-instance v0, Landroid/content/SyncStats;

    invoke-direct {v0, p1}, Landroid/content/SyncStats;-><init>(Landroid/os/Parcel;)V

    iput-object v0, p0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    .line 49
    return-void

    :cond_4c
    move v0, v1

    .line 41
    goto :goto_c

    :cond_4e
    move v0, v1

    .line 42
    goto :goto_15

    :cond_50
    move v0, v1

    .line 43
    goto :goto_1e

    :cond_52
    move v0, v1

    .line 44
    goto :goto_27

    :cond_54
    move v0, v1

    .line 45
    goto :goto_30

    :cond_56
    move v0, v1

    .line 46
    goto :goto_39

    :cond_58
    move v0, v1

    .line 47
    goto :goto_42
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/content/SyncResult$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 11
    invoke-direct {p0, p1}, Landroid/content/SyncResult;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "syncAlreadyInProgress"

    .prologue
    const/4 v0, 0x0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-boolean p1, p0, Landroid/content/SyncResult;->syncAlreadyInProgress:Z

    .line 32
    iput-boolean v0, p0, Landroid/content/SyncResult;->tooManyDeletions:Z

    .line 33
    iput-boolean v0, p0, Landroid/content/SyncResult;->tooManyRetries:Z

    .line 34
    iput-boolean v0, p0, Landroid/content/SyncResult;->fullSyncRequested:Z

    .line 35
    iput-boolean v0, p0, Landroid/content/SyncResult;->partialSyncUnavailable:Z

    .line 36
    iput-boolean v0, p0, Landroid/content/SyncResult;->moreRecordsToGet:Z

    .line 37
    new-instance v0, Landroid/content/SyncStats;

    invoke-direct {v0}, Landroid/content/SyncStats;-><init>()V

    iput-object v0, p0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    .line 38
    return-void
.end method


# virtual methods
.method public clear()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 75
    iget-boolean v0, p0, Landroid/content/SyncResult;->syncAlreadyInProgress:Z

    if-eqz v0, :cond_d

    .line 76
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "you are not allowed to clear the ALREADY_IN_PROGRESS SyncStats"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 79
    :cond_d
    iput-boolean v1, p0, Landroid/content/SyncResult;->tooManyDeletions:Z

    .line 80
    iput-boolean v1, p0, Landroid/content/SyncResult;->tooManyRetries:Z

    .line 81
    iput-boolean v1, p0, Landroid/content/SyncResult;->databaseError:Z

    .line 82
    iput-boolean v1, p0, Landroid/content/SyncResult;->fullSyncRequested:Z

    .line 83
    iput-boolean v1, p0, Landroid/content/SyncResult;->partialSyncUnavailable:Z

    .line 84
    iput-boolean v1, p0, Landroid/content/SyncResult;->moreRecordsToGet:Z

    .line 85
    iget-object v0, p0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    invoke-virtual {v0}, Landroid/content/SyncStats;->clear()V

    .line 86
    return-void
.end method

.method public describeContents()I
    .registers 2

    .prologue
    .line 99
    const/4 v0, 0x0

    return v0
.end method

.method public hasError()Z
    .registers 2

    .prologue
    .line 65
    invoke-virtual {p0}, Landroid/content/SyncResult;->hasSoftError()Z

    move-result v0

    if-nez v0, :cond_c

    invoke-virtual {p0}, Landroid/content/SyncResult;->hasHardError()Z

    move-result v0

    if-eqz v0, :cond_e

    :cond_c
    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public hasHardError()Z
    .registers 5

    .prologue
    const-wide/16 v2, 0x0

    .line 52
    iget-object v0, p0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v0, v0, Landroid/content/SyncStats;->numParseExceptions:J

    cmp-long v0, v0, v2

    if-gtz v0, :cond_26

    iget-object v0, p0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v0, v0, Landroid/content/SyncStats;->numConflictDetectedExceptions:J

    cmp-long v0, v0, v2

    if-gtz v0, :cond_26

    iget-object v0, p0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v0, v0, Landroid/content/SyncStats;->numAuthExceptions:J

    cmp-long v0, v0, v2

    if-gtz v0, :cond_26

    iget-boolean v0, p0, Landroid/content/SyncResult;->tooManyDeletions:Z

    if-nez v0, :cond_26

    iget-boolean v0, p0, Landroid/content/SyncResult;->tooManyRetries:Z

    if-nez v0, :cond_26

    iget-boolean v0, p0, Landroid/content/SyncResult;->databaseError:Z

    if-eqz v0, :cond_28

    :cond_26
    const/4 v0, 0x1

    :goto_27
    return v0

    :cond_28
    const/4 v0, 0x0

    goto :goto_27
.end method

.method public hasSoftError()Z
    .registers 5

    .prologue
    .line 61
    iget-boolean v0, p0, Landroid/content/SyncResult;->syncAlreadyInProgress:Z

    if-nez v0, :cond_e

    iget-object v0, p0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v0, v0, Landroid/content/SyncStats;->numIoExceptions:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_10

    :cond_e
    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public madeSomeProgress()Z
    .registers 5

    .prologue
    const-wide/16 v2, 0x0

    .line 69
    iget-object v0, p0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v0, v0, Landroid/content/SyncStats;->numDeletes:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_e

    iget-boolean v0, p0, Landroid/content/SyncResult;->tooManyDeletions:Z

    if-eqz v0, :cond_1e

    :cond_e
    iget-object v0, p0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v0, v0, Landroid/content/SyncStats;->numInserts:J

    cmp-long v0, v0, v2

    if-gtz v0, :cond_1e

    iget-object v0, p0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v0, v0, Landroid/content/SyncStats;->numUpdates:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_20

    :cond_1e
    const/4 v0, 0x1

    :goto_1f
    return v0

    :cond_20
    const/4 v0, 0x0

    goto :goto_1f
.end method

.method public toDebugString()Ljava/lang/String;
    .registers 7

    .prologue
    const-wide/16 v4, 0x0

    .line 138
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 140
    .local v0, sb:Ljava/lang/StringBuffer;
    iget-boolean v1, p0, Landroid/content/SyncResult;->fullSyncRequested:Z

    if-eqz v1, :cond_10

    .line 141
    const-string v1, "f1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 143
    :cond_10
    iget-boolean v1, p0, Landroid/content/SyncResult;->partialSyncUnavailable:Z

    if-eqz v1, :cond_19

    .line 144
    const-string v1, "r1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 146
    :cond_19
    invoke-virtual {p0}, Landroid/content/SyncResult;->hasHardError()Z

    move-result v1

    if-eqz v1, :cond_24

    .line 147
    const-string v1, "X1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 149
    :cond_24
    iget-object v1, p0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v1, v1, Landroid/content/SyncStats;->numParseExceptions:J

    cmp-long v1, v1, v4

    if-lez v1, :cond_39

    .line 150
    const-string v1, "e"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v2, v2, Landroid/content/SyncStats;->numParseExceptions:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 152
    :cond_39
    iget-object v1, p0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v1, v1, Landroid/content/SyncStats;->numConflictDetectedExceptions:J

    cmp-long v1, v1, v4

    if-lez v1, :cond_4e

    .line 153
    const-string v1, "c"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v2, v2, Landroid/content/SyncStats;->numConflictDetectedExceptions:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 155
    :cond_4e
    iget-object v1, p0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v1, v1, Landroid/content/SyncStats;->numAuthExceptions:J

    cmp-long v1, v1, v4

    if-lez v1, :cond_63

    .line 156
    const-string v1, "a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v2, v2, Landroid/content/SyncStats;->numAuthExceptions:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 158
    :cond_63
    iget-boolean v1, p0, Landroid/content/SyncResult;->tooManyDeletions:Z

    if-eqz v1, :cond_6c

    .line 159
    const-string v1, "D1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 161
    :cond_6c
    iget-boolean v1, p0, Landroid/content/SyncResult;->tooManyRetries:Z

    if-eqz v1, :cond_75

    .line 162
    const-string v1, "R1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 164
    :cond_75
    iget-boolean v1, p0, Landroid/content/SyncResult;->databaseError:Z

    if-eqz v1, :cond_7e

    .line 165
    const-string v1, "b1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 167
    :cond_7e
    invoke-virtual {p0}, Landroid/content/SyncResult;->hasSoftError()Z

    move-result v1

    if-eqz v1, :cond_89

    .line 168
    const-string v1, "x1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 170
    :cond_89
    iget-boolean v1, p0, Landroid/content/SyncResult;->syncAlreadyInProgress:Z

    if-eqz v1, :cond_92

    .line 171
    const-string v1, "l1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 173
    :cond_92
    iget-object v1, p0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v1, v1, Landroid/content/SyncStats;->numIoExceptions:J

    cmp-long v1, v1, v4

    if-lez v1, :cond_a7

    .line 174
    const-string v1, "I"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v2, v2, Landroid/content/SyncStats;->numIoExceptions:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 176
    :cond_a7
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    .line 115
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 116
    .local v0, sb:Ljava/lang/StringBuilder;
    const-string v1, " syncAlreadyInProgress: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/content/SyncResult;->syncAlreadyInProgress:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 117
    const-string v1, " tooManyDeletions: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/content/SyncResult;->tooManyDeletions:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 118
    const-string v1, " tooManyRetries: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/content/SyncResult;->tooManyRetries:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 119
    const-string v1, " databaseError: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/content/SyncResult;->databaseError:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 120
    const-string v1, " fullSyncRequested: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/content/SyncResult;->fullSyncRequested:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 121
    const-string v1, " partialSyncUnavailable: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/content/SyncResult;->partialSyncUnavailable:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 122
    const-string v1, " moreRecordsToGet: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/content/SyncResult;->moreRecordsToGet:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 123
    const-string v1, " stats: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 124
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 6
    .parameter "parcel"
    .parameter "flags"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 103
    iget-boolean v0, p0, Landroid/content/SyncResult;->syncAlreadyInProgress:Z

    if-eqz v0, :cond_40

    move v0, v2

    :goto_7
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 104
    iget-boolean v0, p0, Landroid/content/SyncResult;->tooManyDeletions:Z

    if-eqz v0, :cond_42

    move v0, v2

    :goto_f
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 105
    iget-boolean v0, p0, Landroid/content/SyncResult;->tooManyRetries:Z

    if-eqz v0, :cond_44

    move v0, v2

    :goto_17
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 106
    iget-boolean v0, p0, Landroid/content/SyncResult;->databaseError:Z

    if-eqz v0, :cond_46

    move v0, v2

    :goto_1f
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 107
    iget-boolean v0, p0, Landroid/content/SyncResult;->fullSyncRequested:Z

    if-eqz v0, :cond_48

    move v0, v2

    :goto_27
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 108
    iget-boolean v0, p0, Landroid/content/SyncResult;->partialSyncUnavailable:Z

    if-eqz v0, :cond_4a

    move v0, v2

    :goto_2f
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 109
    iget-boolean v0, p0, Landroid/content/SyncResult;->moreRecordsToGet:Z

    if-eqz v0, :cond_4c

    move v0, v2

    :goto_37
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 110
    iget-object v0, p0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    invoke-virtual {v0, p1, p2}, Landroid/content/SyncStats;->writeToParcel(Landroid/os/Parcel;I)V

    .line 111
    return-void

    :cond_40
    move v0, v1

    .line 103
    goto :goto_7

    :cond_42
    move v0, v1

    .line 104
    goto :goto_f

    :cond_44
    move v0, v1

    .line 105
    goto :goto_17

    :cond_46
    move v0, v1

    .line 106
    goto :goto_1f

    :cond_48
    move v0, v1

    .line 107
    goto :goto_27

    :cond_4a
    move v0, v1

    .line 108
    goto :goto_2f

    :cond_4c
    move v0, v1

    .line 109
    goto :goto_37
.end method
