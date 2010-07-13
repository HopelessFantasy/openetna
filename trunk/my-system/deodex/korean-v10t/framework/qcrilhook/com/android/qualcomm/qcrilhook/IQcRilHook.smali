.class public interface abstract Lcom/android/qualcomm/qcrilhook/IQcRilHook;
.super Ljava/lang/Object;
.source "IQcRilHook.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/qualcomm/qcrilhook/IQcRilHook$QcRilExtendedDbmIntlKddiAocr;
    }
.end annotation


# static fields
.field public static final QCRILHOOK_BASE:I = 0x80000

.field public static final QCRILHOOK_GO_DORMANT:I = 0x80003

.field public static final QCRILHOOK_ME_DEPERSONALIZATION:I = 0x80004

.field public static final QCRILHOOK_NV_READ:I = 0x80001

.field public static final QCRILHOOK_NV_WRITE:I = 0x80002

.field public static final QCRILHOOK_UNSOL_CDMA_BURST_DTMF:I = 0x803e9

.field public static final QCRILHOOK_UNSOL_CDMA_CONT_DTMF_START:I = 0x803ea

.field public static final QCRILHOOK_UNSOL_CDMA_CONT_DTMF_STOP:I = 0x803eb

.field public static final QCRILHOOK_UNSOL_EXTENDED_DBM_INTL:I = 0x803e8

.field public static final QCRILHOOK_UNSOL_LOCAL_RINGBACK_START:I = 0x803ec

.field public static final QCRILHOOK_UNSOL_LOCAL_RINGBACK_STOP:I = 0x803ed


# virtual methods
.method public abstract qcRilGoDormant(Ljava/lang/String;)Z
.end method

.method public abstract registerForExtendedDbmIntl(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForFieldTestData(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract sendQcRilHookMsg(II)Landroid/os/AsyncResult;
.end method

.method public abstract sendQcRilHookMsg(ILjava/lang/String;)Landroid/os/AsyncResult;
.end method

.method public abstract sendQcRilHookMsg(I[B)Landroid/os/AsyncResult;
.end method

.method public abstract unregisterForExtendedDbmIntl(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForFieldTestData(Landroid/os/Handler;)V
.end method
