.class Lcom/google/android/mms/pdu/PduComposer$BufferStack;
.super Ljava/lang/Object;
.source "PduComposer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/mms/pdu/PduComposer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BufferStack"
.end annotation


# instance fields
.field private stack:Lcom/google/android/mms/pdu/PduComposer$LengthRecordNode;

.field stackSize:I

.field final synthetic this$0:Lcom/google/android/mms/pdu/PduComposer;

.field private toCopy:Lcom/google/android/mms/pdu/PduComposer$LengthRecordNode;


# direct methods
.method private constructor <init>(Lcom/google/android/mms/pdu/PduComposer;)V
    .registers 3
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 1092
    iput-object p1, p0, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->this$0:Lcom/google/android/mms/pdu/PduComposer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1093
    iput-object v0, p0, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->stack:Lcom/google/android/mms/pdu/PduComposer$LengthRecordNode;

    .line 1094
    iput-object v0, p0, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->toCopy:Lcom/google/android/mms/pdu/PduComposer$LengthRecordNode;

    .line 1096
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->stackSize:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/mms/pdu/PduComposer;Lcom/google/android/mms/pdu/PduComposer$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1092
    invoke-direct {p0, p1}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;-><init>(Lcom/google/android/mms/pdu/PduComposer;)V

    return-void
.end method


