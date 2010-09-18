.class final Ljava/util/Timer$TimerImpl$TimerTree;
.super Ljava/lang/Object;
.source "Timer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/Timer$TimerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "TimerTree"
.end annotation


# instance fields
.field deletedCancelledNumber:I

.field root:Ljava/util/Timer$TimerImpl$TimerNode;


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Ljava/util/Timer$1;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 92
    invoke-direct {p0}, Ljava/util/Timer$TimerImpl$TimerTree;-><init>()V

    return-void
.end method

.method private minimum(Ljava/util/Timer$TimerImpl$TimerNode;)Ljava/util/Timer$TimerImpl$TimerNode;
    .registers 3
    .parameter "x"

    .prologue
    .line 162
    :goto_0
    iget-object v0, p1, Ljava/util/Timer$TimerImpl$TimerNode;->left:Ljava/util/Timer$TimerImpl$TimerNode;

    if-eqz v0, :cond_7

    .line 163
    iget-object p1, p1, Ljava/util/Timer$TimerImpl$TimerNode;->left:Ljava/util/Timer$TimerImpl$TimerNode;

    goto :goto_0

    .line 165
    :cond_7
    return-object p1
.end method

.method private successor(Ljava/util/Timer$TimerImpl$TimerNode;)Ljava/util/Timer$TimerImpl$TimerNode;
    .registers 4
    .parameter "x"

    .prologue
    .line 150
    iget-object v1, p1, Ljava/util/Timer$TimerImpl$TimerNode;->right:Ljava/util/Timer$TimerImpl$TimerNode;

    if-eqz v1, :cond_b

    .line 151
    iget-object v1, p1, Ljava/util/Timer$TimerImpl$TimerNode;->right:Ljava/util/Timer$TimerImpl$TimerNode;

    invoke-direct {p0, v1}, Ljava/util/Timer$TimerImpl$TimerTree;->minimum(Ljava/util/Timer$TimerImpl$TimerNode;)Ljava/util/Timer$TimerImpl$TimerNode;

    move-result-object v1

    .line 158
    :goto_a
    return-object v1

    .line 153
    :cond_b
    iget-object v0, p1, Ljava/util/Timer$TimerImpl$TimerNode;->parent:Ljava/util/Timer$TimerImpl$TimerNode;

    .line 154
    .local v0, y:Ljava/util/Timer$TimerImpl$TimerNode;
    :goto_d
    if-eqz v0, :cond_17

    iget-object v1, v0, Ljava/util/Timer$TimerImpl$TimerNode;->right:Ljava/util/Timer$TimerImpl$TimerNode;

    if-ne p1, v1, :cond_17

    .line 155
    move-object p1, v0

    .line 156
    iget-object v0, v0, Ljava/util/Timer$TimerImpl$TimerNode;->parent:Ljava/util/Timer$TimerImpl$TimerNode;

    goto :goto_d

    :cond_17
    move-object v1, v0

    .line 158
    goto :goto_a
.end method


# virtual methods
.method delete(Ljava/util/Timer$TimerImpl$TimerNode;)V
    .registers 5
    .parameter "z"

    .prologue
    .line 123
    const/4 v1, 0x0

    .local v1, y:Ljava/util/Timer$TimerImpl$TimerNode;
    const/4 v0, 0x0

    .line 124
    .local v0, x:Ljava/util/Timer$TimerImpl$TimerNode;
    iget-object v2, p1, Ljava/util/Timer$TimerImpl$TimerNode;->left:Ljava/util/Timer$TimerImpl$TimerNode;

    if-eqz v2, :cond_a

    iget-object v2, p1, Ljava/util/Timer$TimerImpl$TimerNode;->right:Ljava/util/Timer$TimerImpl$TimerNode;

    if-nez v2, :cond_24

    .line 125
    :cond_a
    move-object v1, p1

    .line 129
    :goto_b
    iget-object v2, v1, Ljava/util/Timer$TimerImpl$TimerNode;->left:Ljava/util/Timer$TimerImpl$TimerNode;

    if-eqz v2, :cond_29

    .line 130
    iget-object v0, v1, Ljava/util/Timer$TimerImpl$TimerNode;->left:Ljava/util/Timer$TimerImpl$TimerNode;

    .line 134
    :goto_11
    if-eqz v0, :cond_17

    .line 135
    iget-object v2, v1, Ljava/util/Timer$TimerImpl$TimerNode;->parent:Ljava/util/Timer$TimerImpl$TimerNode;

    iput-object v2, v0, Ljava/util/Timer$TimerImpl$TimerNode;->parent:Ljava/util/Timer$TimerImpl$TimerNode;

    .line 137
    :cond_17
    iget-object v2, v1, Ljava/util/Timer$TimerImpl$TimerNode;->parent:Ljava/util/Timer$TimerImpl$TimerNode;

    if-nez v2, :cond_2c

    .line 138
    iput-object v0, p0, Ljava/util/Timer$TimerImpl$TimerTree;->root:Ljava/util/Timer$TimerImpl$TimerNode;

    .line 144
    :goto_1d
    if-eq v1, p1, :cond_23

    .line 145
    iget-object v2, v1, Ljava/util/Timer$TimerImpl$TimerNode;->task:Ljava/util/TimerTask;

    iput-object v2, p1, Ljava/util/Timer$TimerImpl$TimerNode;->task:Ljava/util/TimerTask;

    .line 147
    :cond_23
    return-void

    .line 127
    :cond_24
    invoke-direct {p0, p1}, Ljava/util/Timer$TimerImpl$TimerTree;->successor(Ljava/util/Timer$TimerImpl$TimerNode;)Ljava/util/Timer$TimerImpl$TimerNode;

    move-result-object v1

    goto :goto_b

    .line 132
    :cond_29
    iget-object v0, v1, Ljava/util/Timer$TimerImpl$TimerNode;->right:Ljava/util/Timer$TimerImpl$TimerNode;

    goto :goto_11

    .line 139
    :cond_2c
    iget-object v2, v1, Ljava/util/Timer$TimerImpl$TimerNode;->parent:Ljava/util/Timer$TimerImpl$TimerNode;

    iget-object v2, v2, Ljava/util/Timer$TimerImpl$TimerNode;->left:Ljava/util/Timer$TimerImpl$TimerNode;

    if-ne v1, v2, :cond_37

    .line 140
    iget-object v2, v1, Ljava/util/Timer$TimerImpl$TimerNode;->parent:Ljava/util/Timer$TimerImpl$TimerNode;

    iput-object v0, v2, Ljava/util/Timer$TimerImpl$TimerNode;->left:Ljava/util/Timer$TimerImpl$TimerNode;

    goto :goto_1d

    .line 142
    :cond_37
    iget-object v2, v1, Ljava/util/Timer$TimerImpl$TimerNode;->parent:Ljava/util/Timer$TimerImpl$TimerNode;

    iput-object v0, v2, Ljava/util/Timer$TimerImpl$TimerNode;->right:Ljava/util/Timer$TimerImpl$TimerNode;

    goto :goto_1d
