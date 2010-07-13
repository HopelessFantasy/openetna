.class Ljava/util/concurrent/CopyOnWriteArrayList$SubList$SubListIterator;
.super Ljava/util/concurrent/CopyOnWriteArrayList$ListIteratorImpl;
.source "CopyOnWriteArrayList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/CopyOnWriteArrayList$SubList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SubListIterator"
.end annotation


# instance fields
.field private final dataR:Ljava/util/concurrent/CopyOnWriteArrayList$SubListReadData;

.field final synthetic this$0:Ljava/util/concurrent/CopyOnWriteArrayList$SubList;


# direct methods
.method private constructor <init>(Ljava/util/concurrent/CopyOnWriteArrayList$SubList;ILjava/util/concurrent/CopyOnWriteArrayList$SubListReadData;)V
    .registers 6
    .parameter
    .parameter "index"
    .parameter "d"

    .prologue
    .line 1117
    iput-object p1, p0, Ljava/util/concurrent/CopyOnWriteArrayList$SubList$SubListIterator;->this$0:Ljava/util/concurrent/CopyOnWriteArrayList$SubList;

    .line 1118
    iget-object v0, p3, Ljava/util/concurrent/CopyOnWriteArrayList$SubListReadData;->data:[Ljava/lang/Object;

    invoke-static {p1}, Ljava/util/concurrent/CopyOnWriteArrayList$SubList;->access$200(Ljava/util/concurrent/CopyOnWriteArrayList$SubList;)I

    move-result v1

    add-int/2addr v1, p2

    invoke-direct {p0, v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList$ListIteratorImpl;-><init>([Ljava/lang/Object;I)V

    .line 1119
    iput-object p3, p0, Ljava/util/concurrent/CopyOnWriteArrayList$SubList$SubListIterator;->dataR:Ljava/util/concurrent/CopyOnWriteArrayList$SubListReadData;

    .line 1120
    return-void
.end method

.method synthetic constructor <init>(Ljava/util/concurrent/CopyOnWriteArrayList$SubList;ILjava/util/concurrent/CopyOnWriteArrayList$SubListReadData;Ljava/util/concurrent/CopyOnWriteArrayList$1;)V
    .registers 5
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 1109
    invoke-direct {p0, p1, p2, p3}, Ljava/util/concurrent/CopyOnWriteArrayList$SubList$SubListIterator;-><init>(Ljava/util/concurrent/CopyOnWriteArrayList$SubList;ILjava/util/concurrent/CopyOnWriteArrayList$SubListReadData;)V

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .registers 3

    .prologue
    .line 1140
    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList$SubList$SubListIterator;->nextIndex()I

    move-result v0

    iget-object v1, p0, Ljava/util/concurrent/CopyOnWriteArrayList$SubList$SubListIterator;->dataR:Ljava/util/concurrent/CopyOnWriteArrayList$SubListReadData;

    iget v1, v1, Ljava/util/concurrent/CopyOnWriteArrayList$SubListReadData;->size:I

    if-ge v0, v1, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public hasPrevious()Z
    .registers 3

    .prologue
    .line 1147
    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList$SubList$SubListIterator;->previousIndex()I

    move-result v0

    const/4 v1, -0x1

    if-le v0, v1, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public nextIndex()I
    .registers 3

    .prologue
    .line 1126
    invoke-super {p0}, Ljava/util/concurrent/CopyOnWriteArrayList$ListIteratorImpl;->nextIndex()I

    move-result v0

    iget-object v1, p0, Ljava/util/concurrent/CopyOnWriteArrayList$SubList$SubListIterator;->this$0:Ljava/util/concurrent/CopyOnWriteArrayList$SubList;

    invoke-static {v1}, Ljava/util/concurrent/CopyOnWriteArrayList$SubList;->access$200(Ljava/util/concurrent/CopyOnWriteArrayList$SubList;)I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public previousIndex()I
    .registers 3

    .prologue
    .line 1133
    invoke-super {p0}, Ljava/util/concurrent/CopyOnWriteArrayList$ListIteratorImpl;->previousIndex()I

    move-result v0

    iget-object v1, p0, Ljava/util/concurrent/CopyOnWriteArrayList$SubList$SubListIterator;->this$0:Ljava/util/concurrent/CopyOnWriteArrayList$SubList;

    invoke-static {v1}, Ljava/util/concurrent/CopyOnWriteArrayList$SubList;->access$200(Ljava/util/concurrent/CopyOnWriteArrayList$SubList;)I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method
