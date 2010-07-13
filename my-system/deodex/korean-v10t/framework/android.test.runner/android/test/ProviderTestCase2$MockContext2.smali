.class Landroid/test/ProviderTestCase2$MockContext2;
.super Landroid/test/mock/MockContext;
.source "ProviderTestCase2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/test/ProviderTestCase2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MockContext2"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/test/ProviderTestCase2;


# direct methods
.method private constructor <init>(Landroid/test/ProviderTestCase2;)V
    .registers 2
    .parameter

    .prologue
    .line 30
    .local p0, this:Landroid/test/ProviderTestCase2$MockContext2;,"Landroid/test/ProviderTestCase2<TT;>.MockContext2;"
    iput-object p1, p0, Landroid/test/ProviderTestCase2$MockContext2;->this$0:Landroid/test/ProviderTestCase2;

    invoke-direct {p0}, Landroid/test/mock/MockContext;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/test/ProviderTestCase2;Landroid/test/ProviderTestCase2$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30
    .local p0, this:Landroid/test/ProviderTestCase2$MockContext2;,"Landroid/test/ProviderTestCase2<TT;>.MockContext2;"
    invoke-direct {p0, p1}, Landroid/test/ProviderTestCase2$MockContext2;-><init>(Landroid/test/ProviderTestCase2;)V

    return-void
.end method


# virtual methods
.method public getResources()Landroid/content/res/Resources;
    .registers 2

    .prologue
    .line 34
    .local p0, this:Landroid/test/ProviderTestCase2$MockContext2;,"Landroid/test/ProviderTestCase2<TT;>.MockContext2;"
    iget-object v0, p0, Landroid/test/ProviderTestCase2$MockContext2;->this$0:Landroid/test/ProviderTestCase2;

    invoke-virtual {v0}, Landroid/test/ProviderTestCase2;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method