.end method

.method insert(Ljava/util/Timer$TimerImpl$TimerNode;)V
    .registers 8
    .parameter "z"

    .prologue
    .line 103
    const/4 v1, 0x0

    .local v1, y:Ljava/util/Timer$TimerImpl$TimerNode;
    iget-object v0, p0, Ljava/util/Timer$TimerImpl$TimerTree;->root:Ljava/util/Timer$TimerImpl$TimerNode;

    .line 104
    .local v0, x:Ljava/util/Timer$TimerImpl$TimerNode;
    :goto_3
    if-eqz v0, :cond_1c

    .line 105
    move-object v1, v0

    .line 106
    iget-object v2, p1, Ljava/util/Timer$TimerImpl$TimerNode;->task:Ljava/util/TimerTask;

    invoke-virtual {v2}, Ljava/util/TimerTask;->getWhen()J

    move-result-wide v2

    iget-object v4, v0, Ljava/util/Timer$TimerImpl$TimerNode;->task:Ljava/util/TimerTask;

    invoke-virtual {v4}, Ljava/util/TimerTask;->getWhen()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-gez v2, :cond_19

    .line 107
    iget-object v0, v0, Ljava/util/Timer$TimerImpl$TimerNode;->left:Ljava/util/Timer$TimerImpl$TimerNode;

    goto :goto_3

    .line 109
    :cond_19
    iget-object v0, v0, Ljava/util/Timer$TimerImpl$TimerNode;->right:Ljava/util/Timer$TimerImpl$TimerNode;

    goto :goto_3

    .line 112
    :cond_1c
    iput-object v1, p1, Ljava/util/Timer$TimerImpl$TimerNode;->parent:Ljava/util/Timer$TimerImpl$TimerNode;

    .line 113
    if-nez v1, :cond_23

    .line 114
    iput-object p1, p0, Ljava/util/Timer$TimerImpl$TimerTree;->root:Ljava/util/Timer$TimerImpl$TimerNode;

    .line 120
    :goto_22
    return-void

    .line 115
    :cond_23
    iget-object v2, p1, Ljava/util/Timer$TimerImpl$TimerNode;->task:Ljava/util/TimerTask;

    invoke-virtual {v2}, Ljava/util/TimerTask;->getWhen()J

    move-result-wide v2

    iget-object v4, v1, Ljava/util/Timer$TimerImpl$TimerNode;->task:Ljava/util/TimerTask;

    invoke-virtual {v4}, Ljava/util/TimerTask;->getWhen()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-gez v2, :cond_36

    .line 116
    iput-object p1, v1, Ljava/util/Timer$TimerImpl$TimerNode;->left:Ljava/util/Timer$TimerImpl$TimerNode;

    goto :goto_22

    .line 118
    :cond_36
    iput-object p1, v1, Ljava/util/Timer$TimerImpl$TimerNode;->right:Ljava/util/Timer$TimerImpl$TimerNode;

    goto :goto_22
.end method

.method isEmpty()Z
    .registers 2

    .prologue
    .line 99
    iget-object v0, p0, Ljava/util/Timer$TimerImpl$TimerTree;->root:Ljava/util/Timer$TimerImpl$TimerNode;

    if-nez v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method minimum()Ljava/util/Timer$TimerImpl$TimerNode;
    .registers 2

    .prologue
    .line 169
    iget-object v0, p0, Ljava/util/Timer$TimerImpl$TimerTree;->root:Ljava/util/Timer$TimerImpl$TimerNode;

    invoke-direct {p0, v0}, Ljava/util/Timer$TimerImpl$TimerTree;->minimum(Ljava/util/Timer$TimerImpl$TimerNode;)Ljava/util/Timer$TimerImpl$TimerNode;

    move-result-object v0

    return-object v0
.end method
