.class public Lcom/android/mms/dom/events/EventTargetImpl;
.super Ljava/lang/Object;
.source "EventTargetImpl.java"

# interfaces
.implements Lorg/w3c/dom/events/EventTarget;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/dom/events/EventTargetImpl$EventListenerEntry;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "EventTargetImpl"


# instance fields
.field private mListenerEntries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/mms/dom/events/EventTargetImpl$EventListenerEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mNodeTarget:Lorg/w3c/dom/events/EventTarget;


# direct methods
.method public constructor <init>(Lorg/w3c/dom/events/EventTarget;)V
    .registers 2
    .parameter "target"

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Lcom/android/mms/dom/events/EventTargetImpl;->mNodeTarget:Lorg/w3c/dom/events/EventTarget;

    .line 51
    return-void
.end method


# virtual methods
.method public addEventListener(Ljava/lang/String;Lorg/w3c/dom/events/EventListener;Z)V
    .registers 6
    .parameter "type"
    .parameter "listener"
    .parameter "useCapture"

    .prologue
    .line 54
    if-eqz p1, :cond_c

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    if-nez p2, :cond_d

    .line 65
    :cond_c
    :goto_c
    return-void

    .line 59
    :cond_d
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/mms/dom/events/EventTargetImpl;->removeEventListener(Ljava/lang/String;Lorg/w3c/dom/events/EventListener;Z)V

    .line 61
    iget-object v0, p0, Lcom/android/mms/dom/events/EventTargetImpl;->mListenerEntries:Ljava/util/ArrayList;

    if-nez v0, :cond_1b

    .line 62
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/mms/dom/events/EventTargetImpl;->mListenerEntries:Ljava/util/ArrayList;

    .line 64
    :cond_1b
    iget-object v0, p0, Lcom/android/mms/dom/events/EventTargetImpl;->mListenerEntries:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/mms/dom/events/EventTargetImpl$EventListenerEntry;

    invoke-direct {v1, p1, p2, p3}, Lcom/android/mms/dom/events/EventTargetImpl$EventListenerEntry;-><init>(Ljava/lang/String;Lorg/w3c/dom/events/EventListener;Z)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_c
.end method

