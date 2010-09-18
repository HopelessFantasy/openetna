.class Ljava/util/HashMap$HashMapEntrySet$1;
.super Ljava/lang/Object;
.source "HashMap.java"

# interfaces
.implements Ljava/util/MapEntry$Type;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/util/HashMap$HashMapEntrySet;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/MapEntry$Type",
        "<",
        "Ljava/util/Map$Entry",
        "<TKT;TVT;>;TKT;TVT;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Ljava/util/HashMap$HashMapEntrySet;


# direct methods
.method constructor <init>(Ljava/util/HashMap$HashMapEntrySet;)V
    .registers 2
    .parameter

    .prologue
    .line 224
    .local p0, this:Ljava/util/HashMap$HashMapEntrySet$1;,"Ljava/util/HashMap$HashMapEntrySet.1;"
    iput-object p1, p0, Ljava/util/HashMap$HashMapEntrySet$1;->this$0:Ljava/util/HashMap$HashMapEntrySet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic get(Ljava/util/MapEntry;)Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 224
    .local p0, this:Ljava/util/HashMap$HashMapEntrySet$1;,"Ljava/util/HashMap$HashMapEntrySet.1;"
    invoke-virtual {p0, p1}, Ljava/util/HashMap$HashMapEntrySet$1;->get(Ljava/util/MapEntry;)Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public get(Ljava/util/MapEntry;)Ljava/util/Map$Entry;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/MapEntry",
            "<TKT;TVT;>;)",
            "Ljava/util/Map$Entry",
            "<TKT;TVT;>;"
        }
    .end annotation

    .prologue
    .line 225
    .local p0, this:Ljava/util/HashMap$HashMapEntrySet$1;,"Ljava/util/HashMap$HashMapEntrySet.1;"
    .local p1, entry:Ljava/util/MapEntry;,"Ljava/util/MapEntry<TKT;TVT;>;"
    return-object p1
.end method