# virtual methods
.method copy()V
    .registers 5

    .prologue
    .line 1147
    iget-object v0, p0, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->this$0:Lcom/google/android/mms/pdu/PduComposer;

    iget-object v1, p0, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->toCopy:Lcom/google/android/mms/pdu/PduComposer$LengthRecordNode;

    iget-object v1, v1, Lcom/google/android/mms/pdu/PduComposer$LengthRecordNode;->currentMessage:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->toCopy:Lcom/google/android/mms/pdu/PduComposer$LengthRecordNode;

    iget v3, v3, Lcom/google/android/mms/pdu/PduComposer$LengthRecordNode;->currentPosition:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/mms/pdu/PduComposer;->arraycopy([BII)V

    .line 1150
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->toCopy:Lcom/google/android/mms/pdu/PduComposer$LengthRecordNode;

    .line 1151
    return-void
.end method

.method mark()Lcom/google/android/mms/pdu/PduComposer$PositionMarker;
    .registers 4

    .prologue
    .line 1157
    new-instance v0, Lcom/google/android/mms/pdu/PduComposer$PositionMarker;

    iget-object v1, p0, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->this$0:Lcom/google/android/mms/pdu/PduComposer;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/mms/pdu/PduComposer$PositionMarker;-><init>(Lcom/google/android/mms/pdu/PduComposer;Lcom/google/android/mms/pdu/PduComposer$1;)V

    .line 1159
    .local v0, m:Lcom/google/android/mms/pdu/PduComposer$PositionMarker;
    iget-object v1, p0, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->this$0:Lcom/google/android/mms/pdu/PduComposer;

    iget v1, v1, Lcom/google/android/mms/pdu/PduComposer;->mPosition:I

    invoke-static {v0, v1}, Lcom/google/android/mms/pdu/PduComposer$PositionMarker;->access$402(Lcom/google/android/mms/pdu/PduComposer$PositionMarker;I)I

    .line 1160
    iget v1, p0, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->stackSize:I

    invoke-static {v0, v1}, Lcom/google/android/mms/pdu/PduComposer$PositionMarker;->access$502(Lcom/google/android/mms/pdu/PduComposer$PositionMarker;I)I

    .line 1162
    return-object v0
.end method

.method newbuf()V
    .registers 4

    .prologue
    .line 1105
    iget-object v1, p0, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->toCopy:Lcom/google/android/mms/pdu/PduComposer$LengthRecordNode;

    if-eqz v1, :cond_c

    .line 1106
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "BUG: Invalid newbuf() before copy()"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1109
    :cond_c
    new-instance v0, Lcom/google/android/mms/pdu/PduComposer$LengthRecordNode;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/mms/pdu/PduComposer$LengthRecordNode;-><init>(Lcom/google/android/mms/pdu/PduComposer$1;)V

    .line 1111
    .local v0, temp:Lcom/google/android/mms/pdu/PduComposer$LengthRecordNode;
    iget-object v1, p0, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->this$0:Lcom/google/android/mms/pdu/PduComposer;

    iget-object v1, v1, Lcom/google/android/mms/pdu/PduComposer;->mMessage:Ljava/io/ByteArrayOutputStream;

    iput-object v1, v0, Lcom/google/android/mms/pdu/PduComposer$LengthRecordNode;->currentMessage:Ljava/io/ByteArrayOutputStream;

    .line 1112
    iget-object v1, p0, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->this$0:Lcom/google/android/mms/pdu/PduComposer;

    iget v1, v1, Lcom/google/android/mms/pdu/PduComposer;->mPosition:I

    iput v1, v0, Lcom/google/android/mms/pdu/PduComposer$LengthRecordNode;->currentPosition:I

    .line 1114
    iget-object v1, p0, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->stack:Lcom/google/android/mms/pdu/PduComposer$LengthRecordNode;

    iput-object v1, v0, Lcom/google/android/mms/pdu/PduComposer$LengthRecordNode;->next:Lcom/google/android/mms/pdu/PduComposer$LengthRecordNode;

    .line 1115
    iput-object v0, p0, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->stack:Lcom/google/android/mms/pdu/PduComposer$LengthRecordNode;

    .line 1117
    iget v1, p0, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->stackSize:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->stackSize:I

    .line 1119
    iget-object v1, p0, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->this$0:Lcom/google/android/mms/pdu/PduComposer;

    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v2, v1, Lcom/google/android/mms/pdu/PduComposer;->mMessage:Ljava/io/ByteArrayOutputStream;

    .line 1120
    iget-object v1, p0, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->this$0:Lcom/google/android/mms/pdu/PduComposer;

    const/4 v2, 0x0

    iput v2, v1, Lcom/google/android/mms/pdu/PduComposer;->mPosition:I

    .line 1121
    return-void
.end method

.method pop()V
    .registers 5

    .prologue
    .line 1127
    iget-object v2, p0, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->this$0:Lcom/google/android/mms/pdu/PduComposer;

    iget-object v0, v2, Lcom/google/android/mms/pdu/PduComposer;->mMessage:Ljava/io/ByteArrayOutputStream;

    .line 1128
    .local v0, currentMessage:Ljava/io/ByteArrayOutputStream;
    iget-object v2, p0, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->this$0:Lcom/google/android/mms/pdu/PduComposer;

    iget v1, v2, Lcom/google/android/mms/pdu/PduComposer;->mPosition:I

    .line 1130
    .local v1, currentPosition:I
    iget-object v2, p0, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->this$0:Lcom/google/android/mms/pdu/PduComposer;

    iget-object v3, p0, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->stack:Lcom/google/android/mms/pdu/PduComposer$LengthRecordNode;

    iget-object v3, v3, Lcom/google/android/mms/pdu/PduComposer$LengthRecordNode;->currentMessage:Ljava/io/ByteArrayOutputStream;

    iput-object v3, v2, Lcom/google/android/mms/pdu/PduComposer;->mMessage:Ljava/io/ByteArrayOutputStream;

    .line 1131
    iget-object v2, p0, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->this$0:Lcom/google/android/mms/pdu/PduComposer;

    iget-object v3, p0, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->stack:Lcom/google/android/mms/pdu/PduComposer$LengthRecordNode;

    iget v3, v3, Lcom/google/android/mms/pdu/PduComposer$LengthRecordNode;->currentPosition:I

    iput v3, v2, Lcom/google/android/mms/pdu/PduComposer;->mPosition:I

    .line 1133
    iget-object v2, p0, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->stack:Lcom/google/android/mms/pdu/PduComposer$LengthRecordNode;

    iput-object v2, p0, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->toCopy:Lcom/google/android/mms/pdu/PduComposer$LengthRecordNode;

    .line 1136
    iget-object v2, p0, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->stack:Lcom/google/android/mms/pdu/PduComposer$LengthRecordNode;

    iget-object v2, v2, Lcom/google/android/mms/pdu/PduComposer$LengthRecordNode;->next:Lcom/google/android/mms/pdu/PduComposer$LengthRecordNode;

    iput-object v2, p0, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->stack:Lcom/google/android/mms/pdu/PduComposer$LengthRecordNode;

    .line 1137
    iget v2, p0, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->stackSize:I

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->stackSize:I

    .line 1139
    iget-object v2, p0, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->toCopy:Lcom/google/android/mms/pdu/PduComposer$LengthRecordNode;

    iput-object v0, v2, Lcom/google/android/mms/pdu/PduComposer$LengthRecordNode;->currentMessage:Ljava/io/ByteArrayOutputStream;

    .line 1140
    iget-object v2, p0, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->toCopy:Lcom/google/android/mms/pdu/PduComposer$LengthRecordNode;

    iput v1, v2, Lcom/google/android/mms/pdu/PduComposer$LengthRecordNode;->currentPosition:I

    .line 1141
    return-void
.end method
