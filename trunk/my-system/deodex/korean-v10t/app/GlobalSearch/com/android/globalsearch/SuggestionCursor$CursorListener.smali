.class public interface abstract Lcom/android/globalsearch/SuggestionCursor$CursorListener;
.super Ljava/lang/Object;
.source "SuggestionCursor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/globalsearch/SuggestionCursor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "CursorListener"
.end annotation


# virtual methods
.method public abstract onClose()V
.end method

.method public abstract onItemClicked(Lcom/android/globalsearch/SuggestionData;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/globalsearch/SuggestionData;",
            "Ljava/util/List",
            "<",
            "Lcom/android/globalsearch/SuggestionData;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onMoreVisible()V
.end method
