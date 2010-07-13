.class Lcom/android/internal/os/LoggingPrintStreamTest$TestPrintStream;
.super Lcom/android/internal/os/LoggingPrintStream;
.source "LoggingPrintStreamTest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/LoggingPrintStreamTest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "TestPrintStream"
.end annotation


# instance fields
.field final lines:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .registers 2

    .prologue
    .line 124
    invoke-direct {p0}, Lcom/android/internal/os/LoggingPrintStream;-><init>()V

    .line 126
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/LoggingPrintStreamTest$TestPrintStream;->lines:Ljava/util/List;

    return-void
.end method


# virtual methods
.method protected log(Ljava/lang/String;)V
    .registers 3
    .parameter "line"

    .prologue
    .line 129
    iget-object v0, p0, Lcom/android/internal/os/LoggingPrintStreamTest$TestPrintStream;->lines:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 130
    return-void
.end method
