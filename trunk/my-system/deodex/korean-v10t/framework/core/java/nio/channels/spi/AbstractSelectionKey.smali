.class public abstract Ljava/nio/channels/spi/AbstractSelectionKey;
.super Ljava/nio/channels/SelectionKey;
.source "AbstractSelectionKey.java"


# instance fields
.field isValid:Z


# direct methods
.method protected constructor <init>()V
    .registers 2

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/nio/channels/SelectionKey;-><init>()V

    .line 32
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/nio/channels/spi/AbstractSelectionKey;->isValid:Z

    .line 41
    return-void
.end method


# virtual methods
.method public final cancel()V
    .registers 2

    .prologue
    .line 65
    iget-boolean v0, p0, Ljava/nio/channels/spi/AbstractSelectionKey;->isValid:Z

    if-eqz v0, :cond_10

    .line 66
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/nio/channels/spi/AbstractSelectionKey;->isValid:Z

    .line 67
    invoke-virtual {p0}, Ljava/nio/channels/spi/AbstractSelectionKey;->selector()Ljava/nio/channels/Selector;

    move-result-object v0

    check-cast v0, Ljava/nio/channels/spi/AbstractSelector;

    invoke-virtual {v0, p0}, Ljava/nio/channels/spi/AbstractSelector;->cancel(Ljava/nio/channels/SelectionKey;)V

    .line 69
    :cond_10
    return-void
.end method

.method public final isValid()Z
    .registers 2

    .prologue
    .line 52
    iget-boolean v0, p0, Ljava/nio/channels/spi/AbstractSelectionKey;->isValid:Z

    return v0
.end method
