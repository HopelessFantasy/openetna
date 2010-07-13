.class public abstract Landroid/test/ActivityTestCase;
.super Landroid/test/InstrumentationTestCase;
.source "ActivityTestCase.java"


# instance fields
.field private mActivity:Landroid/app/Activity;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/test/InstrumentationTestCase;-><init>()V

    return-void
.end method


# virtual methods
.method protected getActivity()Landroid/app/Activity;
    .registers 2

    .prologue
    .line 39
    iget-object v0, p0, Landroid/test/ActivityTestCase;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method protected scrubClass(Ljava/lang/Class;)V
    .registers 12
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .prologue
    .local p1, testCaseClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const-string v9, "TestCase"

    const-string v8, "Error: Could not nullify field!"

    .line 62
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v4

    .line 63
    .local v4, fields:[Ljava/lang/reflect/Field;
    move-object v0, v4

    .local v0, arr$:[Ljava/lang/reflect/Field;
    array-length v6, v0

    .local v6, len$:I
    const/4 v5, 0x0

    .local v5, i$:I
    :goto_f
    if-ge v5, v6, :cond_49

    aget-object v2, v0, v5

    .line 64
    .local v2, field:Ljava/lang/reflect/Field;
    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v3

    .line 65
    .local v3, fieldClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-virtual {p1, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v7

    if-eqz v7, :cond_3c

    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->isPrimitive()Z

    move-result v7

    if-nez v7, :cond_3c

    .line 67
    const/4 v7, 0x1

    :try_start_28
    invoke-virtual {v2, v7}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 68
    const/4 v7, 0x0

    invoke-virtual {v2, p0, v7}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_2f} :catch_3f

    .line 73
    :goto_2f
    invoke-virtual {v2, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_3c

    .line 74
    const-string v7, "TestCase"

    const-string v7, "Error: Could not nullify field!"

    invoke-static {v9, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    :cond_3c
    add-int/lit8 v5, v5, 0x1

    goto :goto_f

    .line 69
    :catch_3f
    move-exception v7

    move-object v1, v7

    .line 70
    .local v1, e:Ljava/lang/Exception;
    const-string v7, "TestCase"

    const-string v7, "Error: Could not nullify field!"

    invoke-static {v9, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2f

    .line 78
    .end local v1           #e:Ljava/lang/Exception;
    .end local v2           #field:Ljava/lang/reflect/Field;
    .end local v3           #fieldClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :cond_49
    return-void
.end method

.method protected setActivity(Landroid/app/Activity;)V
    .registers 2
    .parameter "testActivity"

    .prologue
    .line 47
    iput-object p1, p0, Landroid/test/ActivityTestCase;->mActivity:Landroid/app/Activity;

    .line 48
    return-void
.end method
