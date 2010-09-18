.class public Lcom/android/qualcomm/qcnvitems/IQcNvItems$AutoAnswer;
.super Ljava/lang/Object;
.source "IQcNvItems.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/qualcomm/qcnvitems/IQcNvItems;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AutoAnswer"
.end annotation


# instance fields
.field enable:Z

.field rings:B


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getRings()I
    .registers 2

    .prologue
    .line 100
    iget-byte v0, p0, Lcom/android/qualcomm/qcnvitems/IQcNvItems$AutoAnswer;->rings:B

    return v0
.end method

.method public isEnabled()Z
    .registers 2

    .prologue
    .line 96
    iget-boolean v0, p0, Lcom/android/qualcomm/qcnvitems/IQcNvItems$AutoAnswer;->enable:Z

    return v0
.end method
