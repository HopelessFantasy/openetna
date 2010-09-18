.class Ljava/util/Hashtable$2$1;
.super Ljava/lang/Object;
.source "Hashtable.java"

# interfaces
.implements Ljava/util/MapEntry$Type;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/util/Hashtable$2;->iterator()Ljava/util/Iterator;
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
        "<TK;TV;>;TK;TV;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Ljava/util/Hashtable$2;


# direct methods
.method constructor <init>(Ljava/util/Hashtable$2;)V
    .registers 2
    .parameter

    .prologue
    .line 501
    .local p0, this:Ljava/util/Hashtable$2$1;,"Ljava/util/Hashtable$2.1;"
    iput-object p1, p0, Ljava/util/Hashtable$2$1;->this$1:Ljava/util/Hashtable$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic get(Ljava/util/MapEntry;)Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 501
    .local p0, this:Ljava/util/Hashtable$2$1;,"Ljava/util/Hashtable$2.1;"
    invoke-virtual {p0, p1}, Ljava/util/Hashtable$2$1;->get(Ljava/util/MapEntry;)Ljava/util/Map$Entry;

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
            "<TK;TV;>;)",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 503
    .local p0, this:Ljava/util/Hashtable$2$1;,"Ljava/util/Hashtable$2.1;"
    .local p1, entry:Ljava/util/MapEntry;,"Ljava/util/MapEntry<TK;TV;>;"
    return-object p1
.end method