.method public dispatchEvent(Lorg/w3c/dom/events/Event;)Z
    .registers 10
    .parameter "evt"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/events/EventException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 69
    move-object v0, p1

    check-cast v0, Lcom/android/mms/dom/events/EventImpl;

    move-object v2, v0

    .line 71
    .local v2, eventImpl:Lcom/android/mms/dom/events/EventImpl;
    invoke-virtual {v2}, Lcom/android/mms/dom/events/EventImpl;->isInitialized()Z

    move-result v5

    if-nez v5, :cond_13

    .line 72
    new-instance v5, Lorg/w3c/dom/events/EventException;

    const-string v6, "Event not initialized"

    invoke-direct {v5, v7, v6}, Lorg/w3c/dom/events/EventException;-><init>(SLjava/lang/String;)V

    throw v5

    .line 74
    :cond_13
    invoke-virtual {v2}, Lcom/android/mms/dom/events/EventImpl;->getType()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_25

    invoke-virtual {v2}, Lcom/android/mms/dom/events/EventImpl;->getType()Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2d

    .line 75
    :cond_25
    new-instance v5, Lorg/w3c/dom/events/EventException;

    const-string v6, "Unspecified even type"

    invoke-direct {v5, v7, v6}, Lorg/w3c/dom/events/EventException;-><init>(SLjava/lang/String;)V

    throw v5

    .line 80
    :cond_2d
    iget-object v5, p0, Lcom/android/mms/dom/events/EventTargetImpl;->mNodeTarget:Lorg/w3c/dom/events/EventTarget;

    invoke-virtual {v2, v5}, Lcom/android/mms/dom/events/EventImpl;->setTarget(Lorg/w3c/dom/events/EventTarget;)V

    .line 90
    const/4 v5, 0x2

    invoke-virtual {v2, v5}, Lcom/android/mms/dom/events/EventImpl;->setEventPhase(S)V

    .line 91
    iget-object v5, p0, Lcom/android/mms/dom/events/EventTargetImpl;->mNodeTarget:Lorg/w3c/dom/events/EventTarget;

    invoke-virtual {v2, v5}, Lcom/android/mms/dom/events/EventImpl;->setCurrentTarget(Lorg/w3c/dom/events/EventTarget;)V

    .line 92
    invoke-virtual {v2}, Lcom/android/mms/dom/events/EventImpl;->isPropogationStopped()Z

    move-result v5

    if-nez v5, :cond_78

    iget-object v5, p0, Lcom/android/mms/dom/events/EventTargetImpl;->mListenerEntries:Ljava/util/ArrayList;

    if-eqz v5, :cond_78

    .line 93
    const/4 v3, 0x0

    .local v3, i:I
    :goto_46
    iget-object v5, p0, Lcom/android/mms/dom/events/EventTargetImpl;->mListenerEntries:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v3, v5, :cond_78

    .line 94
    iget-object v5, p0, Lcom/android/mms/dom/events/EventTargetImpl;->mListenerEntries:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/mms/dom/events/EventTargetImpl$EventListenerEntry;

    .line 95
    .local v4, listenerEntry:Lcom/android/mms/dom/events/EventTargetImpl$EventListenerEntry;
    iget-boolean v5, v4, Lcom/android/mms/dom/events/EventTargetImpl$EventListenerEntry;->mUseCapture:Z

    if-nez v5, :cond_6b

    iget-object v5, v4, Lcom/android/mms/dom/events/EventTargetImpl$EventListenerEntry;->mType:Ljava/lang/String;

    invoke-virtual {v2}, Lcom/android/mms/dom/events/EventImpl;->getType()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6b

    .line 98
    :try_start_66
    iget-object v5, v4, Lcom/android/mms/dom/events/EventTargetImpl$EventListenerEntry;->mListener:Lorg/w3c/dom/events/EventListener;

    invoke-interface {v5, v2}, Lorg/w3c/dom/events/EventListener;->handleEvent(Lorg/w3c/dom/events/Event;)V
    :try_end_6b
    .catch Ljava/lang/Exception; {:try_start_66 .. :try_end_6b} :catch_6e

    .line 93
    :cond_6b
    :goto_6b
    add-int/lit8 v3, v3, 0x1

    goto :goto_46

    .line 100
    :catch_6e
    move-exception v5

    move-object v1, v5

    .line 103
    .local v1, e:Ljava/lang/Exception;
    const-string v5, "EventTargetImpl"

    const-string v6, "Catched EventListener exception"

    invoke-static {v5, v6, v1}, Lcom/android/mms/MmsLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_6b

    .line 109
    .end local v1           #e:Ljava/lang/Exception;
    .end local v3           #i:I
    .end local v4           #listenerEntry:Lcom/android/mms/dom/events/EventTargetImpl$EventListenerEntry;
    :cond_78
    invoke-virtual {v2}, Lcom/android/mms/dom/events/EventImpl;->getBubbles()Z

    move-result v5

    if-eqz v5, :cond_7e

    .line 113
    :cond_7e
    invoke-virtual {v2}, Lcom/android/mms/dom/events/EventImpl;->isPreventDefault()Z

    move-result v5

    return v5
.end method

.method public removeEventListener(Ljava/lang/String;Lorg/w3c/dom/events/EventListener;Z)V
    .registers 7
    .parameter "type"
    .parameter "listener"
    .parameter "useCapture"

    .prologue
    .line 118
    iget-object v2, p0, Lcom/android/mms/dom/events/EventTargetImpl;->mListenerEntries:Ljava/util/ArrayList;

    if-nez v2, :cond_5

    .line 130
    :cond_4
    :goto_4
    return-void

    .line 121
    :cond_5
    const/4 v0, 0x0

    .local v0, i:I
    :goto_6
    iget-object v2, p0, Lcom/android/mms/dom/events/EventTargetImpl;->mListenerEntries:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_4

    .line 122
    iget-object v2, p0, Lcom/android/mms/dom/events/EventTargetImpl;->mListenerEntries:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/mms/dom/events/EventTargetImpl$EventListenerEntry;

    .line 123
    .local v1, listenerEntry:Lcom/android/mms/dom/events/EventTargetImpl$EventListenerEntry;
    iget-boolean v2, v1, Lcom/android/mms/dom/events/EventTargetImpl$EventListenerEntry;->mUseCapture:Z

    if-ne v2, p3, :cond_2c

    iget-object v2, v1, Lcom/android/mms/dom/events/EventTargetImpl$EventListenerEntry;->mListener:Lorg/w3c/dom/events/EventListener;

    if-ne v2, p2, :cond_2c

    iget-object v2, v1, Lcom/android/mms/dom/events/EventTargetImpl$EventListenerEntry;->mType:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2c

    .line 126
    iget-object v2, p0, Lcom/android/mms/dom/events/EventTargetImpl;->mListenerEntries:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_4

    .line 121
    :cond_2c
    add-int/lit8 v0, v0, 0x1

    goto :goto_6
.end method
