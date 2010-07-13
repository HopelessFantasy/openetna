.class public Lcom/android/internal/os/LoggingPrintStreamTest;
.super Ljunit/framework/TestCase;
.source "LoggingPrintStreamTest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/os/LoggingPrintStreamTest$TestPrintStream;
    }
.end annotation


# instance fields
.field out:Lcom/android/internal/os/LoggingPrintStreamTest$TestPrintStream;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 28
    invoke-direct {p0}, Ljunit/framework/TestCase;-><init>()V

    .line 30
    new-instance v0, Lcom/android/internal/os/LoggingPrintStreamTest$TestPrintStream;

    invoke-direct {v0}, Lcom/android/internal/os/LoggingPrintStreamTest$TestPrintStream;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/LoggingPrintStreamTest;->out:Lcom/android/internal/os/LoggingPrintStreamTest$TestPrintStream;

    .line 124
    return-void
.end method


# virtual methods
.method public testAppend()V
    .registers 6

    .prologue
    const/16 v2, 0xa

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 116
    iget-object v0, p0, Lcom/android/internal/os/LoggingPrintStreamTest;->out:Lcom/android/internal/os/LoggingPrintStreamTest$TestPrintStream;

    const-string v1, "Foo\n"

    invoke-virtual {v0, v1}, Lcom/android/internal/os/LoggingPrintStreamTest$TestPrintStream;->append(Ljava/lang/CharSequence;)Ljava/io/PrintStream;

    move-result-object v0

    const/16 v1, 0x34

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->append(C)Ljava/io/PrintStream;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->append(C)Ljava/io/PrintStream;

    move-result-object v0

    const-string v1, "Bar"

    invoke-virtual {v0, v1, v3, v4}, Ljava/io/PrintStream;->append(Ljava/lang/CharSequence;II)Ljava/io/PrintStream;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->append(C)Ljava/io/PrintStream;

    .line 121
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "Foo"

    aput-object v2, v0, v1

    const-string v1, "4"

    aput-object v1, v0, v3

    const-string v1, "a"

    aput-object v1, v0, v4

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/os/LoggingPrintStreamTest;->out:Lcom/android/internal/os/LoggingPrintStreamTest$TestPrintStream;

    iget-object v1, v1, Lcom/android/internal/os/LoggingPrintStreamTest$TestPrintStream;->lines:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/android/internal/os/LoggingPrintStreamTest;->assertEquals(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 122
    return-void
.end method

.method public testPrintCharArray()V
    .registers 8

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    const-string v6, "Foo"

    const-string v5, "Bar"

    .line 86
    iget-object v0, p0, Lcom/android/internal/os/LoggingPrintStreamTest;->out:Lcom/android/internal/os/LoggingPrintStreamTest$TestPrintStream;

    const-string v1, "Foo\nBar\nTee"

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/LoggingPrintStreamTest$TestPrintStream;->print([C)V

    .line 87
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "Foo"

    aput-object v6, v0, v2

    const-string v1, "Bar"

    aput-object v5, v0, v3

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/os/LoggingPrintStreamTest;->out:Lcom/android/internal/os/LoggingPrintStreamTest$TestPrintStream;

    iget-object v1, v1, Lcom/android/internal/os/LoggingPrintStreamTest$TestPrintStream;->lines:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/android/internal/os/LoggingPrintStreamTest;->assertEquals(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 88
    iget-object v0, p0, Lcom/android/internal/os/LoggingPrintStreamTest;->out:Lcom/android/internal/os/LoggingPrintStreamTest$TestPrintStream;

    invoke-virtual {v0}, Lcom/android/internal/os/LoggingPrintStreamTest$TestPrintStream;->flush()V

    .line 89
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "Foo"

    aput-object v6, v0, v2

    const-string v1, "Bar"

    aput-object v5, v0, v3

    const-string v1, "Tee"

    aput-object v1, v0, v4

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/os/LoggingPrintStreamTest;->out:Lcom/android/internal/os/LoggingPrintStreamTest$TestPrintStream;

    iget-object v1, v1, Lcom/android/internal/os/LoggingPrintStreamTest$TestPrintStream;->lines:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/android/internal/os/LoggingPrintStreamTest;->assertEquals(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 90
    return-void
.end method

.method public testPrintException()V
    .registers 6

    .prologue
    .line 34
    new-instance v2, Ljava/lang/Throwable;

    const-string v3, "Ignore me."

    invoke-direct {v2, v3}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    .line 36
    .local v2, t:Ljava/lang/Throwable;
    new-instance v1, Ljava/io/StringWriter;

    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V

    .line 37
    .local v1, sout:Ljava/io/StringWriter;
    new-instance v3, Ljava/io/PrintWriter;

    invoke-direct {v3, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 39
    iget-object v3, p0, Lcom/android/internal/os/LoggingPrintStreamTest;->out:Lcom/android/internal/os/LoggingPrintStreamTest$TestPrintStream;

    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V

    .line 42
    invoke-virtual {v1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "\\n"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 43
    .local v0, lines:[Ljava/lang/String;
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/os/LoggingPrintStreamTest;->out:Lcom/android/internal/os/LoggingPrintStreamTest$TestPrintStream;

    iget-object v4, v4, Lcom/android/internal/os/LoggingPrintStreamTest$TestPrintStream;->lines:Ljava/util/List;

    invoke-static {v3, v4}, Lcom/android/internal/os/LoggingPrintStreamTest;->assertEquals(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 44
    return-void
.end method

.method public testPrintInt()V
    .registers 3

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/internal/os/LoggingPrintStreamTest;->out:Lcom/android/internal/os/LoggingPrintStreamTest$TestPrintStream;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/internal/os/LoggingPrintStreamTest$TestPrintStream;->print(I)V

    .line 73
    iget-object v0, p0, Lcom/android/internal/os/LoggingPrintStreamTest;->out:Lcom/android/internal/os/LoggingPrintStreamTest$TestPrintStream;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/internal/os/LoggingPrintStreamTest$TestPrintStream;->print(I)V

    .line 74
    iget-object v0, p0, Lcom/android/internal/os/LoggingPrintStreamTest;->out:Lcom/android/internal/os/LoggingPrintStreamTest$TestPrintStream;

    iget-object v0, v0, Lcom/android/internal/os/LoggingPrintStreamTest$TestPrintStream;->lines:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    invoke-static {v0}, Lcom/android/internal/os/LoggingPrintStreamTest;->assertTrue(Z)V

    .line 75
    iget-object v0, p0, Lcom/android/internal/os/LoggingPrintStreamTest;->out:Lcom/android/internal/os/LoggingPrintStreamTest$TestPrintStream;

    invoke-virtual {v0}, Lcom/android/internal/os/LoggingPrintStreamTest$TestPrintStream;->flush()V

    .line 76
    const-string v0, "42"

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/os/LoggingPrintStreamTest;->out:Lcom/android/internal/os/LoggingPrintStreamTest$TestPrintStream;

    iget-object v1, v1, Lcom/android/internal/os/LoggingPrintStreamTest$TestPrintStream;->lines:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/android/internal/os/LoggingPrintStreamTest;->assertEquals(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 77
    return-void
.end method

.method public testPrintObject()V
    .registers 6

    .prologue
    .line 47
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 48
    .local v0, o:Ljava/lang/Object;
    iget-object v1, p0, Lcom/android/internal/os/LoggingPrintStreamTest;->out:Lcom/android/internal/os/LoggingPrintStreamTest$TestPrintStream;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/android/internal/os/LoggingPrintStreamTest$TestPrintStream;->print(I)V

    .line 49
    iget-object v1, p0, Lcom/android/internal/os/LoggingPrintStreamTest;->out:Lcom/android/internal/os/LoggingPrintStreamTest$TestPrintStream;

    invoke-virtual {v1, v0}, Lcom/android/internal/os/LoggingPrintStreamTest$TestPrintStream;->print(Ljava/lang/Object;)V

    .line 50
    iget-object v1, p0, Lcom/android/internal/os/LoggingPrintStreamTest;->out:Lcom/android/internal/os/LoggingPrintStreamTest$TestPrintStream;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/android/internal/os/LoggingPrintStreamTest$TestPrintStream;->print(I)V

    .line 51
    iget-object v1, p0, Lcom/android/internal/os/LoggingPrintStreamTest;->out:Lcom/android/internal/os/LoggingPrintStreamTest$TestPrintStream;

    invoke-virtual {v1}, Lcom/android/internal/os/LoggingPrintStreamTest$TestPrintStream;->flush()V

    .line 52
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "4"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "2"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/os/LoggingPrintStreamTest;->out:Lcom/android/internal/os/LoggingPrintStreamTest$TestPrintStream;

    iget-object v2, v2, Lcom/android/internal/os/LoggingPrintStreamTest$TestPrintStream;->lines:Ljava/util/List;

    invoke-static {v1, v2}, Lcom/android/internal/os/LoggingPrintStreamTest;->assertEquals(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 53
    return-void
.end method

.method public testPrintString()V
    .registers 8

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    const-string v6, "Foo"

    const-string v5, "Bar"

    .line 93
    iget-object v0, p0, Lcom/android/internal/os/LoggingPrintStreamTest;->out:Lcom/android/internal/os/LoggingPrintStreamTest$TestPrintStream;

    const-string v1, "Foo\nBar\nTee"

    invoke-virtual {v0, v1}, Lcom/android/internal/os/LoggingPrintStreamTest$TestPrintStream;->print(Ljava/lang/String;)V

    .line 94
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "Foo"

    aput-object v6, v0, v2

    const-string v1, "Bar"

    aput-object v5, v0, v3

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/os/LoggingPrintStreamTest;->out:Lcom/android/internal/os/LoggingPrintStreamTest$TestPrintStream;

    iget-object v1, v1, Lcom/android/internal/os/LoggingPrintStreamTest$TestPrintStream;->lines:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/android/internal/os/LoggingPrintStreamTest;->assertEquals(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 95
    iget-object v0, p0, Lcom/android/internal/os/LoggingPrintStreamTest;->out:Lcom/android/internal/os/LoggingPrintStreamTest$TestPrintStream;

    invoke-virtual {v0}, Lcom/android/internal/os/LoggingPrintStreamTest$TestPrintStream;->flush()V

    .line 96
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "Foo"

    aput-object v6, v0, v2

    const-string v1, "Bar"

    aput-object v5, v0, v3

    const-string v1, "Tee"

    aput-object v1, v0, v4

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/os/LoggingPrintStreamTest;->out:Lcom/android/internal/os/LoggingPrintStreamTest$TestPrintStream;

    iget-object v1, v1, Lcom/android/internal/os/LoggingPrintStreamTest$TestPrintStream;->lines:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/android/internal/os/LoggingPrintStreamTest;->assertEquals(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 97
    return-void
.end method

.method public testPrintf()V
    .registers 9

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const-string v7, "Name: Bob"

    .line 65
    iget-object v0, p0, Lcom/android/internal/os/LoggingPrintStreamTest;->out:Lcom/android/internal/os/LoggingPrintStreamTest$TestPrintStream;

    const-string v1, "Name: %s\nEmployer: %s"

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "Bob"

    aput-object v3, v2, v4

    const-string v3, "Google"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/os/LoggingPrintStreamTest$TestPrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 66
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "Name: Bob"

    aput-object v7, v0, v4

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/os/LoggingPrintStreamTest;->out:Lcom/android/internal/os/LoggingPrintStreamTest$TestPrintStream;

    iget-object v1, v1, Lcom/android/internal/os/LoggingPrintStreamTest$TestPrintStream;->lines:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/android/internal/os/LoggingPrintStreamTest;->assertEquals(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 67
    iget-object v0, p0, Lcom/android/internal/os/LoggingPrintStreamTest;->out:Lcom/android/internal/os/LoggingPrintStreamTest$TestPrintStream;

    invoke-virtual {v0}, Lcom/android/internal/os/LoggingPrintStreamTest$TestPrintStream;->flush()V

    .line 68
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "Name: Bob"

    aput-object v7, v0, v4

    const-string v1, "Employer: Google"

    aput-object v1, v0, v5

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/os/LoggingPrintStreamTest;->out:Lcom/android/internal/os/LoggingPrintStreamTest$TestPrintStream;

    iget-object v1, v1, Lcom/android/internal/os/LoggingPrintStreamTest$TestPrintStream;->lines:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/android/internal/os/LoggingPrintStreamTest;->assertEquals(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 69
    return-void
.end method

.method public testPrintlnCharArray()V
    .registers 4

    .prologue
    .line 100
    iget-object v0, p0, Lcom/android/internal/os/LoggingPrintStreamTest;->out:Lcom/android/internal/os/LoggingPrintStreamTest$TestPrintStream;

    const-string v1, "Foo\nBar\nTee"

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/LoggingPrintStreamTest$TestPrintStream;->println([C)V

    .line 101
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "Foo"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "Bar"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "Tee"

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/os/LoggingPrintStreamTest;->out:Lcom/android/internal/os/LoggingPrintStreamTest$TestPrintStream;

    iget-object v1, v1, Lcom/android/internal/os/LoggingPrintStreamTest$TestPrintStream;->lines:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/android/internal/os/LoggingPrintStreamTest;->assertEquals(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 102
    return-void
.end method

.method public testPrintlnInt()V
    .registers 4

    .prologue
    const/4 v2, 0x2

    .line 80
    iget-object v0, p0, Lcom/android/internal/os/LoggingPrintStreamTest;->out:Lcom/android/internal/os/LoggingPrintStreamTest$TestPrintStream;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/internal/os/LoggingPrintStreamTest$TestPrintStream;->println(I)V

    .line 81
    iget-object v0, p0, Lcom/android/internal/os/LoggingPrintStreamTest;->out:Lcom/android/internal/os/LoggingPrintStreamTest$TestPrintStream;

    invoke-virtual {v0, v2}, Lcom/android/internal/os/LoggingPrintStreamTest$TestPrintStream;->println(I)V

    .line 82
    new-array v0, v2, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "4"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "2"

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/os/LoggingPrintStreamTest;->out:Lcom/android/internal/os/LoggingPrintStreamTest$TestPrintStream;

    iget-object v1, v1, Lcom/android/internal/os/LoggingPrintStreamTest$TestPrintStream;->lines:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/android/internal/os/LoggingPrintStreamTest;->assertEquals(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 83
    return-void
.end method

.method public testPrintlnObject()V
    .registers 6

    .prologue
    const/4 v3, 0x2

    .line 56
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 57
    .local v0, o:Ljava/lang/Object;
    iget-object v1, p0, Lcom/android/internal/os/LoggingPrintStreamTest;->out:Lcom/android/internal/os/LoggingPrintStreamTest$TestPrintStream;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/android/internal/os/LoggingPrintStreamTest$TestPrintStream;->print(I)V

    .line 58
    iget-object v1, p0, Lcom/android/internal/os/LoggingPrintStreamTest;->out:Lcom/android/internal/os/LoggingPrintStreamTest$TestPrintStream;

    invoke-virtual {v1, v0}, Lcom/android/internal/os/LoggingPrintStreamTest$TestPrintStream;->println(Ljava/lang/Object;)V

    .line 59
    iget-object v1, p0, Lcom/android/internal/os/LoggingPrintStreamTest;->out:Lcom/android/internal/os/LoggingPrintStreamTest$TestPrintStream;

    invoke-virtual {v1, v3}, Lcom/android/internal/os/LoggingPrintStreamTest$TestPrintStream;->print(I)V

    .line 60
    iget-object v1, p0, Lcom/android/internal/os/LoggingPrintStreamTest;->out:Lcom/android/internal/os/LoggingPrintStreamTest$TestPrintStream;

    invoke-virtual {v1}, Lcom/android/internal/os/LoggingPrintStreamTest$TestPrintStream;->flush()V

    .line 61
    new-array v1, v3, [Ljava/lang/String;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "4"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "2"

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/os/LoggingPrintStreamTest;->out:Lcom/android/internal/os/LoggingPrintStreamTest$TestPrintStream;

    iget-object v2, v2, Lcom/android/internal/os/LoggingPrintStreamTest$TestPrintStream;->lines:Ljava/util/List;

    invoke-static {v1, v2}, Lcom/android/internal/os/LoggingPrintStreamTest;->assertEquals(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 62
    return-void
.end method

.method public testPrintlnString()V
    .registers 4

    .prologue
    .line 105
    iget-object v0, p0, Lcom/android/internal/os/LoggingPrintStreamTest;->out:Lcom/android/internal/os/LoggingPrintStreamTest$TestPrintStream;

    const-string v1, "Foo\nBar\nTee"

    invoke-virtual {v0, v1}, Lcom/android/internal/os/LoggingPrintStreamTest$TestPrintStream;->println(Ljava/lang/String;)V

    .line 106
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "Foo"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "Bar"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "Tee"

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/os/LoggingPrintStreamTest;->out:Lcom/android/internal/os/LoggingPrintStreamTest$TestPrintStream;

    iget-object v1, v1, Lcom/android/internal/os/LoggingPrintStreamTest$TestPrintStream;->lines:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/android/internal/os/LoggingPrintStreamTest;->assertEquals(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 107
    return-void
.end method

.method public testPrintlnStringWithBufferedData()V
    .registers 4

    .prologue
    .line 110
    iget-object v0, p0, Lcom/android/internal/os/LoggingPrintStreamTest;->out:Lcom/android/internal/os/LoggingPrintStreamTest$TestPrintStream;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/android/internal/os/LoggingPrintStreamTest$TestPrintStream;->print(I)V

    .line 111
    iget-object v0, p0, Lcom/android/internal/os/LoggingPrintStreamTest;->out:Lcom/android/internal/os/LoggingPrintStreamTest$TestPrintStream;

    const-string v1, "Foo\nBar\nTee"

    invoke-virtual {v0, v1}, Lcom/android/internal/os/LoggingPrintStreamTest$TestPrintStream;->println(Ljava/lang/String;)V

    .line 112
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "5Foo"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "Bar"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "Tee"

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/os/LoggingPrintStreamTest;->out:Lcom/android/internal/os/LoggingPrintStreamTest$TestPrintStream;

    iget-object v1, v1, Lcom/android/internal/os/LoggingPrintStreamTest$TestPrintStream;->lines:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/android/internal/os/LoggingPrintStreamTest;->assertEquals(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 113
    return-void
.end method
