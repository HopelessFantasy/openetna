.class public Lcom/broadcom/bt/service/bpp/PrintJob;
.super Ljava/lang/Object;
.source "PrintJob.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/broadcom/bt/service/bpp/PrintJob;",
            ">;"
        }
    .end annotation
.end field

.field public static final PRINT_STATE_CANCELLED:I = 0x4

.field public static final PRINT_STATE_FINISHED:I = 0x3

.field public static final PRINT_STATE_NOT_RESPONDING:I = -0x64

.field public static final PRINT_STATE_NOT_STARTED:I = 0x0

.field public static final PRINT_STATE_PRINTING:I = 0x2

.field public static final PRINT_STATE_QUEUED:I = 0x1


# instance fields
.field public mBipParams:Lcom/broadcom/bt/service/bpp/BipParameters;

.field public mBluetoothAddress:Ljava/lang/String;

.field public mBppParams:Lcom/broadcom/bt/service/bpp/BppParameters;

.field public mCb:Lcom/broadcom/bt/service/bpp/IBluetoothPrinterTaskCallback;

.field public mEndTime:J

.field public mFileFormat:I

.field public mHandle:I

.field public mHeader:Ljava/lang/String;

.field public mJobId:J

.field public mJobStatus:Lcom/broadcom/bt/service/bpp/JobStatus;

.field public mLastStatusUpdateTime:J

.field public mName:Ljava/lang/String;

.field public mObjectResolver:Lcom/broadcom/bt/service/bpp/BppObjectResolver;

.field public mPrintState:I

.field public mPrinterStatus:I

.field public mProcessedBytes:I

.field public mServiceMask:I

.field public mStartTime:J

.field public mTotalBytes:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 237
    new-instance v0, Lcom/broadcom/bt/service/bpp/PrintJob$1;

    invoke-direct {v0}, Lcom/broadcom/bt/service/bpp/PrintJob$1;-><init>()V

    sput-object v0, Lcom/broadcom/bt/service/bpp/PrintJob;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 109
    return-void
.end method

.method public constructor <init>(JLjava/lang/String;IILjava/lang/String;Ljava/lang/String;ILcom/broadcom/bt/service/bpp/BipParameters;Lcom/broadcom/bt/service/bpp/BppParameters;Lcom/broadcom/bt/service/bpp/BppObjectResolver;Lcom/broadcom/bt/service/bpp/IBluetoothPrinterTaskCallback;)V
    .registers 14
    .parameter "jobId"
    .parameter "bluetoothAddress"
    .parameter "serviceMask"
    .parameter "fileFormat"
    .parameter "header"
    .parameter "name"
    .parameter "handle"
    .parameter "bipParams"
    .parameter "bppParams"
    .parameter "objectResolver"
    .parameter "cb"

    .prologue
    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 139
    iput-object p3, p0, Lcom/broadcom/bt/service/bpp/PrintJob;->mBluetoothAddress:Ljava/lang/String;

    .line 140
    iput p4, p0, Lcom/broadcom/bt/service/bpp/PrintJob;->mServiceMask:I

    .line 141
    iput p5, p0, Lcom/broadcom/bt/service/bpp/PrintJob;->mFileFormat:I

    .line 142
    iput-object p6, p0, Lcom/broadcom/bt/service/bpp/PrintJob;->mHeader:Ljava/lang/String;

    .line 143
    iput-object p7, p0, Lcom/broadcom/bt/service/bpp/PrintJob;->mName:Ljava/lang/String;

    .line 144
    iput p8, p0, Lcom/broadcom/bt/service/bpp/PrintJob;->mHandle:I

    .line 145
    iput-object p9, p0, Lcom/broadcom/bt/service/bpp/PrintJob;->mBipParams:Lcom/broadcom/bt/service/bpp/BipParameters;

    .line 146
    iput-object p10, p0, Lcom/broadcom/bt/service/bpp/PrintJob;->mBppParams:Lcom/broadcom/bt/service/bpp/BppParameters;

    .line 147
    iput-object p12, p0, Lcom/broadcom/bt/service/bpp/PrintJob;->mCb:Lcom/broadcom/bt/service/bpp/IBluetoothPrinterTaskCallback;

    .line 148
    iput-wide p1, p0, Lcom/broadcom/bt/service/bpp/PrintJob;->mJobId:J

    .line 149
    iput-object p11, p0, Lcom/broadcom/bt/service/bpp/PrintJob;->mObjectResolver:Lcom/broadcom/bt/service/bpp/BppObjectResolver;

    .line 150
    const/4 v0, 0x0

    iput v0, p0, Lcom/broadcom/bt/service/bpp/PrintJob;->mPrintState:I

    .line 151
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 2
    .parameter "in"

    .prologue
    .line 153
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 154
    invoke-virtual {p0, p1}, Lcom/broadcom/bt/service/bpp/PrintJob;->readFromParcel(Landroid/os/Parcel;)V

    .line 155
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/broadcom/bt/service/bpp/PrintJob$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/broadcom/bt/service/bpp/PrintJob;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 160
    const/4 v0, 0x0

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .registers 6
    .parameter "in"

    .prologue
    const/4 v3, 0x1

    .line 195
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/broadcom/bt/service/bpp/PrintJob;->mJobId:J

    .line 196
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/broadcom/bt/service/bpp/PrintJob;->mPrintState:I

    .line 197
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/broadcom/bt/service/bpp/PrintJob;->mPrinterStatus:I

    .line 198
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/broadcom/bt/service/bpp/PrintJob;->mTotalBytes:I

    .line 199
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/broadcom/bt/service/bpp/PrintJob;->mProcessedBytes:I

    .line 200
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    .line 201
    .local v0, hasValue:B
    if-ne v0, v3, :cond_2e

    .line 202
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/broadcom/bt/service/bpp/JobStatus;

    iput-object v1, p0, Lcom/broadcom/bt/service/bpp/PrintJob;->mJobStatus:Lcom/broadcom/bt/service/bpp/JobStatus;

    .line 205
    :cond_2e
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/broadcom/bt/service/bpp/PrintJob;->mBluetoothAddress:Ljava/lang/String;

    .line 206
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/broadcom/bt/service/bpp/PrintJob;->mServiceMask:I

    .line 207
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/broadcom/bt/service/bpp/PrintJob;->mFileFormat:I

    .line 209
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    .line 210
    if-ne v0, v3, :cond_4c

    .line 211
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/broadcom/bt/service/bpp/PrintJob;->mHeader:Ljava/lang/String;

    .line 214
    :cond_4c
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    .line 215
    if-ne v0, v3, :cond_58

    .line 216
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/broadcom/bt/service/bpp/PrintJob;->mName:Ljava/lang/String;

    .line 219
    :cond_58
    return-void
