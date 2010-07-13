.class Lcom/android/server/status/NotificationViewList;
.super Ljava/lang/Object;
.source "NotificationViewList.java"


# instance fields
.field private mLatest:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/status/StatusBarNotification;",
            ">;"
        }
    .end annotation
.end field

.field private mOngoing:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/status/StatusBarNotification;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .registers 2

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/status/NotificationViewList;->mOngoing:Ljava/util/ArrayList;

    .line 10
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/status/NotificationViewList;->mLatest:Ljava/util/ArrayList;

    .line 13
    return-void
.end method

.method private static final indexForKey(Ljava/util/ArrayList;Landroid/os/IBinder;)I
    .registers 5
    .parameter
    .parameter "key"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/status/StatusBarNotification;",
            ">;",
            "Landroid/os/IBinder;",
            ")I"
        }
    .end annotation

    .prologue
    .line 85
    .local p0, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/status/StatusBarNotification;>;"
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 86
    .local v0, N:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_5
    if-ge v1, v0, :cond_16

    .line 87
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/status/StatusBarNotification;

    iget-object v2, v2, Lcom/android/server/status/StatusBarNotification;->key:Landroid/os/IBinder;

    if-ne v2, p1, :cond_13

    move v2, v1

    .line 91
    :goto_12
    return v2

    .line 86
    :cond_13
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 91
    :cond_16
    const/4 v2, -0x1

    goto :goto_12
.end method

.method private static final indexInList(Ljava/util/ArrayList;Lcom/android/server/status/NotificationData;)I
    .registers 6
    .parameter
    .parameter "n"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/status/StatusBarNotification;",
            ">;",
            "Lcom/android/server/status/NotificationData;",
            ")I"
        }
    .end annotation

    .prologue
    .line 16
    .local p0, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/status/StatusBarNotification;>;"
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 17
    .local v0, N:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_5
    if-ge v1, v0, :cond_16

    .line 18
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/status/StatusBarNotification;

    .line 19
    .local v2, that:Lcom/android/server/status/StatusBarNotification;
    iget-object v3, v2, Lcom/android/server/status/StatusBarNotification;->data:Lcom/android/server/status/NotificationData;

    if-ne v3, p1, :cond_13

    move v3, v1

    .line 23
    .end local v2           #that:Lcom/android/server/status/StatusBarNotification;
    :goto_12
    return v3

    .line 17
    .restart local v2       #that:Lcom/android/server/status/StatusBarNotification;
    :cond_13
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 23
    .end local v2           #that:Lcom/android/server/status/StatusBarNotification;
    :cond_16
    const/4 v3, -0x1

    goto :goto_12
.end method

.method private final matchPackage(Lcom/android/server/status/StatusBarNotification;Ljava/lang/String;)Z
    .registers 5
    .parameter "snb"
    .parameter "packageName"

    .prologue
    const/4 v1, 0x1

    .line 74
    iget-object v0, p1, Lcom/android/server/status/StatusBarNotification;->data:Lcom/android/server/status/NotificationData;

    iget-object v0, v0, Lcom/android/server/status/NotificationData;->contentIntent:Landroid/app/PendingIntent;

    if-eqz v0, :cond_17

    .line 75
    iget-object v0, p1, Lcom/android/server/status/StatusBarNotification;->data:Lcom/android/server/status/NotificationData;

    iget-object v0, v0, Lcom/android/server/status/NotificationData;->contentIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0}, Landroid/app/PendingIntent;->getTargetPackage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_29

    move v0, v1

    .line 81
    :goto_16
    return v0

    .line 78
    :cond_17
    iget-object v0, p1, Lcom/android/server/status/StatusBarNotification;->data:Lcom/android/server/status/NotificationData;

    iget-object v0, v0, Lcom/android/server/status/NotificationData;->pkg:Ljava/lang/String;

    if-eqz v0, :cond_29

    iget-object v0, p1, Lcom/android/server/status/StatusBarNotification;->data:Lcom/android/server/status/NotificationData;

    iget-object v0, v0, Lcom/android/server/status/NotificationData;->pkg:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_29

    move v0, v1

    .line 79
    goto :goto_16

    .line 81
    :cond_29
    const/4 v0, 0x0

    goto :goto_16
