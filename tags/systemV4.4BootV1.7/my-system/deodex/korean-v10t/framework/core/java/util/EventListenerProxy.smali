.class public abstract Ljava/util/EventListenerProxy;
.super Ljava/lang/Object;
.source "EventListenerProxy.java"

# interfaces
.implements Ljava/util/EventListener;


# instance fields
.field private final listener:Ljava/util/EventListener;


# direct methods
.method public constructor <init>(Ljava/util/EventListener;)V
    .registers 2
    .parameter "listener"

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Ljava/util/EventListenerProxy;->listener:Ljava/util/EventListener;

    .line 40
    return-void
.end method


# virtual methods
.method public getListener()Ljava/util/EventListener;
    .registers 2

    .prologue
    .line 49
    iget-object v0, p0, Ljava/util/EventListenerProxy;->listener:Ljava/util/EventListener;

    return-object v0
.end method
