.class public abstract Lcom/android/internal/telephony/Call;
.super Ljava/lang/Object;
.source "Call.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/Call$State;
    }
.end annotation


# instance fields
.field protected isGeneric:Z

.field public state:Lcom/android/internal/telephony/Call$State;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    sget-object v0, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    iput-object v0, p0, Lcom/android/internal/telephony/Call;->state:Lcom/android/internal/telephony/Call$State;

    .line 55
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/Call;->isGeneric:Z

    return-void
.end method


# virtual methods
.method public abstract getConnections()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/Connection;",
            ">;"
        }
    .end annotation
.end method

.method public getEarliestConnectTime()J
    .registers 11

    .prologue
    .line 169
    const-wide v6, 0x7fffffffffffffffL

    .line 170
    .local v6, time:J
    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v2

    .line 172
    .local v2, l:Ljava/util/List;
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v8

    if-nez v8, :cond_12

    .line 173
    const-wide/16 v8, 0x0

    .line 185
    :goto_11
    return-wide v8

    .line 176
    :cond_12
    const/4 v1, 0x0

    .local v1, i:I
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    .local v3, s:I
    :goto_17
    if-ge v1, v3, :cond_2b

    .line 177
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/Connection;

    .line 180
    .local v0, c:Lcom/android/internal/telephony/Connection;
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getConnectTime()J

    move-result-wide v4

    .line 182
    .local v4, t:J
    cmp-long v8, v4, v6

    if-gez v8, :cond_28

    move-wide v6, v4

    .line 176
    :cond_28
    add-int/lit8 v1, v1, 0x1

    goto :goto_17

    .end local v0           #c:Lcom/android/internal/telephony/Connection;
    .end local v4           #t:J
    :cond_2b
    move-wide v8, v6

    .line 185
    goto :goto_11
.end method

.method public getEarliestConnection()Lcom/android/internal/telephony/Connection;
    .registers 11

    .prologue
    .line 119
    const-wide v7, 0x7fffffffffffffffL

    .line 121
    .local v7, time:J
    const/4 v1, 0x0

    .line 123
    .local v1, earliest:Lcom/android/internal/telephony/Connection;
    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v3

    .line 125
    .local v3, l:Ljava/util/List;
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v9

    if-nez v9, :cond_12

    .line 126
    const/4 v9, 0x0

    .line 141
    :goto_11
    return-object v9

    .line 129
    :cond_12
    const/4 v2, 0x0

    .local v2, i:I
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    .local v4, s:I
    :goto_17
    if-ge v2, v4, :cond_2c

    .line 130
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/Connection;

    .line 133
    .local v0, c:Lcom/android/internal/telephony/Connection;
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getCreateTime()J

    move-result-wide v5

    .line 135
    .local v5, t:J
    cmp-long v9, v5, v7

    if-gez v9, :cond_29

    .line 136
    move-object v1, v0

    .line 137
    move-wide v7, v5

    .line 129
    :cond_29
    add-int/lit8 v2, v2, 0x1

    goto :goto_17

    .end local v0           #c:Lcom/android/internal/telephony/Connection;
    .end local v5           #t:J
    :cond_2c
    move-object v9, v1

    .line 141
    goto :goto_11
.end method

.method public getEarliestCreateTime()J
    .registers 11

    .prologue
    .line 147
    const-wide v6, 0x7fffffffffffffffL

    .line 149
    .local v6, time:J
    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v2

    .line 151
    .local v2, l:Ljava/util/List;
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v8

    if-nez v8, :cond_12

    .line 152
    const-wide/16 v8, 0x0

    .line 164
    :goto_11
    return-wide v8

    .line 155
    :cond_12
    const/4 v1, 0x0

    .local v1, i:I
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    .local v3, s:I
    :goto_17
    if-ge v1, v3, :cond_2b

    .line 156
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/Connection;

    .line 159
    .local v0, c:Lcom/android/internal/telephony/Connection;
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getCreateTime()J

    move-result-wide v4

    .line 161
    .local v4, t:J
    cmp-long v8, v4, v6

    if-gez v8, :cond_28

    move-wide v6, v4

    .line 155
    :cond_28
    add-int/lit8 v1, v1, 0x1

    goto :goto_17

    .end local v0           #c:Lcom/android/internal/telephony/Connection;
    .end local v4           #t:J
    :cond_2b
    move-wide v8, v6

    .line 164
    goto :goto_11
