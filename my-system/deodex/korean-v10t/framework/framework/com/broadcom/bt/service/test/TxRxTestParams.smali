.class public Lcom/broadcom/bt/service/test/TxRxTestParams;
.super Ljava/lang/Object;
.source "TxRxTestParams.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final BD_ADDR_LEN:I = 0x6

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/broadcom/bt/service/test/TxRxTestParams;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public bb_packet_len:I

.field public bb_packet_type:B

.field public carrier_enable:B

.field public frequency:B

.field public hopping_mode:B

.field public logical_channel:B

.field public mode:B

.field public modulation_type:B

.field public remote_bd:[B

.field public report_period:I

.field public testmode:I

.field public tx_power_level:B

.field public tx_power_option:B


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 71
    new-instance v0, Lcom/broadcom/bt/service/test/TxRxTestParams$1;

    invoke-direct {v0}, Lcom/broadcom/bt/service/test/TxRxTestParams$1;-><init>()V

    sput-object v0, Lcom/broadcom/bt/service/test/TxRxTestParams;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    return-void
.end method

.method public constructor <init>(IB[BIBBBBBBBBI)V
    .registers 14
    .parameter "testmode"
    .parameter "carrier_enable"
    .parameter "remote_bd"
    .parameter "report_period"
    .parameter "frequency"
    .parameter "mode"
    .parameter "hopping_mode"
    .parameter "modulation_type"
    .parameter "logical_channel"
    .parameter "tx_power_level"
    .parameter "tx_power_option"
    .parameter "bb_packet_type"
    .parameter "bb_packet_len"

    .prologue
    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    iput p1, p0, Lcom/broadcom/bt/service/test/TxRxTestParams;->testmode:I

    .line 111
    iput-byte p2, p0, Lcom/broadcom/bt/service/test/TxRxTestParams;->carrier_enable:B

    .line 112
    iput-object p3, p0, Lcom/broadcom/bt/service/test/TxRxTestParams;->remote_bd:[B

    .line 113
    iput p4, p0, Lcom/broadcom/bt/service/test/TxRxTestParams;->report_period:I

    .line 114
    iput-byte p5, p0, Lcom/broadcom/bt/service/test/TxRxTestParams;->frequency:B

    .line 115
    iput-byte p6, p0, Lcom/broadcom/bt/service/test/TxRxTestParams;->mode:B

    .line 116
    iput-byte p7, p0, Lcom/broadcom/bt/service/test/TxRxTestParams;->hopping_mode:B

    .line 117
    iput-byte p8, p0, Lcom/broadcom/bt/service/test/TxRxTestParams;->modulation_type:B

    .line 118
    iput-byte p9, p0, Lcom/broadcom/bt/service/test/TxRxTestParams;->logical_channel:B

    .line 119
    iput-byte p10, p0, Lcom/broadcom/bt/service/test/TxRxTestParams;->tx_power_level:B

    .line 120
    iput-byte p11, p0, Lcom/broadcom/bt/service/test/TxRxTestParams;->tx_power_option:B

    .line 121
    iput-byte p12, p0, Lcom/broadcom/bt/service/test/TxRxTestParams;->bb_packet_type:B

    .line 122
    iput p13, p0, Lcom/broadcom/bt/service/test/TxRxTestParams;->bb_packet_len:I

    .line 123
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 2
    .parameter "in"

    .prologue
    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 132
    invoke-virtual {p0, p1}, Lcom/broadcom/bt/service/test/TxRxTestParams;->readFromParcel(Landroid/os/Parcel;)V

    .line 133
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/broadcom/bt/service/test/TxRxTestParams$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/broadcom/bt/service/test/TxRxTestParams;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public static hexStringToByteArray(Ljava/lang/String;)[B
    .registers 8
    .parameter "s"

    .prologue
    const/16 v6, 0x10

    .line 191
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 193
    .local v2, len:I
    const/16 v3, 0xc

    if-ge v3, v2, :cond_c

    .line 194
    const/16 v2, 0xc

    .line 196
    :cond_c
    div-int/lit8 v3, v2, 0x2

    new-array v0, v3, [B

    .line 197
    .local v0, data:[B
    const/4 v1, 0x0

    .local v1, i:I
    :goto_11
    if-ge v1, v2, :cond_30

    .line 198
    div-int/lit8 v3, v1, 0x2

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4, v6}, Ljava/lang/Character;->digit(CI)I

    move-result v4

    shl-int/lit8 v4, v4, 0x4

    add-int/lit8 v5, v1, 0x1

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5, v6}, Ljava/lang/Character;->digit(CI)I

    move-result v5

    add-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v0, v3

    .line 197
    add-int/lit8 v1, v1, 0x2

    goto :goto_11

    .line 201
    :cond_30
    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 136
    const/4 v0, 0x0

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .registers 4
    .parameter "in"

    .prologue
    .line 169
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/broadcom/bt/service/test/TxRxTestParams;->testmode:I

    .line 170
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    iput-byte v1, p0, Lcom/broadcom/bt/service/test/TxRxTestParams;->carrier_enable:B

    .line 171
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 172
    .local v0, temp:I
    if-eqz v0, :cond_58

    .line 173
    new-array v1, v0, [B

    iput-object v1, p0, Lcom/broadcom/bt/service/test/TxRxTestParams;->remote_bd:[B

    .line 174
    iget-object v1, p0, Lcom/broadcom/bt/service/test/TxRxTestParams;->remote_bd:[B

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readByteArray([B)V

    .line 178
    :goto_1b
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/broadcom/bt/service/test/TxRxTestParams;->report_period:I

    .line 179
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    iput-byte v1, p0, Lcom/broadcom/bt/service/test/TxRxTestParams;->frequency:B

    .line 180
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    iput-byte v1, p0, Lcom/broadcom/bt/service/test/TxRxTestParams;->mode:B

    .line 181
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    iput-byte v1, p0, Lcom/broadcom/bt/service/test/TxRxTestParams;->hopping_mode:B

    .line 182
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    iput-byte v1, p0, Lcom/broadcom/bt/service/test/TxRxTestParams;->modulation_type:B

    .line 183
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    iput-byte v1, p0, Lcom/broadcom/bt/service/test/TxRxTestParams;->logical_channel:B

    .line 184
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    iput-byte v1, p0, Lcom/broadcom/bt/service/test/TxRxTestParams;->tx_power_level:B

    .line 185
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    iput-byte v1, p0, Lcom/broadcom/bt/service/test/TxRxTestParams;->tx_power_option:B

    .line 186
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    iput-byte v1, p0, Lcom/broadcom/bt/service/test/TxRxTestParams;->bb_packet_type:B

    .line 187
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/broadcom/bt/service/test/TxRxTestParams;->bb_packet_len:I

    .line 188
    return-void

    .line 176
    :cond_58
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/broadcom/bt/service/test/TxRxTestParams;->remote_bd:[B

    goto :goto_1b
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .parameter "out"
    .parameter "flags"

    .prologue
    .line 140
    iget v0, p0, Lcom/broadcom/bt/service/test/TxRxTestParams;->testmode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 141
    iget-byte v0, p0, Lcom/broadcom/bt/service/test/TxRxTestParams;->carrier_enable:B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 142
    iget-object v0, p0, Lcom/broadcom/bt/service/test/TxRxTestParams;->remote_bd:[B

    if-eqz v0, :cond_4c

    .line 143
    iget-object v0, p0, Lcom/broadcom/bt/service/test/TxRxTestParams;->remote_bd:[B

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 144
    iget-object v0, p0, Lcom/broadcom/bt/service/test/TxRxTestParams;->remote_bd:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 148
    :goto_19
    iget v0, p0, Lcom/broadcom/bt/service/test/TxRxTestParams;->report_period:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 149
    iget-byte v0, p0, Lcom/broadcom/bt/service/test/TxRxTestParams;->frequency:B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 150
    iget-byte v0, p0, Lcom/broadcom/bt/service/test/TxRxTestParams;->mode:B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 151
    iget-byte v0, p0, Lcom/broadcom/bt/service/test/TxRxTestParams;->hopping_mode:B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 152
    iget-byte v0, p0, Lcom/broadcom/bt/service/test/TxRxTestParams;->modulation_type:B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 153
    iget-byte v0, p0, Lcom/broadcom/bt/service/test/TxRxTestParams;->logical_channel:B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 154
    iget-byte v0, p0, Lcom/broadcom/bt/service/test/TxRxTestParams;->tx_power_level:B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 155
    iget-byte v0, p0, Lcom/broadcom/bt/service/test/TxRxTestParams;->tx_power_option:B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 156
    iget-byte v0, p0, Lcom/broadcom/bt/service/test/TxRxTestParams;->bb_packet_type:B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 157
    iget v0, p0, Lcom/broadcom/bt/service/test/TxRxTestParams;->bb_packet_len:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 158
    return-void

    .line 146
    :cond_4c
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_19
.end method
