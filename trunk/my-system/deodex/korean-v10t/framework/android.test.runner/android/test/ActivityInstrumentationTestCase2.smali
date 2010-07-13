.class public abstract Landroid/test/ActivityInstrumentationTestCase2;
.super Landroid/test/ActivityTestCase;
.source "ActivityInstrumentationTestCase2.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/app/Activity;",
        ">",
        "Landroid/test/ActivityTestCase;"
    }
.end annotation


# instance fields
.field mActivityClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TT;>;"
        }
    .end annotation
.end field

.field mActivityIntent:Landroid/content/Intent;

.field mInitialTouchMode:Z

.field mPackage:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Class;)V
    .registers 4
    .parameter "pkg"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 56
    .local p0, this:Landroid/test/ActivityInstrumentationTestCase2;,"Landroid/test/ActivityInstrumentationTestCase2<TT;>;"
    .local p2, activityClass:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    invoke-direct {p0}, Landroid/test/ActivityTestCase;-><init>()V

    .line 45
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/test/ActivityInstrumentationTestCase2;->mInitialTouchMode:Z

    .line 46
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/test/ActivityInstrumentationTestCase2;->mActivityIntent:Landroid/content/Intent;

    .line 57
    iput-object p1, p0, Landroid/test/ActivityInstrumentationTestCase2;->mPackage:Ljava/lang/String;

    .line 58
    iput-object p2, p0, Landroid/test/ActivityInstrumentationTestCase2;->mActivityClass:Ljava/lang/Class;

    .line 59
    return-void
.end method


# virtual methods
.method public getActivity()Landroid/app/Activity;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 81
    .local p0, this:Landroid/test/ActivityInstrumentationTestCase2;,"Landroid/test/ActivityInstrumentationTestCase2<TT;>;"
    invoke-super {p0}, Landroid/test/ActivityTestCase;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 82
    .local v0, a:Landroid/app/Activity;
    if-nez v0, :cond_1f

    .line 84
    invoke-virtual {p0}, Landroid/test/ActivityInstrumentationTestCase2;->getInstrumentation()Landroid/app/Instrumentation;

    move-result-object v1

    iget-boolean v2, p0, Landroid/test/ActivityInstrumentationTestCase2;->mInitialTouchMode:Z

    invoke-virtual {v1, v2}, Landroid/app/Instrumentation;->setInTouchMode(Z)V

    .line 86
    iget-object v1, p0, Landroid/test/ActivityInstrumentationTestCase2;->mActivityIntent:Landroid/content/Intent;

    if-nez v1, :cond_20

    .line 87
    iget-object v1, p0, Landroid/test/ActivityInstrumentationTestCase2;->mPackage:Ljava/lang/String;

    iget-object v2, p0, Landroid/test/ActivityInstrumentationTestCase2;->mActivityClass:Ljava/lang/Class;

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v2, v3}, Landroid/test/ActivityInstrumentationTestCase2;->launchActivity(Ljava/lang/String;Ljava/lang/Class;Landroid/os/Bundle;)Landroid/app/Activity;

    move-result-object v0

    .line 91
    :goto_1c
    invoke-virtual {p0, v0}, Landroid/test/ActivityInstrumentationTestCase2;->setActivity(Landroid/app/Activity;)V

    .line 93
    :cond_1f
    return-object v0

    .line 89
    :cond_20
    iget-object v1, p0, Landroid/test/ActivityInstrumentationTestCase2;->mPackage:Ljava/lang/String;

    iget-object v2, p0, Landroid/test/ActivityInstrumentationTestCase2;->mActivityClass:Ljava/lang/Class;

    iget-object v3, p0, Landroid/test/ActivityInstrumentationTestCase2;->mActivityIntent:Landroid/content/Intent;

    invoke-virtual {p0, v1, v2, v3}, Landroid/test/ActivityInstrumentationTestCase2;->launchActivityWithIntent(Ljava/lang/String;Ljava/lang/Class;Landroid/content/Intent;)Landroid/app/Activity;

    move-result-object v0

    goto :goto_1c
.end method

.method protected runTest()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 168
    .local p0, this:Landroid/test/ActivityInstrumentationTestCase2;,"Landroid/test/ActivityInstrumentationTestCase2<TT;>;"
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0}, Landroid/test/ActivityInstrumentationTestCase2;->getName()Ljava/lang/String;

    move-result-object v3

    const/4 v1, 0x0

    check-cast v1, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 169
    .local v0, method:Ljava/lang/reflect/Method;
    const-class v1, Landroid/test/UiThreadTest;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 170
    invoke-virtual {p0}, Landroid/test/ActivityInstrumentationTestCase2;->getActivity()Landroid/app/Activity;
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1a} :catch_1e

    .line 175
    .end local v0           #method:Ljava/lang/reflect/Method;
    :cond_1a
    :goto_1a
    invoke-super {p0}, Landroid/test/ActivityTestCase;->runTest()V

    .line 176
    return-void

    .line 172
    :catch_1e
    move-exception v1

    goto :goto_1a
.end method

.method public setActivityInitialTouchMode(Z)V
    .registers 2
    .parameter "initialTouchMode"

    .prologue
    .line 132
    .local p0, this:Landroid/test/ActivityInstrumentationTestCase2;,"Landroid/test/ActivityInstrumentationTestCase2<TT;>;"
    iput-boolean p1, p0, Landroid/test/ActivityInstrumentationTestCase2;->mInitialTouchMode:Z

    .line 133
    return-void
.end method

.method public setActivityIntent(Landroid/content/Intent;)V
    .registers 2
    .parameter "i"

    .prologue
    .line 115
    .local p0, this:Landroid/test/ActivityInstrumentationTestCase2;,"Landroid/test/ActivityInstrumentationTestCase2<TT;>;"
    iput-object p1, p0, Landroid/test/ActivityInstrumentationTestCase2;->mActivityIntent:Landroid/content/Intent;

    .line 116
    return-void
.end method

.method protected setUp()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 137
    .local p0, this:Landroid/test/ActivityInstrumentationTestCase2;,"Landroid/test/ActivityInstrumentationTestCase2<TT;>;"
    invoke-super {p0}, Landroid/test/ActivityTestCase;->setUp()V

    .line 139
    const/4 v1, 0x0

    .line 140
    .local v1, mInitialTouchMode:Z
    const/4 v0, 0x0

    .line 141
    .local v0, mActivityIntent:Landroid/content/Intent;
    return-void
.end method

.method protected tearDown()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 146
    .local p0, this:Landroid/test/ActivityInstrumentationTestCase2;,"Landroid/test/ActivityInstrumentationTestCase2<TT;>;"
    invoke-super {p0}, Landroid/test/ActivityTestCase;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 147
    .local v0, a:Landroid/app/Activity;
    if-eqz v0, :cond_d

    .line 148
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 149
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/test/ActivityInstrumentationTestCase2;->setActivity(Landroid/app/Activity;)V

    .line 155
    :cond_d
    const-class v1, Landroid/test/ActivityInstrumentationTestCase2;

    invoke-virtual {p0, v1}, Landroid/test/ActivityInstrumentationTestCase2;->scrubClass(Ljava/lang/Class;)V

    .line 157
    invoke-super {p0}, Landroid/test/ActivityTestCase;->tearDown()V

    .line 158
    return-void
.end method
