.class Lcom/android/mms/ui/RecipientsEditor$1;
.super Ljava/lang/Object;
.source "RecipientsEditor.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/RecipientsEditor;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mAffected:[Landroid/text/Annotation;

.field final synthetic this$0:Lcom/android/mms/ui/RecipientsEditor;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/RecipientsEditor;)V
    .registers 2
    .parameter

    .prologue
    .line 81
    iput-object p1, p0, Lcom/android/mms/ui/RecipientsEditor$1;->this$0:Lcom/android/mms/ui/RecipientsEditor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .registers 7
    .parameter "s"

    .prologue
    .line 82
    iget-object v4, p0, Lcom/android/mms/ui/RecipientsEditor$1;->mAffected:[Landroid/text/Annotation;

    if-eqz v4, :cond_12

    .line 83
    iget-object v1, p0, Lcom/android/mms/ui/RecipientsEditor$1;->mAffected:[Landroid/text/Annotation;

    .local v1, arr$:[Landroid/text/Annotation;
    array-length v3, v1

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_8
    if-ge v2, v3, :cond_12

    aget-object v0, v1, v2

    .line 84
    .local v0, a:Landroid/text/Annotation;
    invoke-interface {p1, v0}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    .line 83
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 88
    .end local v0           #a:Landroid/text/Annotation;
    .end local v1           #arr$:[Landroid/text/Annotation;
    .end local v2           #i$:I
    .end local v3           #len$:I
    :cond_12
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/mms/ui/RecipientsEditor$1;->mAffected:[Landroid/text/Annotation;

    .line 89
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 7
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 72
    check-cast p1, Landroid/text/Spanned;

    .end local p1
    add-int v0, p2, p3

    const-class v1, Landroid/text/Annotation;

    invoke-interface {p1, p2, v0, v1}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/Annotation;

    iput-object v0, p0, Lcom/android/mms/ui/RecipientsEditor$1;->mAffected:[Landroid/text/Annotation;

    .line 74
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "after"

    .prologue
    .line 79
    return-void
.end method
