.class Lcom/android/globalsearch/SuggestionProvider$SuggestionThread;
.super Ljava/lang/Thread;
.source "SuggestionProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/globalsearch/SuggestionProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SuggestionThread"
.end annotation


# direct methods
.method private constructor <init>(Ljava/lang/Runnable;Ljava/lang/String;)V
    .registers 3
    .parameter "runnable"
    .parameter "threadName"

    .prologue
    .line 95
    invoke-direct {p0, p1, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 96
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/Runnable;Ljava/lang/String;Lcom/android/globalsearch/SuggestionProvider$1;)V
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 92
    invoke-direct {p0, p1, p2}, Lcom/android/globalsearch/SuggestionProvider$SuggestionThread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 101
    const/16 v0, 0xa

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 102
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 103
    return-void
.end method
