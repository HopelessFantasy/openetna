.class public final Ljava/io/FileDescriptor;
.super Ljava/lang/Object;
.source "FileDescriptor.java"


# static fields
.field public static final err:Ljava/io/FileDescriptor;

.field public static final in:Ljava/io/FileDescriptor;

.field public static final out:Ljava/io/FileDescriptor;


# instance fields
.field descriptor:I

.field readOnly:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 47
    new-instance v0, Ljava/io/FileDescriptor;

    invoke-direct {v0}, Ljava/io/FileDescriptor;-><init>()V

    sput-object v0, Ljava/io/FileDescriptor;->in:Ljava/io/FileDescriptor;

    .line 54
    new-instance v0, Ljava/io/FileDescriptor;

    invoke-direct {v0}, Ljava/io/FileDescriptor;-><init>()V

    sput-object v0, Ljava/io/FileDescriptor;->out:Ljava/io/FileDescriptor;

    .line 61
    new-instance v0, Ljava/io/FileDescriptor;

    invoke-direct {v0}, Ljava/io/FileDescriptor;-><init>()V

    sput-object v0, Ljava/io/FileDescriptor;->err:Ljava/io/FileDescriptor;

    .line 77
    sget-object v0, Ljava/io/FileDescriptor;->in:Ljava/io/FileDescriptor;

    const/4 v1, 0x0

    iput v1, v0, Ljava/io/FileDescriptor;->descriptor:I

    .line 78
    sget-object v0, Ljava/io/FileDescriptor;->out:Ljava/io/FileDescriptor;

    const/4 v1, 0x1

    iput v1, v0, Ljava/io/FileDescriptor;->descriptor:I

    .line 79
    sget-object v0, Ljava/io/FileDescriptor;->err:Ljava/io/FileDescriptor;

    const/4 v1, 0x2

    iput v1, v0, Ljava/io/FileDescriptor;->descriptor:I

    .line 81
    invoke-static {}, Ljava/io/FileDescriptor;->oneTimeInitialization()V

    .line 82
    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    const/4 v0, -0x1

    iput v0, p0, Ljava/io/FileDescriptor;->descriptor:I

    .line 72
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/io/FileDescriptor;->readOnly:Z

    .line 92
    return-void
.end method

.method private static native oneTimeInitialization()V
.end method

.method private native syncImpl()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/SyncFailedException;
        }
    .end annotation
.end method


# virtual methods
.method public sync()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/SyncFailedException;
        }
    .end annotation

    .prologue
    .line 104
    iget-boolean v0, p0, Ljava/io/FileDescriptor;->readOnly:Z

    if-nez v0, :cond_7

    .line 105
    invoke-direct {p0}, Ljava/io/FileDescriptor;->syncImpl()V

    .line 107
    :cond_7
    return-void
.end method

.method public native valid()Z
.end method
