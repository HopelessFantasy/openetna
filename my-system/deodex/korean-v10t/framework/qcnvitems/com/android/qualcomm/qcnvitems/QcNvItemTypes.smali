.class public Lcom/android/qualcomm/qcnvitems/QcNvItemTypes;
.super Ljava/lang/Object;
.source "QcNvItemTypes.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/qualcomm/qcnvitems/QcNvItemTypes$nv_auto_answer_type;,
        Lcom/android/qualcomm/qcnvitems/QcNvItemTypes$nv_sid_nid_type;,
        Lcom/android/qualcomm/qcnvitems/QcNvItemTypes$nv_sid_nid_pair_type;,
        Lcom/android/qualcomm/qcnvitems/QcNvItemTypes$nv_dir_number_type;,
        Lcom/android/qualcomm/qcnvitems/QcNvItemTypes$nv_imsi_11_12_type;,
        Lcom/android/qualcomm/qcnvitems/QcNvItemTypes$nv_min_type;
    }
.end annotation


# static fields
.field public static final NV_DIR_NUMBER_SIZ:I = 0xa

.field public static final NV_MAX_MINS:I = 0x2

.field public static final NV_MAX_SID_NID:I = 0x1

.field public static final NV_NUM_MINS:I = 0x2

.field public static final SIZE_OF_BYTE:I = 0x1

.field public static final SIZE_OF_INT:I = 0x4

.field public static final SIZE_OF_MDN:I = 0xb

.field public static final SIZE_OF_NV_AUTO_ANSWER:I = 0x2

.field public static final SIZE_OF_NV_IMSI_11_12:I = 0x2

.field public static final SIZE_OF_NV_MIN:I = 0x9

.field public static final SIZE_OF_NV_SID_NID:I = 0x9

.field public static final SIZE_OF_NV_SID_NID_PAIR:I = 0x4


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    return-void
.end method
