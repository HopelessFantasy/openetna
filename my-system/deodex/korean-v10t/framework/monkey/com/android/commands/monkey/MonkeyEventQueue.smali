.class public Lcom/android/commands/monkey/MonkeyEventQueue;
.super Ljava/util/LinkedList;
.source "MonkeyEventQueue.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/LinkedList",
        "<",
        "Lcom/android/commands/monkey/MonkeyEvent;",
        ">;"
    }
.end annotation


# instance fields
.field private mThrottle:J


# direct methods
.method public constructor <init>(J)V
    .registers 3
    .parameter "throttle"

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/util/LinkedList;-><init>()V

    .line 31
    iput-wide p1, p0, Lcom/android/commands/monkey/MonkeyEventQueue;->mThrottle:J

    .line 32
    return-void
.end method


# virtual methods
.method public addLast(Lcom/android/commands/monkey/MonkeyEvent;)V
    .registers 5
    .parameter "e"

    .prologue
    .line 36
    invoke-super {p0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 37
    invoke-virtual {p1}, Lcom/android/commands/monkey/MonkeyEvent;->isThrottlable()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 38
    new-instance v0, Lcom/android/commands/monkey/MonkeyThrottleEvent;

    iget-wide v1, p0, Lcom/android/commands/monkey/MonkeyEventQueue;->mThrottle:J

    invoke-direct {v0, v1, v2}, Lcom/android/commands/monkey/MonkeyThrottleEvent;-><init>(J)V

    invoke-super {p0, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 40
    :cond_13
    return-void
.end method

.method public bridge synthetic addLast(Ljava/lang/Object;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 25
    check-cast p1, Lcom/android/commands/monkey/MonkeyEvent;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/commands/monkey/MonkeyEventQueue;->addLast(Lcom/android/commands/monkey/MonkeyEvent;)V

    return-void
.end method