.end method

.method public getLatestConnection()Lcom/android/internal/telephony/Connection;
    .registers 11

    .prologue
    .line 210
    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v2

    .line 211
    .local v2, l:Ljava/util/List;
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v9

    if-nez v9, :cond_c

    .line 212
    const/4 v9, 0x0

    .line 227
    :goto_b
    return-object v9

    .line 215
    :cond_c
    const-wide/16 v7, 0x0

    .line 216
    .local v7, time:J
    const/4 v3, 0x0

    .line 217
    .local v3, latest:Lcom/android/internal/telephony/Connection;
    const/4 v1, 0x0

    .local v1, i:I
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    .local v4, s:I
    :goto_14
    if-ge v1, v4, :cond_29

    .line 218
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/Connection;

    .line 219
    .local v0, c:Lcom/android/internal/telephony/Connection;
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getCreateTime()J

    move-result-wide v5

    .line 221
    .local v5, t:J
    cmp-long v9, v5, v7

    if-lez v9, :cond_26

    .line 222
    move-object v3, v0

    .line 223
    move-wide v7, v5

    .line 217
    :cond_26
    add-int/lit8 v1, v1, 0x1

    goto :goto_14

    .end local v0           #c:Lcom/android/internal/telephony/Connection;
    .end local v5           #t:J
    :cond_29
    move-object v9, v3

    .line 227
    goto :goto_b
.end method

.method public abstract getPhone()Lcom/android/internal/telephony/Phone;
.end method

.method public getState()Lcom/android/internal/telephony/Call$State;
    .registers 2

    .prologue
    .line 99
    iget-object v0, p0, Lcom/android/internal/telephony/Call;->state:Lcom/android/internal/telephony/Call$State;

    return-object v0
.end method

.method public abstract hangup()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation
.end method

.method public abstract hangupActiveMenu()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation
.end method

.method public abstract hangupNotResume()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation
.end method

.method public hasConnection(Lcom/android/internal/telephony/Connection;)Z
    .registers 3
    .parameter "c"

    .prologue
    .line 77
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    if-ne v0, p0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasConnections()Z
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 85
    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v0

    .line 87
    .local v0, connections:Ljava/util/List;
    if-nez v0, :cond_9

    move v1, v2

    .line 91
    :goto_8
    return v1

    :cond_9
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_11

    const/4 v1, 0x1

    goto :goto_8

    :cond_11
    move v1, v2

    goto :goto_8
.end method

.method public isDialingOrAlerting()Z
    .registers 2

    .prologue
    .line 196
    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call$State;->isDialing()Z

    move-result v0

    return v0
.end method

.method public isGeneric()Z
    .registers 2

    .prologue
    .line 235
    iget-boolean v0, p0, Lcom/android/internal/telephony/Call;->isGeneric:Z

    return v0
.end method

.method public isIdle()Z
    .registers 2

    .prologue
    .line 109
    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public abstract isMultiparty()Z
.end method

.method public isRinging()Z
    .registers 2

    .prologue
    .line 201
    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call$State;->isRinging()Z

    move-result v0

    return v0
.end method

.method public setGeneric(Z)V
    .registers 2
    .parameter "generic"

    .prologue
    .line 242
    iput-boolean p1, p0, Lcom/android/internal/telephony/Call;->isGeneric:Z

    .line 243
    return-void
.end method
