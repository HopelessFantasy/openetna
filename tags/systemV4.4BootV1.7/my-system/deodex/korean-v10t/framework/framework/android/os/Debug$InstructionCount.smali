.class public Landroid/os/Debug$InstructionCount;
.super Ljava/lang/Object;
.source "Debug.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/Debug;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InstructionCount"
.end annotation


# static fields
.field private static final NUM_INSTR:I = 0x100


# instance fields
.field private mCounts:[I


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 683
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 684
    const/16 v0, 0x100

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/os/Debug$InstructionCount;->mCounts:[I

    .line 685
    return-void
.end method


# virtual methods
.method public collect()Z
    .registers 3

    .prologue
    .line 709
    :try_start_0
    invoke-static {}, Ldalvik/system/VMDebug;->stopInstructionCounting()V

    .line 710
    iget-object v1, p0, Landroid/os/Debug$InstructionCount;->mCounts:[I

    invoke-static {v1}, Ldalvik/system/VMDebug;->getInstructionCount([I)V
    :try_end_8
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_8} :catch_a

    .line 714
    const/4 v1, 0x1

    :goto_9
    return v1

    .line 711
    :catch_a
    move-exception v1

    move-object v0, v1

    .line 712
    .local v0, uoe:Ljava/lang/UnsupportedOperationException;
    const/4 v1, 0x0

    goto :goto_9
.end method

.method public globalMethodInvocations()I
    .registers 4

    .prologue
    .line 733
    const/4 v0, 0x0

    .line 736
    .local v0, count:I
    iget-object v1, p0, Landroid/os/Debug$InstructionCount;->mCounts:[I

    const/16 v2, 0x6e

    aget v1, v1, v2

    add-int/2addr v0, v1

    .line 737
    iget-object v1, p0, Landroid/os/Debug$InstructionCount;->mCounts:[I

    const/16 v2, 0x6f

    aget v1, v1, v2

    add-int/2addr v0, v1

    .line 738
    iget-object v1, p0, Landroid/os/Debug$InstructionCount;->mCounts:[I

    const/16 v2, 0x70

    aget v1, v1, v2

    add-int/2addr v0, v1

    .line 739
    iget-object v1, p0, Landroid/os/Debug$InstructionCount;->mCounts:[I

    const/16 v2, 0x71

    aget v1, v1, v2

    add-int/2addr v0, v1

    .line 740
    iget-object v1, p0, Landroid/os/Debug$InstructionCount;->mCounts:[I

    const/16 v2, 0x72

    aget v1, v1, v2

    add-int/2addr v0, v1

    .line 741
    iget-object v1, p0, Landroid/os/Debug$InstructionCount;->mCounts:[I

    const/16 v2, 0x74

    aget v1, v1, v2

    add-int/2addr v0, v1

    .line 742
    iget-object v1, p0, Landroid/os/Debug$InstructionCount;->mCounts:[I

    const/16 v2, 0x75

    aget v1, v1, v2

    add-int/2addr v0, v1

    .line 743
    iget-object v1, p0, Landroid/os/Debug$InstructionCount;->mCounts:[I

    const/16 v2, 0x76

    aget v1, v1, v2

    add-int/2addr v0, v1

    .line 744
    iget-object v1, p0, Landroid/os/Debug$InstructionCount;->mCounts:[I

    const/16 v2, 0x77

    aget v1, v1, v2

    add-int/2addr v0, v1

    .line 745
    iget-object v1, p0, Landroid/os/Debug$InstructionCount;->mCounts:[I

    const/16 v2, 0x78

    aget v1, v1, v2

    add-int/2addr v0, v1

    .line 747
    iget-object v1, p0, Landroid/os/Debug$InstructionCount;->mCounts:[I

    const/16 v2, 0xf8

    aget v1, v1, v2

    add-int/2addr v0, v1

    .line 748
    iget-object v1, p0, Landroid/os/Debug$InstructionCount;->mCounts:[I

    const/16 v2, 0xf9

    aget v1, v1, v2

    add-int/2addr v0, v1

    .line 749
    iget-object v1, p0, Landroid/os/Debug$InstructionCount;->mCounts:[I

    const/16 v2, 0xfa

    aget v1, v1, v2

    add-int/2addr v0, v1

    .line 750
    iget-object v1, p0, Landroid/os/Debug$InstructionCount;->mCounts:[I

    const/16 v2, 0xfb

    aget v1, v1, v2

    add-int/2addr v0, v1

    .line 751
    return v0
.end method

.method public globalTotal()I
    .registers 4

    .prologue
    .line 722
    const/4 v0, 0x0

    .line 723
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_2
    const/16 v2, 0x100

    if-ge v1, v2, :cond_e

    .line 724
    iget-object v2, p0, Landroid/os/Debug$InstructionCount;->mCounts:[I

    aget v2, v2, v1

    add-int/2addr v0, v2

    .line 723
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 725
    :cond_e
    return v0
.end method

.method public resetAndStart()Z
    .registers 3

    .prologue
    .line 695
    :try_start_0
    invoke-static {}, Ldalvik/system/VMDebug;->startInstructionCounting()V

    .line 696
    invoke-static {}, Ldalvik/system/VMDebug;->resetInstructionCount()V
    :try_end_6
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_6} :catch_8

    .line 700
    const/4 v1, 0x1

    :goto_7
    return v1

    .line 697
    :catch_8
    move-exception v1

    move-object v0, v1

    .line 698
    .local v0, uoe:Ljava/lang/UnsupportedOperationException;
    const/4 v1, 0x0

    goto :goto_7
.end method
