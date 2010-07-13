.class public Lcom/android/qualcomm/qcnvitems/QcNvItemTypes$nv_dir_number_type;
.super Ljava/lang/Object;
.source "QcNvItemTypes.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/qualcomm/qcnvitems/QcNvItemTypes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "nv_dir_number_type"
.end annotation


# instance fields
.field dir_number:[B

.field nam:B


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    const/16 v0, 0xa

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/qualcomm/qcnvitems/QcNvItemTypes$nv_dir_number_type;->dir_number:[B

    return-void
.end method
