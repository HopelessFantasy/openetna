.class public Landroid/os/Exec;
.super Ljava/lang/Object;
.source "Exec.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createSubprocess(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/io/FileDescriptor;
    .registers 4
    .parameter "cmd"
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 37
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Landroid/os/Exec;->createSubprocess(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[I)Ljava/io/FileDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public static native createSubprocess(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[I)Ljava/io/FileDescriptor;
.end method

.method public static native setPtyWindowSize(Ljava/io/FileDescriptor;IIII)V
.end method

.method public static native waitFor(I)I
.end method
