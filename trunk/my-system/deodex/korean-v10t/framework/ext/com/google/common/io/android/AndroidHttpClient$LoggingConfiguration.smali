.class Lcom/google/common/io/android/AndroidHttpClient$LoggingConfiguration;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/io/android/AndroidHttpClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LoggingConfiguration"
.end annotation


# instance fields
.field private final level:I

.field private final tag:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/common/io/android/AndroidHttpClient$LoggingConfiguration;->tag:Ljava/lang/String;

    iput p2, p0, Lcom/google/common/io/android/AndroidHttpClient$LoggingConfiguration;->level:I

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILcom/google/common/io/android/AndroidHttpClient$1;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/google/common/io/android/AndroidHttpClient$LoggingConfiguration;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$500(Lcom/google/common/io/android/AndroidHttpClient$LoggingConfiguration;)Z
    .registers 2

    invoke-direct {p0}, Lcom/google/common/io/android/AndroidHttpClient$LoggingConfiguration;->isLoggable()Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/google/common/io/android/AndroidHttpClient$LoggingConfiguration;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/common/io/android/AndroidHttpClient$LoggingConfiguration;->println(Ljava/lang/String;)V

    return-void
.end method

.method private isLoggable()Z
    .registers 3

    iget-object v0, p0, Lcom/google/common/io/android/AndroidHttpClient$LoggingConfiguration;->tag:Ljava/lang/String;

    iget v1, p0, Lcom/google/common/io/android/AndroidHttpClient$LoggingConfiguration;->level:I

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method private println(Ljava/lang/String;)V
    .registers 4

    iget v0, p0, Lcom/google/common/io/android/AndroidHttpClient$LoggingConfiguration;->level:I

    iget-object v1, p0, Lcom/google/common/io/android/AndroidHttpClient$LoggingConfiguration;->tag:Ljava/lang/String;

    invoke-static {v0, v1, p1}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    return-void
.end method
