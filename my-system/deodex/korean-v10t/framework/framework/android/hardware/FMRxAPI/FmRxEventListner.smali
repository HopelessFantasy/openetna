.class Landroid/hardware/FMRxAPI/FmRxEventListner;
.super Ljava/lang/Object;
.source "FmRxEventListner.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "FMRadio"


# instance fields
.field private final ABOVE_TH_EVENT:I

.field private final AUDIO_EVENT:I

.field private final BELOW_TH_EVENT:I

.field private final ERROR_EVENT:I

.field private final EVENT_LISTEN:I

.field private final MONO_EVENT:I

.field private final PS_EVENT:I

.field private final RAW_RDS_EVENT:I

.field private final RDS_AVAL_EVENT:I

.field private final RDS_NOT_AVAL_EVENT:I

.field private final READY_EVENT:I

.field private final RT_EVENT:I

.field private final SCAN_NEXT_EVENT:I

.field private final SEEK_COMPLETE_EVENT:I

.field private final SIGNAL_EVENT:I

.field private final STEREO_EVENT:I

.field private final SYNC_EVENT:I

.field private final TUNE_EVENT:I

.field mRxEvent:Landroid/hardware/FMRxAPI/FmReceiver$FmRxEventType;

.field private mThread:Ljava/lang/Thread;


# direct methods
.method constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput v1, p0, Landroid/hardware/FMRxAPI/FmRxEventListner;->EVENT_LISTEN:I

    .line 38
    const/4 v0, 0x0

    iput v0, p0, Landroid/hardware/FMRxAPI/FmRxEventListner;->READY_EVENT:I

    .line 39
    iput v1, p0, Landroid/hardware/FMRxAPI/FmRxEventListner;->TUNE_EVENT:I

    .line 40
    const/4 v0, 0x2

    iput v0, p0, Landroid/hardware/FMRxAPI/FmRxEventListner;->SEEK_COMPLETE_EVENT:I

    .line 41
    const/4 v0, 0x3

    iput v0, p0, Landroid/hardware/FMRxAPI/FmRxEventListner;->SCAN_NEXT_EVENT:I

    .line 42
    const/4 v0, 0x4

    iput v0, p0, Landroid/hardware/FMRxAPI/FmRxEventListner;->SYNC_EVENT:I

    .line 43
    const/4 v0, 0x5

    iput v0, p0, Landroid/hardware/FMRxAPI/FmRxEventListner;->SIGNAL_EVENT:I

    .line 44
    const/4 v0, 0x6

    iput v0, p0, Landroid/hardware/FMRxAPI/FmRxEventListner;->AUDIO_EVENT:I

    .line 45
    const/4 v0, 0x7

    iput v0, p0, Landroid/hardware/FMRxAPI/FmRxEventListner;->RAW_RDS_EVENT:I

    .line 46
    const/16 v0, 0x8

    iput v0, p0, Landroid/hardware/FMRxAPI/FmRxEventListner;->RT_EVENT:I

    .line 47
    const/16 v0, 0x9

    iput v0, p0, Landroid/hardware/FMRxAPI/FmRxEventListner;->PS_EVENT:I

    .line 48
    const/16 v0, 0xa

    iput v0, p0, Landroid/hardware/FMRxAPI/FmRxEventListner;->ERROR_EVENT:I

    .line 49
    const/16 v0, 0xb

    iput v0, p0, Landroid/hardware/FMRxAPI/FmRxEventListner;->BELOW_TH_EVENT:I

    .line 50
    const/16 v0, 0xc

    iput v0, p0, Landroid/hardware/FMRxAPI/FmRxEventListner;->ABOVE_TH_EVENT:I

    .line 51
    const/16 v0, 0xd

    iput v0, p0, Landroid/hardware/FMRxAPI/FmRxEventListner;->STEREO_EVENT:I

    .line 52
    const/16 v0, 0xe

    iput v0, p0, Landroid/hardware/FMRxAPI/FmRxEventListner;->MONO_EVENT:I

    .line 53
    const/16 v0, 0xf

    iput v0, p0, Landroid/hardware/FMRxAPI/FmRxEventListner;->RDS_AVAL_EVENT:I

    .line 54
    const/16 v0, 0x10

    iput v0, p0, Landroid/hardware/FMRxAPI/FmRxEventListner;->RDS_NOT_AVAL_EVENT:I

    return-void
.end method


# virtual methods
.method public startListner(ILandroid/hardware/FMRxAPI/FmRxEvCallbacks;)V
    .registers 4
    .parameter "fd"
    .parameter "cb"

    .prologue
    .line 60
    new-instance v0, Landroid/hardware/FMRxAPI/FmRxEventListner$1;

    invoke-direct {v0, p0, p1, p2}, Landroid/hardware/FMRxAPI/FmRxEventListner$1;-><init>(Landroid/hardware/FMRxAPI/FmRxEventListner;ILandroid/hardware/FMRxAPI/FmRxEvCallbacks;)V

    iput-object v0, p0, Landroid/hardware/FMRxAPI/FmRxEventListner;->mThread:Ljava/lang/Thread;

    .line 131
    iget-object v0, p0, Landroid/hardware/FMRxAPI/FmRxEventListner;->mThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 132
    return-void
.end method

.method public stopListener()V
    .registers 2

    .prologue
    .line 135
    iget-object v0, p0, Landroid/hardware/FMRxAPI/FmRxEventListner;->mThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->stop()V

    .line 136
    return-void
.end method
