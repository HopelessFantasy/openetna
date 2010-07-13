.class Ljava/util/Hashtable$4$1;
.super Ljava/lang/Object;
.source "Hashtable.java"

# interfaces
.implements Ljava/util/MapEntry$Type;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/util/Hashtable$4;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/MapEntry$Type",
        "<TV;TK;TV;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Ljava/util/Hashtable$4;


# direct methods
.method constructor <init>(Ljava/util/Hashtable$4;)V
    .registers 2
    .parameter

    .prologue
    .line 907
    .local p0, this:Ljava/util/Hashtable$4$1;,"Ljava/util/Hashtable$4.1;"
    iput-object p1, p0, Ljava/util/Hashtable$4$1;->this$1:Ljava/util/Hashtable$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get(Ljava/util/MapEntry;)Ljava/lang/Object;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/MapEntry",
            "<TK;TV;>;)TV;"
        }
    .end annotation

    .prologue
    .line 908
    .local p0, this:Ljava/util/Hashtable$4$1;,"Ljava/util/Hashtable$4.1;"
    .local p1, entry:Ljava/util/MapEntry;,"Ljava/util/MapEntry<TK;TV;>;"
    iget-object v0, p1, Ljava/util/MapEntry;->value:Ljava/lang/Object;

    return-object v0
.end method
