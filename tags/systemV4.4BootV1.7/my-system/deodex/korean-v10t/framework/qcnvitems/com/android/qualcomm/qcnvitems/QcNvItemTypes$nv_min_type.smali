.class public Lcom/android/qualcomm/qcnvitems/QcNvItemTypes$nv_min_type;
.super Ljava/lang/Object;
.source "QcNvItemTypes.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/qualcomm/qcnvitems/QcNvItemTypes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "nv_min_type"
.end annotation


# instance fields
.field min:[I

.field nam:B


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/qualcomm/qcnvitems/QcNvItemTypes$nv_min_type;->min:[I

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 28
    iget-object v0, p0, Lcom/android/qualcomm/qcnvitems/QcNvItemTypes$nv_min_type;->min:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public valueOf(Ljava/lang/String;)V
    .registers 5
    .parameter "minString"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/android/qualcomm/qcnvitems/QcNvItemTypes$nv_min_type;->min:[I

    const/4 v1, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aput v2, v0, v1

    .line 33
    return-void
.end method