.end method


# virtual methods
.method add(Lcom/android/server/status/StatusBarNotification;)V
    .registers 11
    .parameter "notification"

    .prologue
    .line 145
    iget-object v7, p1, Lcom/android/server/status/StatusBarNotification;->data:Lcom/android/server/status/NotificationData;

    iget-boolean v7, v7, Lcom/android/server/status/NotificationData;->ongoingEvent:Z

    if-eqz v7, :cond_28

    iget-object v7, p0, Lcom/android/server/status/NotificationViewList;->mOngoing:Ljava/util/ArrayList;

    move-object v3, v7

    .line 146
    .local v3, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/status/StatusBarNotification;>;"
    :goto_9
    iget-object v7, p1, Lcom/android/server/status/StatusBarNotification;->data:Lcom/android/server/status/NotificationData;

    iget-wide v5, v7, Lcom/android/server/status/NotificationData;->when:J

    .line 147
    .local v5, when:J
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 148
    .local v0, N:I
    move v2, v0

    .line 149
    .local v2, index:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_13
    if-ge v1, v0, :cond_24

    .line 150
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/status/StatusBarNotification;

    .line 151
    .local v4, that:Lcom/android/server/status/StatusBarNotification;
    iget-object v7, v4, Lcom/android/server/status/StatusBarNotification;->data:Lcom/android/server/status/NotificationData;

    iget-wide v7, v7, Lcom/android/server/status/NotificationData;->when:J

    cmp-long v7, v7, v5

    if-lez v7, :cond_2c

    .line 152
    move v2, v1

    .line 156
    .end local v4           #that:Lcom/android/server/status/StatusBarNotification;
    :cond_24
    invoke-virtual {v3, v2, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 187
    return-void

    .line 145
    .end local v0           #N:I
    .end local v1           #i:I
    .end local v2           #index:I
    .end local v3           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/status/StatusBarNotification;>;"
    .end local v5           #when:J
    :cond_28
    iget-object v7, p0, Lcom/android/server/status/NotificationViewList;->mLatest:Ljava/util/ArrayList;

    move-object v3, v7

    goto :goto_9

    .line 149
    .restart local v0       #N:I
    .restart local v1       #i:I
    .restart local v2       #index:I
    .restart local v3       #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/status/StatusBarNotification;>;"
    .restart local v4       #that:Lcom/android/server/status/StatusBarNotification;
    .restart local v5       #when:J
    :cond_2c
    add-int/lit8 v1, v1, 0x1

    goto :goto_13
.end method

.method clearViews()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 114
    iget-object v2, p0, Lcom/android/server/status/NotificationViewList;->mOngoing:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 115
    .local v0, N:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_8
    if-ge v1, v0, :cond_17

    .line 116
    iget-object v2, p0, Lcom/android/server/status/NotificationViewList;->mOngoing:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/status/StatusBarNotification;

    iput-object v3, v2, Lcom/android/server/status/StatusBarNotification;->view:Landroid/view/View;

    .line 115
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 118
    :cond_17
    iget-object v2, p0, Lcom/android/server/status/NotificationViewList;->mLatest:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 119
    const/4 v1, 0x0

    :goto_1e
    if-ge v1, v0, :cond_2d

    .line 120
    iget-object v2, p0, Lcom/android/server/status/NotificationViewList;->mLatest:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/status/StatusBarNotification;

    iput-object v3, v2, Lcom/android/server/status/StatusBarNotification;->view:Landroid/view/View;

    .line 119
    add-int/lit8 v1, v1, 0x1

    goto :goto_1e

    .line 122
    :cond_2d
    return-void
.end method

.method get(Landroid/os/IBinder;)Lcom/android/server/status/StatusBarNotification;
    .registers 4
    .parameter "key"

    .prologue
    .line 96
    iget-object v1, p0, Lcom/android/server/status/NotificationViewList;->mOngoing:Ljava/util/ArrayList;

    invoke-static {v1, p1}, Lcom/android/server/status/NotificationViewList;->indexForKey(Ljava/util/ArrayList;Landroid/os/IBinder;)I

    move-result v0

    .line 97
    .local v0, index:I
    if-ltz v0, :cond_12

    .line 98
    iget-object v1, p0, Lcom/android/server/status/NotificationViewList;->mOngoing:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/server/status/StatusBarNotification;

    move-object v1, p0

    .line 104
    :goto_11
    return-object v1

    .line 100
    .restart local p0
    :cond_12
    iget-object v1, p0, Lcom/android/server/status/NotificationViewList;->mLatest:Ljava/util/ArrayList;

    invoke-static {v1, p1}, Lcom/android/server/status/NotificationViewList;->indexForKey(Ljava/util/ArrayList;Landroid/os/IBinder;)I

    move-result v0

    .line 101
    if-ltz v0, :cond_24

    .line 102
    iget-object v1, p0, Lcom/android/server/status/NotificationViewList;->mLatest:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/server/status/StatusBarNotification;

    move-object v1, p0

    goto :goto_11

    .line 104
    .restart local p0
    :cond_24
    const/4 v1, 0x0

    goto :goto_11
.end method

.method get(Landroid/view/View;)Lcom/android/server/status/StatusBarNotification;
    .registers 7
    .parameter "view"

    .prologue
    .line 190
    iget-object v4, p0, Lcom/android/server/status/NotificationViewList;->mOngoing:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 191
    .local v0, N:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_7
    if-ge v1, v0, :cond_1a

    .line 192
    iget-object v4, p0, Lcom/android/server/status/NotificationViewList;->mOngoing:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/status/StatusBarNotification;

    .line 193
    .local v2, notification:Lcom/android/server/status/StatusBarNotification;
    iget-object v3, v2, Lcom/android/server/status/StatusBarNotification;->view:Landroid/view/View;

    .line 194
    .local v3, v:Landroid/view/View;
    if-ne v3, p1, :cond_17

    move-object v4, v2

    .line 206
    .end local v2           #notification:Lcom/android/server/status/StatusBarNotification;
    .end local v3           #v:Landroid/view/View;
    :goto_16
    return-object v4

    .line 191
    .restart local v2       #notification:Lcom/android/server/status/StatusBarNotification;
    .restart local v3       #v:Landroid/view/View;
    :cond_17
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 198
    .end local v2           #notification:Lcom/android/server/status/StatusBarNotification;
    .end local v3           #v:Landroid/view/View;
    :cond_1a
    iget-object v4, p0, Lcom/android/server/status/NotificationViewList;->mLatest:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 199
    const/4 v1, 0x0

    :goto_21
    if-ge v1, v0, :cond_34

    .line 200
    iget-object v4, p0, Lcom/android/server/status/NotificationViewList;->mLatest:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/status/StatusBarNotification;

    .line 201
    .restart local v2       #notification:Lcom/android/server/status/StatusBarNotification;
    iget-object v3, v2, Lcom/android/server/status/StatusBarNotification;->view:Landroid/view/View;

    .line 202
    .restart local v3       #v:Landroid/view/View;
    if-ne v3, p1, :cond_31

    move-object v4, v2

    .line 203
    goto :goto_16

    .line 199
    :cond_31
    add-int/lit8 v1, v1, 0x1

    goto :goto_21

    .line 206
    .end local v2           #notification:Lcom/android/server/status/StatusBarNotification;
    .end local v3           #v:Landroid/view/View;
    :cond_34
    const/4 v4, 0x0

    goto :goto_16
.end method

.method getExpandedIndex(Lcom/android/server/status/StatusBarNotification;)I
    .registers 5
    .parameter "notification"

    .prologue
    .line 109
    iget-object v1, p1, Lcom/android/server/status/StatusBarNotification;->data:Lcom/android/server/status/NotificationData;

    iget-boolean v1, v1, Lcom/android/server/status/NotificationData;->ongoingEvent:Z

    if-eqz v1, :cond_17

    iget-object v1, p0, Lcom/android/server/status/NotificationViewList;->mOngoing:Ljava/util/ArrayList;

    move-object v0, v1

    .line 110
    .local v0, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/status/StatusBarNotification;>;"
    :goto_9
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget-object v2, p1, Lcom/android/server/status/StatusBarNotification;->key:Landroid/os/IBinder;

    invoke-static {v0, v2}, Lcom/android/server/status/NotificationViewList;->indexForKey(Ljava/util/ArrayList;Landroid/os/IBinder;)I

    move-result v2

    sub-int/2addr v1, v2

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    return v1

    .line 109
    .end local v0           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/status/StatusBarNotification;>;"
    :cond_17
    iget-object v1, p0, Lcom/android/server/status/NotificationViewList;->mLatest:Ljava/util/ArrayList;

    move-object v0, v1

    goto :goto_9
.end method

.method getIconIndex(Lcom/android/server/status/NotificationData;)I
    .registers 6
    .parameter "n"

    .prologue
    .line 27
    iget-object v3, p0, Lcom/android/server/status/NotificationViewList;->mOngoing:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 28
    .local v2, ongoingSize:I
    iget-object v3, p0, Lcom/android/server/status/NotificationViewList;->mLatest:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 29
    .local v1, latestSize:I
    iget-boolean v3, p1, Lcom/android/server/status/NotificationData;->ongoingEvent:Z

    if-eqz v3, :cond_1f

    .line 30
    iget-object v3, p0, Lcom/android/server/status/NotificationViewList;->mOngoing:Ljava/util/ArrayList;

    invoke-static {v3, p1}, Lcom/android/server/status/NotificationViewList;->indexInList(Ljava/util/ArrayList;Lcom/android/server/status/NotificationData;)I

    move-result v0

    .line 31
    .local v0, index:I
    if-ltz v0, :cond_1d

    .line 32
    add-int v3, v1, v0

    add-int/lit8 v3, v3, 0x1

    .line 37
    .end local v0           #index:I
    :goto_1c
    return v3

    .line 34
    .restart local v0       #index:I
    :cond_1d
    const/4 v3, -0x1

    goto :goto_1c

    .line 37
    .end local v0           #index:I
    :cond_1f
    iget-object v3, p0, Lcom/android/server/status/NotificationViewList;->mLatest:Ljava/util/ArrayList;

    invoke-static {v3, p1}, Lcom/android/server/status/NotificationViewList;->indexInList(Ljava/util/ArrayList;Lcom/android/server/status/NotificationData;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1c
.end method

.method getLatest(I)Lcom/android/server/status/StatusBarNotification;
    .registers 3
    .parameter "index"

    .prologue
    .line 137
    iget-object v0, p0, Lcom/android/server/status/NotificationViewList;->mLatest:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/server/status/StatusBarNotification;

    return-object p0
.end method

.method getOngoing(I)Lcom/android/server/status/StatusBarNotification;
    .registers 3
    .parameter "index"

    .prologue
    .line 133
    iget-object v0, p0, Lcom/android/server/status/NotificationViewList;->mOngoing:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/server/status/StatusBarNotification;

    return-object p0
.end method

.method hasClearableItems()Z
    .registers 4

    .prologue
    .line 215
    iget-object v2, p0, Lcom/android/server/status/NotificationViewList;->mLatest:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 216
    .local v0, N:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_7
    if-ge v1, v0, :cond_1c

    .line 217
    iget-object v2, p0, Lcom/android/server/status/NotificationViewList;->mLatest:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/status/StatusBarNotification;

    iget-object v2, v2, Lcom/android/server/status/StatusBarNotification;->data:Lcom/android/server/status/NotificationData;

    iget-boolean v2, v2, Lcom/android/server/status/NotificationData;->clearable:Z

    if-eqz v2, :cond_19

    .line 218
    const/4 v2, 0x1

    .line 221
    :goto_18
    return v2

    .line 216
    :cond_19
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 221
    :cond_1c
    const/4 v2, 0x0

    goto :goto_18
.end method

.method latestCount()I
    .registers 2

    .prologue
    .line 129
    iget-object v0, p0, Lcom/android/server/status/NotificationViewList;->mLatest:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method notificationsForPackage(Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 6
    .parameter "packageName"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/status/StatusBarNotification;",
            ">;"
        }
    .end annotation

    .prologue
    .line 57
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 58
    .local v2, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/status/StatusBarNotification;>;"
    iget-object v3, p0, Lcom/android/server/status/NotificationViewList;->mOngoing:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 59
    .local v0, N:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_c
    if-ge v1, v0, :cond_28

    .line 60
    iget-object v3, p0, Lcom/android/server/status/NotificationViewList;->mOngoing:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/status/StatusBarNotification;

    invoke-direct {p0, v3, p1}, Lcom/android/server/status/NotificationViewList;->matchPackage(Lcom/android/server/status/StatusBarNotification;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_25

    .line 61
    iget-object v3, p0, Lcom/android/server/status/NotificationViewList;->mOngoing:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 59
    :cond_25
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 64
    :cond_28
    iget-object v3, p0, Lcom/android/server/status/NotificationViewList;->mLatest:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 65
    const/4 v1, 0x0

    :goto_2f
    if-ge v1, v0, :cond_4b

    .line 66
    iget-object v3, p0, Lcom/android/server/status/NotificationViewList;->mLatest:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/status/StatusBarNotification;

    invoke-direct {p0, v3, p1}, Lcom/android/server/status/NotificationViewList;->matchPackage(Lcom/android/server/status/StatusBarNotification;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_48

    .line 67
    iget-object v3, p0, Lcom/android/server/status/NotificationViewList;->mLatest:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 65
    :cond_48
    add-int/lit8 v1, v1, 0x1

    goto :goto_2f

    .line 70
    :cond_4b
    return-object v2
.end method

.method ongoingCount()I
    .registers 2

    .prologue
    .line 125
    iget-object v0, p0, Lcom/android/server/status/NotificationViewList;->mOngoing:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method remove(Lcom/android/server/status/StatusBarNotification;)V
    .registers 5
    .parameter "notification"

    .prologue
    .line 42
    iget-object v1, p1, Lcom/android/server/status/StatusBarNotification;->data:Lcom/android/server/status/NotificationData;

    .line 44
    .local v1, n:Lcom/android/server/status/NotificationData;
    iget-object v2, p0, Lcom/android/server/status/NotificationViewList;->mOngoing:Ljava/util/ArrayList;

    invoke-static {v2, v1}, Lcom/android/server/status/NotificationViewList;->indexInList(Ljava/util/ArrayList;Lcom/android/server/status/NotificationData;)I

    move-result v0

    .line 45
    .local v0, index:I
    if-ltz v0, :cond_10

    .line 46
    iget-object v2, p0, Lcom/android/server/status/NotificationViewList;->mOngoing:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 54
    :cond_f
    :goto_f
    return-void

    .line 49
    :cond_10
    iget-object v2, p0, Lcom/android/server/status/NotificationViewList;->mLatest:Ljava/util/ArrayList;

    invoke-static {v2, v1}, Lcom/android/server/status/NotificationViewList;->indexInList(Ljava/util/ArrayList;Lcom/android/server/status/NotificationData;)I

    move-result v0

    .line 50
    if-ltz v0, :cond_f

    .line 51
    iget-object v2, p0, Lcom/android/server/status/NotificationViewList;->mLatest:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_f
.end method

.method size()I
    .registers 3

    .prologue
    .line 141
    iget-object v0, p0, Lcom/android/server/status/NotificationViewList;->mOngoing:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p0, Lcom/android/server/status/NotificationViewList;->mLatest:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method update(Lcom/android/server/status/StatusBarNotification;)V
    .registers 2
    .parameter "notification"

    .prologue
    .line 210
    invoke-virtual {p0, p1}, Lcom/android/server/status/NotificationViewList;->remove(Lcom/android/server/status/StatusBarNotification;)V

    .line 211
    invoke-virtual {p0, p1}, Lcom/android/server/status/NotificationViewList;->add(Lcom/android/server/status/StatusBarNotification;)V

    .line 212
    return-void
.end method