.end method

.method public refreshLastUpdateTime()V
    .registers 3

    .prologue
    .line 228
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/broadcom/bt/service/bpp/PrintJob;->mLastStatusUpdateTime:J

    .line 229
    return-void
.end method

.method public setEndState()V
    .registers 3

    .prologue
    .line 232
    const/4 v0, 0x3

    iput v0, p0, Lcom/broadcom/bt/service/bpp/PrintJob;->mPrintState:I

    .line 233
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/broadcom/bt/service/bpp/PrintJob;->mEndTime:J

    .line 234
    iget-wide v0, p0, Lcom/broadcom/bt/service/bpp/PrintJob;->mEndTime:J

    iput-wide v0, p0, Lcom/broadcom/bt/service/bpp/PrintJob;->mLastStatusUpdateTime:J

    .line 235
    return-void
.end method

.method public setStartState()V
    .registers 3

    .prologue
    .line 222
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/broadcom/bt/service/bpp/PrintJob;->mStartTime:J

    .line 223
    iget-wide v0, p0, Lcom/broadcom/bt/service/bpp/PrintJob;->mStartTime:J

    iput-wide v0, p0, Lcom/broadcom/bt/service/bpp/PrintJob;->mLastStatusUpdateTime:J

    .line 224
    const/4 v0, 0x2

    iput v0, p0, Lcom/broadcom/bt/service/bpp/PrintJob;->mPrintState:I

    .line 225
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 7
    .parameter "out"
    .parameter "flags"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 165
    iget-wide v0, p0, Lcom/broadcom/bt/service/bpp/PrintJob;->mJobId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 166
    iget v0, p0, Lcom/broadcom/bt/service/bpp/PrintJob;->mPrintState:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 167
    iget v0, p0, Lcom/broadcom/bt/service/bpp/PrintJob;->mPrinterStatus:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 168
    iget v0, p0, Lcom/broadcom/bt/service/bpp/PrintJob;->mTotalBytes:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 169
    iget v0, p0, Lcom/broadcom/bt/service/bpp/PrintJob;->mProcessedBytes:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 170
    iget-object v0, p0, Lcom/broadcom/bt/service/bpp/PrintJob;->mJobStatus:Lcom/broadcom/bt/service/bpp/JobStatus;

    if-eqz v0, :cond_4f

    .line 171
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeByte(B)V

    .line 172
    iget-object v0, p0, Lcom/broadcom/bt/service/bpp/PrintJob;->mJobStatus:Lcom/broadcom/bt/service/bpp/JobStatus;

    invoke-virtual {p1, v0, v2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 176
    :goto_27
    iget-object v0, p0, Lcom/broadcom/bt/service/bpp/PrintJob;->mBluetoothAddress:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 177
    iget v0, p0, Lcom/broadcom/bt/service/bpp/PrintJob;->mServiceMask:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 178
    iget v0, p0, Lcom/broadcom/bt/service/bpp/PrintJob;->mFileFormat:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 179
    iget-object v0, p0, Lcom/broadcom/bt/service/bpp/PrintJob;->mHeader:Ljava/lang/String;

    if-eqz v0, :cond_53

    .line 180
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeByte(B)V

    .line 181
    iget-object v0, p0, Lcom/broadcom/bt/service/bpp/PrintJob;->mHeader:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 185
    :goto_42
    iget-object v0, p0, Lcom/broadcom/bt/service/bpp/PrintJob;->mName:Ljava/lang/String;

    if-eqz v0, :cond_57

    .line 186
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeByte(B)V

    .line 187
    iget-object v0, p0, Lcom/broadcom/bt/service/bpp/PrintJob;->mName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 192
    :goto_4e
    return-void

    .line 174
    :cond_4f
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeByte(B)V

    goto :goto_27

    .line 183
    :cond_53
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeByte(B)V

    goto :goto_42

    .line 189
    :cond_57
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeByte(B)V

    goto :goto_4e
.end method
