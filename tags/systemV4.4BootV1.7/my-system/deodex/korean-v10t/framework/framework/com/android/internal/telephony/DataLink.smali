.class public abstract Lcom/android/internal/telephony/DataLink;
.super Landroid/os/Handler;
.source "DataLink.java"

# interfaces
.implements Lcom/android/internal/telephony/DataLinkInterface;


# instance fields
.field protected dataConnection:Lcom/android/internal/telephony/DataConnectionTracker;

.field protected mLinkChangeRegistrant:Landroid/os/Registrant;


# direct methods
.method protected constructor <init>(Lcom/android/internal/telephony/DataConnectionTracker;)V
    .registers 2
    .parameter "dc"

    .prologue
    .line 33
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/android/internal/telephony/DataLink;->dataConnection:Lcom/android/internal/telephony/DataConnectionTracker;

    .line 35
    return-void
.end method


# virtual methods
.method public setOnLinkChange(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 5
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 38
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    iput-object v0, p0, Lcom/android/internal/telephony/DataLink;->mLinkChangeRegistrant:Landroid/os/Registrant;

    .line 39
    return-void
.end method
