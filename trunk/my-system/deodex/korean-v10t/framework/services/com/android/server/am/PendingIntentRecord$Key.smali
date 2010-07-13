.class final Lcom/android/server/am/PendingIntentRecord$Key;
.super Ljava/lang/Object;
.source "PendingIntentRecord.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/PendingIntentRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Key"
.end annotation


# static fields
.field private static final ODD_PRIME_NUMBER:I = 0x25


# instance fields
.field final activity:Lcom/android/server/am/HistoryRecord;

.field final flags:I

.field final hashCode:I

.field final packageName:Ljava/lang/String;

.field final requestCode:I

.field final requestIntent:Landroid/content/Intent;

.field final requestResolvedType:Ljava/lang/String;

.field final type:I

.field final who:Ljava/lang/String;


# direct methods
.method constructor <init>(ILjava/lang/String;Lcom/android/server/am/HistoryRecord;Ljava/lang/String;ILandroid/content/Intent;Ljava/lang/String;I)V
    .registers 12
    .parameter "_t"
    .parameter "_p"
    .parameter "_a"
    .parameter "_w"
    .parameter "_r"
    .parameter "_i"
    .parameter "_it"
    .parameter "_f"

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput p1, p0, Lcom/android/server/am/PendingIntentRecord$Key;->type:I

    .line 57
    iput-object p2, p0, Lcom/android/server/am/PendingIntentRecord$Key;->packageName:Ljava/lang/String;

    .line 58
    iput-object p3, p0, Lcom/android/server/am/PendingIntentRecord$Key;->activity:Lcom/android/server/am/HistoryRecord;

    .line 59
    iput-object p4, p0, Lcom/android/server/am/PendingIntentRecord$Key;->who:Ljava/lang/String;

    .line 60
    iput p5, p0, Lcom/android/server/am/PendingIntentRecord$Key;->requestCode:I

    .line 61
    iput-object p6, p0, Lcom/android/server/am/PendingIntentRecord$Key;->requestIntent:Landroid/content/Intent;

    .line 62
    iput-object p7, p0, Lcom/android/server/am/PendingIntentRecord$Key;->requestResolvedType:Ljava/lang/String;

    .line 63
    iput p8, p0, Lcom/android/server/am/PendingIntentRecord$Key;->flags:I

    .line 65
    const/16 v0, 0x17

    .line 66
    .local v0, hash:I
    mul-int/lit8 v1, v0, 0x25

    add-int/lit16 v0, p8, 0x353

    .line 67
    mul-int/lit8 v1, v0, 0x25

    add-int v0, v1, p5

    .line 68
    if-eqz p4, :cond_27

    .line 69
    mul-int/lit8 v1, v0, 0x25

    invoke-virtual {p4}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 71
    :cond_27
    if-eqz p3, :cond_31

    .line 72
    mul-int/lit8 v1, v0, 0x25

    invoke-virtual {p3}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 74
    :cond_31
    if-eqz p6, :cond_3b

    .line 75
    mul-int/lit8 v1, v0, 0x25

    invoke-virtual {p6}, Landroid/content/Intent;->filterHashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 77
    :cond_3b
    if-eqz p7, :cond_45

    .line 78
    mul-int/lit8 v1, v0, 0x25

    invoke-virtual {p7}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 80
    :cond_45
    mul-int/lit8 v1, v0, 0x25

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 81
    mul-int/lit8 v1, v0, 0x25

    add-int v0, v1, p1

    .line 82
    iput v0, p0, Lcom/android/server/am/PendingIntentRecord$Key;->hashCode:I

    .line 85
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .parameter "otherObj"

    .prologue
    const/4 v4, 0x0

    .line 88
    if-nez p1, :cond_5

    move v2, v4

    .line 138
    :goto_4
    return v2

    .line 92
    :cond_5
    :try_start_5
    move-object v0, p1

    check-cast v0, Lcom/android/server/am/PendingIntentRecord$Key;

    move-object v1, v0

    .line 93
    .local v1, other:Lcom/android/server/am/PendingIntentRecord$Key;
    iget v2, p0, Lcom/android/server/am/PendingIntentRecord$Key;->type:I

    iget v3, v1, Lcom/android/server/am/PendingIntentRecord$Key;->type:I

    if-eq v2, v3, :cond_11

    move v2, v4

    .line 94
    goto :goto_4

    .line 96
    :cond_11
    iget-object v2, p0, Lcom/android/server/am/PendingIntentRecord$Key;->packageName:Ljava/lang/String;

    iget-object v3, v1, Lcom/android/server/am/PendingIntentRecord$Key;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1d

    move v2, v4

    .line 97
    goto :goto_4

    .line 99
    :cond_1d
    iget-object v2, p0, Lcom/android/server/am/PendingIntentRecord$Key;->activity:Lcom/android/server/am/HistoryRecord;

    iget-object v3, v1, Lcom/android/server/am/PendingIntentRecord$Key;->activity:Lcom/android/server/am/HistoryRecord;

    if-eq v2, v3, :cond_25

    move v2, v4

    .line 100
    goto :goto_4

    .line 102
    :cond_25
    iget-object v2, p0, Lcom/android/server/am/PendingIntentRecord$Key;->who:Ljava/lang/String;

    iget-object v3, v1, Lcom/android/server/am/PendingIntentRecord$Key;->who:Ljava/lang/String;

    if-eq v2, v3, :cond_41

    .line 103
    iget-object v2, p0, Lcom/android/server/am/PendingIntentRecord$Key;->who:Ljava/lang/String;

    if-eqz v2, :cond_3b

    .line 104
    iget-object v2, p0, Lcom/android/server/am/PendingIntentRecord$Key;->who:Ljava/lang/String;

    iget-object v3, v1, Lcom/android/server/am/PendingIntentRecord$Key;->who:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_41

    move v2, v4

    .line 105
    goto :goto_4

    .line 107
    :cond_3b
    iget-object v2, v1, Lcom/android/server/am/PendingIntentRecord$Key;->who:Ljava/lang/String;

    if-eqz v2, :cond_41

    move v2, v4

    .line 108
    goto :goto_4

    .line 111
    :cond_41
    iget v2, p0, Lcom/android/server/am/PendingIntentRecord$Key;->requestCode:I

    iget v3, v1, Lcom/android/server/am/PendingIntentRecord$Key;->requestCode:I

    if-eq v2, v3, :cond_49

    move v2, v4

    .line 112
    goto :goto_4

    .line 114
    :cond_49
    iget-object v2, p0, Lcom/android/server/am/PendingIntentRecord$Key;->requestIntent:Landroid/content/Intent;

    iget-object v3, v1, Lcom/android/server/am/PendingIntentRecord$Key;->requestIntent:Landroid/content/Intent;

    if-eq v2, v3, :cond_65

    .line 115
    iget-object v2, p0, Lcom/android/server/am/PendingIntentRecord$Key;->requestIntent:Landroid/content/Intent;

    if-eqz v2, :cond_5f

    .line 116
    iget-object v2, p0, Lcom/android/server/am/PendingIntentRecord$Key;->requestIntent:Landroid/content/Intent;

    iget-object v3, v1, Lcom/android/server/am/PendingIntentRecord$Key;->requestIntent:Landroid/content/Intent;

    invoke-virtual {v2, v3}, Landroid/content/Intent;->filterEquals(Landroid/content/Intent;)Z

    move-result v2

    if-nez v2, :cond_65

    move v2, v4

    .line 117
    goto :goto_4

    .line 119
    :cond_5f
    iget-object v2, v1, Lcom/android/server/am/PendingIntentRecord$Key;->requestIntent:Landroid/content/Intent;

    if-eqz v2, :cond_65

    move v2, v4

    .line 120
    goto :goto_4

    .line 123
    :cond_65
    iget-object v2, p0, Lcom/android/server/am/PendingIntentRecord$Key;->requestResolvedType:Ljava/lang/String;

    iget-object v3, v1, Lcom/android/server/am/PendingIntentRecord$Key;->requestResolvedType:Ljava/lang/String;

    if-eq v2, v3, :cond_81

    .line 124
    iget-object v2, p0, Lcom/android/server/am/PendingIntentRecord$Key;->requestResolvedType:Ljava/lang/String;

    if-eqz v2, :cond_7b

    .line 125
    iget-object v2, p0, Lcom/android/server/am/PendingIntentRecord$Key;->requestResolvedType:Ljava/lang/String;

    iget-object v3, v1, Lcom/android/server/am/PendingIntentRecord$Key;->requestResolvedType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_81

    move v2, v4

    .line 126
    goto :goto_4

    .line 128
    :cond_7b
    iget-object v2, v1, Lcom/android/server/am/PendingIntentRecord$Key;->requestResolvedType:Ljava/lang/String;

    if-eqz v2, :cond_81

    move v2, v4

    .line 129
    goto :goto_4

    .line 132
    :cond_81
    iget v2, p0, Lcom/android/server/am/PendingIntentRecord$Key;->flags:I

    iget v3, v1, Lcom/android/server/am/PendingIntentRecord$Key;->flags:I
    :try_end_85
    .catch Ljava/lang/ClassCastException; {:try_start_5 .. :try_end_85} :catch_8d

    if-eq v2, v3, :cond_8a

    move v2, v4

    .line 133
    goto/16 :goto_4

    .line 135
    :cond_8a
    const/4 v2, 0x1

    goto/16 :goto_4

    .line 136
    .end local v1           #other:Lcom/android/server/am/PendingIntentRecord$Key;
    :catch_8d
    move-exception v2

    move v2, v4

    .line 138
    goto/16 :goto_4
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 142
    iget v0, p0, Lcom/android/server/am/PendingIntentRecord$Key;->hashCode:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .prologue
    .line 146
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Key{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/am/PendingIntentRecord$Key;->typeName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " pkg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/PendingIntentRecord$Key;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " intent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/PendingIntentRecord$Key;->requestIntent:Landroid/content/Intent;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->toShortString(ZZ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " flags=0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/am/PendingIntentRecord$Key;->flags:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method typeName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 152
    iget v0, p0, Lcom/android/server/am/PendingIntentRecord$Key;->type:I

    packed-switch v0, :pswitch_data_18

    .line 162
    iget v0, p0, Lcom/android/server/am/PendingIntentRecord$Key;->type:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    :goto_b
    return-object v0

    .line 154
    :pswitch_c
    const-string v0, "startActivity"

    goto :goto_b

    .line 156
    :pswitch_f
    const-string v0, "broadcastIntent"

    goto :goto_b

    .line 158
    :pswitch_12
    const-string v0, "startService"

    goto :goto_b

    .line 160
    :pswitch_15
    const-string v0, "activityResult"

    goto :goto_b

    .line 152
    :pswitch_data_18
    .packed-switch 0x1
        :pswitch_f
        :pswitch_c
        :pswitch_15
        :pswitch_12
    .end packed-switch
.end method
