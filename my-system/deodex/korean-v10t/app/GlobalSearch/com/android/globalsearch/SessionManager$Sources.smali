.class Lcom/android/globalsearch/SessionManager$Sources;
.super Ljava/lang/Object;
.source "SessionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/globalsearch/SessionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Sources"
.end annotation


# instance fields
.field public final mPromotableSources:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/globalsearch/SuggestionSource;",
            ">;"
        }
    .end annotation
.end field

.field public final mUnpromotableSources:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/globalsearch/SuggestionSource;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 261
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 262
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/globalsearch/SessionManager$Sources;->mPromotableSources:Ljava/util/ArrayList;

    .line 263
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/globalsearch/SessionManager$Sources;->mUnpromotableSources:Ljava/util/ArrayList;

    .line 264
    return-void
.end method


# virtual methods
.method public add(Lcom/android/globalsearch/SuggestionSource;Z)V
    .registers 4
    .parameter "source"
    .parameter "forcePromotable"

    .prologue
    .line 266
    if-nez p1, :cond_3

    .line 274
    :goto_2
    return-void

    .line 267
    :cond_3
    if-eqz p2, :cond_b

    .line 269
    iget-object v0, p0, Lcom/android/globalsearch/SessionManager$Sources;->mPromotableSources:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 272
    :cond_b
    iget-object v0, p0, Lcom/android/globalsearch/SessionManager$Sources;->mUnpromotableSources:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2
.end method
